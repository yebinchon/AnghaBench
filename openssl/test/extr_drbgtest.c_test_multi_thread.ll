; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_drbgtest.c_test_multi_thread.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_drbgtest.c_test_multi_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@THREADS = common dso_local global i32 0, align 4
@multi_thread_rand_bytes_succeeded = common dso_local global i32 0, align 4
@multi_thread_rand_priv_bytes_succeeded = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_multi_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_multi_thread() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i32, i32* @THREADS, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %2, align 8
  %9 = alloca i32, i64 %7, align 16
  store i64 %7, i64* %3, align 8
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %19, %0
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @THREADS, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %22

14:                                               ; preds = %10
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %9, i64 %16
  %18 = call i32 @run_thread(i32* %17)
  br label %19

19:                                               ; preds = %14
  %20 = load i32, i32* %4, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %4, align 4
  br label %10

22:                                               ; preds = %10
  %23 = call i32 (...) @run_multi_thread_test()
  store i32 0, i32* %4, align 4
  br label %24

24:                                               ; preds = %34, %22
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @THREADS, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %24
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %9, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @wait_for_thread(i32 %32)
  br label %34

34:                                               ; preds = %28
  %35 = load i32, i32* %4, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %4, align 4
  br label %24

37:                                               ; preds = %24
  %38 = load i32, i32* @multi_thread_rand_bytes_succeeded, align 4
  %39 = call i32 @TEST_true(i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %37
  store i32 0, i32* %1, align 4
  store i32 1, i32* %5, align 4
  br label %48

42:                                               ; preds = %37
  %43 = load i32, i32* @multi_thread_rand_priv_bytes_succeeded, align 4
  %44 = call i32 @TEST_true(i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %42
  store i32 0, i32* %1, align 4
  store i32 1, i32* %5, align 4
  br label %48

47:                                               ; preds = %42
  store i32 1, i32* %1, align 4
  store i32 1, i32* %5, align 4
  br label %48

48:                                               ; preds = %47, %46, %41
  %49 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %49)
  %50 = load i32, i32* %1, align 4
  ret i32 %50
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @run_thread(i32*) #2

declare dso_local i32 @run_multi_thread_test(...) #2

declare dso_local i32 @wait_for_thread(i32) #2

declare dso_local i32 @TEST_true(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
