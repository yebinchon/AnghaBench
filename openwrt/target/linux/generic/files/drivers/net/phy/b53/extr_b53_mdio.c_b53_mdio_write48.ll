; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/b53/extr_b53_mdio.c_b53_mdio_write48.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/b53/extr_b53_mdio.c_b53_mdio_write48.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b53_device = type { %struct.mii_bus* }
%struct.mii_bus = type { i32 }

@B53_PSEUDO_PHY = common dso_local global i32 0, align 4
@REG_MII_DATA0 = common dso_local global i64 0, align 8
@REG_MII_ADDR_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b53_device*, i32, i32, i32)* @b53_mdio_write48 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b53_mdio_write48(%struct.b53_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.b53_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mii_bus*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.b53_device* %0, %struct.b53_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.b53_device*, %struct.b53_device** %6, align 8
  %15 = getelementptr inbounds %struct.b53_device, %struct.b53_device* %14, i32 0, i32 0
  %16 = load %struct.mii_bus*, %struct.mii_bus** %15, align 8
  store %struct.mii_bus* %16, %struct.mii_bus** %10, align 8
  %17 = load i32, i32* %9, align 4
  store i32 %17, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %18

18:                                               ; preds = %38, %4
  %19 = load i32, i32* %11, align 4
  %20 = icmp ult i32 %19, 3
  br i1 %20, label %21, label %41

21:                                               ; preds = %18
  %22 = load %struct.mii_bus*, %struct.mii_bus** %10, align 8
  %23 = load i32, i32* @B53_PSEUDO_PHY, align 4
  %24 = load i64, i64* @REG_MII_DATA0, align 8
  %25 = load i32, i32* %11, align 4
  %26 = zext i32 %25 to i64
  %27 = add nsw i64 %24, %26
  %28 = load i32, i32* %12, align 4
  %29 = and i32 %28, 65535
  %30 = call i32 @mdiobus_write(%struct.mii_bus* %22, i32 %23, i64 %27, i32 %29)
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* %13, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %21
  %34 = load i32, i32* %13, align 4
  store i32 %34, i32* %5, align 4
  br label %47

35:                                               ; preds = %21
  %36 = load i32, i32* %12, align 4
  %37 = ashr i32 %36, 16
  store i32 %37, i32* %12, align 4
  br label %38

38:                                               ; preds = %35
  %39 = load i32, i32* %11, align 4
  %40 = add i32 %39, 1
  store i32 %40, i32* %11, align 4
  br label %18

41:                                               ; preds = %18
  %42 = load %struct.b53_device*, %struct.b53_device** %6, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @REG_MII_ADDR_WRITE, align 4
  %46 = call i32 @b53_mdio_op(%struct.b53_device* %42, i32 %43, i32 %44, i32 %45)
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %41, %33
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local i32 @mdiobus_write(%struct.mii_bus*, i32, i64, i32) #1

declare dso_local i32 @b53_mdio_op(%struct.b53_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
