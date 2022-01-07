; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/ar71xx/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_mdio.c_ag71xx_mdio_get_divider.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/ar71xx/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_mdio.c_ag71xx_mdio_get_divider.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ag71xx_mdio = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64, i64, i64, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@ar933x_mdio_div_table = common dso_local global i64* null, align 8
@ar7240_mdio_div_table = common dso_local global i64* null, align 8
@ar71xx_mdio_div_table = common dso_local global i64* null, align 8
@.str = private unnamed_addr constant [30 x i8] c"no divider found for %lu/%lu\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ag71xx_mdio*, i64*)* @ag71xx_mdio_get_divider to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ag71xx_mdio_get_divider(%struct.ag71xx_mdio* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ag71xx_mdio*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.ag71xx_mdio* %0, %struct.ag71xx_mdio** %4, align 8
  store i64* %1, i64** %5, align 8
  %12 = load %struct.ag71xx_mdio*, %struct.ag71xx_mdio** %4, align 8
  %13 = getelementptr inbounds %struct.ag71xx_mdio, %struct.ag71xx_mdio* %12, i32 0, i32 1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %6, align 8
  %17 = load %struct.ag71xx_mdio*, %struct.ag71xx_mdio** %4, align 8
  %18 = getelementptr inbounds %struct.ag71xx_mdio, %struct.ag71xx_mdio* %17, i32 0, i32 1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %7, align 8
  %22 = load i64, i64* %6, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load i64, i64* %7, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %24, %2
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %98

30:                                               ; preds = %24
  %31 = load %struct.ag71xx_mdio*, %struct.ag71xx_mdio** %4, align 8
  %32 = getelementptr inbounds %struct.ag71xx_mdio, %struct.ag71xx_mdio* %31, i32 0, i32 1
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 4
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %30
  %38 = load %struct.ag71xx_mdio*, %struct.ag71xx_mdio** %4, align 8
  %39 = getelementptr inbounds %struct.ag71xx_mdio, %struct.ag71xx_mdio* %38, i32 0, i32 1
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %37, %30
  %45 = load i64*, i64** @ar933x_mdio_div_table, align 8
  store i64* %45, i64** %8, align 8
  %46 = load i64*, i64** @ar933x_mdio_div_table, align 8
  %47 = call i32 @ARRAY_SIZE(i64* %46)
  store i32 %47, i32* %9, align 4
  br label %64

48:                                               ; preds = %37
  %49 = load %struct.ag71xx_mdio*, %struct.ag71xx_mdio** %4, align 8
  %50 = getelementptr inbounds %struct.ag71xx_mdio, %struct.ag71xx_mdio* %49, i32 0, i32 1
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %48
  %56 = load i64*, i64** @ar7240_mdio_div_table, align 8
  store i64* %56, i64** %8, align 8
  %57 = load i64*, i64** @ar7240_mdio_div_table, align 8
  %58 = call i32 @ARRAY_SIZE(i64* %57)
  store i32 %58, i32* %9, align 4
  br label %63

59:                                               ; preds = %48
  %60 = load i64*, i64** @ar71xx_mdio_div_table, align 8
  store i64* %60, i64** %8, align 8
  %61 = load i64*, i64** @ar71xx_mdio_div_table, align 8
  %62 = call i32 @ARRAY_SIZE(i64* %61)
  store i32 %62, i32* %9, align 4
  br label %63

63:                                               ; preds = %59, %55
  br label %64

64:                                               ; preds = %63, %44
  store i32 0, i32* %10, align 4
  br label %65

65:                                               ; preds = %85, %64
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* %9, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %88

69:                                               ; preds = %65
  %70 = load i64, i64* %6, align 8
  %71 = load i64*, i64** %8, align 8
  %72 = load i32, i32* %10, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i64, i64* %71, i64 %73
  %75 = load i64, i64* %74, align 8
  %76 = udiv i64 %70, %75
  store i64 %76, i64* %11, align 8
  %77 = load i64, i64* %11, align 8
  %78 = load i64, i64* %7, align 8
  %79 = icmp ule i64 %77, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %69
  %81 = load i32, i32* %10, align 4
  %82 = sext i32 %81 to i64
  %83 = load i64*, i64** %5, align 8
  store i64 %82, i64* %83, align 8
  store i32 0, i32* %3, align 4
  br label %98

84:                                               ; preds = %69
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %10, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %10, align 4
  br label %65

88:                                               ; preds = %65
  %89 = load %struct.ag71xx_mdio*, %struct.ag71xx_mdio** %4, align 8
  %90 = getelementptr inbounds %struct.ag71xx_mdio, %struct.ag71xx_mdio* %89, i32 0, i32 0
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i64, i64* %6, align 8
  %94 = load i64, i64* %7, align 8
  %95 = call i32 @dev_err(i32* %92, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %93, i64 %94)
  %96 = load i32, i32* @ENOENT, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %3, align 4
  br label %98

98:                                               ; preds = %88, %80, %27
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @dev_err(i32*, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
