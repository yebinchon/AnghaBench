; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_ar8216.c_ar8xxx_mdiodev_remove.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_ar8216.c_ar8xxx_mdiodev_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdio_device = type { i32 }
%struct.ar8xxx_priv = type { i64, i64, i32, i32 }

@ar8xxx_dev_list_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mdio_device*)* @ar8xxx_mdiodev_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar8xxx_mdiodev_remove(%struct.mdio_device* %0) #0 {
  %2 = alloca %struct.mdio_device*, align 8
  %3 = alloca %struct.ar8xxx_priv*, align 8
  store %struct.mdio_device* %0, %struct.mdio_device** %2, align 8
  %4 = load %struct.mdio_device*, %struct.mdio_device** %2, align 8
  %5 = getelementptr inbounds %struct.mdio_device, %struct.mdio_device* %4, i32 0, i32 0
  %6 = call %struct.ar8xxx_priv* @dev_get_drvdata(i32* %5)
  store %struct.ar8xxx_priv* %6, %struct.ar8xxx_priv** %3, align 8
  %7 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %3, align 8
  %8 = icmp ne %struct.ar8xxx_priv* %7, null
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i64 @WARN_ON(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %45

14:                                               ; preds = %1
  %15 = call i32 @mutex_lock(i32* @ar8xxx_dev_list_lock)
  %16 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %3, align 8
  %17 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %18, -1
  store i64 %19, i64* %17, align 8
  %20 = icmp sgt i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = call i32 @mutex_unlock(i32* @ar8xxx_dev_list_lock)
  br label %45

23:                                               ; preds = %14
  %24 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %3, align 8
  %25 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %24, i32 0, i32 3
  %26 = call i32 @list_del(i32* %25)
  %27 = call i32 @mutex_unlock(i32* @ar8xxx_dev_list_lock)
  %28 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %3, align 8
  %29 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %28, i32 0, i32 2
  %30 = call i32 @unregister_switch(i32* %29)
  %31 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %3, align 8
  %32 = call i32 @ar8xxx_mib_stop(%struct.ar8xxx_priv* %31)
  %33 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %3, align 8
  %34 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %23
  %38 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %3, align 8
  %39 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @mdiobus_unregister(i64 %40)
  br label %42

42:                                               ; preds = %37, %23
  %43 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %3, align 8
  %44 = call i32 @ar8xxx_free(%struct.ar8xxx_priv* %43)
  br label %45

45:                                               ; preds = %42, %21, %13
  ret void
}

declare dso_local %struct.ar8xxx_priv* @dev_get_drvdata(i32*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @unregister_switch(i32*) #1

declare dso_local i32 @ar8xxx_mib_stop(%struct.ar8xxx_priv*) #1

declare dso_local i32 @mdiobus_unregister(i64) #1

declare dso_local i32 @ar8xxx_free(%struct.ar8xxx_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
