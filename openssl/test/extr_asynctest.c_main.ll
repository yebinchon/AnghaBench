; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_asynctest.c_main.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_asynctest.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"OpenSSL build is not ASYNC capable - skipping async tests\0A\00", align 1
@CRYPTO_MEM_CHECK_ON = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"PASS\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %6 = call i32 (...) @ASYNC_is_capable()
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* @stderr, align 4
  %10 = call i32 @fprintf(i32 %9, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  br label %34

11:                                               ; preds = %2
  %12 = call i32 @CRYPTO_set_mem_debug(i32 1)
  %13 = load i32, i32* @CRYPTO_MEM_CHECK_ON, align 4
  %14 = call i32 @CRYPTO_mem_ctrl(i32 %13)
  %15 = call i32 (...) @test_ASYNC_init_thread()
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %32

17:                                               ; preds = %11
  %18 = call i32 (...) @test_ASYNC_callback_status()
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %17
  %21 = call i32 (...) @test_ASYNC_start_job()
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %20
  %24 = call i32 (...) @test_ASYNC_get_current_job()
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = call i32 (...) @test_ASYNC_WAIT_CTX_get_all_fds()
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = call i32 (...) @test_ASYNC_block_pause()
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %29, %26, %23, %20, %17, %11
  store i32 1, i32* %3, align 4
  br label %36

33:                                               ; preds = %29
  br label %34

34:                                               ; preds = %33, %8
  %35 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %34, %32
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @ASYNC_is_capable(...) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @CRYPTO_set_mem_debug(i32) #1

declare dso_local i32 @CRYPTO_mem_ctrl(i32) #1

declare dso_local i32 @test_ASYNC_init_thread(...) #1

declare dso_local i32 @test_ASYNC_callback_status(...) #1

declare dso_local i32 @test_ASYNC_start_job(...) #1

declare dso_local i32 @test_ASYNC_get_current_job(...) #1

declare dso_local i32 @test_ASYNC_WAIT_CTX_get_all_fds(...) #1

declare dso_local i32 @test_ASYNC_block_pause(...) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
