; ModuleID = '/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_test_connect_ws.c'
source_filename = "/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_test_connect_ws.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_mgr = type { i32 }
%struct.mg_connection = type { i8* }

@.str = private unnamed_addr constant [23 x i8] c"ws://127.0.0.1:7778/ws\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"http://127.0.0.1:7778/ws\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"127.0.0.1:7778/ws\00", align 1
@__const.test_connect_ws.urls = private unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), i8* null], align 16
@.str.3 = private unnamed_addr constant [15 x i8] c"127.0.0.1:7778\00", align 1
@cb3 = common dso_local global i32 0, align 4
@cb4 = common dso_local global i32 0, align 4
@c_str_ne = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @test_connect_ws to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @test_connect_ws() #0 {
  %1 = alloca %struct.mg_mgr, align 4
  %2 = alloca %struct.mg_connection*, align 8
  %3 = alloca [4 x i8*], align 16
  %4 = alloca i8**, align 8
  %5 = alloca [20 x i8], align 16
  %6 = bitcast [4 x i8*]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %6, i8* align 16 bitcast ([4 x i8*]* @__const.test_connect_ws.urls to i8*), i64 32, i1 false)
  %7 = call i32 @mg_mgr_init(%struct.mg_mgr* %1, i32* null)
  %8 = load i32, i32* @cb3, align 4
  %9 = call %struct.mg_connection* @mg_bind(%struct.mg_mgr* %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %8)
  store %struct.mg_connection* %9, %struct.mg_connection** %2, align 8
  %10 = icmp ne %struct.mg_connection* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @ASSERT(i32 %11)
  %13 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %14 = call i32 @mg_set_protocol_http_websocket(%struct.mg_connection* %13)
  %15 = getelementptr inbounds [4 x i8*], [4 x i8*]* %3, i64 0, i64 0
  store i8** %15, i8*** %4, align 8
  br label %16

16:                                               ; preds = %35, %0
  %17 = load i8**, i8*** %4, align 8
  %18 = load i8*, i8** %17, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %38

20:                                               ; preds = %16
  %21 = bitcast [20 x i8]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %21, i8 0, i64 20, i1 false)
  %22 = load i32, i32* @cb4, align 4
  %23 = call %struct.mg_connection* @mg_connect_ws(%struct.mg_mgr* %1, i32 %22, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32* null, i32* null)
  store %struct.mg_connection* %23, %struct.mg_connection** %2, align 8
  %24 = icmp ne %struct.mg_connection* %23, null
  %25 = zext i1 %24 to i32
  %26 = call i32 @ASSERT(i32 %25)
  %27 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0
  %28 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %29 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %28, i32 0, i32 0
  store i8* %27, i8** %29, align 8
  %30 = load i32, i32* @c_str_ne, align 4
  %31 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0
  %32 = call i32 @poll_until(%struct.mg_mgr* %1, i32 1, i32 %30, i8* %31, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0))
  %33 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0
  %34 = call i32 @ASSERT_STREQ(i8* %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %35

35:                                               ; preds = %20
  %36 = load i8**, i8*** %4, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i32 1
  store i8** %37, i8*** %4, align 8
  br label %16

38:                                               ; preds = %16
  %39 = call i32 @mg_mgr_free(%struct.mg_mgr* %1)
  ret i8* null
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @mg_mgr_init(%struct.mg_mgr*, i32*) #2

declare dso_local i32 @ASSERT(i32) #2

declare dso_local %struct.mg_connection* @mg_bind(%struct.mg_mgr*, i8*, i32) #2

declare dso_local i32 @mg_set_protocol_http_websocket(%struct.mg_connection*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.mg_connection* @mg_connect_ws(%struct.mg_mgr*, i32, i8*, i32*, i32*) #2

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
