; ModuleID = '/home/carl/AnghaBench/memcached/extr_testapp.c_test_binary_pipeline_hickup.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_testapp.c_test_binary_pipeline_hickup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@allow_closed_read = common dso_local global i32 0, align 4
@hickup_thread_running = common dso_local global i32 0, align 4
@binary_hickup_recv_verification_thread = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Can't create thread: %s\0A\00", align 1
@TEST_FAIL = common dso_local global i32 0, align 4
@PROTOCOL_BINARY_CMD_QUITQ = common dso_local global i32 0, align 4
@TEST_PASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_binary_pipeline_hickup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_binary_pipeline_hickup() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i64 66560, i64* %2, align 8
  %8 = load i64, i64* %2, align 8
  %9 = call i8* @malloc(i64 %8)
  store i8* %9, i8** %3, align 8
  store i32 1, i32* @allow_closed_read, align 4
  store i32 1, i32* @hickup_thread_running, align 4
  %10 = load i32, i32* @binary_hickup_recv_verification_thread, align 4
  %11 = call i32 @pthread_create(i32* %5, i32* null, i32 %10, i32* null)
  store i32 %11, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %0
  %14 = load i32, i32* @stderr, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i8* @strerror(i32 %15)
  %17 = call i32 @fprintf(i32 %14, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %16)
  %18 = load i8*, i8** %3, align 8
  %19 = call i32 @free(i8* %18)
  %20 = load i32, i32* @TEST_FAIL, align 4
  store i32 %20, i32* %1, align 4
  br label %49

21:                                               ; preds = %0
  %22 = call i32 @usleep(i32 250)
  %23 = call i64 @time(i32* null)
  %24 = trunc i64 %23 to i32
  %25 = call i32 @srand(i32 %24)
  store i32 0, i32* %4, align 4
  br label %26

26:                                               ; preds = %33, %21
  %27 = load i32, i32* %4, align 4
  %28 = icmp slt i32 %27, 2
  br i1 %28, label %29, label %36

29:                                               ; preds = %26
  %30 = load i8*, i8** %3, align 8
  %31 = load i64, i64* %2, align 8
  %32 = call i32 @test_binary_pipeline_hickup_chunk(i8* %30, i64 %31)
  br label %33

33:                                               ; preds = %29
  %34 = load i32, i32* %4, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %4, align 4
  br label %26

36:                                               ; preds = %26
  %37 = load i8*, i8** %3, align 8
  %38 = load i64, i64* %2, align 8
  %39 = load i32, i32* @PROTOCOL_BINARY_CMD_QUITQ, align 4
  %40 = call i64 @raw_command(i8* %37, i64 %38, i32 %39, i32* null, i32 0, i32* null, i32 0)
  store i64 %40, i64* %7, align 8
  %41 = load i8*, i8** %3, align 8
  %42 = load i64, i64* %7, align 8
  %43 = call i32 @safe_send(i8* %41, i64 %42, i32 0)
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @pthread_join(i32 %44, i32* null)
  %46 = load i8*, i8** %3, align 8
  %47 = call i32 @free(i8* %46)
  %48 = load i32, i32* @TEST_PASS, align 4
  store i32 %48, i32* %1, align 4
  br label %49

49:                                               ; preds = %36, %13
  %50 = load i32, i32* %1, align 4
  ret i32 %50
}

declare dso_local i8* @malloc(i64) #1

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @usleep(i32) #1

declare dso_local i32 @srand(i32) #1

declare dso_local i64 @time(i32*) #1

declare dso_local i32 @test_binary_pipeline_hickup_chunk(i8*, i64) #1

declare dso_local i64 @raw_command(i8*, i64, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @safe_send(i8*, i64, i32) #1

declare dso_local i32 @pthread_join(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
