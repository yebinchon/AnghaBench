; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_esw_rt3050.c_esw_set_vlan_id.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_esw_rt3050.c_esw_set_vlan_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt305x_esw = type { i32 }

@RT305X_ESW_VLANI_VID_S = common dso_local global i32 0, align 4
@RT305X_ESW_VLANI_VID_M = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt305x_esw*, i32, i32)* @esw_set_vlan_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @esw_set_vlan_id(%struct.rt305x_esw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.rt305x_esw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rt305x_esw* %0, %struct.rt305x_esw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @RT305X_ESW_VLANI_VID_S, align 4
  %9 = load i32, i32* %5, align 4
  %10 = urem i32 %9, 2
  %11 = mul i32 %8, %10
  store i32 %11, i32* %7, align 4
  %12 = load %struct.rt305x_esw*, %struct.rt305x_esw** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = udiv i32 %13, 2
  %15 = call i32 @RT305X_ESW_REG_VLANI(i32 %14)
  %16 = load i32, i32* @RT305X_ESW_VLANI_VID_M, align 4
  %17 = load i32, i32* %7, align 4
  %18 = shl i32 %16, %17
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @RT305X_ESW_VLANI_VID_M, align 4
  %21 = and i32 %19, %20
  %22 = load i32, i32* %7, align 4
  %23 = shl i32 %21, %22
  %24 = call i32 @esw_rmw(%struct.rt305x_esw* %12, i32 %15, i32 %18, i32 %23)
  ret void
}

declare dso_local i32 @esw_rmw(%struct.rt305x_esw*, i32, i32, i32) #1

declare dso_local i32 @RT305X_ESW_REG_VLANI(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
