; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/cannonkeys/satisfaction75/extr_satisfaction_encoder.c_update_time_config.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/cannonkeys/satisfaction75/extr_satisfaction_encoder.c_update_time_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@year_config = common dso_local global i32 0, align 4
@time_config_idx = common dso_local global i32 0, align 4
@hour_config = common dso_local global i32 0, align 4
@minute_config = common dso_local global i32 0, align 4
@month_config = common dso_local global i32 0, align 4
@day_config = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @update_time_config(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 31, i32* %3, align 4
  %5 = load i32, i32* @year_config, align 4
  %6 = add nsw i32 1980, %5
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* @time_config_idx, align 4
  switch i32 %7, label %9 [
    i32 0, label %8
    i32 1, label %20
    i32 2, label %31
    i32 3, label %35
    i32 4, label %46
  ]

8:                                                ; preds = %1
  br label %9

9:                                                ; preds = %1, %8
  %10 = load i32, i32* @hour_config, align 4
  %11 = load i32, i32* %2, align 4
  %12 = add nsw i32 %10, %11
  %13 = srem i32 %12, 24
  store i32 %13, i32* @hour_config, align 4
  %14 = load i32, i32* @hour_config, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %9
  %17 = load i32, i32* @hour_config, align 4
  %18 = add nsw i32 %17, 24
  store i32 %18, i32* @hour_config, align 4
  br label %19

19:                                               ; preds = %16, %9
  br label %95

20:                                               ; preds = %1
  %21 = load i32, i32* @minute_config, align 4
  %22 = load i32, i32* %2, align 4
  %23 = add nsw i32 %21, %22
  %24 = srem i32 %23, 60
  store i32 %24, i32* @minute_config, align 4
  %25 = load i32, i32* @minute_config, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = load i32, i32* @minute_config, align 4
  %29 = add nsw i32 %28, 60
  store i32 %29, i32* @minute_config, align 4
  br label %30

30:                                               ; preds = %27, %20
  br label %95

31:                                               ; preds = %1
  %32 = load i32, i32* %2, align 4
  %33 = load i32, i32* @year_config, align 4
  %34 = add nsw i32 %33, %32
  store i32 %34, i32* @year_config, align 4
  br label %95

35:                                               ; preds = %1
  %36 = load i32, i32* @month_config, align 4
  %37 = srem i32 %36, 12
  %38 = load i32, i32* %2, align 4
  %39 = add nsw i32 %37, %38
  store i32 %39, i32* @month_config, align 4
  %40 = load i32, i32* @month_config, align 4
  %41 = icmp sle i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = load i32, i32* @month_config, align 4
  %44 = add nsw i32 %43, 12
  store i32 %44, i32* @month_config, align 4
  br label %45

45:                                               ; preds = %42, %35
  br label %95

46:                                               ; preds = %1
  %47 = load i32, i32* @month_config, align 4
  %48 = icmp eq i32 %47, 9
  br i1 %48, label %58, label %49

49:                                               ; preds = %46
  %50 = load i32, i32* @month_config, align 4
  %51 = icmp eq i32 %50, 4
  br i1 %51, label %58, label %52

52:                                               ; preds = %49
  %53 = load i32, i32* @month_config, align 4
  %54 = icmp eq i32 %53, 6
  br i1 %54, label %58, label %55

55:                                               ; preds = %52
  %56 = load i32, i32* @month_config, align 4
  %57 = icmp eq i32 %56, 11
  br i1 %57, label %58, label %59

58:                                               ; preds = %55, %52, %49, %46
  store i32 30, i32* %3, align 4
  br label %82

59:                                               ; preds = %55
  %60 = load i32, i32* @month_config, align 4
  %61 = icmp eq i32 %60, 2
  br i1 %61, label %62, label %81

62:                                               ; preds = %59
  %63 = load i32, i32* %4, align 4
  %64 = srem i32 %63, 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %77

66:                                               ; preds = %62
  %67 = load i32, i32* %4, align 4
  %68 = srem i32 %67, 100
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %66
  %71 = load i32, i32* %4, align 4
  %72 = srem i32 %71, 400
  %73 = icmp ne i32 %72, 0
  br label %74

74:                                               ; preds = %70, %66
  %75 = phi i1 [ false, %66 ], [ %73, %70 ]
  %76 = xor i1 %75, true
  br label %77

77:                                               ; preds = %74, %62
  %78 = phi i1 [ false, %62 ], [ %76, %74 ]
  %79 = zext i1 %78 to i64
  %80 = select i1 %78, i32 29, i32 28
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %77, %59
  br label %82

82:                                               ; preds = %81, %58
  %83 = load i32, i32* @day_config, align 4
  %84 = load i32, i32* %3, align 4
  %85 = srem i32 %83, %84
  %86 = load i32, i32* %2, align 4
  %87 = add nsw i32 %85, %86
  store i32 %87, i32* @day_config, align 4
  %88 = load i32, i32* @day_config, align 4
  %89 = icmp sle i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %82
  %91 = load i32, i32* %3, align 4
  %92 = load i32, i32* @day_config, align 4
  %93 = add nsw i32 %92, %91
  store i32 %93, i32* @day_config, align 4
  br label %94

94:                                               ; preds = %90, %82
  br label %95

95:                                               ; preds = %94, %45, %31, %30, %19
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
