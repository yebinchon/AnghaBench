; ModuleID = '/home/carl/AnghaBench/openwrt/package/kernel/gpio-button-hotplug/src/extr_gpio-button-hotplug.c_gpio_keys_probe.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/kernel/gpio-button-hotplug/src/extr_gpio-button-hotplug.c_gpio_keys_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.gpio_keys_platform_data = type { i32, %struct.gpio_keys_button* }
%struct.gpio_keys_button = type { i64, i32 }
%struct.gpio_keys_button_dev = type { %struct.gpio_keys_button_data*, %struct.gpio_keys_platform_data* }
%struct.gpio_keys_button_data = type { i64, i32, i32, i32 }

@IRQF_ONESHOT = common dso_local global i64 0, align 8
@gpio_keys_irq_work_func = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"failed to get irq for gpio:%d\0A\00", align 1
@IRQF_TRIGGER_RISING = common dso_local global i64 0, align 8
@IRQF_TRIGGER_FALLING = common dso_local global i64 0, align 8
@button_handle_irq = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"failed to request irq:%d for gpio:%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"gpio:%d has irq:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @gpio_keys_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpio_keys_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.gpio_keys_platform_data*, align 8
  %5 = alloca %struct.gpio_keys_button_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.gpio_keys_button*, align 8
  %9 = alloca %struct.gpio_keys_button_data*, align 8
  %10 = alloca i64, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = call i32 @gpio_keys_button_probe(%struct.platform_device* %11, %struct.gpio_keys_button_dev** %5, i32 0)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %2, align 4
  br label %135

17:                                               ; preds = %1
  %18 = load %struct.gpio_keys_button_dev*, %struct.gpio_keys_button_dev** %5, align 8
  %19 = getelementptr inbounds %struct.gpio_keys_button_dev, %struct.gpio_keys_button_dev* %18, i32 0, i32 1
  %20 = load %struct.gpio_keys_platform_data*, %struct.gpio_keys_platform_data** %19, align 8
  store %struct.gpio_keys_platform_data* %20, %struct.gpio_keys_platform_data** %4, align 8
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %131, %17
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.gpio_keys_platform_data*, %struct.gpio_keys_platform_data** %4, align 8
  %24 = getelementptr inbounds %struct.gpio_keys_platform_data, %struct.gpio_keys_platform_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %134

27:                                               ; preds = %21
  %28 = load %struct.gpio_keys_platform_data*, %struct.gpio_keys_platform_data** %4, align 8
  %29 = getelementptr inbounds %struct.gpio_keys_platform_data, %struct.gpio_keys_platform_data* %28, i32 0, i32 1
  %30 = load %struct.gpio_keys_button*, %struct.gpio_keys_button** %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.gpio_keys_button, %struct.gpio_keys_button* %30, i64 %32
  store %struct.gpio_keys_button* %33, %struct.gpio_keys_button** %8, align 8
  %34 = load %struct.gpio_keys_button_dev*, %struct.gpio_keys_button_dev** %5, align 8
  %35 = getelementptr inbounds %struct.gpio_keys_button_dev, %struct.gpio_keys_button_dev* %34, i32 0, i32 0
  %36 = load %struct.gpio_keys_button_data*, %struct.gpio_keys_button_data** %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.gpio_keys_button_data, %struct.gpio_keys_button_data* %36, i64 %38
  store %struct.gpio_keys_button_data* %39, %struct.gpio_keys_button_data** %9, align 8
  %40 = load i64, i64* @IRQF_ONESHOT, align 8
  store i64 %40, i64* %10, align 8
  %41 = load %struct.gpio_keys_button_data*, %struct.gpio_keys_button_data** %9, align 8
  %42 = getelementptr inbounds %struct.gpio_keys_button_data, %struct.gpio_keys_button_data* %41, i32 0, i32 2
  %43 = load i32, i32* @gpio_keys_irq_work_func, align 4
  %44 = call i32 @INIT_DELAYED_WORK(i32* %42, i32 %43)
  %45 = load %struct.gpio_keys_button_data*, %struct.gpio_keys_button_data** %9, align 8
  %46 = getelementptr inbounds %struct.gpio_keys_button_data, %struct.gpio_keys_button_data* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %27
  br label %131

50:                                               ; preds = %27
  %51 = load %struct.gpio_keys_button*, %struct.gpio_keys_button** %8, align 8
  %52 = getelementptr inbounds %struct.gpio_keys_button, %struct.gpio_keys_button* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %80, label %55

55:                                               ; preds = %50
  %56 = load %struct.gpio_keys_button*, %struct.gpio_keys_button** %8, align 8
  %57 = getelementptr inbounds %struct.gpio_keys_button, %struct.gpio_keys_button* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i64 @gpio_to_irq(i32 %58)
  %60 = load %struct.gpio_keys_button_data*, %struct.gpio_keys_button_data** %9, align 8
  %61 = getelementptr inbounds %struct.gpio_keys_button_data, %struct.gpio_keys_button_data* %60, i32 0, i32 0
  store i64 %59, i64* %61, align 8
  %62 = load %struct.gpio_keys_button_data*, %struct.gpio_keys_button_data** %9, align 8
  %63 = getelementptr inbounds %struct.gpio_keys_button_data, %struct.gpio_keys_button_data* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %55
  %67 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %68 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %67, i32 0, i32 0
  %69 = load %struct.gpio_keys_button*, %struct.gpio_keys_button** %8, align 8
  %70 = getelementptr inbounds %struct.gpio_keys_button, %struct.gpio_keys_button* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = sext i32 %71 to i64
  %73 = call i32 (i32*, i8*, i64, ...) @dev_err(i32* %68, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %72)
  br label %131

74:                                               ; preds = %55
  %75 = load i64, i64* @IRQF_TRIGGER_RISING, align 8
  %76 = load i64, i64* @IRQF_TRIGGER_FALLING, align 8
  %77 = or i64 %75, %76
  %78 = load i64, i64* %10, align 8
  %79 = or i64 %78, %77
  store i64 %79, i64* %10, align 8
  br label %86

80:                                               ; preds = %50
  %81 = load %struct.gpio_keys_button*, %struct.gpio_keys_button** %8, align 8
  %82 = getelementptr inbounds %struct.gpio_keys_button, %struct.gpio_keys_button* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.gpio_keys_button_data*, %struct.gpio_keys_button_data** %9, align 8
  %85 = getelementptr inbounds %struct.gpio_keys_button_data, %struct.gpio_keys_button_data* %84, i32 0, i32 0
  store i64 %83, i64* %85, align 8
  br label %86

86:                                               ; preds = %80, %74
  %87 = load %struct.gpio_keys_button_data*, %struct.gpio_keys_button_data** %9, align 8
  %88 = getelementptr inbounds %struct.gpio_keys_button_data, %struct.gpio_keys_button_data* %87, i32 0, i32 2
  %89 = load %struct.gpio_keys_button_data*, %struct.gpio_keys_button_data** %9, align 8
  %90 = getelementptr inbounds %struct.gpio_keys_button_data, %struct.gpio_keys_button_data* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @msecs_to_jiffies(i32 %91)
  %93 = call i32 @schedule_delayed_work(i32* %88, i32 %92)
  %94 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %95 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %94, i32 0, i32 0
  %96 = load %struct.gpio_keys_button_data*, %struct.gpio_keys_button_data** %9, align 8
  %97 = getelementptr inbounds %struct.gpio_keys_button_data, %struct.gpio_keys_button_data* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i32, i32* @button_handle_irq, align 4
  %100 = load i64, i64* %10, align 8
  %101 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %102 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %101, i32 0, i32 0
  %103 = call i32 @dev_name(i32* %102)
  %104 = load %struct.gpio_keys_button_data*, %struct.gpio_keys_button_data** %9, align 8
  %105 = call i32 @devm_request_threaded_irq(i32* %95, i64 %98, i32* null, i32 %99, i64 %100, i32 %103, %struct.gpio_keys_button_data* %104)
  store i32 %105, i32* %6, align 4
  %106 = load i32, i32* %6, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %120

108:                                              ; preds = %86
  %109 = load %struct.gpio_keys_button_data*, %struct.gpio_keys_button_data** %9, align 8
  %110 = getelementptr inbounds %struct.gpio_keys_button_data, %struct.gpio_keys_button_data* %109, i32 0, i32 0
  store i64 0, i64* %110, align 8
  %111 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %112 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %111, i32 0, i32 0
  %113 = load %struct.gpio_keys_button_data*, %struct.gpio_keys_button_data** %9, align 8
  %114 = getelementptr inbounds %struct.gpio_keys_button_data, %struct.gpio_keys_button_data* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.gpio_keys_button*, %struct.gpio_keys_button** %8, align 8
  %117 = getelementptr inbounds %struct.gpio_keys_button, %struct.gpio_keys_button* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = call i32 (i32*, i8*, i64, ...) @dev_err(i32* %112, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i64 %115, i32 %118)
  br label %131

120:                                              ; preds = %86
  %121 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %122 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %121, i32 0, i32 0
  %123 = load %struct.gpio_keys_button*, %struct.gpio_keys_button** %8, align 8
  %124 = getelementptr inbounds %struct.gpio_keys_button, %struct.gpio_keys_button* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.gpio_keys_button_data*, %struct.gpio_keys_button_data** %9, align 8
  %127 = getelementptr inbounds %struct.gpio_keys_button_data, %struct.gpio_keys_button_data* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = call i32 @dev_dbg(i32* %122, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %125, i64 %128)
  br label %130

130:                                              ; preds = %120
  br label %131

131:                                              ; preds = %130, %108, %66, %49
  %132 = load i32, i32* %7, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %7, align 4
  br label %21

134:                                              ; preds = %21
  store i32 0, i32* %2, align 4
  br label %135

135:                                              ; preds = %134, %15
  %136 = load i32, i32* %2, align 4
  ret i32 %136
}

declare dso_local i32 @gpio_keys_button_probe(%struct.platform_device*, %struct.gpio_keys_button_dev**, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i64 @gpio_to_irq(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i64, ...) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @devm_request_threaded_irq(i32*, i64, i32*, i32, i64, i32, %struct.gpio_keys_button_data*) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
