; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/math/extr_vmx_syscall.c_test_vmx_syscall.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/math/extr_vmx_syscall.c_test_vmx_syscall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_vmx_syscall() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = call i32 (...) @fork()
  store i32 %5, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = icmp eq i32 %6, -1
  %8 = zext i1 %7 to i32
  %9 = call i32 @FAIL_IF(i32 %8)
  %10 = call i32 (...) @fork()
  store i32 %10, i32* %1, align 4
  %11 = call i32 (...) @vmx_syscall()
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %1, align 4
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %15

14:                                               ; preds = %0
  store i32 1, i32* %4, align 4
  store i32 1, i32* %3, align 4
  br label %25

15:                                               ; preds = %0
  %16 = load i32, i32* %1, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i32, i32* %1, align 4
  %20 = call i32 @waitpid(i32 %19, i32* %4, i32 0)
  br label %24

21:                                               ; preds = %15
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @exit(i32 %22) #3
  unreachable

24:                                               ; preds = %18
  br label %25

25:                                               ; preds = %24, %14
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* %3, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %2, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i32, i32* %2, align 4
  %33 = call i32 @waitpid(i32 %32, i32* %4, i32 0)
  br label %37

34:                                               ; preds = %25
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @exit(i32 %35) #3
  unreachable

37:                                               ; preds = %31
  %38 = load i32, i32* %3, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* %4, align 4
  %42 = icmp ne i32 %41, 0
  br label %43

43:                                               ; preds = %40, %37
  %44 = phi i1 [ true, %37 ], [ %42, %40 ]
  %45 = zext i1 %44 to i32
  %46 = call i32 @FAIL_IF(i32 %45)
  ret i32 0
}

declare dso_local i32 @fork(...) #1

declare dso_local i32 @FAIL_IF(i32) #1

declare dso_local i32 @vmx_syscall(...) #1

declare dso_local i32 @waitpid(i32, i32*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
