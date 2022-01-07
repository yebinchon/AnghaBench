; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/arch/i386/extr_xboxcons.c_XboxConsPutChar.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/arch/i386/extr_xboxcons.c_XboxConsPutChar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CurrentCursorX = common dso_local global i32 0, align 4
@CurrentCursorY = common dso_local global i32 0, align 4
@CurrentAttr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @XboxConsPutChar(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp eq i32 13, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* @CurrentCursorX, align 4
  br label %33

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = icmp eq i32 10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  store i32 0, i32* @CurrentCursorX, align 4
  %14 = load i32, i32* @CurrentCursorY, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* @CurrentCursorY, align 4
  br label %32

16:                                               ; preds = %10
  %17 = load i32, i32* %3, align 4
  %18 = icmp eq i32 9, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = load i32, i32* @CurrentCursorX, align 4
  %21 = add nsw i32 %20, 8
  %22 = and i32 %21, -8
  store i32 %22, i32* @CurrentCursorX, align 4
  br label %31

23:                                               ; preds = %16
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @CurrentAttr, align 4
  %26 = load i32, i32* @CurrentCursorX, align 4
  %27 = load i32, i32* @CurrentCursorY, align 4
  %28 = call i32 @XboxVideoPutChar(i32 %24, i32 %25, i32 %26, i32 %27)
  %29 = load i32, i32* @CurrentCursorX, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* @CurrentCursorX, align 4
  br label %31

31:                                               ; preds = %23, %19
  br label %32

32:                                               ; preds = %31, %13
  br label %33

33:                                               ; preds = %32, %9
  %34 = call i32 @XboxVideoGetDisplaySize(i32* %4, i32* %5, i32* %6)
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @CurrentCursorX, align 4
  %37 = icmp sle i32 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  store i32 0, i32* @CurrentCursorX, align 4
  %39 = load i32, i32* @CurrentCursorY, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* @CurrentCursorY, align 4
  br label %41

41:                                               ; preds = %38, %33
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @XboxVideoPutChar(i32, i32, i32, i32) #1

declare dso_local i32 @XboxVideoGetDisplaySize(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
