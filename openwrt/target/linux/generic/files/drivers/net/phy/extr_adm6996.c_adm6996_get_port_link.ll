; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_adm6996.c_adm6996_get_port_link.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_adm6996.c_adm6996_get_port_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switch_dev = type { i32 }
%struct.switch_port_link = type { i32, i32, i32, i32, i32, i32 }
%struct.adm6996_priv = type { i32 }

@ADM_NUM_PORTS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ADM_PS0 = common dso_local global i32 0, align 4
@ADM_PS1 = common dso_local global i32 0, align 4
@ADM_PS2 = common dso_local global i32 0, align 4
@ADM_PS_LS = common dso_local global i32 0, align 4
@ADM_PS_DS = common dso_local global i32 0, align 4
@ADM_PS_FCS = common dso_local global i32 0, align 4
@ADM_PS_SS = common dso_local global i32 0, align 4
@SWITCH_PORT_SPEED_100 = common dso_local global i32 0, align 4
@SWITCH_PORT_SPEED_10 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.switch_dev*, i32, %struct.switch_port_link*)* @adm6996_get_port_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adm6996_get_port_link(%struct.switch_dev* %0, i32 %1, %struct.switch_port_link* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.switch_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.switch_port_link*, align 8
  %8 = alloca %struct.adm6996_priv*, align 8
  %9 = alloca i32, align 4
  store %struct.switch_dev* %0, %struct.switch_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.switch_port_link* %2, %struct.switch_port_link** %7, align 8
  %10 = load %struct.switch_dev*, %struct.switch_dev** %5, align 8
  %11 = call %struct.adm6996_priv* @to_adm(%struct.switch_dev* %10)
  store %struct.adm6996_priv* %11, %struct.adm6996_priv** %8, align 8
  store i32 0, i32* %9, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @ADM_NUM_PORTS, align 4
  %14 = icmp sge i32 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %101

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  switch i32 %19, label %56 [
    i32 0, label %20
    i32 1, label %24
    i32 2, label %30
    i32 3, label %34
    i32 4, label %40
    i32 5, label %46
  ]

20:                                               ; preds = %18
  %21 = load %struct.adm6996_priv*, %struct.adm6996_priv** %8, align 8
  %22 = load i32, i32* @ADM_PS0, align 4
  %23 = call i32 @r16(%struct.adm6996_priv* %21, i32 %22)
  store i32 %23, i32* %9, align 4
  br label %59

24:                                               ; preds = %18
  %25 = load %struct.adm6996_priv*, %struct.adm6996_priv** %8, align 8
  %26 = load i32, i32* @ADM_PS0, align 4
  %27 = call i32 @r16(%struct.adm6996_priv* %25, i32 %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = ashr i32 %28, 8
  store i32 %29, i32* %9, align 4
  br label %59

30:                                               ; preds = %18
  %31 = load %struct.adm6996_priv*, %struct.adm6996_priv** %8, align 8
  %32 = load i32, i32* @ADM_PS1, align 4
  %33 = call i32 @r16(%struct.adm6996_priv* %31, i32 %32)
  store i32 %33, i32* %9, align 4
  br label %59

34:                                               ; preds = %18
  %35 = load %struct.adm6996_priv*, %struct.adm6996_priv** %8, align 8
  %36 = load i32, i32* @ADM_PS1, align 4
  %37 = call i32 @r16(%struct.adm6996_priv* %35, i32 %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = ashr i32 %38, 8
  store i32 %39, i32* %9, align 4
  br label %59

40:                                               ; preds = %18
  %41 = load %struct.adm6996_priv*, %struct.adm6996_priv** %8, align 8
  %42 = load i32, i32* @ADM_PS1, align 4
  %43 = call i32 @r16(%struct.adm6996_priv* %41, i32 %42)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = ashr i32 %44, 12
  store i32 %45, i32* %9, align 4
  br label %59

46:                                               ; preds = %18
  %47 = load %struct.adm6996_priv*, %struct.adm6996_priv** %8, align 8
  %48 = load i32, i32* @ADM_PS2, align 4
  %49 = call i32 @r16(%struct.adm6996_priv* %47, i32 %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = and i32 %50, 3
  %52 = load i32, i32* %9, align 4
  %53 = and i32 %52, 24
  %54 = ashr i32 %53, 1
  %55 = or i32 %51, %54
  store i32 %55, i32* %9, align 4
  br label %59

56:                                               ; preds = %18
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  br label %101

59:                                               ; preds = %46, %40, %34, %30, %24, %20
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @ADM_PS_LS, align 4
  %62 = and i32 %60, %61
  %63 = load %struct.switch_port_link*, %struct.switch_port_link** %7, align 8
  %64 = getelementptr inbounds %struct.switch_port_link, %struct.switch_port_link* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 4
  %65 = load %struct.switch_port_link*, %struct.switch_port_link** %7, align 8
  %66 = getelementptr inbounds %struct.switch_port_link, %struct.switch_port_link* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %59
  store i32 0, i32* %4, align 4
  br label %101

70:                                               ; preds = %59
  %71 = load %struct.switch_port_link*, %struct.switch_port_link** %7, align 8
  %72 = getelementptr inbounds %struct.switch_port_link, %struct.switch_port_link* %71, i32 0, i32 1
  store i32 1, i32* %72, align 4
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* @ADM_PS_DS, align 4
  %75 = and i32 %73, %74
  %76 = load %struct.switch_port_link*, %struct.switch_port_link** %7, align 8
  %77 = getelementptr inbounds %struct.switch_port_link, %struct.switch_port_link* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* @ADM_PS_FCS, align 4
  %80 = and i32 %78, %79
  %81 = load %struct.switch_port_link*, %struct.switch_port_link** %7, align 8
  %82 = getelementptr inbounds %struct.switch_port_link, %struct.switch_port_link* %81, i32 0, i32 3
  store i32 %80, i32* %82, align 4
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* @ADM_PS_FCS, align 4
  %85 = and i32 %83, %84
  %86 = load %struct.switch_port_link*, %struct.switch_port_link** %7, align 8
  %87 = getelementptr inbounds %struct.switch_port_link, %struct.switch_port_link* %86, i32 0, i32 4
  store i32 %85, i32* %87, align 4
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* @ADM_PS_SS, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %70
  %93 = load i32, i32* @SWITCH_PORT_SPEED_100, align 4
  %94 = load %struct.switch_port_link*, %struct.switch_port_link** %7, align 8
  %95 = getelementptr inbounds %struct.switch_port_link, %struct.switch_port_link* %94, i32 0, i32 5
  store i32 %93, i32* %95, align 4
  br label %100

96:                                               ; preds = %70
  %97 = load i32, i32* @SWITCH_PORT_SPEED_10, align 4
  %98 = load %struct.switch_port_link*, %struct.switch_port_link** %7, align 8
  %99 = getelementptr inbounds %struct.switch_port_link, %struct.switch_port_link* %98, i32 0, i32 5
  store i32 %97, i32* %99, align 4
  br label %100

100:                                              ; preds = %96, %92
  store i32 0, i32* %4, align 4
  br label %101

101:                                              ; preds = %100, %69, %56, %15
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local %struct.adm6996_priv* @to_adm(%struct.switch_dev*) #1

declare dso_local i32 @r16(%struct.adm6996_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
