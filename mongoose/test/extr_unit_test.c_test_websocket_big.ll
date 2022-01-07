; ModuleID = '/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_test_websocket_big.c'
source_filename = "/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_test_websocket_big.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_mgr = type { i32 }
%struct.mg_connection = type { %struct.big_payload_params* }
%struct.big_payload_params = type { i8*, i32 }

@.str = private unnamed_addr constant [15 x i8] c"127.0.0.1:7778\00", align 1
@cb3_big = common dso_local global i32 0, align 4
@cb4_big = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"/ws\00", align 1
@c_str_ne = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"success\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @test_websocket_big to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @test_websocket_big() #0 {
  %1 = alloca %struct.mg_mgr, align 4
  %2 = alloca %struct.mg_connection*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca [20 x i8], align 16
  %5 = alloca %struct.big_payload_params, align 8
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  %6 = bitcast [20 x i8]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %6, i8 0, i64 20, i1 false)
  %7 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 0
  %8 = getelementptr inbounds %struct.big_payload_params, %struct.big_payload_params* %5, i32 0, i32 0
  store i8* %7, i8** %8, align 8
  %9 = call i32 @mg_mgr_init(%struct.mg_mgr* %1, i32* null)
  %10 = load i8*, i8** %3, align 8
  %11 = load i32, i32* @cb3_big, align 4
  %12 = call %struct.mg_connection* @mg_bind(%struct.mg_mgr* %1, i8* %10, i32 %11)
  store %struct.mg_connection* %12, %struct.mg_connection** %2, align 8
  %13 = icmp ne %struct.mg_connection* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @ASSERT(i32 %14)
  %16 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %17 = call i32 @mg_set_protocol_http_websocket(%struct.mg_connection* %16)
  %18 = load i8*, i8** %3, align 8
  %19 = load i32, i32* @cb4_big, align 4
  %20 = call %struct.mg_connection* @mg_connect(%struct.mg_mgr* %1, i8* %18, i32 %19)
  store %struct.mg_connection* %20, %struct.mg_connection** %2, align 8
  %21 = icmp ne %struct.mg_connection* %20, null
  %22 = zext i1 %21 to i32
  %23 = call i32 @ASSERT(i32 %22)
  %24 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %25 = call i32 @mg_set_protocol_http_websocket(%struct.mg_connection* %24)
  %26 = getelementptr inbounds %struct.big_payload_params, %struct.big_payload_params* %5, i32 0, i32 1
  store i32 8192, i32* %26, align 8
  %27 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %28 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %27, i32 0, i32 0
  store %struct.big_payload_params* %5, %struct.big_payload_params** %28, align 8
  %29 = getelementptr inbounds %struct.big_payload_params, %struct.big_payload_params* %5, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  store i8 0, i8* %31, align 1
  %32 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %33 = call i32 @mg_send_websocket_handshake(%struct.mg_connection* %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32* null)
  %34 = load i32, i32* @c_str_ne, align 4
  %35 = getelementptr inbounds %struct.big_payload_params, %struct.big_payload_params* %5, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @poll_until(%struct.mg_mgr* %1, i32 1, i32 %34, i8* %36, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  %38 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 0
  %39 = call i32 @ASSERT_STREQ(i8* %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %40 = load i8*, i8** %3, align 8
  %41 = load i32, i32* @cb4_big, align 4
  %42 = call %struct.mg_connection* @mg_connect(%struct.mg_mgr* %1, i8* %40, i32 %41)
  store %struct.mg_connection* %42, %struct.mg_connection** %2, align 8
  %43 = icmp ne %struct.mg_connection* %42, null
  %44 = zext i1 %43 to i32
  %45 = call i32 @ASSERT(i32 %44)
  %46 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %47 = call i32 @mg_set_protocol_http_websocket(%struct.mg_connection* %46)
  %48 = getelementptr inbounds %struct.big_payload_params, %struct.big_payload_params* %5, i32 0, i32 1
  store i32 65535, i32* %48, align 8
  %49 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %50 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %49, i32 0, i32 0
  store %struct.big_payload_params* %5, %struct.big_payload_params** %50, align 8
  %51 = getelementptr inbounds %struct.big_payload_params, %struct.big_payload_params* %5, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 0
  store i8 0, i8* %53, align 1
  %54 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %55 = call i32 @mg_send_websocket_handshake(%struct.mg_connection* %54, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32* null)
  %56 = load i32, i32* @c_str_ne, align 4
  %57 = getelementptr inbounds %struct.big_payload_params, %struct.big_payload_params* %5, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @poll_until(%struct.mg_mgr* %1, i32 1, i32 %56, i8* %58, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  %60 = call i32 @mg_mgr_free(%struct.mg_mgr* %1)
  %61 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 0
  %62 = call i32 @ASSERT_STREQ(i8* %61, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  ret i8* null
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mg_mgr_init(%struct.mg_mgr*, i32*) #2

declare dso_local i32 @ASSERT(i32) #2

declare dso_local %struct.mg_connection* @mg_bind(%struct.mg_mgr*, i8*, i32) #2

declare dso_local i32 @mg_set_protocol_http_websocket(%struct.mg_connection*) #2

declare dso_local %struct.mg_connection* @mg_connect(%struct.mg_mgr*, i8*, i32) #2

declare dso_local i32 @mg_send_websocket_handshake(%struct.mg_connection*, i8*, i32*) #2

declare dso_local i32 @poll_until(%struct.mg_mgr*, i32, i32, i8*, i8*) #2

declare dso_local i32 @ASSERT_STREQ(i8*, i8*) #2

declare dso_local i32 @mg_mgr_free(%struct.mg_mgr*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
