; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/mxss/extr_rgblight.c_rgblight_mode_eeprom_helper.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/mxss/extr_rgblight.c_rgblight_mode_eeprom_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }

@rgblight_config = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@RGBLIGHT_MODES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"rgblight mode [EEPROM]: %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"rgblight mode [NOEEPROM]: %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rgblight_mode_eeprom_helper(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rgblight_config, i32 0, i32 5), align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  br label %60

8:                                                ; preds = %2
  %9 = load i32, i32* %3, align 4
  %10 = icmp slt i32 %9, 1
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rgblight_config, i32 0, i32 0), align 4
  br label %21

12:                                               ; preds = %8
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @RGBLIGHT_MODES, align 4
  %15 = icmp sgt i32 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = load i32, i32* @RGBLIGHT_MODES, align 4
  store i32 %17, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rgblight_config, i32 0, i32 0), align 4
  br label %20

18:                                               ; preds = %12
  %19 = load i32, i32* %3, align 4
  store i32 %19, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rgblight_config, i32 0, i32 0), align 4
  br label %20

20:                                               ; preds = %18, %16
  br label %21

21:                                               ; preds = %20, %11
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rgblight_config, i32 0, i32 4), align 4
  %26 = call i32 @eeconfig_update_rgblight(i32 %25)
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rgblight_config, i32 0, i32 0), align 4
  %28 = call i32 @xprintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %32

29:                                               ; preds = %21
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rgblight_config, i32 0, i32 0), align 4
  %31 = call i32 @xprintf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %29, %24
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rgblight_config, i32 0, i32 0), align 4
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  br label %55

36:                                               ; preds = %32
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rgblight_config, i32 0, i32 0), align 4
  %38 = icmp sge i32 %37, 2
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rgblight_config, i32 0, i32 0), align 4
  %41 = icmp sle i32 %40, 24
  br i1 %41, label %45, label %42

42:                                               ; preds = %39, %36
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rgblight_config, i32 0, i32 0), align 4
  %44 = icmp eq i32 %43, 35
  br i1 %44, label %45, label %46

45:                                               ; preds = %42, %39
  br label %54

46:                                               ; preds = %42
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rgblight_config, i32 0, i32 0), align 4
  %48 = icmp sge i32 %47, 25
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rgblight_config, i32 0, i32 0), align 4
  %51 = icmp sle i32 %50, 34
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  br label %53

53:                                               ; preds = %52, %49, %46
  br label %54

54:                                               ; preds = %53, %45
  br label %55

55:                                               ; preds = %54, %35
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rgblight_config, i32 0, i32 3), align 4
  %57 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rgblight_config, i32 0, i32 2), align 4
  %58 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rgblight_config, i32 0, i32 1), align 4
  %59 = call i32 @rgblight_sethsv_noeeprom(i32 %56, i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %55, %7
  ret void
}

declare dso_local i32 @eeconfig_update_rgblight(i32) #1

declare dso_local i32 @xprintf(i8*, i32) #1

declare dso_local i32 @rgblight_sethsv_noeeprom(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
