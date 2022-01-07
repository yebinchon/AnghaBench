; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/b53/extr_b53_common.c_b53_vlan_set_ports.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/b53/extr_b53_common.c_b53_vlan_set_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switch_dev = type { i32 }
%struct.switch_val = type { i64, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.switch_port* }
%struct.switch_port = type { i64, i32 }
%struct.b53_device = type { i32, %struct.TYPE_4__*, i32, %struct.b53_vlan* }
%struct.TYPE_4__ = type { i32 }
%struct.b53_vlan = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@SWITCH_PORT_FLAG_TAGGED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.switch_dev*, %struct.switch_val*)* @b53_vlan_set_ports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b53_vlan_set_ports(%struct.switch_dev* %0, %struct.switch_val* %1) #0 {
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
  %12 = load %struct.b53_device*, %struct.b53_device** %6, align 8
  %13 = getelementptr inbounds %struct.b53_device, %struct.b53_device* %12, i32 0, i32 3
  %14 = load %struct.b53_vlan*, %struct.b53_vlan** %13, align 8
  %15 = load %struct.switch_val*, %struct.switch_val** %5, align 8
  %16 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.b53_vlan, %struct.b53_vlan* %14, i64 %17
  store %struct.b53_vlan* %18, %struct.b53_vlan** %8, align 8
  %19 = load %struct.switch_val*, %struct.switch_val** %5, align 8
  %20 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %2
  %24 = load %struct.b53_device*, %struct.b53_device** %6, align 8
  %25 = call i32 @is5325(%struct.b53_device* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %23
  %28 = load %struct.b53_device*, %struct.b53_device** %6, align 8
  %29 = call i32 @is5365(%struct.b53_device* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %121

34:                                               ; preds = %27, %23, %2
  %35 = load %struct.switch_val*, %struct.switch_val** %5, align 8
  %36 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %37, 4095
  br i1 %38, label %39, label %47

39:                                               ; preds = %34
  %40 = load %struct.b53_device*, %struct.b53_device** %6, align 8
  %41 = getelementptr inbounds %struct.b53_device, %struct.b53_device* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %39
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %121

47:                                               ; preds = %39, %34
  %48 = load %struct.switch_val*, %struct.switch_val** %5, align 8
  %49 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load %struct.switch_port*, %struct.switch_port** %50, align 8
  %52 = getelementptr inbounds %struct.switch_port, %struct.switch_port* %51, i64 0
  store %struct.switch_port* %52, %struct.switch_port** %7, align 8
  %53 = load %struct.b53_vlan*, %struct.b53_vlan** %8, align 8
  %54 = getelementptr inbounds %struct.b53_vlan, %struct.b53_vlan* %53, i32 0, i32 0
  store i32 0, i32* %54, align 4
  %55 = load %struct.b53_vlan*, %struct.b53_vlan** %8, align 8
  %56 = getelementptr inbounds %struct.b53_vlan, %struct.b53_vlan* %55, i32 0, i32 1
  store i32 0, i32* %56, align 4
  store i32 0, i32* %9, align 4
  br label %57

57:                                               ; preds = %101, %47
  %58 = load i32, i32* %9, align 4
  %59 = load %struct.switch_val*, %struct.switch_val** %5, align 8
  %60 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = icmp slt i32 %58, %61
  br i1 %62, label %63, label %106

63:                                               ; preds = %57
  %64 = load %struct.switch_port*, %struct.switch_port** %7, align 8
  %65 = getelementptr inbounds %struct.switch_port, %struct.switch_port* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @BIT(i64 %66)
  %68 = load %struct.b53_vlan*, %struct.b53_vlan** %8, align 8
  %69 = getelementptr inbounds %struct.b53_vlan, %struct.b53_vlan* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 4
  %72 = load %struct.switch_port*, %struct.switch_port** %7, align 8
  %73 = getelementptr inbounds %struct.switch_port, %struct.switch_port* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load i64, i64* @SWITCH_PORT_FLAG_TAGGED, align 8
  %76 = call i32 @BIT(i64 %75)
  %77 = and i32 %74, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %100, label %79

79:                                               ; preds = %63
  %80 = load %struct.switch_port*, %struct.switch_port** %7, align 8
  %81 = getelementptr inbounds %struct.switch_port, %struct.switch_port* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @BIT(i64 %82)
  %84 = load %struct.b53_vlan*, %struct.b53_vlan** %8, align 8
  %85 = getelementptr inbounds %struct.b53_vlan, %struct.b53_vlan* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 4
  %88 = load %struct.switch_val*, %struct.switch_val** %5, align 8
  %89 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = trunc i64 %90 to i32
  %92 = load %struct.b53_device*, %struct.b53_device** %6, align 8
  %93 = getelementptr inbounds %struct.b53_device, %struct.b53_device* %92, i32 0, i32 1
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = load %struct.switch_port*, %struct.switch_port** %7, align 8
  %96 = getelementptr inbounds %struct.switch_port, %struct.switch_port* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  store i32 %91, i32* %99, align 4
  br label %100

100:                                              ; preds = %79, %63
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %9, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %9, align 4
  %104 = load %struct.switch_port*, %struct.switch_port** %7, align 8
  %105 = getelementptr inbounds %struct.switch_port, %struct.switch_port* %104, i32 1
  store %struct.switch_port* %105, %struct.switch_port** %7, align 8
  br label %57

106:                                              ; preds = %57
  %107 = load %struct.b53_device*, %struct.b53_device** %6, align 8
  %108 = getelementptr inbounds %struct.b53_device, %struct.b53_device* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.b53_vlan*, %struct.b53_vlan** %8, align 8
  %111 = getelementptr inbounds %struct.b53_vlan, %struct.b53_vlan* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = and i32 %112, %109
  store i32 %113, i32* %111, align 4
  %114 = load %struct.b53_device*, %struct.b53_device** %6, align 8
  %115 = getelementptr inbounds %struct.b53_device, %struct.b53_device* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.b53_vlan*, %struct.b53_vlan** %8, align 8
  %118 = getelementptr inbounds %struct.b53_vlan, %struct.b53_vlan* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = and i32 %119, %116
  store i32 %120, i32* %118, align 4
  store i32 0, i32* %3, align 4
  br label %121

121:                                              ; preds = %106, %44, %31
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local %struct.b53_device* @sw_to_b53(%struct.switch_dev*) #1

declare dso_local i32 @is5325(%struct.b53_device*) #1

declare dso_local i32 @is5365(%struct.b53_device*) #1

declare dso_local i32 @BIT(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
