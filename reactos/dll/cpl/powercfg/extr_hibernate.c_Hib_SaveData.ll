; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/powercfg/extr_hibernate.c_Hib_SaveData.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/powercfg/extr_hibernate.c_Hib_SaveData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IDC_HIBERNATEFILE = common dso_local global i32 0, align 4
@BST_CHECKED = common dso_local global i64 0, align 8
@SystemReserveHiberFile = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Hib_SaveData(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @IDC_HIBERNATEFILE, align 4
  %7 = call i64 @IsDlgButtonChecked(i32 %5, i32 %6)
  %8 = load i64, i64* @BST_CHECKED, align 8
  %9 = icmp eq i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = sext i32 %10 to i64
  store i64 %11, i64* %4, align 8
  %12 = load i32, i32* @SystemReserveHiberFile, align 4
  %13 = call i64 @CallNtPowerInformation(i32 %12, i64* %4, i32 8, i32* null, i32 0)
  %14 = load i64, i64* @STATUS_SUCCESS, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @Hib_InitDialog(i32 %17)
  %19 = load i32, i32* @TRUE, align 4
  store i32 %19, i32* %2, align 4
  br label %22

20:                                               ; preds = %1
  %21 = load i32, i32* @FALSE, align 4
  store i32 %21, i32* %2, align 4
  br label %22

22:                                               ; preds = %20, %16
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i64 @IsDlgButtonChecked(i32, i32) #1

declare dso_local i64 @CallNtPowerInformation(i32, i64*, i32, i32*, i32) #1

declare dso_local i32 @Hib_InitDialog(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
