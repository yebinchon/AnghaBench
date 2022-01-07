; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_swconfig.c_switch_generic_set_link.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_swconfig.c_switch_generic_set_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switch_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.switch_dev*, i32, i32, i32)* }
%struct.switch_port_link = type { i32, i64, i64 }

@ENOTSUPP = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_ANENABLE = common dso_local global i32 0, align 4
@BMCR_ANRESTART = common dso_local global i32 0, align 4
@BMCR_FULLDPLX = common dso_local global i32 0, align 4
@BMCR_SPEED100 = common dso_local global i32 0, align 4
@BMCR_SPEED1000 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @switch_generic_set_link(%struct.switch_dev* %0, i32 %1, %struct.switch_port_link* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.switch_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.switch_port_link*, align 8
  %8 = alloca i32, align 4
  store %struct.switch_dev* %0, %struct.switch_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.switch_port_link* %2, %struct.switch_port_link** %7, align 8
  %9 = load %struct.switch_dev*, %struct.switch_dev** %5, align 8
  %10 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32 (%struct.switch_dev*, i32, i32, i32)*, i32 (%struct.switch_dev*, i32, i32, i32)** %12, align 8
  %14 = icmp ne i32 (%struct.switch_dev*, i32, i32, i32)* %13, null
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i64 @WARN_ON(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @ENOTSUPP, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %86

22:                                               ; preds = %3
  %23 = load %struct.switch_port_link*, %struct.switch_port_link** %7, align 8
  %24 = getelementptr inbounds %struct.switch_port_link, %struct.switch_port_link* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %49

27:                                               ; preds = %22
  %28 = load %struct.switch_dev*, %struct.switch_dev** %5, align 8
  %29 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32 (%struct.switch_dev*, i32, i32, i32)*, i32 (%struct.switch_dev*, i32, i32, i32)** %31, align 8
  %33 = load %struct.switch_dev*, %struct.switch_dev** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @MII_BMCR, align 4
  %36 = call i32 %32(%struct.switch_dev* %33, i32 %34, i32 %35, i32 0)
  %37 = load %struct.switch_dev*, %struct.switch_dev** %5, align 8
  %38 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32 (%struct.switch_dev*, i32, i32, i32)*, i32 (%struct.switch_dev*, i32, i32, i32)** %40, align 8
  %42 = load %struct.switch_dev*, %struct.switch_dev** %5, align 8
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @MII_BMCR, align 4
  %45 = load i32, i32* @BMCR_ANENABLE, align 4
  %46 = load i32, i32* @BMCR_ANRESTART, align 4
  %47 = or i32 %45, %46
  %48 = call i32 %41(%struct.switch_dev* %42, i32 %43, i32 %44, i32 %47)
  br label %85

49:                                               ; preds = %22
  store i32 0, i32* %8, align 4
  %50 = load %struct.switch_port_link*, %struct.switch_port_link** %7, align 8
  %51 = getelementptr inbounds %struct.switch_port_link, %struct.switch_port_link* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load i32, i32* @BMCR_FULLDPLX, align 4
  %56 = load i32, i32* %8, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %8, align 4
  br label %58

58:                                               ; preds = %54, %49
  %59 = load %struct.switch_port_link*, %struct.switch_port_link** %7, align 8
  %60 = getelementptr inbounds %struct.switch_port_link, %struct.switch_port_link* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  switch i32 %61, label %71 [
    i32 130, label %62
    i32 129, label %63
    i32 128, label %67
  ]

62:                                               ; preds = %58
  br label %74

63:                                               ; preds = %58
  %64 = load i32, i32* @BMCR_SPEED100, align 4
  %65 = load i32, i32* %8, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %8, align 4
  br label %74

67:                                               ; preds = %58
  %68 = load i32, i32* @BMCR_SPEED1000, align 4
  %69 = load i32, i32* %8, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %8, align 4
  br label %74

71:                                               ; preds = %58
  %72 = load i32, i32* @ENOTSUPP, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %4, align 4
  br label %86

74:                                               ; preds = %67, %63, %62
  %75 = load %struct.switch_dev*, %struct.switch_dev** %5, align 8
  %76 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %75, i32 0, i32 0
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32 (%struct.switch_dev*, i32, i32, i32)*, i32 (%struct.switch_dev*, i32, i32, i32)** %78, align 8
  %80 = load %struct.switch_dev*, %struct.switch_dev** %5, align 8
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* @MII_BMCR, align 4
  %83 = load i32, i32* %8, align 4
  %84 = call i32 %79(%struct.switch_dev* %80, i32 %81, i32 %82, i32 %83)
  br label %85

85:                                               ; preds = %74, %27
  store i32 0, i32* %4, align 4
  br label %86

86:                                               ; preds = %85, %71, %19
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local i64 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
