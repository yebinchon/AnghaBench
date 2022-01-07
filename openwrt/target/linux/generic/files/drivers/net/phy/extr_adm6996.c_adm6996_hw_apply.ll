; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_adm6996.c_adm6996_hw_apply.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_adm6996.c_adm6996_hw_apply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switch_dev = type { i32 }
%struct.adm6996_priv = type { i32, i64, i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"hw_apply\0A\00", align 1
@ADM6996L = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.switch_dev*)* @adm6996_hw_apply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adm6996_hw_apply(%struct.switch_dev* %0) #0 {
  %2 = alloca %struct.switch_dev*, align 8
  %3 = alloca %struct.adm6996_priv*, align 8
  store %struct.switch_dev* %0, %struct.switch_dev** %2, align 8
  %4 = load %struct.switch_dev*, %struct.switch_dev** %2, align 8
  %5 = call %struct.adm6996_priv* @to_adm(%struct.switch_dev* %4)
  store %struct.adm6996_priv* %5, %struct.adm6996_priv** %3, align 8
  %6 = call i32 @pr_devel(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.adm6996_priv*, %struct.adm6996_priv** %3, align 8
  %8 = getelementptr inbounds %struct.adm6996_priv, %struct.adm6996_priv* %7, i32 0, i32 2
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.adm6996_priv*, %struct.adm6996_priv** %3, align 8
  %11 = getelementptr inbounds %struct.adm6996_priv, %struct.adm6996_priv* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %35, label %14

14:                                               ; preds = %1
  %15 = load %struct.adm6996_priv*, %struct.adm6996_priv** %3, align 8
  %16 = getelementptr inbounds %struct.adm6996_priv, %struct.adm6996_priv* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %34

19:                                               ; preds = %14
  %20 = load %struct.adm6996_priv*, %struct.adm6996_priv** %3, align 8
  %21 = getelementptr inbounds %struct.adm6996_priv, %struct.adm6996_priv* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @ADM6996L, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load %struct.adm6996_priv*, %struct.adm6996_priv** %3, align 8
  %27 = call i32 @adm6996_disable_vlan_6996l(%struct.adm6996_priv* %26)
  br label %31

28:                                               ; preds = %19
  %29 = load %struct.adm6996_priv*, %struct.adm6996_priv** %3, align 8
  %30 = call i32 @adm6996_disable_vlan(%struct.adm6996_priv* %29)
  br label %31

31:                                               ; preds = %28, %25
  %32 = load %struct.adm6996_priv*, %struct.adm6996_priv** %3, align 8
  %33 = getelementptr inbounds %struct.adm6996_priv, %struct.adm6996_priv* %32, i32 0, i32 0
  store i32 0, i32* %33, align 8
  br label %34

34:                                               ; preds = %31, %14
  br label %70

35:                                               ; preds = %1
  %36 = load %struct.adm6996_priv*, %struct.adm6996_priv** %3, align 8
  %37 = getelementptr inbounds %struct.adm6996_priv, %struct.adm6996_priv* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %55, label %40

40:                                               ; preds = %35
  %41 = load %struct.adm6996_priv*, %struct.adm6996_priv** %3, align 8
  %42 = getelementptr inbounds %struct.adm6996_priv, %struct.adm6996_priv* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @ADM6996L, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load %struct.adm6996_priv*, %struct.adm6996_priv** %3, align 8
  %48 = call i32 @adm6996_enable_vlan_6996l(%struct.adm6996_priv* %47)
  br label %52

49:                                               ; preds = %40
  %50 = load %struct.adm6996_priv*, %struct.adm6996_priv** %3, align 8
  %51 = call i32 @adm6996_enable_vlan(%struct.adm6996_priv* %50)
  br label %52

52:                                               ; preds = %49, %46
  %53 = load %struct.adm6996_priv*, %struct.adm6996_priv** %3, align 8
  %54 = getelementptr inbounds %struct.adm6996_priv, %struct.adm6996_priv* %53, i32 0, i32 0
  store i32 1, i32* %54, align 8
  br label %55

55:                                               ; preds = %52, %35
  %56 = load %struct.adm6996_priv*, %struct.adm6996_priv** %3, align 8
  %57 = call i32 @adm6996_apply_port_pvids(%struct.adm6996_priv* %56)
  %58 = load %struct.adm6996_priv*, %struct.adm6996_priv** %3, align 8
  %59 = getelementptr inbounds %struct.adm6996_priv, %struct.adm6996_priv* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @ADM6996L, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %55
  %64 = load %struct.adm6996_priv*, %struct.adm6996_priv** %3, align 8
  %65 = call i32 @adm6996_apply_vlan_filters_6996l(%struct.adm6996_priv* %64)
  br label %69

66:                                               ; preds = %55
  %67 = load %struct.adm6996_priv*, %struct.adm6996_priv** %3, align 8
  %68 = call i32 @adm6996_apply_vlan_filters(%struct.adm6996_priv* %67)
  br label %69

69:                                               ; preds = %66, %63
  br label %70

70:                                               ; preds = %69, %34
  %71 = load %struct.adm6996_priv*, %struct.adm6996_priv** %3, align 8
  %72 = getelementptr inbounds %struct.adm6996_priv, %struct.adm6996_priv* %71, i32 0, i32 2
  %73 = call i32 @mutex_unlock(i32* %72)
  ret i32 0
}

declare dso_local %struct.adm6996_priv* @to_adm(%struct.switch_dev*) #1

declare dso_local i32 @pr_devel(i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @adm6996_disable_vlan_6996l(%struct.adm6996_priv*) #1

declare dso_local i32 @adm6996_disable_vlan(%struct.adm6996_priv*) #1

declare dso_local i32 @adm6996_enable_vlan_6996l(%struct.adm6996_priv*) #1

declare dso_local i32 @adm6996_enable_vlan(%struct.adm6996_priv*) #1

declare dso_local i32 @adm6996_apply_port_pvids(%struct.adm6996_priv*) #1

declare dso_local i32 @adm6996_apply_vlan_filters_6996l(%struct.adm6996_priv*) #1

declare dso_local i32 @adm6996_apply_vlan_filters(%struct.adm6996_priv*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
