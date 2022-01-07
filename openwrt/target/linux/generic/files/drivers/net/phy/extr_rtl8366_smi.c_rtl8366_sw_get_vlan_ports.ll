; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_rtl8366_smi.c_rtl8366_sw_get_vlan_ports.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_rtl8366_smi.c_rtl8366_sw_get_vlan_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switch_dev = type { i32 }
%struct.switch_val = type { i64, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.switch_port* }
%struct.switch_port = type { i32, i32 }
%struct.rtl8366_smi = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.rtl8366_smi*, i32, %struct.rtl8366_vlan_4k*)*, i32 (%struct.rtl8366_smi*, i32)* }
%struct.rtl8366_vlan_4k = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@SWITCH_PORT_FLAG_TAGGED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl8366_sw_get_vlan_ports(%struct.switch_dev* %0, %struct.switch_val* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.switch_dev*, align 8
  %5 = alloca %struct.switch_val*, align 8
  %6 = alloca %struct.rtl8366_smi*, align 8
  %7 = alloca %struct.switch_port*, align 8
  %8 = alloca %struct.rtl8366_vlan_4k, align 4
  %9 = alloca i32, align 4
  store %struct.switch_dev* %0, %struct.switch_dev** %4, align 8
  store %struct.switch_val* %1, %struct.switch_val** %5, align 8
  %10 = load %struct.switch_dev*, %struct.switch_dev** %4, align 8
  %11 = call %struct.rtl8366_smi* @sw_to_rtl8366_smi(%struct.switch_dev* %10)
  store %struct.rtl8366_smi* %11, %struct.rtl8366_smi** %6, align 8
  %12 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %6, align 8
  %13 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %12, i32 0, i32 1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load i32 (%struct.rtl8366_smi*, i32)*, i32 (%struct.rtl8366_smi*, i32)** %15, align 8
  %17 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %6, align 8
  %18 = load %struct.switch_val*, %struct.switch_val** %5, align 8
  %19 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call i32 %16(%struct.rtl8366_smi* %17, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %86

26:                                               ; preds = %2
  %27 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %6, align 8
  %28 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %27, i32 0, i32 1
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32 (%struct.rtl8366_smi*, i32, %struct.rtl8366_vlan_4k*)*, i32 (%struct.rtl8366_smi*, i32, %struct.rtl8366_vlan_4k*)** %30, align 8
  %32 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %6, align 8
  %33 = load %struct.switch_val*, %struct.switch_val** %5, align 8
  %34 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i32 %31(%struct.rtl8366_smi* %32, i32 %35, %struct.rtl8366_vlan_4k* %8)
  %37 = load %struct.switch_val*, %struct.switch_val** %5, align 8
  %38 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load %struct.switch_port*, %struct.switch_port** %39, align 8
  %41 = getelementptr inbounds %struct.switch_port, %struct.switch_port* %40, i64 0
  store %struct.switch_port* %41, %struct.switch_port** %7, align 8
  %42 = load %struct.switch_val*, %struct.switch_val** %5, align 8
  %43 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %42, i32 0, i32 0
  store i64 0, i64* %43, align 8
  store i32 0, i32* %9, align 4
  br label %44

44:                                               ; preds = %82, %26
  %45 = load i32, i32* %9, align 4
  %46 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %6, align 8
  %47 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %85

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.rtl8366_vlan_4k, %struct.rtl8366_vlan_4k* %8, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @BIT(i32 %53)
  %55 = and i32 %52, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %50
  br label %82

58:                                               ; preds = %50
  %59 = load i32, i32* %9, align 4
  %60 = load %struct.switch_port*, %struct.switch_port** %7, align 8
  %61 = getelementptr inbounds %struct.switch_port, %struct.switch_port* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  %62 = getelementptr inbounds %struct.rtl8366_vlan_4k, %struct.rtl8366_vlan_4k* %8, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @BIT(i32 %64)
  %66 = and i32 %63, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %58
  br label %72

69:                                               ; preds = %58
  %70 = load i32, i32* @SWITCH_PORT_FLAG_TAGGED, align 4
  %71 = call i32 @BIT(i32 %70)
  br label %72

72:                                               ; preds = %69, %68
  %73 = phi i32 [ 0, %68 ], [ %71, %69 ]
  %74 = load %struct.switch_port*, %struct.switch_port** %7, align 8
  %75 = getelementptr inbounds %struct.switch_port, %struct.switch_port* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  %76 = load %struct.switch_val*, %struct.switch_val** %5, align 8
  %77 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = add nsw i64 %78, 1
  store i64 %79, i64* %77, align 8
  %80 = load %struct.switch_port*, %struct.switch_port** %7, align 8
  %81 = getelementptr inbounds %struct.switch_port, %struct.switch_port* %80, i32 1
  store %struct.switch_port* %81, %struct.switch_port** %7, align 8
  br label %82

82:                                               ; preds = %72, %57
  %83 = load i32, i32* %9, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %9, align 4
  br label %44

85:                                               ; preds = %44
  store i32 0, i32* %3, align 4
  br label %86

86:                                               ; preds = %85, %23
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local %struct.rtl8366_smi* @sw_to_rtl8366_smi(%struct.switch_dev*) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
