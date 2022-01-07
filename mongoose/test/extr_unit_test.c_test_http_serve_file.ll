; ModuleID = '/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_test_http_serve_file.c'
source_filename = "/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_test_http_serve_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_mgr = type { i32 }
%struct.mg_connection = type { i8* }

@.str = private unnamed_addr constant [15 x i8] c"127.0.0.1:7777\00", align 1
@serve_file_cb = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"GET / HTTP/1.1\0D\0A\0D\0A\00", align 1
@c_str_ne = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"success\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @test_http_serve_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @test_http_serve_file() #0 {
  %1 = alloca %struct.mg_mgr, align 4
  %2 = alloca %struct.mg_connection*, align 8
  %3 = alloca %struct.mg_connection*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [100 x i8], align 16
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  %6 = call i32 @mg_mgr_init(%struct.mg_mgr* %1, i32* null)
  %7 = load i8*, i8** %4, align 8
  %8 = load i32, i32* @serve_file_cb, align 4
  %9 = call %struct.mg_connection* @mg_bind(%struct.mg_mgr* %1, i8* %7, i32 %8)
  store %struct.mg_connection* %9, %struct.mg_connection** %2, align 8
  %10 = icmp ne %struct.mg_connection* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @ASSERT(i32 %11)
  %13 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %14 = call i32 @mg_set_protocol_http_websocket(%struct.mg_connection* %13)
  %15 = load i8*, i8** %4, align 8
  %16 = load i32, i32* @serve_file_cb, align 4
  %17 = call %struct.mg_connection* @mg_connect(%struct.mg_mgr* %1, i8* %15, i32 %16)
  store %struct.mg_connection* %17, %struct.mg_connection** %3, align 8
  %18 = icmp ne %struct.mg_connection* %17, null
  %19 = zext i1 %18 to i32
  %20 = call i32 @ASSERT(i32 %19)
  %21 = load %struct.mg_connection*, %struct.mg_connection** %3, align 8
  %22 = call i32 @mg_set_protocol_http_websocket(%struct.mg_connection* %21)
  %23 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  store i8 0, i8* %23, align 16
  %24 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  %25 = load %struct.mg_connection*, %struct.mg_connection** %3, align 8
  %26 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %25, i32 0, i32 0
  store i8* %24, i8** %26, align 8
  %27 = load %struct.mg_connection*, %struct.mg_connection** %3, align 8
  %28 = call i32 @mg_printf(%struct.mg_connection* %27, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* @c_str_ne, align 4
  %30 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  %31 = call i32 @poll_until(%struct.mg_mgr* %1, i32 5, i32 %29, i8* %30, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  %32 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  %33 = call i32 @ASSERT_STREQ(i8* %32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %34 = call i32 @mg_mgr_free(%struct.mg_mgr* %1)
  ret i8* null
}

declare dso_local i32 @mg_mgr_init(%struct.mg_mgr*, i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local %struct.mg_connection* @mg_bind(%struct.mg_mgr*, i8*, i32) #1

declare dso_local i32 @mg_set_protocol_http_websocket(%struct.mg_connection*) #1

declare dso_local %struct.mg_connection* @mg_connect(%struct.mg_mgr*, i8*, i32) #1

declare dso_local i32 @mg_printf(%struct.mg_connection*, i8*) #1

declare dso_local i32 @poll_until(%struct.mg_mgr*, i32, i32, i8*, i8*) #1

declare dso_local i32 @ASSERT_STREQ(i8*, i8*) #1

declare dso_local i32 @mg_mgr_free(%struct.mg_mgr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
