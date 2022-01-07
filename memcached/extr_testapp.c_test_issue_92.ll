; ModuleID = '/home/carl/AnghaBench/memcached/extr_testapp.c_test_issue_92.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_testapp.c_test_issue_92.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@port = common dso_local global i32 0, align 4
@enable_ssl = common dso_local global i32 0, align 4
@con = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"stats cachedump 1 0 0\0D\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"END\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"stats cachedump 200 0 0\0D\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"CLIENT_ERROR\00", align 1
@TEST_PASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_issue_92 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_issue_92() #0 {
  %1 = alloca [1024 x i8], align 16
  %2 = call i32 (...) @close_conn()
  %3 = load i32, i32* @port, align 4
  %4 = load i32, i32* @enable_ssl, align 4
  %5 = call i32 @connect_server(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %3, i32 0, i32 %4)
  store i32 %5, i32* @con, align 4
  %6 = load i32, i32* @con, align 4
  %7 = call i32 @assert(i32 %6)
  %8 = call i32 @send_ascii_command(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %9 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %10 = call i32 @read_ascii_response(i8* %9, i32 1024)
  %11 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %12 = call i32 @strlen(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %13 = call i64 @strncmp(i8* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %12)
  %14 = icmp eq i64 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = call i32 @send_ascii_command(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %18 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %19 = call i32 @read_ascii_response(i8* %18, i32 1024)
  %20 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %21 = call i32 @strlen(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %22 = call i64 @strncmp(i8* %20, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %21)
  %23 = icmp eq i64 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = call i32 (...) @close_conn()
  %27 = load i32, i32* @port, align 4
  %28 = load i32, i32* @enable_ssl, align 4
  %29 = call i32 @connect_server(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %27, i32 0, i32 %28)
  store i32 %29, i32* @con, align 4
  %30 = load i32, i32* @con, align 4
  %31 = call i32 @assert(i32 %30)
  %32 = load i32, i32* @TEST_PASS, align 4
  ret i32 %32
}

declare dso_local i32 @close_conn(...) #1

declare dso_local i32 @connect_server(i8*, i32, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @send_ascii_command(i8*) #1

declare dso_local i32 @read_ascii_response(i8*, i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
