; ModuleID = '/home/carl/AnghaBench/micropython/ports/teensy/core/extr_mk20dx128.c_nvic_execution_priority.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/teensy/core/extr_mk20dx128.c_nvic_execution_priority.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvic_execution_priority() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 256, i32* %2, align 4
  %7 = call i32 asm sideeffect "mrs $0, faultmask\0A", "=r,~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %0
  store i32 -1, i32* %1, align 4
  br label %41

11:                                               ; preds = %0
  %12 = call i32 asm sideeffect "mrs $0, primask\0A", "=r,~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !3
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  store i32 0, i32* %1, align 4
  br label %41

16:                                               ; preds = %11
  %17 = call i32 asm sideeffect "mrs $0, ipsr\0A", "=r,~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !4
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %16
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 16
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %28

24:                                               ; preds = %20
  %25 = load i32, i32* %6, align 4
  %26 = sub nsw i32 %25, 16
  %27 = call i32 @NVIC_GET_PRIORITY(i32 %26)
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %24, %23
  br label %29

29:                                               ; preds = %28, %16
  %30 = call i32 asm sideeffect "mrs $0, basepri\0A", "=r,~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !5
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %2, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i32, i32* %5, align 4
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %37, %33, %29
  %40 = load i32, i32* %2, align 4
  store i32 %40, i32* %1, align 4
  br label %41

41:                                               ; preds = %39, %15, %10
  %42 = load i32, i32* %1, align 4
  ret i32 %42
}

declare dso_local i32 @NVIC_GET_PRIORITY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 317}
!3 = !{i32 407}
!4 = !{i32 490}
!5 = !{i32 638}
