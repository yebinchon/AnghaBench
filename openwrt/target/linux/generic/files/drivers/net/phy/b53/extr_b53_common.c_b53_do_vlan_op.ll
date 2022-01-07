; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/b53/extr_b53_common.c_b53_do_vlan_op.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/b53/extr_b53_common.c_b53_do_vlan_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b53_device = type { i32* }

@B53_ARLIO_PAGE = common dso_local global i32 0, align 4
@VTA_START_CMD = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b53_device*, i32)* @b53_do_vlan_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b53_do_vlan_op(%struct.b53_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.b53_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.b53_device* %0, %struct.b53_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.b53_device*, %struct.b53_device** %4, align 8
  %9 = load i32, i32* @B53_ARLIO_PAGE, align 4
  %10 = load %struct.b53_device*, %struct.b53_device** %4, align 8
  %11 = getelementptr inbounds %struct.b53_device, %struct.b53_device* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @VTA_START_CMD, align 4
  %16 = load i32, i32* %5, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @b53_write8(%struct.b53_device* %8, i32 %9, i32 %14, i32 %17)
  store i32 0, i32* %6, align 4
  br label %19

19:                                               ; preds = %38, %2
  %20 = load i32, i32* %6, align 4
  %21 = icmp ult i32 %20, 10
  br i1 %21, label %22, label %41

22:                                               ; preds = %19
  %23 = load %struct.b53_device*, %struct.b53_device** %4, align 8
  %24 = load i32, i32* @B53_ARLIO_PAGE, align 4
  %25 = load %struct.b53_device*, %struct.b53_device** %4, align 8
  %26 = getelementptr inbounds %struct.b53_device, %struct.b53_device* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @b53_read8(%struct.b53_device* %23, i32 %24, i32 %29, i32* %7)
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @VTA_START_CMD, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %44

36:                                               ; preds = %22
  %37 = call i32 @usleep_range(i32 100, i32 200)
  br label %38

38:                                               ; preds = %36
  %39 = load i32, i32* %6, align 4
  %40 = add i32 %39, 1
  store i32 %40, i32* %6, align 4
  br label %19

41:                                               ; preds = %19
  %42 = load i32, i32* @EIO, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %41, %35
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @b53_write8(%struct.b53_device*, i32, i32, i32) #1

declare dso_local i32 @b53_read8(%struct.b53_device*, i32, i32, i32*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
