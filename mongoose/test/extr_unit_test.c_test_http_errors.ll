; ModuleID = '/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_test_http_errors.c'
source_filename = "/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_test_http_errors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }
%struct.mg_mgr = type { i32 }
%struct.mg_connection = type { i8* }

@.str = private unnamed_addr constant [15 x i8] c"127.0.0.1:7777\00", align 1
@s_http_server_opts = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@cb1 = common dso_local global i32 0, align 4
@cb8 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"touch test_unreadable; chmod 000 test_unreadable\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"GET /%s HTTP/1.0\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"../test_unreadable\00", align 1
@c_str_ne = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"rm -f test_unreadable\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"HTTP/1.1 403\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"/please_dont_create_this_file_srsly\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"HTTP/1.1 404\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @test_http_errors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @test_http_errors() #0 {
  %1 = alloca %struct.mg_mgr, align 4
  %2 = alloca %struct.mg_connection*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca [1000 x i8], align 16
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  %5 = bitcast [1000 x i8]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %5, i8 0, i64 1000, i1 false)
  %6 = call i32 @mg_mgr_init(%struct.mg_mgr* %1, i32* null)
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_http_server_opts, i32 0, i32 0), align 8
  %7 = load i8*, i8** %3, align 8
  %8 = load i32, i32* @cb1, align 4
  %9 = call %struct.mg_connection* @mg_bind(%struct.mg_mgr* %1, i8* %7, i32 %8)
  store %struct.mg_connection* %9, %struct.mg_connection** %2, align 8
  %10 = icmp ne %struct.mg_connection* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @ASSERT(i32 %11)
  %13 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %14 = call i32 @mg_set_protocol_http_websocket(%struct.mg_connection* %13)
  %15 = load i8*, i8** %3, align 8
  %16 = load i32, i32* @cb8, align 4
  %17 = call %struct.mg_connection* @mg_connect(%struct.mg_mgr* %1, i8* %15, i32 %16)
  store %struct.mg_connection* %17, %struct.mg_connection** %2, align 8
  %18 = icmp ne %struct.mg_connection* %17, null
  %19 = zext i1 %18 to i32
  %20 = call i32 @ASSERT(i32 %19)
  %21 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %22 = call i32 @mg_set_protocol_http_websocket(%struct.mg_connection* %21)
  %23 = getelementptr inbounds [1000 x i8], [1000 x i8]* %4, i64 0, i64 0
  %24 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %25 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %24, i32 0, i32 0
  store i8* %23, i8** %25, align 8
  %26 = call i32 @system(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %27 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %28 = call i32 @mg_printf(%struct.mg_connection* %27, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %29 = load i32, i32* @c_str_ne, align 4
  %30 = getelementptr inbounds [1000 x i8], [1000 x i8]* %4, i64 0, i64 0
  %31 = call i32 @poll_until(%struct.mg_mgr* %1, i32 1, i32 %29, i8* %30, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0))
  %32 = call i32 @system(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  %33 = getelementptr inbounds [1000 x i8], [1000 x i8]* %4, i64 0, i64 0
  %34 = call i32 @ASSERT_STREQ_NZ(i8* %33, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  %35 = load i8*, i8** %3, align 8
  %36 = load i32, i32* @cb8, align 4
  %37 = call %struct.mg_connection* @mg_connect(%struct.mg_mgr* %1, i8* %35, i32 %36)
  store %struct.mg_connection* %37, %struct.mg_connection** %2, align 8
  %38 = icmp ne %struct.mg_connection* %37, null
  %39 = zext i1 %38 to i32
  %40 = call i32 @ASSERT(i32 %39)
  %41 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %42 = call i32 @mg_set_protocol_http_websocket(%struct.mg_connection* %41)
  %43 = getelementptr inbounds [1000 x i8], [1000 x i8]* %4, i64 0, i64 0
  store i8 0, i8* %43, align 16
  %44 = getelementptr inbounds [1000 x i8], [1000 x i8]* %4, i64 0, i64 0
  %45 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %46 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %45, i32 0, i32 0
  store i8* %44, i8** %46, align 8
  %47 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %48 = call i32 @mg_printf(%struct.mg_connection* %47, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0))
  %49 = load i32, i32* @c_str_ne, align 4
  %50 = getelementptr inbounds [1000 x i8], [1000 x i8]* %4, i64 0, i64 0
  %51 = call i32 @poll_until(%struct.mg_mgr* %1, i32 1, i32 %49, i8* %50, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0))
  %52 = getelementptr inbounds [1000 x i8], [1000 x i8]* %4, i64 0, i64 0
  %53 = call i32 @ASSERT_STREQ_NZ(i8* %52, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  %54 = call i32 @mg_mgr_free(%struct.mg_mgr* %1)
  ret i8* null
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mg_mgr_init(%struct.mg_mgr*, i32*) #2

declare dso_local i32 @ASSERT(i32) #2

declare dso_local %struct.mg_connection* @mg_bind(%struct.mg_mgr*, i8*, i32) #2

declare dso_local i32 @mg_set_protocol_http_websocket(%struct.mg_connection*) #2

declare dso_local %struct.mg_connection* @mg_connect(%struct.mg_mgr*, i8*, i32) #2

declare dso_local i32 @system(i8*) #2

declare dso_local i32 @mg_printf(%struct.mg_connection*, i8*, i8*) #2

declare dso_local i32 @poll_until(%struct.mg_mgr*, i32, i32, i8*, i8*) #2

declare dso_local i32 @ASSERT_STREQ_NZ(i8*, i8*) #2

declare dso_local i32 @mg_mgr_free(%struct.mg_mgr*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
