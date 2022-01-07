; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_rtl8306.c_rtl_get.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_rtl8306.c_rtl_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl_reg = type { i32, i32, i64, i32, i32, i32 }
%struct.switch_dev = type { i32 }

@rtl_regs = common dso_local global %struct.rtl_reg* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.switch_dev*, i32)* @rtl_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl_get(%struct.switch_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.switch_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rtl_reg*, align 8
  %7 = alloca i32, align 4
  store %struct.switch_dev* %0, %struct.switch_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.rtl_reg*, %struct.rtl_reg** @rtl_regs, align 8
  %9 = load i32, i32* %5, align 4
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %struct.rtl_reg, %struct.rtl_reg* %8, i64 %10
  store %struct.rtl_reg* %11, %struct.rtl_reg** %6, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.rtl_reg*, %struct.rtl_reg** @rtl_regs, align 8
  %14 = call i32 @ARRAY_SIZE(%struct.rtl_reg* %13)
  %15 = icmp uge i32 %12, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @BUG_ON(i32 %16)
  %18 = load %struct.rtl_reg*, %struct.rtl_reg** %6, align 8
  %19 = getelementptr inbounds %struct.rtl_reg, %struct.rtl_reg* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %62

23:                                               ; preds = %2
  %24 = load %struct.switch_dev*, %struct.switch_dev** %4, align 8
  %25 = load %struct.rtl_reg*, %struct.rtl_reg** %6, align 8
  %26 = getelementptr inbounds %struct.rtl_reg, %struct.rtl_reg* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.rtl_reg*, %struct.rtl_reg** %6, align 8
  %29 = getelementptr inbounds %struct.rtl_reg, %struct.rtl_reg* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.rtl_reg*, %struct.rtl_reg** %6, align 8
  %32 = getelementptr inbounds %struct.rtl_reg, %struct.rtl_reg* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @rtl_r16(%struct.switch_dev* %24, i32 %27, i32 %30, i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load %struct.rtl_reg*, %struct.rtl_reg** %6, align 8
  %36 = getelementptr inbounds %struct.rtl_reg, %struct.rtl_reg* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %23
  %40 = load %struct.rtl_reg*, %struct.rtl_reg** %6, align 8
  %41 = getelementptr inbounds %struct.rtl_reg, %struct.rtl_reg* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %7, align 4
  %44 = ashr i32 %43, %42
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %39, %23
  %46 = load %struct.rtl_reg*, %struct.rtl_reg** %6, align 8
  %47 = getelementptr inbounds %struct.rtl_reg, %struct.rtl_reg* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load i32, i32* %7, align 4
  %52 = xor i32 %51, -1
  store i32 %52, i32* %7, align 4
  br label %53

53:                                               ; preds = %50, %45
  %54 = load %struct.rtl_reg*, %struct.rtl_reg** %6, align 8
  %55 = getelementptr inbounds %struct.rtl_reg, %struct.rtl_reg* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = shl i32 1, %56
  %58 = sub nsw i32 %57, 1
  %59 = load i32, i32* %7, align 4
  %60 = and i32 %59, %58
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %53, %22
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.rtl_reg*) #1

declare dso_local i32 @rtl_r16(%struct.switch_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
