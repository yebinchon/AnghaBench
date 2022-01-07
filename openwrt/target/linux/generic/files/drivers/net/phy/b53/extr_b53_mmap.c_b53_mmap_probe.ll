; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/b53/extr_b53_mmap.c_b53_mmap_probe.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/b53/extr_b53_mmap.c_b53_mmap_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.b53_platform_data* }
%struct.b53_platform_data = type { i32 }
%struct.b53_device = type { %struct.b53_platform_data* }

@EINVAL = common dso_local global i32 0, align 4
@b53_mmap_ops = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @b53_mmap_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b53_mmap_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.b53_platform_data*, align 8
  %5 = alloca %struct.b53_device*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.b53_platform_data*, %struct.b53_platform_data** %8, align 8
  store %struct.b53_platform_data* %9, %struct.b53_platform_data** %4, align 8
  %10 = load %struct.b53_platform_data*, %struct.b53_platform_data** %4, align 8
  %11 = icmp ne %struct.b53_platform_data* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %40

15:                                               ; preds = %1
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = load %struct.b53_platform_data*, %struct.b53_platform_data** %4, align 8
  %19 = getelementptr inbounds %struct.b53_platform_data, %struct.b53_platform_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.b53_device* @b53_switch_alloc(%struct.TYPE_2__* %17, i32* @b53_mmap_ops, i32 %20)
  store %struct.b53_device* %21, %struct.b53_device** %5, align 8
  %22 = load %struct.b53_device*, %struct.b53_device** %5, align 8
  %23 = icmp ne %struct.b53_device* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %15
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %40

27:                                               ; preds = %15
  %28 = load %struct.b53_platform_data*, %struct.b53_platform_data** %4, align 8
  %29 = icmp ne %struct.b53_platform_data* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load %struct.b53_platform_data*, %struct.b53_platform_data** %4, align 8
  %32 = load %struct.b53_device*, %struct.b53_device** %5, align 8
  %33 = getelementptr inbounds %struct.b53_device, %struct.b53_device* %32, i32 0, i32 0
  store %struct.b53_platform_data* %31, %struct.b53_platform_data** %33, align 8
  br label %34

34:                                               ; preds = %30, %27
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = load %struct.b53_device*, %struct.b53_device** %5, align 8
  %37 = call i32 @platform_set_drvdata(%struct.platform_device* %35, %struct.b53_device* %36)
  %38 = load %struct.b53_device*, %struct.b53_device** %5, align 8
  %39 = call i32 @b53_switch_register(%struct.b53_device* %38)
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %34, %24, %12
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local %struct.b53_device* @b53_switch_alloc(%struct.TYPE_2__*, i32*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.b53_device*) #1

declare dso_local i32 @b53_switch_register(%struct.b53_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
