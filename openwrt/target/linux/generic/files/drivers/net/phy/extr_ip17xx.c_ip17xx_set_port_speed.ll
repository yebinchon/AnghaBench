; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_ip17xx.c_ip17xx_set_port_speed.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_ip17xx.c_ip17xx_set_port_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switch_dev = type { i32 }
%struct.switch_attr = type { i32 }
%struct.switch_val = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ip17xx_state = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.switch_dev*, %struct.switch_attr*, %struct.switch_val*)* @ip17xx_set_port_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip17xx_set_port_speed(%struct.switch_dev* %0, %struct.switch_attr* %1, %struct.switch_val* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.switch_dev*, align 8
  %6 = alloca %struct.switch_attr*, align 8
  %7 = alloca %struct.switch_val*, align 8
  %8 = alloca %struct.ip17xx_state*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.switch_dev* %0, %struct.switch_dev** %5, align 8
  store %struct.switch_attr* %1, %struct.switch_attr** %6, align 8
  store %struct.switch_val* %2, %struct.switch_val** %7, align 8
  %13 = load %struct.switch_dev*, %struct.switch_dev** %5, align 8
  %14 = call %struct.ip17xx_state* @get_state(%struct.switch_dev* %13)
  store %struct.ip17xx_state* %14, %struct.ip17xx_state** %8, align 8
  %15 = load %struct.switch_val*, %struct.switch_val** %7, align 8
  %16 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %9, align 4
  %18 = load %struct.switch_val*, %struct.switch_val** %7, align 8
  %19 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 100
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  store i32 1, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %33

24:                                               ; preds = %3
  %25 = load %struct.switch_val*, %struct.switch_val** %7, align 8
  %26 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 10
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %32

31:                                               ; preds = %24
  store i32 1, i32* %11, align 4
  store i32 1, i32* %12, align 4
  br label %32

32:                                               ; preds = %31, %30
  br label %33

33:                                               ; preds = %32, %23
  %34 = load i32, i32* %9, align 4
  %35 = load %struct.ip17xx_state*, %struct.ip17xx_state** %8, align 8
  %36 = getelementptr inbounds %struct.ip17xx_state, %struct.ip17xx_state* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %34, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %33
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %82

44:                                               ; preds = %33
  %45 = load i32, i32* %9, align 4
  %46 = load %struct.switch_dev*, %struct.switch_dev** %5, align 8
  %47 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp sge i32 %45, %48
  br i1 %49, label %53, label %50

50:                                               ; preds = %44
  %51 = load i32, i32* %9, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %50, %44
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %82

56:                                               ; preds = %50
  %57 = load %struct.ip17xx_state*, %struct.ip17xx_state** %8, align 8
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @ip_phy_read(%struct.ip17xx_state* %57, i32 %58, i32 0)
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %56
  %63 = load i32, i32* @EIO, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %4, align 4
  br label %82

65:                                               ; preds = %56
  %66 = load i32, i32* %10, align 4
  %67 = and i32 %66, -4097
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %10, align 4
  %69 = and i32 %68, -8193
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %11, align 4
  %71 = shl i32 %70, 12
  %72 = load i32, i32* %10, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %12, align 4
  %75 = shl i32 %74, 13
  %76 = load i32, i32* %10, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %10, align 4
  %78 = load %struct.ip17xx_state*, %struct.ip17xx_state** %8, align 8
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @ip_phy_write(%struct.ip17xx_state* %78, i32 %79, i32 0, i32 %80)
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %65, %62, %53, %41
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local %struct.ip17xx_state* @get_state(%struct.switch_dev*) #1

declare dso_local i32 @ip_phy_read(%struct.ip17xx_state*, i32, i32) #1

declare dso_local i32 @ip_phy_write(%struct.ip17xx_state*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
