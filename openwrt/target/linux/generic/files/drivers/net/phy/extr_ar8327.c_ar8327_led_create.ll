; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_ar8327.c_ar8327_led_create.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_ar8327.c_ar8327_led_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar8xxx_priv = type { %struct.ar8327_data* }
%struct.ar8327_data = type { i32, %struct.ar8327_led** }
%struct.ar8327_led = type { i64, i64, i32, i8*, i32, i32, i32, %struct.TYPE_2__, i32, %struct.ar8xxx_priv* }
%struct.TYPE_2__ = type { i8*, i32, i32, i32 }
%struct.ar8327_led_info = type { i64, i64, i32, i32, i32 }

@CONFIG_AR8216_PHY_LEDS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AR8327_NUM_LEDS = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AR8327_LED_MODE_HW = common dso_local global i64 0, align 8
@ar8327_led_set_brightness = common dso_local global i32 0, align 4
@ar8327_led_blink_set = common dso_local global i32 0, align 4
@ar8327_led_work_func = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ar8xxx_priv*, %struct.ar8327_led_info*)* @ar8327_led_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar8327_led_create(%struct.ar8xxx_priv* %0, %struct.ar8327_led_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ar8xxx_priv*, align 8
  %5 = alloca %struct.ar8327_led_info*, align 8
  %6 = alloca %struct.ar8327_data*, align 8
  %7 = alloca %struct.ar8327_led*, align 8
  %8 = alloca i32, align 4
  store %struct.ar8xxx_priv* %0, %struct.ar8xxx_priv** %4, align 8
  store %struct.ar8327_led_info* %1, %struct.ar8327_led_info** %5, align 8
  %9 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %4, align 8
  %10 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %9, i32 0, i32 0
  %11 = load %struct.ar8327_data*, %struct.ar8327_data** %10, align 8
  store %struct.ar8327_data* %11, %struct.ar8327_data** %6, align 8
  %12 = load i32, i32* @CONFIG_AR8216_PHY_LEDS, align 4
  %13 = call i32 @IS_ENABLED(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %137

16:                                               ; preds = %2
  %17 = load %struct.ar8327_led_info*, %struct.ar8327_led_info** %5, align 8
  %18 = getelementptr inbounds %struct.ar8327_led_info, %struct.ar8327_led_info* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %137

24:                                               ; preds = %16
  %25 = load %struct.ar8327_led_info*, %struct.ar8327_led_info** %5, align 8
  %26 = getelementptr inbounds %struct.ar8327_led_info, %struct.ar8327_led_info* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @AR8327_NUM_LEDS, align 8
  %29 = icmp sge i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %137

33:                                               ; preds = %24
  %34 = load %struct.ar8327_led_info*, %struct.ar8327_led_info** %5, align 8
  %35 = getelementptr inbounds %struct.ar8327_led_info, %struct.ar8327_led_info* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @strlen(i32 %36)
  %38 = add i64 88, %37
  %39 = add i64 %38, 1
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call %struct.ar8327_led* @kzalloc(i64 %39, i32 %40)
  store %struct.ar8327_led* %41, %struct.ar8327_led** %7, align 8
  %42 = load %struct.ar8327_led*, %struct.ar8327_led** %7, align 8
  %43 = icmp ne %struct.ar8327_led* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %33
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %137

47:                                               ; preds = %33
  %48 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %4, align 8
  %49 = load %struct.ar8327_led*, %struct.ar8327_led** %7, align 8
  %50 = getelementptr inbounds %struct.ar8327_led, %struct.ar8327_led* %49, i32 0, i32 9
  store %struct.ar8xxx_priv* %48, %struct.ar8xxx_priv** %50, align 8
  %51 = load %struct.ar8327_led_info*, %struct.ar8327_led_info** %5, align 8
  %52 = getelementptr inbounds %struct.ar8327_led_info, %struct.ar8327_led_info* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.ar8327_led*, %struct.ar8327_led** %7, align 8
  %55 = getelementptr inbounds %struct.ar8327_led, %struct.ar8327_led* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  %56 = load %struct.ar8327_led_info*, %struct.ar8327_led_info** %5, align 8
  %57 = getelementptr inbounds %struct.ar8327_led_info, %struct.ar8327_led_info* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.ar8327_led*, %struct.ar8327_led** %7, align 8
  %60 = getelementptr inbounds %struct.ar8327_led, %struct.ar8327_led* %59, i32 0, i32 8
  store i32 %58, i32* %60, align 8
  %61 = load %struct.ar8327_led_info*, %struct.ar8327_led_info** %5, align 8
  %62 = getelementptr inbounds %struct.ar8327_led_info, %struct.ar8327_led_info* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.ar8327_led*, %struct.ar8327_led** %7, align 8
  %65 = getelementptr inbounds %struct.ar8327_led, %struct.ar8327_led* %64, i32 0, i32 1
  store i64 %63, i64* %65, align 8
  %66 = load %struct.ar8327_led*, %struct.ar8327_led** %7, align 8
  %67 = getelementptr inbounds %struct.ar8327_led, %struct.ar8327_led* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @AR8327_LED_MODE_HW, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %47
  %72 = load %struct.ar8327_led*, %struct.ar8327_led** %7, align 8
  %73 = getelementptr inbounds %struct.ar8327_led, %struct.ar8327_led* %72, i32 0, i32 2
  store i32 1, i32* %73, align 8
  br label %74

74:                                               ; preds = %71, %47
  %75 = load %struct.ar8327_led*, %struct.ar8327_led** %7, align 8
  %76 = getelementptr inbounds %struct.ar8327_led, %struct.ar8327_led* %75, i64 1
  %77 = bitcast %struct.ar8327_led* %76 to i8*
  %78 = load %struct.ar8327_led*, %struct.ar8327_led** %7, align 8
  %79 = getelementptr inbounds %struct.ar8327_led, %struct.ar8327_led* %78, i32 0, i32 3
  store i8* %77, i8** %79, align 8
  %80 = load %struct.ar8327_led*, %struct.ar8327_led** %7, align 8
  %81 = getelementptr inbounds %struct.ar8327_led, %struct.ar8327_led* %80, i32 0, i32 3
  %82 = load i8*, i8** %81, align 8
  %83 = load %struct.ar8327_led_info*, %struct.ar8327_led_info** %5, align 8
  %84 = getelementptr inbounds %struct.ar8327_led_info, %struct.ar8327_led_info* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @strcpy(i8* %82, i32 %85)
  %87 = load %struct.ar8327_led*, %struct.ar8327_led** %7, align 8
  %88 = getelementptr inbounds %struct.ar8327_led, %struct.ar8327_led* %87, i32 0, i32 3
  %89 = load i8*, i8** %88, align 8
  %90 = load %struct.ar8327_led*, %struct.ar8327_led** %7, align 8
  %91 = getelementptr inbounds %struct.ar8327_led, %struct.ar8327_led* %90, i32 0, i32 7
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  store i8* %89, i8** %92, align 8
  %93 = load i32, i32* @ar8327_led_set_brightness, align 4
  %94 = load %struct.ar8327_led*, %struct.ar8327_led** %7, align 8
  %95 = getelementptr inbounds %struct.ar8327_led, %struct.ar8327_led* %94, i32 0, i32 7
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 3
  store i32 %93, i32* %96, align 8
  %97 = load i32, i32* @ar8327_led_blink_set, align 4
  %98 = load %struct.ar8327_led*, %struct.ar8327_led** %7, align 8
  %99 = getelementptr inbounds %struct.ar8327_led, %struct.ar8327_led* %98, i32 0, i32 7
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 2
  store i32 %97, i32* %100, align 4
  %101 = load %struct.ar8327_led_info*, %struct.ar8327_led_info** %5, align 8
  %102 = getelementptr inbounds %struct.ar8327_led_info, %struct.ar8327_led_info* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.ar8327_led*, %struct.ar8327_led** %7, align 8
  %105 = getelementptr inbounds %struct.ar8327_led, %struct.ar8327_led* %104, i32 0, i32 7
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 1
  store i32 %103, i32* %106, align 8
  %107 = load %struct.ar8327_led*, %struct.ar8327_led** %7, align 8
  %108 = getelementptr inbounds %struct.ar8327_led, %struct.ar8327_led* %107, i32 0, i32 6
  %109 = call i32 @spin_lock_init(i32* %108)
  %110 = load %struct.ar8327_led*, %struct.ar8327_led** %7, align 8
  %111 = getelementptr inbounds %struct.ar8327_led, %struct.ar8327_led* %110, i32 0, i32 5
  %112 = call i32 @mutex_init(i32* %111)
  %113 = load %struct.ar8327_led*, %struct.ar8327_led** %7, align 8
  %114 = getelementptr inbounds %struct.ar8327_led, %struct.ar8327_led* %113, i32 0, i32 4
  %115 = load i32, i32* @ar8327_led_work_func, align 4
  %116 = call i32 @INIT_WORK(i32* %114, i32 %115)
  %117 = load %struct.ar8327_led*, %struct.ar8327_led** %7, align 8
  %118 = call i32 @ar8327_led_register(%struct.ar8327_led* %117)
  store i32 %118, i32* %8, align 4
  %119 = load i32, i32* %8, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %74
  br label %133

122:                                              ; preds = %74
  %123 = load %struct.ar8327_led*, %struct.ar8327_led** %7, align 8
  %124 = load %struct.ar8327_data*, %struct.ar8327_data** %6, align 8
  %125 = getelementptr inbounds %struct.ar8327_data, %struct.ar8327_data* %124, i32 0, i32 1
  %126 = load %struct.ar8327_led**, %struct.ar8327_led*** %125, align 8
  %127 = load %struct.ar8327_data*, %struct.ar8327_data** %6, align 8
  %128 = getelementptr inbounds %struct.ar8327_data, %struct.ar8327_data* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %128, align 8
  %131 = sext i32 %129 to i64
  %132 = getelementptr inbounds %struct.ar8327_led*, %struct.ar8327_led** %126, i64 %131
  store %struct.ar8327_led* %123, %struct.ar8327_led** %132, align 8
  store i32 0, i32* %3, align 4
  br label %137

133:                                              ; preds = %121
  %134 = load %struct.ar8327_led*, %struct.ar8327_led** %7, align 8
  %135 = call i32 @kfree(%struct.ar8327_led* %134)
  %136 = load i32, i32* %8, align 4
  store i32 %136, i32* %3, align 4
  br label %137

137:                                              ; preds = %133, %122, %44, %30, %21, %15
  %138 = load i32, i32* %3, align 4
  ret i32 %138
}

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local %struct.ar8327_led* @kzalloc(i64, i32) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @strcpy(i8*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @ar8327_led_register(%struct.ar8327_led*) #1

declare dso_local i32 @kfree(%struct.ar8327_led*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
