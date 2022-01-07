; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/powercfg/extr_advanced.c_Adv_SaveData.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/powercfg/extr_advanced.c_Adv_SaveData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32 }

@IDC_SYSTRAYBATTERYMETER = common dso_local global i32 0, align 4
@BST_CHECKED = common dso_local global i64 0, align 8
@IDC_PASSWORDLOGON = common dso_local global i32 0, align 4
@IDC_VIDEODIMDISPLAY = common dso_local global i32 0, align 4
@gGPP = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@EnableSysTrayBatteryMeter = common dso_local global i32 0, align 4
@EnablePasswordLogon = common dso_local global i32 0, align 4
@EnableVideoDimDisplay = common dso_local global i32 0, align 4
@IDC_POWERBUTTON = common dso_local global i32 0, align 4
@IDC_SLEEPBUTTON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i32] [i32 87, i32 114, i32 105, i32 116, i32 101, i32 71, i32 108, i32 111, i32 98, i32 97, i32 108, i32 80, i32 119, i32 114, i32 80, i32 111, i32 108, i32 105, i32 99, i32 121, i32 32, i32 102, i32 97, i32 105, i32 108, i32 101, i32 100, i32 0], align 4
@MB_OK = common dso_local global i32 0, align 4
@IDC_LIDCLOSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @Adv_SaveData to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Adv_SaveData(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @IDC_SYSTRAYBATTERYMETER, align 4
  %9 = call i64 @IsDlgButtonChecked(i32 %7, i32 %8)
  %10 = load i64, i64* @BST_CHECKED, align 8
  %11 = icmp eq i64 %9, %10
  %12 = zext i1 %11 to i32
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @IDC_PASSWORDLOGON, align 4
  %15 = call i64 @IsDlgButtonChecked(i32 %13, i32 %14)
  %16 = load i64, i64* @BST_CHECKED, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @IDC_VIDEODIMDISPLAY, align 4
  %21 = call i64 @IsDlgButtonChecked(i32 %19, i32 %20)
  %22 = load i64, i64* @BST_CHECKED, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %1
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @gGPP, i32 0, i32 0, i32 0), align 4
  %29 = load i32, i32* @EnableSysTrayBatteryMeter, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @gGPP, i32 0, i32 0, i32 0), align 4
  %34 = load i32, i32* @EnableSysTrayBatteryMeter, align 4
  %35 = add nsw i32 %33, %34
  store i32 %35, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @gGPP, i32 0, i32 0, i32 0), align 4
  br label %36

36:                                               ; preds = %32, %27
  br label %47

37:                                               ; preds = %1
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @gGPP, i32 0, i32 0, i32 0), align 4
  %39 = load i32, i32* @EnableSysTrayBatteryMeter, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @gGPP, i32 0, i32 0, i32 0), align 4
  %44 = load i32, i32* @EnableSysTrayBatteryMeter, align 4
  %45 = sub nsw i32 %43, %44
  store i32 %45, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @gGPP, i32 0, i32 0, i32 0), align 4
  br label %46

46:                                               ; preds = %42, %37
  br label %47

47:                                               ; preds = %46, %36
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %47
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @gGPP, i32 0, i32 0, i32 0), align 4
  %52 = load i32, i32* @EnablePasswordLogon, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %50
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @gGPP, i32 0, i32 0, i32 0), align 4
  %57 = load i32, i32* @EnablePasswordLogon, align 4
  %58 = add nsw i32 %56, %57
  store i32 %58, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @gGPP, i32 0, i32 0, i32 0), align 4
  br label %59

59:                                               ; preds = %55, %50
  br label %70

60:                                               ; preds = %47
  %61 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @gGPP, i32 0, i32 0, i32 0), align 4
  %62 = load i32, i32* @EnablePasswordLogon, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @gGPP, i32 0, i32 0, i32 0), align 4
  %67 = load i32, i32* @EnablePasswordLogon, align 4
  %68 = sub nsw i32 %66, %67
  store i32 %68, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @gGPP, i32 0, i32 0, i32 0), align 4
  br label %69

69:                                               ; preds = %65, %60
  br label %70

70:                                               ; preds = %69, %59
  %71 = load i32, i32* %6, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %83

73:                                               ; preds = %70
  %74 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @gGPP, i32 0, i32 0, i32 0), align 4
  %75 = load i32, i32* @EnableVideoDimDisplay, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %73
  %79 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @gGPP, i32 0, i32 0, i32 0), align 4
  %80 = load i32, i32* @EnableVideoDimDisplay, align 4
  %81 = add nsw i32 %79, %80
  store i32 %81, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @gGPP, i32 0, i32 0, i32 0), align 4
  br label %82

82:                                               ; preds = %78, %73
  br label %93

83:                                               ; preds = %70
  %84 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @gGPP, i32 0, i32 0, i32 0), align 4
  %85 = load i32, i32* @EnableVideoDimDisplay, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %83
  %89 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @gGPP, i32 0, i32 0, i32 0), align 4
  %90 = load i32, i32* @EnableVideoDimDisplay, align 4
  %91 = sub nsw i32 %89, %90
  store i32 %91, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @gGPP, i32 0, i32 0, i32 0), align 4
  br label %92

92:                                               ; preds = %88, %83
  br label %93

93:                                               ; preds = %92, %82
  %94 = call i32 (...) @IsBatteryUsed()
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %105, label %96

96:                                               ; preds = %93
  %97 = load i32, i32* %3, align 4
  %98 = load i32, i32* @IDC_POWERBUTTON, align 4
  %99 = call i32 @GetDlgItem(i32 %97, i32 %98)
  %100 = call i32 @SaveCurrentPowerActionPolicy(i32 %99, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @gGPP, i32 0, i32 0, i32 5))
  %101 = load i32, i32* %3, align 4
  %102 = load i32, i32* @IDC_SLEEPBUTTON, align 4
  %103 = call i32 @GetDlgItem(i32 %101, i32 %102)
  %104 = call i32 @SaveCurrentPowerActionPolicy(i32 %103, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @gGPP, i32 0, i32 0, i32 4))
  br label %106

105:                                              ; preds = %93
  br label %106

106:                                              ; preds = %105, %96
  %107 = call i32 @WriteGlobalPwrPolicy(%struct.TYPE_5__* @gGPP)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %113, label %109

109:                                              ; preds = %106
  %110 = load i32, i32* %3, align 4
  %111 = load i32, i32* @MB_OK, align 4
  %112 = call i32 @MessageBox(i32 %110, i8* bitcast ([28 x i32]* @.str to i8*), i32* null, i32 %111)
  br label %113

113:                                              ; preds = %109, %106
  %114 = load i32, i32* %4, align 4
  %115 = call i32 @SetSystrayPowerIconState(i32 %114)
  %116 = load i32, i32* %2, align 4
  ret i32 %116
}

declare dso_local i64 @IsDlgButtonChecked(i32, i32) #1

declare dso_local i32 @IsBatteryUsed(...) #1

declare dso_local i32 @SaveCurrentPowerActionPolicy(i32, i32*) #1

declare dso_local i32 @GetDlgItem(i32, i32) #1

declare dso_local i32 @WriteGlobalPwrPolicy(%struct.TYPE_5__*) #1

declare dso_local i32 @MessageBox(i32, i8*, i32*, i32) #1

declare dso_local i32 @SetSystrayPowerIconState(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
