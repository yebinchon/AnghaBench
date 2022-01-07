; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/ai03/orbit/extr_orbit.c_led_toggle.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/ai03/orbit/extr_orbit.c_led_toggle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@isLeftHand = common dso_local global i64 0, align 8
@C6 = common dso_local global i32 0, align 4
@B6 = common dso_local global i32 0, align 4
@B5 = common dso_local global i32 0, align 4
@F6 = common dso_local global i32 0, align 4
@F7 = common dso_local global i32 0, align 4
@C7 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @led_toggle(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i64, i64* @isLeftHand, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %41

7:                                                ; preds = %2
  %8 = load i32, i32* %3, align 4
  switch i32 %8, label %39 [
    i32 0, label %9
    i32 1, label %19
    i32 2, label %29
  ]

9:                                                ; preds = %7
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load i32, i32* @C6, align 4
  %14 = call i32 @writePinHigh(i32 %13)
  br label %18

15:                                               ; preds = %9
  %16 = load i32, i32* @C6, align 4
  %17 = call i32 @writePinLow(i32 %16)
  br label %18

18:                                               ; preds = %15, %12
  br label %40

19:                                               ; preds = %7
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i32, i32* @B6, align 4
  %24 = call i32 @writePinHigh(i32 %23)
  br label %28

25:                                               ; preds = %19
  %26 = load i32, i32* @B6, align 4
  %27 = call i32 @writePinLow(i32 %26)
  br label %28

28:                                               ; preds = %25, %22
  br label %40

29:                                               ; preds = %7
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i32, i32* @B5, align 4
  %34 = call i32 @writePinHigh(i32 %33)
  br label %38

35:                                               ; preds = %29
  %36 = load i32, i32* @B5, align 4
  %37 = call i32 @writePinLow(i32 %36)
  br label %38

38:                                               ; preds = %35, %32
  br label %40

39:                                               ; preds = %7
  br label %40

40:                                               ; preds = %39, %38, %28, %18
  br label %75

41:                                               ; preds = %2
  %42 = load i32, i32* %3, align 4
  switch i32 %42, label %73 [
    i32 3, label %43
    i32 4, label %53
    i32 5, label %63
  ]

43:                                               ; preds = %41
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i32, i32* @F6, align 4
  %48 = call i32 @writePinHigh(i32 %47)
  br label %52

49:                                               ; preds = %43
  %50 = load i32, i32* @F6, align 4
  %51 = call i32 @writePinLow(i32 %50)
  br label %52

52:                                               ; preds = %49, %46
  br label %74

53:                                               ; preds = %41
  %54 = load i32, i32* %4, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load i32, i32* @F7, align 4
  %58 = call i32 @writePinHigh(i32 %57)
  br label %62

59:                                               ; preds = %53
  %60 = load i32, i32* @F7, align 4
  %61 = call i32 @writePinLow(i32 %60)
  br label %62

62:                                               ; preds = %59, %56
  br label %74

63:                                               ; preds = %41
  %64 = load i32, i32* %4, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load i32, i32* @C7, align 4
  %68 = call i32 @writePinHigh(i32 %67)
  br label %72

69:                                               ; preds = %63
  %70 = load i32, i32* @C7, align 4
  %71 = call i32 @writePinLow(i32 %70)
  br label %72

72:                                               ; preds = %69, %66
  br label %74

73:                                               ; preds = %41
  br label %74

74:                                               ; preds = %73, %72, %62, %52
  br label %75

75:                                               ; preds = %74, %40
  ret void
}

declare dso_local i32 @writePinHigh(i32) #1

declare dso_local i32 @writePinLow(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
