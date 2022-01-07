; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/ath79/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_mdio.c_ag71xx_mdio_get_divider.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/ath79/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_mdio.c_ag71xx_mdio_get_divider.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.clk = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"qca,mdio-max-frequency\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"builtin-switch\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"qca,ar9330-mdio\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"qca,ar9340-mdio\00", align 1
@ar933x_mdio_div_table = common dso_local global i64* null, align 8
@.str.4 = private unnamed_addr constant [16 x i8] c"qca,ar7240-mdio\00", align 1
@ar7240_mdio_div_table = common dso_local global i64* null, align 8
@ar71xx_mdio_div_table = common dso_local global i64* null, align 8
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_node*, i64*)* @ag71xx_mdio_get_divider to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ag71xx_mdio_get_divider(%struct.device_node* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.clk*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.device_node* %0, %struct.device_node** %4, align 8
  store i64* %1, i64** %5, align 8
  %13 = load %struct.device_node*, %struct.device_node** %4, align 8
  %14 = call %struct.clk* @of_clk_get(%struct.device_node* %13, i32 0)
  store %struct.clk* %14, %struct.clk** %6, align 8
  %15 = load %struct.clk*, %struct.clk** %6, align 8
  %16 = call i64 @IS_ERR(%struct.clk* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %88

21:                                               ; preds = %2
  %22 = load %struct.clk*, %struct.clk** %6, align 8
  %23 = call i64 @clk_get_rate(%struct.clk* %22)
  store i64 %23, i64* %7, align 8
  %24 = load %struct.clk*, %struct.clk** %6, align 8
  %25 = call i32 @clk_put(%struct.clk* %24)
  %26 = load %struct.device_node*, %struct.device_node** %4, align 8
  %27 = call i64 @of_property_read_u32(%struct.device_node* %26, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64* %8)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %21
  %30 = load %struct.device_node*, %struct.device_node** %4, align 8
  %31 = call i64 @of_property_read_bool(%struct.device_node* %30, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store i64 5000000, i64* %8, align 8
  br label %35

34:                                               ; preds = %29
  store i64 2000000, i64* %8, align 8
  br label %35

35:                                               ; preds = %34, %33
  br label %36

36:                                               ; preds = %35, %21
  %37 = load %struct.device_node*, %struct.device_node** %4, align 8
  %38 = call i64 @of_device_is_compatible(%struct.device_node* %37, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = load %struct.device_node*, %struct.device_node** %4, align 8
  %42 = call i64 @of_device_is_compatible(%struct.device_node* %41, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %40, %36
  %45 = load i64*, i64** @ar933x_mdio_div_table, align 8
  store i64* %45, i64** %9, align 8
  %46 = load i64*, i64** @ar933x_mdio_div_table, align 8
  %47 = call i32 @ARRAY_SIZE(i64* %46)
  store i32 %47, i32* %10, align 4
  br label %61

48:                                               ; preds = %40
  %49 = load %struct.device_node*, %struct.device_node** %4, align 8
  %50 = call i64 @of_device_is_compatible(%struct.device_node* %49, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = load i64*, i64** @ar7240_mdio_div_table, align 8
  store i64* %53, i64** %9, align 8
  %54 = load i64*, i64** @ar7240_mdio_div_table, align 8
  %55 = call i32 @ARRAY_SIZE(i64* %54)
  store i32 %55, i32* %10, align 4
  br label %60

56:                                               ; preds = %48
  %57 = load i64*, i64** @ar71xx_mdio_div_table, align 8
  store i64* %57, i64** %9, align 8
  %58 = load i64*, i64** @ar71xx_mdio_div_table, align 8
  %59 = call i32 @ARRAY_SIZE(i64* %58)
  store i32 %59, i32* %10, align 4
  br label %60

60:                                               ; preds = %56, %52
  br label %61

61:                                               ; preds = %60, %44
  store i32 0, i32* %11, align 4
  br label %62

62:                                               ; preds = %82, %61
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* %10, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %85

66:                                               ; preds = %62
  %67 = load i64, i64* %7, align 8
  %68 = load i64*, i64** %9, align 8
  %69 = load i32, i32* %11, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i64, i64* %68, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = udiv i64 %67, %72
  store i64 %73, i64* %12, align 8
  %74 = load i64, i64* %12, align 8
  %75 = load i64, i64* %8, align 8
  %76 = icmp ule i64 %74, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %66
  %78 = load i32, i32* %11, align 4
  %79 = sext i32 %78 to i64
  %80 = load i64*, i64** %5, align 8
  store i64 %79, i64* %80, align 8
  store i32 0, i32* %3, align 4
  br label %88

81:                                               ; preds = %66
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %11, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %11, align 4
  br label %62

85:                                               ; preds = %62
  %86 = load i32, i32* @ENOENT, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %85, %77, %18
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local %struct.clk* @of_clk_get(%struct.device_node*, i32) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i64 @clk_get_rate(%struct.clk*) #1

declare dso_local i32 @clk_put(%struct.clk*) #1

declare dso_local i64 @of_property_read_u32(%struct.device_node*, i8*, i64*) #1

declare dso_local i64 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i64 @of_device_is_compatible(%struct.device_node*, i8*) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
