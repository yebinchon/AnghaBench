; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/ar71xx/files/drivers/leds/extr_leds-rb750.c_rb750_led_probe.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/ar71xx/files/drivers/leds/extr_leds-rb750.c_rb750_led_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.rb750_led_platform_data* }
%struct.rb750_led_platform_data = type { i32, i32, %struct.rb750_led_data* }
%struct.rb750_led_data = type { i32, i32, i32, i32 }
%struct.rb750_led_drvdata = type { i32, %struct.rb750_led_dev* }
%struct.rb750_led_dev = type { i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@rb750_led_brightness_set = common dso_local global i32 0, align 4
@LED_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @rb750_led_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rb750_led_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.rb750_led_platform_data*, align 8
  %5 = alloca %struct.rb750_led_drvdata*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.rb750_led_dev*, align 8
  %9 = alloca %struct.rb750_led_data*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load %struct.rb750_led_platform_data*, %struct.rb750_led_platform_data** %12, align 8
  store %struct.rb750_led_platform_data* %13, %struct.rb750_led_platform_data** %4, align 8
  %14 = load %struct.rb750_led_platform_data*, %struct.rb750_led_platform_data** %4, align 8
  %15 = icmp ne %struct.rb750_led_platform_data* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %141

19:                                               ; preds = %1
  %20 = load %struct.rb750_led_platform_data*, %struct.rb750_led_platform_data** %4, align 8
  %21 = getelementptr inbounds %struct.rb750_led_platform_data, %struct.rb750_led_platform_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = mul i64 28, %23
  %25 = add i64 16, %24
  %26 = trunc i64 %25 to i32
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.rb750_led_drvdata* @kzalloc(i32 %26, i32 %27)
  store %struct.rb750_led_drvdata* %28, %struct.rb750_led_drvdata** %5, align 8
  %29 = load %struct.rb750_led_drvdata*, %struct.rb750_led_drvdata** %5, align 8
  %30 = icmp ne %struct.rb750_led_drvdata* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %19
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %141

34:                                               ; preds = %19
  %35 = load %struct.rb750_led_platform_data*, %struct.rb750_led_platform_data** %4, align 8
  %36 = getelementptr inbounds %struct.rb750_led_platform_data, %struct.rb750_led_platform_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.rb750_led_drvdata*, %struct.rb750_led_drvdata** %5, align 8
  %39 = getelementptr inbounds %struct.rb750_led_drvdata, %struct.rb750_led_drvdata* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.rb750_led_drvdata*, %struct.rb750_led_drvdata** %5, align 8
  %41 = getelementptr inbounds %struct.rb750_led_drvdata, %struct.rb750_led_drvdata* %40, i64 1
  %42 = bitcast %struct.rb750_led_drvdata* %41 to %struct.rb750_led_dev*
  %43 = load %struct.rb750_led_drvdata*, %struct.rb750_led_drvdata** %5, align 8
  %44 = getelementptr inbounds %struct.rb750_led_drvdata, %struct.rb750_led_drvdata* %43, i32 0, i32 1
  store %struct.rb750_led_dev* %42, %struct.rb750_led_dev** %44, align 8
  store i32 0, i32* %7, align 4
  br label %45

45:                                               ; preds = %112, %34
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.rb750_led_drvdata*, %struct.rb750_led_drvdata** %5, align 8
  %48 = getelementptr inbounds %struct.rb750_led_drvdata, %struct.rb750_led_drvdata* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp slt i32 %46, %49
  br i1 %50, label %51, label %115

51:                                               ; preds = %45
  %52 = load %struct.rb750_led_drvdata*, %struct.rb750_led_drvdata** %5, align 8
  %53 = getelementptr inbounds %struct.rb750_led_drvdata, %struct.rb750_led_drvdata* %52, i32 0, i32 1
  %54 = load %struct.rb750_led_dev*, %struct.rb750_led_dev** %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.rb750_led_dev, %struct.rb750_led_dev* %54, i64 %56
  store %struct.rb750_led_dev* %57, %struct.rb750_led_dev** %8, align 8
  %58 = load %struct.rb750_led_platform_data*, %struct.rb750_led_platform_data** %4, align 8
  %59 = getelementptr inbounds %struct.rb750_led_platform_data, %struct.rb750_led_platform_data* %58, i32 0, i32 2
  %60 = load %struct.rb750_led_data*, %struct.rb750_led_data** %59, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.rb750_led_data, %struct.rb750_led_data* %60, i64 %62
  store %struct.rb750_led_data* %63, %struct.rb750_led_data** %9, align 8
  %64 = load %struct.rb750_led_data*, %struct.rb750_led_data** %9, align 8
  %65 = getelementptr inbounds %struct.rb750_led_data, %struct.rb750_led_data* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.rb750_led_dev*, %struct.rb750_led_dev** %8, align 8
  %68 = getelementptr inbounds %struct.rb750_led_dev, %struct.rb750_led_dev* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 3
  store i32 %66, i32* %69, align 4
  %70 = load %struct.rb750_led_data*, %struct.rb750_led_data** %9, align 8
  %71 = getelementptr inbounds %struct.rb750_led_data, %struct.rb750_led_data* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.rb750_led_dev*, %struct.rb750_led_dev** %8, align 8
  %74 = getelementptr inbounds %struct.rb750_led_dev, %struct.rb750_led_dev* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 2
  store i32 %72, i32* %75, align 4
  %76 = load i32, i32* @rb750_led_brightness_set, align 4
  %77 = load %struct.rb750_led_dev*, %struct.rb750_led_dev** %8, align 8
  %78 = getelementptr inbounds %struct.rb750_led_dev, %struct.rb750_led_dev* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  store i32 %76, i32* %79, align 4
  %80 = load i32, i32* @LED_OFF, align 4
  %81 = load %struct.rb750_led_dev*, %struct.rb750_led_dev** %8, align 8
  %82 = getelementptr inbounds %struct.rb750_led_dev, %struct.rb750_led_dev* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  store i32 %80, i32* %83, align 4
  %84 = load %struct.rb750_led_data*, %struct.rb750_led_data** %9, align 8
  %85 = getelementptr inbounds %struct.rb750_led_data, %struct.rb750_led_data* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.rb750_led_dev*, %struct.rb750_led_dev** %8, align 8
  %88 = getelementptr inbounds %struct.rb750_led_dev, %struct.rb750_led_dev* %87, i32 0, i32 3
  store i32 %86, i32* %88, align 4
  %89 = load %struct.rb750_led_data*, %struct.rb750_led_data** %9, align 8
  %90 = getelementptr inbounds %struct.rb750_led_data, %struct.rb750_led_data* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  %93 = xor i1 %92, true
  %94 = xor i1 %93, true
  %95 = zext i1 %94 to i32
  %96 = load %struct.rb750_led_dev*, %struct.rb750_led_dev** %8, align 8
  %97 = getelementptr inbounds %struct.rb750_led_dev, %struct.rb750_led_dev* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 4
  %98 = load %struct.rb750_led_platform_data*, %struct.rb750_led_platform_data** %4, align 8
  %99 = getelementptr inbounds %struct.rb750_led_platform_data, %struct.rb750_led_platform_data* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.rb750_led_dev*, %struct.rb750_led_dev** %8, align 8
  %102 = getelementptr inbounds %struct.rb750_led_dev, %struct.rb750_led_dev* %101, i32 0, i32 2
  store i32 %100, i32* %102, align 4
  %103 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %104 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %103, i32 0, i32 0
  %105 = load %struct.rb750_led_dev*, %struct.rb750_led_dev** %8, align 8
  %106 = getelementptr inbounds %struct.rb750_led_dev, %struct.rb750_led_dev* %105, i32 0, i32 1
  %107 = call i32 @led_classdev_register(%struct.TYPE_5__* %104, %struct.TYPE_4__* %106)
  store i32 %107, i32* %6, align 4
  %108 = load i32, i32* %6, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %51
  br label %119

111:                                              ; preds = %51
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %7, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %7, align 4
  br label %45

115:                                              ; preds = %45
  %116 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %117 = load %struct.rb750_led_drvdata*, %struct.rb750_led_drvdata** %5, align 8
  %118 = call i32 @platform_set_drvdata(%struct.platform_device* %116, %struct.rb750_led_drvdata* %117)
  store i32 0, i32* %2, align 4
  br label %141

119:                                              ; preds = %110
  %120 = load i32, i32* %7, align 4
  %121 = sub nsw i32 %120, 1
  store i32 %121, i32* %7, align 4
  br label %122

122:                                              ; preds = %134, %119
  %123 = load i32, i32* %7, align 4
  %124 = icmp sge i32 %123, 0
  br i1 %124, label %125, label %137

125:                                              ; preds = %122
  %126 = load %struct.rb750_led_drvdata*, %struct.rb750_led_drvdata** %5, align 8
  %127 = getelementptr inbounds %struct.rb750_led_drvdata, %struct.rb750_led_drvdata* %126, i32 0, i32 1
  %128 = load %struct.rb750_led_dev*, %struct.rb750_led_dev** %127, align 8
  %129 = load i32, i32* %7, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.rb750_led_dev, %struct.rb750_led_dev* %128, i64 %130
  %132 = getelementptr inbounds %struct.rb750_led_dev, %struct.rb750_led_dev* %131, i32 0, i32 1
  %133 = call i32 @led_classdev_unregister(%struct.TYPE_4__* %132)
  br label %134

134:                                              ; preds = %125
  %135 = load i32, i32* %7, align 4
  %136 = add nsw i32 %135, -1
  store i32 %136, i32* %7, align 4
  br label %122

137:                                              ; preds = %122
  %138 = load %struct.rb750_led_drvdata*, %struct.rb750_led_drvdata** %5, align 8
  %139 = call i32 @kfree(%struct.rb750_led_drvdata* %138)
  %140 = load i32, i32* %6, align 4
  store i32 %140, i32* %2, align 4
  br label %141

141:                                              ; preds = %137, %115, %31, %16
  %142 = load i32, i32* %2, align 4
  ret i32 %142
}

declare dso_local %struct.rb750_led_drvdata* @kzalloc(i32, i32) #1

declare dso_local i32 @led_classdev_register(%struct.TYPE_5__*, %struct.TYPE_4__*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.rb750_led_drvdata*) #1

declare dso_local i32 @led_classdev_unregister(%struct.TYPE_4__*) #1

declare dso_local i32 @kfree(%struct.rb750_led_drvdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
