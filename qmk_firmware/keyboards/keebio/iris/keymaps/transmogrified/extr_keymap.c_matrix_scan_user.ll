; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/keebio/iris/keymaps/transmogrified/extr_keymap.c_matrix_scan_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/keebio/iris/keymaps/transmogrified/extr_keymap.c_matrix_scan_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@lockedBLLevel = common dso_local global i64 0, align 8
@rlocked = common dso_local global i64 0, align 8
@llocked = common dso_local global i64 0, align 8
@counter = common dso_local global i32 0, align 4
@breathPulse = common dso_local global i32 0, align 4
@breathUp = common dso_local global i32 0, align 4
@currentBL = common dso_local global i32 0, align 4
@BACKLIGHT_LEVELS = common dso_local global i32 0, align 4
@breathPulseStall = common dso_local global i32 0, align 4
@resetBL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @matrix_scan_user() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @lockedBLLevel, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %46

4:                                                ; preds = %0
  %5 = load i64, i64* @rlocked, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %4
  %8 = load i64, i64* @llocked, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %46

10:                                               ; preds = %7, %4
  %11 = load i32, i32* @counter, align 4
  %12 = load i32, i32* @breathPulse, align 4
  %13 = icmp sge i32 %11, %12
  br i1 %13, label %14, label %42

14:                                               ; preds = %10
  store i32 0, i32* @counter, align 4
  %15 = load i32, i32* @breathUp, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = call i32 (...) @backlight_increase()
  br label %21

19:                                               ; preds = %14
  %20 = call i32 (...) @backlight_decrease()
  br label %21

21:                                               ; preds = %19, %17
  %22 = call i64 (...) @get_backlight_level()
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* @currentBL, align 4
  %24 = load i32, i32* @currentBL, align 4
  %25 = load i32, i32* @BACKLIGHT_LEVELS, align 4
  %26 = icmp sge i32 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %21
  store i32 0, i32* @breathUp, align 4
  %28 = load i32, i32* @BACKLIGHT_LEVELS, align 4
  %29 = load i32, i32* @breathPulseStall, align 4
  %30 = mul nsw i32 %28, %29
  %31 = mul nsw i32 %30, -1
  store i32 %31, i32* @counter, align 4
  br label %41

32:                                               ; preds = %21
  %33 = load i32, i32* @currentBL, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  store i32 1, i32* @breathUp, align 4
  %36 = load i32, i32* @BACKLIGHT_LEVELS, align 4
  %37 = load i32, i32* @breathPulseStall, align 4
  %38 = mul nsw i32 %36, %37
  %39 = mul nsw i32 %38, -1
  store i32 %39, i32* @counter, align 4
  br label %40

40:                                               ; preds = %35, %32
  br label %41

41:                                               ; preds = %40, %27
  store i32 1, i32* @resetBL, align 4
  br label %45

42:                                               ; preds = %10
  %43 = load i32, i32* @counter, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* @counter, align 4
  br label %45

45:                                               ; preds = %42, %41
  br label %66

46:                                               ; preds = %7, %0
  %47 = load i32, i32* @resetBL, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %65

49:                                               ; preds = %46
  store i32 0, i32* %1, align 4
  br label %50

50:                                               ; preds = %60, %49
  %51 = call i64 (...) @get_backlight_level()
  %52 = load i64, i64* @lockedBLLevel, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = load i32, i32* %1, align 4
  %56 = load i32, i32* @BACKLIGHT_LEVELS, align 4
  %57 = icmp sle i32 %55, %56
  br label %58

58:                                               ; preds = %54, %50
  %59 = phi i1 [ false, %50 ], [ %57, %54 ]
  br i1 %59, label %60, label %64

60:                                               ; preds = %58
  %61 = call i32 (...) @backlight_step()
  %62 = load i32, i32* %1, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %1, align 4
  br label %50

64:                                               ; preds = %58
  store i32 0, i32* @resetBL, align 4
  br label %65

65:                                               ; preds = %64, %46
  br label %66

66:                                               ; preds = %65, %45
  ret void
}

declare dso_local i32 @backlight_increase(...) #1

declare dso_local i32 @backlight_decrease(...) #1

declare dso_local i64 @get_backlight_level(...) #1

declare dso_local i32 @backlight_step(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
