; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/ar71xx/files/drivers/mtd/nand/extr_rb91x_nand.c_rb91x_nand_cmd_ctrl.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/ar71xx/files/drivers/mtd/nand/extr_rb91x_nand.c_rb91x_nand_cmd_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32 }
%struct.rb91x_nand_info = type { i32, i32, i32 }

@NAND_CTRL_CHANGE = common dso_local global i32 0, align 4
@NAND_CLE = common dso_local global i32 0, align 4
@NAND_ALE = common dso_local global i32 0, align 4
@NAND_NCE = common dso_local global i32 0, align 4
@NAND_CMD_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtd_info*, i32, i32)* @rb91x_nand_cmd_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rb91x_nand_cmd_ctrl(%struct.mtd_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mtd_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.rb91x_nand_info*, align 8
  %8 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %10 = call %struct.rb91x_nand_info* @mtd_to_rbinfo(%struct.mtd_info* %9)
  store %struct.rb91x_nand_info* %10, %struct.rb91x_nand_info** %7, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @NAND_CTRL_CHANGE, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %46

15:                                               ; preds = %3
  %16 = load %struct.rb91x_nand_info*, %struct.rb91x_nand_info** %7, align 8
  %17 = getelementptr inbounds %struct.rb91x_nand_info, %struct.rb91x_nand_info* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @NAND_CLE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 1, i32 0
  %25 = call i32 @gpio_set_value_cansleep(i32 %18, i32 %24)
  %26 = load %struct.rb91x_nand_info*, %struct.rb91x_nand_info** %7, align 8
  %27 = getelementptr inbounds %struct.rb91x_nand_info, %struct.rb91x_nand_info* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @NAND_ALE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i32 1, i32 0
  %35 = call i32 @gpio_set_value_cansleep(i32 %28, i32 %34)
  %36 = load %struct.rb91x_nand_info*, %struct.rb91x_nand_info** %7, align 8
  %37 = getelementptr inbounds %struct.rb91x_nand_info, %struct.rb91x_nand_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @NAND_NCE, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i32 0, i32 1
  %45 = call i32 @gpio_set_value_cansleep(i32 %38, i32 %44)
  br label %46

46:                                               ; preds = %15, %3
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @NAND_CMD_NONE, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = load i32, i32* %5, align 4
  store i32 %51, i32* %8, align 4
  %52 = load %struct.rb91x_nand_info*, %struct.rb91x_nand_info** %7, align 8
  %53 = call i32 @rb91x_nand_write(%struct.rb91x_nand_info* %52, i32* %8, i32 1)
  br label %54

54:                                               ; preds = %50, %46
  ret void
}

declare dso_local %struct.rb91x_nand_info* @mtd_to_rbinfo(%struct.mtd_info*) #1

declare dso_local i32 @gpio_set_value_cansleep(i32, i32) #1

declare dso_local i32 @rb91x_nand_write(%struct.rb91x_nand_info*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
