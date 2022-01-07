; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_swconfig.c_swconfig_set_pvid.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_swconfig.c_swconfig_set_pvid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switch_dev = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.switch_dev*, i64, i32)* }
%struct.switch_attr = type { i32 }
%struct.switch_val = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.switch_dev*, %struct.switch_attr*, %struct.switch_val*)* @swconfig_set_pvid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @swconfig_set_pvid(%struct.switch_dev* %0, %struct.switch_attr* %1, %struct.switch_val* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.switch_dev*, align 8
  %6 = alloca %struct.switch_attr*, align 8
  %7 = alloca %struct.switch_val*, align 8
  store %struct.switch_dev* %0, %struct.switch_dev** %5, align 8
  store %struct.switch_attr* %1, %struct.switch_attr** %6, align 8
  store %struct.switch_val* %2, %struct.switch_val** %7, align 8
  %8 = load %struct.switch_val*, %struct.switch_val** %7, align 8
  %9 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.switch_dev*, %struct.switch_dev** %5, align 8
  %12 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp sge i64 %10, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %43

18:                                               ; preds = %3
  %19 = load %struct.switch_dev*, %struct.switch_dev** %5, align 8
  %20 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %19, i32 0, i32 1
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32 (%struct.switch_dev*, i64, i32)*, i32 (%struct.switch_dev*, i64, i32)** %22, align 8
  %24 = icmp ne i32 (%struct.switch_dev*, i64, i32)* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %18
  %26 = load i32, i32* @EOPNOTSUPP, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %43

28:                                               ; preds = %18
  %29 = load %struct.switch_dev*, %struct.switch_dev** %5, align 8
  %30 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %29, i32 0, i32 1
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32 (%struct.switch_dev*, i64, i32)*, i32 (%struct.switch_dev*, i64, i32)** %32, align 8
  %34 = load %struct.switch_dev*, %struct.switch_dev** %5, align 8
  %35 = load %struct.switch_val*, %struct.switch_val** %7, align 8
  %36 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.switch_val*, %struct.switch_val** %7, align 8
  %39 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 %33(%struct.switch_dev* %34, i64 %37, i32 %41)
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %28, %25, %15
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
