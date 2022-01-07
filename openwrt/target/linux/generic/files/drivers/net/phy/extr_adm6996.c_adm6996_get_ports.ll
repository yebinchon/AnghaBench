; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_adm6996.c_adm6996_get_ports.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_adm6996.c_adm6996_get_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switch_dev = type { i32 }
%struct.switch_val = type { i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.switch_port* }
%struct.switch_port = type { i32, i32 }
%struct.adm6996_priv = type { i32*, i32* }

@.str = private unnamed_addr constant [24 x i8] c"get_ports port_vlan %d\0A\00", align 1
@ADM_NUM_PORTS = common dso_local global i32 0, align 4
@SWITCH_PORT_FLAG_TAGGED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.switch_dev*, %struct.switch_val*)* @adm6996_get_ports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adm6996_get_ports(%struct.switch_dev* %0, %struct.switch_val* %1) #0 {
  %3 = alloca %struct.switch_dev*, align 8
  %4 = alloca %struct.switch_val*, align 8
  %5 = alloca %struct.adm6996_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.switch_port*, align 8
  store %struct.switch_dev* %0, %struct.switch_dev** %3, align 8
  store %struct.switch_val* %1, %struct.switch_val** %4, align 8
  %10 = load %struct.switch_dev*, %struct.switch_dev** %3, align 8
  %11 = call %struct.adm6996_priv* @to_adm(%struct.switch_dev* %10)
  store %struct.adm6996_priv* %11, %struct.adm6996_priv** %5, align 8
  %12 = load %struct.adm6996_priv*, %struct.adm6996_priv** %5, align 8
  %13 = getelementptr inbounds %struct.adm6996_priv, %struct.adm6996_priv* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load %struct.switch_val*, %struct.switch_val** %4, align 8
  %16 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds i32, i32* %14, i64 %17
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %6, align 4
  %20 = load %struct.adm6996_priv*, %struct.adm6996_priv** %5, align 8
  %21 = getelementptr inbounds %struct.adm6996_priv, %struct.adm6996_priv* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load %struct.switch_val*, %struct.switch_val** %4, align 8
  %24 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds i32, i32* %22, i64 %25
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %7, align 4
  %28 = load %struct.switch_val*, %struct.switch_val** %4, align 8
  %29 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @pr_devel(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %30)
  %32 = load %struct.switch_val*, %struct.switch_val** %4, align 8
  %33 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %32, i32 0, i32 1
  store i64 0, i64* %33, align 8
  store i32 0, i32* %8, align 4
  br label %34

34:                                               ; preds = %72, %2
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @ADM_NUM_PORTS, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %75

38:                                               ; preds = %34
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %8, align 4
  %41 = shl i32 1, %40
  %42 = and i32 %39, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %38
  br label %72

45:                                               ; preds = %38
  %46 = load %struct.switch_val*, %struct.switch_val** %4, align 8
  %47 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load %struct.switch_port*, %struct.switch_port** %48, align 8
  %50 = load %struct.switch_val*, %struct.switch_val** %4, align 8
  %51 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %52, 1
  store i64 %53, i64* %51, align 8
  %54 = getelementptr inbounds %struct.switch_port, %struct.switch_port* %49, i64 %52
  store %struct.switch_port* %54, %struct.switch_port** %9, align 8
  %55 = load i32, i32* %8, align 4
  %56 = load %struct.switch_port*, %struct.switch_port** %9, align 8
  %57 = getelementptr inbounds %struct.switch_port, %struct.switch_port* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %8, align 4
  %60 = shl i32 1, %59
  %61 = and i32 %58, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %45
  %64 = load i32, i32* @SWITCH_PORT_FLAG_TAGGED, align 4
  %65 = shl i32 1, %64
  %66 = load %struct.switch_port*, %struct.switch_port** %9, align 8
  %67 = getelementptr inbounds %struct.switch_port, %struct.switch_port* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  br label %71

68:                                               ; preds = %45
  %69 = load %struct.switch_port*, %struct.switch_port** %9, align 8
  %70 = getelementptr inbounds %struct.switch_port, %struct.switch_port* %69, i32 0, i32 1
  store i32 0, i32* %70, align 4
  br label %71

71:                                               ; preds = %68, %63
  br label %72

72:                                               ; preds = %71, %44
  %73 = load i32, i32* %8, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %8, align 4
  br label %34

75:                                               ; preds = %34
  ret i32 0
}

declare dso_local %struct.adm6996_priv* @to_adm(%struct.switch_dev*) #1

declare dso_local i32 @pr_devel(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
