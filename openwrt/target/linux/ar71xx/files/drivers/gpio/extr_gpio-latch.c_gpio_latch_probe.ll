; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/ar71xx/files/drivers/gpio/extr_gpio-latch.c_gpio_latch_probe.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/ar71xx/files/drivers/gpio/extr_gpio-latch.c_gpio_latch_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.gpio_latch_chip = type { %struct.gpio_chip, i32, i32*, i32, i32, i32 }
%struct.gpio_chip = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.gpio_latch_platform_data = type { i64, i64, i32*, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@GPIO_LATCH_DRIVER_NAME = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@gpio_latch_get = common dso_local global i32 0, align 4
@gpio_latch_set = common dso_local global i32 0, align 4
@gpio_latch_direction_input = common dso_local global i32 0, align 4
@gpio_latch_direction_output = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @gpio_latch_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpio_latch_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.gpio_latch_chip*, align 8
  %5 = alloca %struct.gpio_latch_platform_data*, align 8
  %6 = alloca %struct.gpio_chip*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = call %struct.gpio_latch_platform_data* @dev_get_platdata(i32* %12)
  store %struct.gpio_latch_platform_data* %13, %struct.gpio_latch_platform_data** %5, align 8
  %14 = load %struct.gpio_latch_platform_data*, %struct.gpio_latch_platform_data** %5, align 8
  %15 = icmp ne %struct.gpio_latch_platform_data* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %172

19:                                               ; preds = %1
  %20 = load %struct.gpio_latch_platform_data*, %struct.gpio_latch_platform_data** %5, align 8
  %21 = getelementptr inbounds %struct.gpio_latch_platform_data, %struct.gpio_latch_platform_data* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.gpio_latch_platform_data*, %struct.gpio_latch_platform_data** %5, align 8
  %24 = getelementptr inbounds %struct.gpio_latch_platform_data, %struct.gpio_latch_platform_data* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp uge i64 %22, %25
  br i1 %26, label %37, label %27

27:                                               ; preds = %19
  %28 = load %struct.gpio_latch_platform_data*, %struct.gpio_latch_platform_data** %5, align 8
  %29 = getelementptr inbounds %struct.gpio_latch_platform_data, %struct.gpio_latch_platform_data* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load %struct.gpio_latch_platform_data*, %struct.gpio_latch_platform_data** %5, align 8
  %34 = getelementptr inbounds %struct.gpio_latch_platform_data, %struct.gpio_latch_platform_data* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %32, %27, %19
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %172

40:                                               ; preds = %32
  store i32 0, i32* %9, align 4
  br label %41

41:                                               ; preds = %66, %40
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = load %struct.gpio_latch_platform_data*, %struct.gpio_latch_platform_data** %5, align 8
  %45 = getelementptr inbounds %struct.gpio_latch_platform_data, %struct.gpio_latch_platform_data* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ult i64 %43, %46
  br i1 %47, label %48, label %69

48:                                               ; preds = %41
  %49 = load %struct.gpio_latch_platform_data*, %struct.gpio_latch_platform_data** %5, align 8
  %50 = getelementptr inbounds %struct.gpio_latch_platform_data, %struct.gpio_latch_platform_data* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %10, align 4
  %56 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %57 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %56, i32 0, i32 0
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* @GPIO_LATCH_DRIVER_NAME, align 4
  %60 = call i32 @devm_gpio_request(i32* %57, i32 %58, i32 %59)
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %48
  %64 = load i32, i32* %8, align 4
  store i32 %64, i32* %2, align 4
  br label %172

65:                                               ; preds = %48
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %9, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %9, align 4
  br label %41

69:                                               ; preds = %41
  %70 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %71 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %70, i32 0, i32 0
  %72 = load i32, i32* @GFP_KERNEL, align 4
  %73 = call i8* @devm_kzalloc(i32* %71, i32 64, i32 %72)
  %74 = bitcast i8* %73 to %struct.gpio_latch_chip*
  store %struct.gpio_latch_chip* %74, %struct.gpio_latch_chip** %4, align 8
  %75 = load %struct.gpio_latch_chip*, %struct.gpio_latch_chip** %4, align 8
  %76 = icmp ne %struct.gpio_latch_chip* %75, null
  br i1 %76, label %80, label %77

77:                                               ; preds = %69
  %78 = load i32, i32* @ENOMEM, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %2, align 4
  br label %172

80:                                               ; preds = %69
  %81 = load %struct.gpio_latch_chip*, %struct.gpio_latch_chip** %4, align 8
  %82 = getelementptr inbounds %struct.gpio_latch_chip, %struct.gpio_latch_chip* %81, i32 0, i32 5
  %83 = call i32 @mutex_init(i32* %82)
  %84 = load %struct.gpio_latch_chip*, %struct.gpio_latch_chip** %4, align 8
  %85 = getelementptr inbounds %struct.gpio_latch_chip, %struct.gpio_latch_chip* %84, i32 0, i32 4
  %86 = call i32 @mutex_init(i32* %85)
  %87 = load %struct.gpio_latch_platform_data*, %struct.gpio_latch_platform_data** %5, align 8
  %88 = getelementptr inbounds %struct.gpio_latch_platform_data, %struct.gpio_latch_platform_data* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = mul i64 %89, 4
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %7, align 4
  %92 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %93 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %92, i32 0, i32 0
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* @GFP_KERNEL, align 4
  %96 = call i8* @devm_kzalloc(i32* %93, i32 %94, i32 %95)
  %97 = bitcast i8* %96 to i32*
  %98 = load %struct.gpio_latch_chip*, %struct.gpio_latch_chip** %4, align 8
  %99 = getelementptr inbounds %struct.gpio_latch_chip, %struct.gpio_latch_chip* %98, i32 0, i32 2
  store i32* %97, i32** %99, align 8
  %100 = load %struct.gpio_latch_chip*, %struct.gpio_latch_chip** %4, align 8
  %101 = getelementptr inbounds %struct.gpio_latch_chip, %struct.gpio_latch_chip* %100, i32 0, i32 2
  %102 = load i32*, i32** %101, align 8
  %103 = icmp ne i32* %102, null
  br i1 %103, label %107, label %104

104:                                              ; preds = %80
  %105 = load i32, i32* @ENOMEM, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %2, align 4
  br label %172

107:                                              ; preds = %80
  %108 = load %struct.gpio_latch_chip*, %struct.gpio_latch_chip** %4, align 8
  %109 = getelementptr inbounds %struct.gpio_latch_chip, %struct.gpio_latch_chip* %108, i32 0, i32 2
  %110 = load i32*, i32** %109, align 8
  %111 = load %struct.gpio_latch_platform_data*, %struct.gpio_latch_platform_data** %5, align 8
  %112 = getelementptr inbounds %struct.gpio_latch_platform_data, %struct.gpio_latch_platform_data* %111, i32 0, i32 2
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %7, align 4
  %115 = call i32 @memcpy(i32* %110, i32* %113, i32 %114)
  %116 = load %struct.gpio_latch_chip*, %struct.gpio_latch_chip** %4, align 8
  %117 = getelementptr inbounds %struct.gpio_latch_chip, %struct.gpio_latch_chip* %116, i32 0, i32 2
  %118 = load i32*, i32** %117, align 8
  %119 = load %struct.gpio_latch_platform_data*, %struct.gpio_latch_platform_data** %5, align 8
  %120 = getelementptr inbounds %struct.gpio_latch_platform_data, %struct.gpio_latch_platform_data* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = getelementptr inbounds i32, i32* %118, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.gpio_latch_chip*, %struct.gpio_latch_chip** %4, align 8
  %125 = getelementptr inbounds %struct.gpio_latch_chip, %struct.gpio_latch_chip* %124, i32 0, i32 3
  store i32 %123, i32* %125, align 8
  %126 = load %struct.gpio_latch_platform_data*, %struct.gpio_latch_platform_data** %5, align 8
  %127 = getelementptr inbounds %struct.gpio_latch_platform_data, %struct.gpio_latch_platform_data* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.gpio_latch_chip*, %struct.gpio_latch_chip** %4, align 8
  %130 = getelementptr inbounds %struct.gpio_latch_chip, %struct.gpio_latch_chip* %129, i32 0, i32 1
  store i32 %128, i32* %130, align 8
  %131 = load %struct.gpio_latch_chip*, %struct.gpio_latch_chip** %4, align 8
  %132 = getelementptr inbounds %struct.gpio_latch_chip, %struct.gpio_latch_chip* %131, i32 0, i32 0
  store %struct.gpio_chip* %132, %struct.gpio_chip** %6, align 8
  %133 = load i32, i32* @GPIO_LATCH_DRIVER_NAME, align 4
  %134 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %135 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %134, i32 0, i32 7
  store i32 %133, i32* %135, align 4
  %136 = load %struct.gpio_latch_platform_data*, %struct.gpio_latch_platform_data** %5, align 8
  %137 = getelementptr inbounds %struct.gpio_latch_platform_data, %struct.gpio_latch_platform_data* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %140 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %139, i32 0, i32 6
  store i32 %138, i32* %140, align 4
  %141 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %142 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %141, i32 0, i32 0
  store i32 1, i32* %142, align 4
  %143 = load %struct.gpio_latch_platform_data*, %struct.gpio_latch_platform_data** %5, align 8
  %144 = getelementptr inbounds %struct.gpio_latch_platform_data, %struct.gpio_latch_platform_data* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = trunc i64 %145 to i32
  %147 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %148 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %147, i32 0, i32 1
  store i32 %146, i32* %148, align 4
  %149 = load i32, i32* @gpio_latch_get, align 4
  %150 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %151 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %150, i32 0, i32 5
  store i32 %149, i32* %151, align 4
  %152 = load i32, i32* @gpio_latch_set, align 4
  %153 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %154 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %153, i32 0, i32 4
  store i32 %152, i32* %154, align 4
  %155 = load i32, i32* @gpio_latch_direction_input, align 4
  %156 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %157 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %156, i32 0, i32 3
  store i32 %155, i32* %157, align 4
  %158 = load i32, i32* @gpio_latch_direction_output, align 4
  %159 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %160 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %159, i32 0, i32 2
  store i32 %158, i32* %160, align 4
  %161 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %162 = load %struct.gpio_latch_chip*, %struct.gpio_latch_chip** %4, align 8
  %163 = call i32 @platform_set_drvdata(%struct.platform_device* %161, %struct.gpio_latch_chip* %162)
  %164 = load %struct.gpio_latch_chip*, %struct.gpio_latch_chip** %4, align 8
  %165 = getelementptr inbounds %struct.gpio_latch_chip, %struct.gpio_latch_chip* %164, i32 0, i32 0
  %166 = call i32 @gpiochip_add(%struct.gpio_chip* %165)
  store i32 %166, i32* %8, align 4
  %167 = load i32, i32* %8, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %171

169:                                              ; preds = %107
  %170 = load i32, i32* %8, align 4
  store i32 %170, i32* %2, align 4
  br label %172

171:                                              ; preds = %107
  store i32 0, i32* %2, align 4
  br label %172

172:                                              ; preds = %171, %169, %104, %77, %63, %37, %16
  %173 = load i32, i32* %2, align 4
  ret i32 %173
}

declare dso_local %struct.gpio_latch_platform_data* @dev_get_platdata(i32*) #1

declare dso_local i32 @devm_gpio_request(i32*, i32, i32) #1

declare dso_local i8* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.gpio_latch_chip*) #1

declare dso_local i32 @gpiochip_add(%struct.gpio_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
