; ModuleID = '/home/carl/AnghaBench/openssl/crypto/extr_mem_dbg.c_mem_check_on.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/extr_mem_dbg.c_mem_check_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mh_mode = common dso_local global i32 0, align 4
@CRYPTO_MEM_CHECK_ON = common dso_local global i32 0, align 4
@memdbg_init = common dso_local global i32 0, align 4
@do_memdbg_init = common dso_local global i32 0, align 4
@memdbg_lock = common dso_local global i32 0, align 4
@CRYPTO_MEM_CHECK_ENABLE = common dso_local global i32 0, align 4
@disabling_threadid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @mem_check_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mem_check_on() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  %4 = load i32, i32* @mh_mode, align 4
  %5 = load i32, i32* @CRYPTO_MEM_CHECK_ON, align 4
  %6 = and i32 %4, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %32

8:                                                ; preds = %0
  %9 = load i32, i32* @do_memdbg_init, align 4
  %10 = call i32 @RUN_ONCE(i32* @memdbg_init, i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  store i32 0, i32* %1, align 4
  br label %34

13:                                               ; preds = %8
  %14 = call i32 (...) @CRYPTO_THREAD_get_current_id()
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* @memdbg_lock, align 4
  %16 = call i32 @CRYPTO_THREAD_read_lock(i32 %15)
  %17 = load i32, i32* @mh_mode, align 4
  %18 = load i32, i32* @CRYPTO_MEM_CHECK_ENABLE, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %13
  %22 = load i32, i32* @disabling_threadid, align 4
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @CRYPTO_THREAD_compare_id(i32 %22, i32 %23)
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  br label %27

27:                                               ; preds = %21, %13
  %28 = phi i1 [ true, %13 ], [ %26, %21 ]
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %2, align 4
  %30 = load i32, i32* @memdbg_lock, align 4
  %31 = call i32 @CRYPTO_THREAD_unlock(i32 %30)
  br label %32

32:                                               ; preds = %27, %0
  %33 = load i32, i32* %2, align 4
  store i32 %33, i32* %1, align 4
  br label %34

34:                                               ; preds = %32, %12
  %35 = load i32, i32* %1, align 4
  ret i32 %35
}

declare dso_local i32 @RUN_ONCE(i32*, i32) #1

declare dso_local i32 @CRYPTO_THREAD_get_current_id(...) #1

declare dso_local i32 @CRYPTO_THREAD_read_lock(i32) #1

declare dso_local i32 @CRYPTO_THREAD_compare_id(i32, i32) #1

declare dso_local i32 @CRYPTO_THREAD_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
