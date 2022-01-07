; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_swconfig.c_swconfig_set_vlan_ports.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_swconfig.c_swconfig_set_vlan_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switch_dev = type { i64, i32, %struct.switch_dev_ops* }
%struct.switch_dev_ops = type { i32 (%struct.switch_dev.0*, %struct.switch_val*)*, i32 (%struct.switch_dev.1*, i64, i32)* }
%struct.switch_dev.0 = type opaque
%struct.switch_dev.1 = type opaque
%struct.switch_attr = type { i32 }
%struct.switch_val = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.switch_port* }
%struct.switch_port = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@SWITCH_PORT_FLAG_TAGGED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.switch_dev*, %struct.switch_attr*, %struct.switch_val*)* @swconfig_set_vlan_ports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @swconfig_set_vlan_ports(%struct.switch_dev* %0, %struct.switch_attr* %1, %struct.switch_val* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.switch_dev*, align 8
  %6 = alloca %struct.switch_attr*, align 8
  %7 = alloca %struct.switch_val*, align 8
  %8 = alloca %struct.switch_port*, align 8
  %9 = alloca %struct.switch_dev_ops*, align 8
  %10 = alloca i32, align 4
  store %struct.switch_dev* %0, %struct.switch_dev** %5, align 8
  store %struct.switch_attr* %1, %struct.switch_attr** %6, align 8
  store %struct.switch_val* %2, %struct.switch_val** %7, align 8
  %11 = load %struct.switch_val*, %struct.switch_val** %7, align 8
  %12 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.switch_port*, %struct.switch_port** %13, align 8
  store %struct.switch_port* %14, %struct.switch_port** %8, align 8
  %15 = load %struct.switch_dev*, %struct.switch_dev** %5, align 8
  %16 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %15, i32 0, i32 2
  %17 = load %struct.switch_dev_ops*, %struct.switch_dev_ops** %16, align 8
  store %struct.switch_dev_ops* %17, %struct.switch_dev_ops** %9, align 8
  %18 = load %struct.switch_val*, %struct.switch_val** %7, align 8
  %19 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.switch_dev*, %struct.switch_dev** %5, align 8
  %22 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = icmp sge i32 %20, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %113

28:                                               ; preds = %3
  %29 = load %struct.switch_val*, %struct.switch_val** %7, align 8
  %30 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.switch_dev*, %struct.switch_dev** %5, align 8
  %33 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp sgt i64 %31, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %28
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %113

39:                                               ; preds = %28
  %40 = load %struct.switch_dev_ops*, %struct.switch_dev_ops** %9, align 8
  %41 = getelementptr inbounds %struct.switch_dev_ops, %struct.switch_dev_ops* %40, i32 0, i32 0
  %42 = load i32 (%struct.switch_dev.0*, %struct.switch_val*)*, i32 (%struct.switch_dev.0*, %struct.switch_val*)** %41, align 8
  %43 = icmp ne i32 (%struct.switch_dev.0*, %struct.switch_val*)* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %39
  %45 = load i32, i32* @EOPNOTSUPP, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %113

47:                                               ; preds = %39
  store i32 0, i32* %10, align 4
  br label %48

48:                                               ; preds = %102, %47
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = load %struct.switch_val*, %struct.switch_val** %7, align 8
  %52 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp slt i64 %50, %53
  br i1 %54, label %55, label %105

55:                                               ; preds = %48
  %56 = load %struct.switch_port*, %struct.switch_port** %8, align 8
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.switch_port, %struct.switch_port* %56, i64 %58
  %60 = getelementptr inbounds %struct.switch_port, %struct.switch_port* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.switch_dev*, %struct.switch_dev** %5, align 8
  %63 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp sge i64 %61, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %55
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %4, align 4
  br label %113

69:                                               ; preds = %55
  %70 = load %struct.switch_dev_ops*, %struct.switch_dev_ops** %9, align 8
  %71 = getelementptr inbounds %struct.switch_dev_ops, %struct.switch_dev_ops* %70, i32 0, i32 1
  %72 = load i32 (%struct.switch_dev.1*, i64, i32)*, i32 (%struct.switch_dev.1*, i64, i32)** %71, align 8
  %73 = icmp ne i32 (%struct.switch_dev.1*, i64, i32)* %72, null
  br i1 %73, label %74, label %101

74:                                               ; preds = %69
  %75 = load %struct.switch_port*, %struct.switch_port** %8, align 8
  %76 = load i32, i32* %10, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.switch_port, %struct.switch_port* %75, i64 %77
  %79 = getelementptr inbounds %struct.switch_port, %struct.switch_port* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @SWITCH_PORT_FLAG_TAGGED, align 4
  %82 = shl i32 1, %81
  %83 = and i32 %80, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %101, label %85

85:                                               ; preds = %74
  %86 = load %struct.switch_dev_ops*, %struct.switch_dev_ops** %9, align 8
  %87 = getelementptr inbounds %struct.switch_dev_ops, %struct.switch_dev_ops* %86, i32 0, i32 1
  %88 = load i32 (%struct.switch_dev.1*, i64, i32)*, i32 (%struct.switch_dev.1*, i64, i32)** %87, align 8
  %89 = load %struct.switch_dev*, %struct.switch_dev** %5, align 8
  %90 = bitcast %struct.switch_dev* %89 to %struct.switch_dev.1*
  %91 = load %struct.switch_port*, %struct.switch_port** %8, align 8
  %92 = load i32, i32* %10, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.switch_port, %struct.switch_port* %91, i64 %93
  %95 = getelementptr inbounds %struct.switch_port, %struct.switch_port* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.switch_val*, %struct.switch_val** %7, align 8
  %98 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = call i32 %88(%struct.switch_dev.1* %90, i64 %96, i32 %99)
  br label %101

101:                                              ; preds = %85, %74, %69
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %10, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %10, align 4
  br label %48

105:                                              ; preds = %48
  %106 = load %struct.switch_dev_ops*, %struct.switch_dev_ops** %9, align 8
  %107 = getelementptr inbounds %struct.switch_dev_ops, %struct.switch_dev_ops* %106, i32 0, i32 0
  %108 = load i32 (%struct.switch_dev.0*, %struct.switch_val*)*, i32 (%struct.switch_dev.0*, %struct.switch_val*)** %107, align 8
  %109 = load %struct.switch_dev*, %struct.switch_dev** %5, align 8
  %110 = bitcast %struct.switch_dev* %109 to %struct.switch_dev.0*
  %111 = load %struct.switch_val*, %struct.switch_val** %7, align 8
  %112 = call i32 %108(%struct.switch_dev.0* %110, %struct.switch_val* %111)
  store i32 %112, i32* %4, align 4
  br label %113

113:                                              ; preds = %105, %66, %44, %36, %25
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
