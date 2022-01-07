; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_ar8327.c_ar8327_get_port_igmp.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_ar8327.c_ar8327_get_port_igmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar8xxx_priv = type { i32 }

@AR8327_FWD_CTRL1_IGMP_S = common dso_local global i32 0, align 4
@AR8327_FRAME_ACK_CTRL_IGMP_MLD = common dso_local global i32 0, align 4
@AR8327_FRAME_ACK_CTRL_IGMP_JOIN = common dso_local global i32 0, align 4
@AR8327_FRAME_ACK_CTRL_IGMP_LEAVE = common dso_local global i32 0, align 4
@AR8327_REG_FWD_CTRL1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ar8xxx_priv*, i32)* @ar8327_get_port_igmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar8327_get_port_igmp(%struct.ar8xxx_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.ar8xxx_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ar8xxx_priv* %0, %struct.ar8xxx_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @BIT(i32 %7)
  %9 = load i32, i32* @AR8327_FWD_CTRL1_IGMP_S, align 4
  %10 = shl i32 %8, %9
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* @AR8327_FRAME_ACK_CTRL_IGMP_MLD, align 4
  %12 = load i32, i32* @AR8327_FRAME_ACK_CTRL_IGMP_JOIN, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @AR8327_FRAME_ACK_CTRL_IGMP_LEAVE, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @AR8327_FRAME_ACK_CTRL_S(i32 %16)
  %18 = shl i32 %15, %17
  store i32 %18, i32* %6, align 4
  %19 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %3, align 8
  %20 = load i32, i32* @AR8327_REG_FWD_CTRL1, align 4
  %21 = call i32 @ar8xxx_read(%struct.ar8xxx_priv* %19, i32 %20)
  %22 = load i32, i32* %5, align 4
  %23 = and i32 %21, %22
  %24 = load i32, i32* %5, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %2
  %27 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %3, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @AR8327_REG_FRAME_ACK_CTRL(i32 %28)
  %30 = call i32 @ar8xxx_read(%struct.ar8xxx_priv* %27, i32 %29)
  %31 = load i32, i32* %6, align 4
  %32 = and i32 %30, %31
  %33 = load i32, i32* %6, align 4
  %34 = icmp eq i32 %32, %33
  br label %35

35:                                               ; preds = %26, %2
  %36 = phi i1 [ false, %2 ], [ %34, %26 ]
  %37 = zext i1 %36 to i32
  ret i32 %37
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @AR8327_FRAME_ACK_CTRL_S(i32) #1

declare dso_local i32 @ar8xxx_read(%struct.ar8xxx_priv*, i32) #1

declare dso_local i32 @AR8327_REG_FRAME_ACK_CTRL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
