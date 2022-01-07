; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/ar71xx/files/drivers/leds/extr_leds-nu801.c_led_nu801_create.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/ar71xx/files/drivers/leds/extr_leds-nu801.c_led_nu801_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.led_nu801_data = type { i32, i32, i32, %struct.led_nu801_led_data* }
%struct.led_nu801_led_data = type { i32, %struct.TYPE_2__, %struct.led_nu801_data*, i32 }
%struct.TYPE_2__ = type { i8*, i32, i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"%s:%s:%s%d\00", align 1
@NUM_COLORS = common dso_local global i32 0, align 4
@led_nu801_set = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.led_nu801_data*, %struct.device*, i32, i32, i8*)* @led_nu801_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @led_nu801_create(%struct.led_nu801_data* %0, %struct.device* %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.led_nu801_data*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.led_nu801_led_data*, align 8
  %13 = alloca i32, align 4
  store %struct.led_nu801_data* %0, %struct.led_nu801_data** %7, align 8
  store %struct.device* %1, %struct.device** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %14 = load %struct.led_nu801_data*, %struct.led_nu801_data** %7, align 8
  %15 = getelementptr inbounds %struct.led_nu801_data, %struct.led_nu801_data* %14, i32 0, i32 3
  %16 = load %struct.led_nu801_led_data*, %struct.led_nu801_led_data** %15, align 8
  %17 = load i32, i32* %9, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.led_nu801_led_data, %struct.led_nu801_led_data* %16, i64 %18
  store %struct.led_nu801_led_data* %19, %struct.led_nu801_led_data** %12, align 8
  %20 = load %struct.led_nu801_led_data*, %struct.led_nu801_led_data** %12, align 8
  %21 = getelementptr inbounds %struct.led_nu801_led_data, %struct.led_nu801_led_data* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.led_nu801_data*, %struct.led_nu801_data** %7, align 8
  %24 = getelementptr inbounds %struct.led_nu801_data, %struct.led_nu801_data* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load i8*, i8** %11, align 8
  %27 = load %struct.led_nu801_data*, %struct.led_nu801_data** %7, align 8
  %28 = getelementptr inbounds %struct.led_nu801_data, %struct.led_nu801_data* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.led_nu801_data*, %struct.led_nu801_data** %7, align 8
  %31 = getelementptr inbounds %struct.led_nu801_data, %struct.led_nu801_data* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %9, align 4
  %34 = add nsw i32 %33, 1
  %35 = sub nsw i32 %32, %34
  %36 = load i32, i32* @NUM_COLORS, align 4
  %37 = sdiv i32 %35, %36
  %38 = call i32 @scnprintf(i32 %22, i32 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %25, i8* %26, i32 %29, i32 %37)
  %39 = load %struct.led_nu801_led_data*, %struct.led_nu801_led_data** %12, align 8
  %40 = getelementptr inbounds %struct.led_nu801_led_data, %struct.led_nu801_led_data* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.led_nu801_led_data*, %struct.led_nu801_led_data** %12, align 8
  %43 = getelementptr inbounds %struct.led_nu801_led_data, %struct.led_nu801_led_data* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  store i32 %41, i32* %44, align 4
  %45 = load i32, i32* @led_nu801_set, align 4
  %46 = load %struct.led_nu801_led_data*, %struct.led_nu801_led_data** %12, align 8
  %47 = getelementptr inbounds %struct.led_nu801_led_data, %struct.led_nu801_led_data* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  store i32 %45, i32* %48, align 8
  %49 = load i32, i32* %10, align 4
  %50 = load %struct.led_nu801_led_data*, %struct.led_nu801_led_data** %12, align 8
  %51 = getelementptr inbounds %struct.led_nu801_led_data, %struct.led_nu801_led_data* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load %struct.led_nu801_data*, %struct.led_nu801_data** %7, align 8
  %53 = load %struct.led_nu801_led_data*, %struct.led_nu801_led_data** %12, align 8
  %54 = getelementptr inbounds %struct.led_nu801_led_data, %struct.led_nu801_led_data* %53, i32 0, i32 2
  store %struct.led_nu801_data* %52, %struct.led_nu801_data** %54, align 8
  %55 = load %struct.device*, %struct.device** %8, align 8
  %56 = load %struct.led_nu801_led_data*, %struct.led_nu801_led_data** %12, align 8
  %57 = getelementptr inbounds %struct.led_nu801_led_data, %struct.led_nu801_led_data* %56, i32 0, i32 1
  %58 = call i32 @led_classdev_register(%struct.device* %55, %struct.TYPE_2__* %57)
  store i32 %58, i32* %13, align 4
  %59 = load i32, i32* %13, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %5
  br label %63

62:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %67

63:                                               ; preds = %61
  %64 = load %struct.led_nu801_led_data*, %struct.led_nu801_led_data** %12, align 8
  %65 = call i32 @kfree(%struct.led_nu801_led_data* %64)
  %66 = load i32, i32* %13, align 4
  store i32 %66, i32* %6, align 4
  br label %67

67:                                               ; preds = %63, %62
  %68 = load i32, i32* %6, align 4
  ret i32 %68
}

declare dso_local i32 @scnprintf(i32, i32, i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @led_classdev_register(%struct.device*, %struct.TYPE_2__*) #1

declare dso_local i32 @kfree(%struct.led_nu801_led_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
