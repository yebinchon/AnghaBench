; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/b53/extr_b53_common.c_b53_vlan_get_ports.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/b53/extr_b53_common.c_b53_vlan_get_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switch_dev = type { i32 }
%struct.switch_val = type { i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.switch_port* }
%struct.switch_port = type { i32, i32 }
%struct.b53_device = type { %struct.b53_vlan* }
%struct.b53_vlan = type { i32, i32 }

@SWITCH_PORT_FLAG_TAGGED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.switch_dev*, %struct.switch_val*)* @b53_vlan_get_ports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b53_vlan_get_ports(%struct.switch_dev* %0, %struct.switch_val* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.switch_dev*, align 8
  %5 = alloca %struct.switch_val*, align 8
  %6 = alloca %struct.b53_device*, align 8
  %7 = alloca %struct.switch_port*, align 8
  %8 = alloca %struct.b53_vlan*, align 8
  %9 = alloca i32, align 4
  store %struct.switch_dev* %0, %struct.switch_dev** %4, align 8
  store %struct.switch_val* %1, %struct.switch_val** %5, align 8
  %10 = load %struct.switch_dev*, %struct.switch_dev** %4, align 8
  %11 = call %struct.b53_device* @sw_to_b53(%struct.switch_dev* %10)
  store %struct.b53_device* %11, %struct.b53_device** %6, align 8
  %12 = load %struct.switch_val*, %struct.switch_val** %5, align 8
  %13 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.switch_port*, %struct.switch_port** %14, align 8
  %16 = getelementptr inbounds %struct.switch_port, %struct.switch_port* %15, i64 0
  store %struct.switch_port* %16, %struct.switch_port** %7, align 8
  %17 = load %struct.b53_device*, %struct.b53_device** %6, align 8
  %18 = getelementptr inbounds %struct.b53_device, %struct.b53_device* %17, i32 0, i32 0
  %19 = load %struct.b53_vlan*, %struct.b53_vlan** %18, align 8
  %20 = load %struct.switch_val*, %struct.switch_val** %5, align 8
  %21 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.b53_vlan, %struct.b53_vlan* %19, i64 %22
  store %struct.b53_vlan* %23, %struct.b53_vlan** %8, align 8
  %24 = load %struct.switch_val*, %struct.switch_val** %5, align 8
  %25 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %24, i32 0, i32 1
  store i64 0, i64* %25, align 8
  %26 = load %struct.b53_vlan*, %struct.b53_vlan** %8, align 8
  %27 = getelementptr inbounds %struct.b53_vlan, %struct.b53_vlan* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %77

31:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %32

32:                                               ; preds = %73, %31
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.switch_dev*, %struct.switch_dev** %4, align 8
  %35 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %76

38:                                               ; preds = %32
  %39 = load %struct.b53_vlan*, %struct.b53_vlan** %8, align 8
  %40 = getelementptr inbounds %struct.b53_vlan, %struct.b53_vlan* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @BIT(i32 %42)
  %44 = and i32 %41, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %38
  br label %73

47:                                               ; preds = %38
  %48 = load %struct.b53_vlan*, %struct.b53_vlan** %8, align 8
  %49 = getelementptr inbounds %struct.b53_vlan, %struct.b53_vlan* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @BIT(i32 %51)
  %53 = and i32 %50, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %47
  %56 = load i32, i32* @SWITCH_PORT_FLAG_TAGGED, align 4
  %57 = call i32 @BIT(i32 %56)
  %58 = load %struct.switch_port*, %struct.switch_port** %7, align 8
  %59 = getelementptr inbounds %struct.switch_port, %struct.switch_port* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  br label %63

60:                                               ; preds = %47
  %61 = load %struct.switch_port*, %struct.switch_port** %7, align 8
  %62 = getelementptr inbounds %struct.switch_port, %struct.switch_port* %61, i32 0, i32 0
  store i32 0, i32* %62, align 4
  br label %63

63:                                               ; preds = %60, %55
  %64 = load i32, i32* %9, align 4
  %65 = load %struct.switch_port*, %struct.switch_port** %7, align 8
  %66 = getelementptr inbounds %struct.switch_port, %struct.switch_port* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load %struct.switch_val*, %struct.switch_val** %5, align 8
  %68 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %69, 1
  store i64 %70, i64* %68, align 8
  %71 = load %struct.switch_port*, %struct.switch_port** %7, align 8
  %72 = getelementptr inbounds %struct.switch_port, %struct.switch_port* %71, i32 1
  store %struct.switch_port* %72, %struct.switch_port** %7, align 8
  br label %73

73:                                               ; preds = %63, %46
  %74 = load i32, i32* %9, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %9, align 4
  br label %32

76:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %77

77:                                               ; preds = %76, %30
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local %struct.b53_device* @sw_to_b53(%struct.switch_dev*) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
