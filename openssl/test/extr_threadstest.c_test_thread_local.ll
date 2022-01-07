; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_threadstest.c_test_thread_local.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_threadstest.c_test_thread_local.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@thread_local_key = common dso_local global i32 0, align 4
@thread_local_destructor = common dso_local global i32 0, align 4
@thread_local_thread_cb = common dso_local global i32 0, align 4
@thread_local_thread_cb_ok = common dso_local global i32 0, align 4
@destructor_run_count = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_thread_local to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_thread_local() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* null, i8** %3, align 8
  %4 = load i32, i32* @thread_local_destructor, align 4
  %5 = call i32 @CRYPTO_THREAD_init_local(i32* @thread_local_key, i32 %4)
  %6 = call i32 @TEST_true(i32 %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %35

9:                                                ; preds = %0
  %10 = call i8* @CRYPTO_THREAD_get_local(i32* @thread_local_key)
  store i8* %10, i8** %3, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = call i32 @TEST_ptr_null(i8* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %28

14:                                               ; preds = %9
  %15 = load i32, i32* @thread_local_thread_cb, align 4
  %16 = call i32 @run_thread(i32* %2, i32 %15)
  %17 = call i32 @TEST_true(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %14
  %20 = load i32, i32* %2, align 4
  %21 = call i32 @wait_for_thread(i32 %20)
  %22 = call i32 @TEST_true(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load i32, i32* @thread_local_thread_cb_ok, align 4
  %26 = call i32 @TEST_int_eq(i32 %25, i32 1)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %24, %19, %14, %9
  store i32 0, i32* %1, align 4
  br label %35

29:                                               ; preds = %24
  %30 = call i32 @CRYPTO_THREAD_cleanup_local(i32* @thread_local_key)
  %31 = call i32 @TEST_true(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  store i32 0, i32* %1, align 4
  br label %35

34:                                               ; preds = %29
  store i32 1, i32* %1, align 4
  br label %35

35:                                               ; preds = %34, %33, %28, %8
  %36 = load i32, i32* %1, align 4
  ret i32 %36
}

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @CRYPTO_THREAD_init_local(i32*, i32) #1

declare dso_local i8* @CRYPTO_THREAD_get_local(i32*) #1

declare dso_local i32 @TEST_ptr_null(i8*) #1

declare dso_local i32 @run_thread(i32*, i32) #1

declare dso_local i32 @wait_for_thread(i32) #1

declare dso_local i32 @TEST_int_eq(i32, i32) #1

declare dso_local i32 @CRYPTO_THREAD_cleanup_local(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
