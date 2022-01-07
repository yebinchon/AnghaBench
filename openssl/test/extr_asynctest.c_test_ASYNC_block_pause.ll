; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_asynctest.c_test_ASYNC_block_pause.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_asynctest.c_test_ASYNC_block_pause.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@blockpause = common dso_local global i32 0, align 4
@ASYNC_PAUSE = common dso_local global i64 0, align 8
@ASYNC_FINISH = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"test_ASYNC_block_pause() failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_ASYNC_block_pause to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_ASYNC_block_pause() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store i32* null, i32** %2, align 8
  store i32* null, i32** %4, align 8
  %5 = call i32 @ASYNC_init_thread(i32 1, i32 0)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %25

7:                                                ; preds = %0
  %8 = call i32* (...) @ASYNC_WAIT_CTX_new()
  store i32* %8, i32** %4, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %25, label %10

10:                                               ; preds = %7
  %11 = load i32*, i32** %4, align 8
  %12 = load i32, i32* @blockpause, align 4
  %13 = call i64 @ASYNC_start_job(i32** %2, i32* %11, i32* %3, i32 %12, i32* null, i32 0)
  %14 = load i64, i64* @ASYNC_PAUSE, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %25, label %16

16:                                               ; preds = %10
  %17 = load i32*, i32** %4, align 8
  %18 = load i32, i32* @blockpause, align 4
  %19 = call i64 @ASYNC_start_job(i32** %2, i32* %17, i32* %3, i32 %18, i32* null, i32 0)
  %20 = load i64, i64* @ASYNC_FINISH, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %25, label %22

22:                                               ; preds = %16
  %23 = load i32, i32* %3, align 4
  %24 = icmp ne i32 %23, 1
  br i1 %24, label %25, label %31

25:                                               ; preds = %22, %16, %10, %7, %0
  %26 = load i32, i32* @stderr, align 4
  %27 = call i32 @fprintf(i32 %26, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 @ASYNC_WAIT_CTX_free(i32* %28)
  %30 = call i32 (...) @ASYNC_cleanup_thread()
  store i32 0, i32* %1, align 4
  br label %35

31:                                               ; preds = %22
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @ASYNC_WAIT_CTX_free(i32* %32)
  %34 = call i32 (...) @ASYNC_cleanup_thread()
  store i32 1, i32* %1, align 4
  br label %35

35:                                               ; preds = %31, %25
  %36 = load i32, i32* %1, align 4
  ret i32 %36
}

declare dso_local i32 @ASYNC_init_thread(i32, i32) #1

declare dso_local i32* @ASYNC_WAIT_CTX_new(...) #1

declare dso_local i64 @ASYNC_start_job(i32**, i32*, i32*, i32, i32*, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @ASYNC_WAIT_CTX_free(i32*) #1

declare dso_local i32 @ASYNC_cleanup_thread(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
