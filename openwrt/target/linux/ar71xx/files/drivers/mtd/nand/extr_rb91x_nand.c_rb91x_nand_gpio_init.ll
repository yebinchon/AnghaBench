; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/ar71xx/files/drivers/mtd/nand/extr_rb91x_nand.c_rb91x_nand_gpio_init.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/ar71xx/files/drivers/mtd/nand/extr_rb91x_nand.c_rb91x_nand_gpio_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rb91x_nand_info = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@GPIOF_OUT_INIT_HIGH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"LATCH enable\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"NAND nCE\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"NAND nRW\00", align 1
@GPIOF_OUT_INIT_LOW = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"NAND CLE\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"NAND ALE\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"NAND READ\00", align 1
@GPIOF_IN = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"NAND RDY\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rb91x_nand_info*)* @rb91x_nand_gpio_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rb91x_nand_gpio_init(%struct.rb91x_nand_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rb91x_nand_info*, align 8
  %4 = alloca i32, align 4
  store %struct.rb91x_nand_info* %0, %struct.rb91x_nand_info** %3, align 8
  %5 = load %struct.rb91x_nand_info*, %struct.rb91x_nand_info** %3, align 8
  %6 = getelementptr inbounds %struct.rb91x_nand_info, %struct.rb91x_nand_info* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.rb91x_nand_info*, %struct.rb91x_nand_info** %3, align 8
  %9 = getelementptr inbounds %struct.rb91x_nand_info, %struct.rb91x_nand_info* %8, i32 0, i32 7
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @GPIOF_OUT_INIT_HIGH, align 4
  %12 = call i32 @devm_gpio_request_one(i32 %7, i32 %10, i32 %11, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  store i32 %16, i32* %2, align 4
  br label %92

17:                                               ; preds = %1
  %18 = load %struct.rb91x_nand_info*, %struct.rb91x_nand_info** %3, align 8
  %19 = getelementptr inbounds %struct.rb91x_nand_info, %struct.rb91x_nand_info* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.rb91x_nand_info*, %struct.rb91x_nand_info** %3, align 8
  %22 = getelementptr inbounds %struct.rb91x_nand_info, %struct.rb91x_nand_info* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @GPIOF_OUT_INIT_HIGH, align 4
  %25 = call i32 @devm_gpio_request_one(i32 %20, i32 %23, i32 %24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %17
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %2, align 4
  br label %92

30:                                               ; preds = %17
  %31 = load %struct.rb91x_nand_info*, %struct.rb91x_nand_info** %3, align 8
  %32 = getelementptr inbounds %struct.rb91x_nand_info, %struct.rb91x_nand_info* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.rb91x_nand_info*, %struct.rb91x_nand_info** %3, align 8
  %35 = getelementptr inbounds %struct.rb91x_nand_info, %struct.rb91x_nand_info* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @GPIOF_OUT_INIT_HIGH, align 4
  %38 = call i32 @devm_gpio_request_one(i32 %33, i32 %36, i32 %37, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %30
  %42 = load i32, i32* %4, align 4
  store i32 %42, i32* %2, align 4
  br label %92

43:                                               ; preds = %30
  %44 = load %struct.rb91x_nand_info*, %struct.rb91x_nand_info** %3, align 8
  %45 = getelementptr inbounds %struct.rb91x_nand_info, %struct.rb91x_nand_info* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.rb91x_nand_info*, %struct.rb91x_nand_info** %3, align 8
  %48 = getelementptr inbounds %struct.rb91x_nand_info, %struct.rb91x_nand_info* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @GPIOF_OUT_INIT_LOW, align 4
  %51 = call i32 @devm_gpio_request_one(i32 %46, i32 %49, i32 %50, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %4, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %43
  %55 = load i32, i32* %4, align 4
  store i32 %55, i32* %2, align 4
  br label %92

56:                                               ; preds = %43
  %57 = load %struct.rb91x_nand_info*, %struct.rb91x_nand_info** %3, align 8
  %58 = getelementptr inbounds %struct.rb91x_nand_info, %struct.rb91x_nand_info* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.rb91x_nand_info*, %struct.rb91x_nand_info** %3, align 8
  %61 = getelementptr inbounds %struct.rb91x_nand_info, %struct.rb91x_nand_info* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @GPIOF_OUT_INIT_LOW, align 4
  %64 = call i32 @devm_gpio_request_one(i32 %59, i32 %62, i32 %63, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  store i32 %64, i32* %4, align 4
  %65 = load i32, i32* %4, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %56
  %68 = load i32, i32* %4, align 4
  store i32 %68, i32* %2, align 4
  br label %92

69:                                               ; preds = %56
  %70 = load %struct.rb91x_nand_info*, %struct.rb91x_nand_info** %3, align 8
  %71 = getelementptr inbounds %struct.rb91x_nand_info, %struct.rb91x_nand_info* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.rb91x_nand_info*, %struct.rb91x_nand_info** %3, align 8
  %74 = getelementptr inbounds %struct.rb91x_nand_info, %struct.rb91x_nand_info* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @GPIOF_OUT_INIT_LOW, align 4
  %77 = call i32 @devm_gpio_request_one(i32 %72, i32 %75, i32 %76, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  store i32 %77, i32* %4, align 4
  %78 = load i32, i32* %4, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %69
  %81 = load i32, i32* %4, align 4
  store i32 %81, i32* %2, align 4
  br label %92

82:                                               ; preds = %69
  %83 = load %struct.rb91x_nand_info*, %struct.rb91x_nand_info** %3, align 8
  %84 = getelementptr inbounds %struct.rb91x_nand_info, %struct.rb91x_nand_info* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.rb91x_nand_info*, %struct.rb91x_nand_info** %3, align 8
  %87 = getelementptr inbounds %struct.rb91x_nand_info, %struct.rb91x_nand_info* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @GPIOF_IN, align 4
  %90 = call i32 @devm_gpio_request_one(i32 %85, i32 %88, i32 %89, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  store i32 %90, i32* %4, align 4
  %91 = load i32, i32* %4, align 4
  store i32 %91, i32* %2, align 4
  br label %92

92:                                               ; preds = %82, %80, %67, %54, %41, %28, %15
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local i32 @devm_gpio_request_one(i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
