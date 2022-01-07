; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/x86/extr_sysret_rip.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/x86/extr_sysret_rip.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SIGUSR1 = common dso_local global i32 0, align 4
@sigusr1 = common dso_local global i32 0, align 4
@SIGSEGV = common dso_local global i32 0, align 4
@sigsegv_for_fallthrough = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %4 = load i32, i32* @SIGUSR1, align 4
  %5 = load i32, i32* @sigusr1, align 4
  %6 = call i32 @sethandler(i32 %4, i32 %5, i32 0)
  store i32 47, i32* %2, align 4
  br label %7

7:                                                ; preds = %15, %0
  %8 = load i32, i32* %2, align 4
  %9 = icmp slt i32 %8, 64
  br i1 %9, label %10, label %18

10:                                               ; preds = %7
  %11 = load i32, i32* %2, align 4
  %12 = zext i32 %11 to i64
  %13 = shl i64 1, %12
  %14 = call i32 @test_sigreturn_to(i64 %13)
  br label %15

15:                                               ; preds = %10
  %16 = load i32, i32* %2, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %2, align 4
  br label %7

18:                                               ; preds = %7
  %19 = load i32, i32* @SIGUSR1, align 4
  %20 = call i32 @clearhandler(i32 %19)
  %21 = load i32, i32* @SIGSEGV, align 4
  %22 = load i32, i32* @sigsegv_for_fallthrough, align 4
  %23 = call i32 @sethandler(i32 %21, i32 %22, i32 0)
  %24 = load i32, i32* @PAGE_SIZE, align 4
  %25 = mul nsw i32 2, %24
  %26 = sext i32 %25 to i64
  %27 = sub i64 140737488355328, %26
  %28 = call i32 @test_syscall_fallthrough_to(i64 %27)
  store i32 47, i32* %3, align 4
  br label %29

29:                                               ; preds = %44, %18
  %30 = load i32, i32* %3, align 4
  %31 = icmp slt i32 %30, 64
  br i1 %31, label %32, label %47

32:                                               ; preds = %29
  %33 = load i32, i32* %3, align 4
  %34 = zext i32 %33 to i64
  %35 = shl i64 1, %34
  %36 = load i32, i32* @PAGE_SIZE, align 4
  %37 = sext i32 %36 to i64
  %38 = sub i64 %35, %37
  %39 = call i32 @test_syscall_fallthrough_to(i64 %38)
  %40 = load i32, i32* %3, align 4
  %41 = zext i32 %40 to i64
  %42 = shl i64 1, %41
  %43 = call i32 @test_syscall_fallthrough_to(i64 %42)
  br label %44

44:                                               ; preds = %32
  %45 = load i32, i32* %3, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %3, align 4
  br label %29

47:                                               ; preds = %29
  ret i32 0
}

declare dso_local i32 @sethandler(i32, i32, i32) #1

declare dso_local i32 @test_sigreturn_to(i64) #1

declare dso_local i32 @clearhandler(i32) #1

declare dso_local i32 @test_syscall_fallthrough_to(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
