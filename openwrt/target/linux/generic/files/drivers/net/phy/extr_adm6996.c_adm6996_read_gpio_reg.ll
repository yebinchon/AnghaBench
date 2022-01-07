; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_adm6996.c_adm6996_read_gpio_reg.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_adm6996.c_adm6996_read_gpio_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adm6996_priv = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adm6996_priv*, i32)* @adm6996_read_gpio_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adm6996_read_gpio_reg(%struct.adm6996_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.adm6996_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [6 x i32], align 16
  %6 = alloca [4 x i32], align 16
  store %struct.adm6996_priv* %0, %struct.adm6996_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  store i32 255, i32* %7, align 4
  %8 = getelementptr inbounds i32, i32* %7, i64 1
  store i32 255, i32* %8, align 4
  %9 = getelementptr inbounds i32, i32* %8, i64 1
  store i32 255, i32* %9, align 4
  %10 = getelementptr inbounds i32, i32* %9, i64 1
  store i32 255, i32* %10, align 4
  %11 = getelementptr inbounds i32, i32* %10, i64 1
  %12 = load i32, i32* %4, align 4
  %13 = and i32 %12, 64
  %14 = lshr i32 %13, 6
  %15 = or i32 0, %14
  %16 = or i32 96, %15
  store i32 %16, i32* %11, align 4
  %17 = getelementptr inbounds i32, i32* %11, i64 1
  %18 = load i32, i32* %4, align 4
  %19 = and i32 %18, 63
  %20 = shl i32 %19, 2
  store i32 %20, i32* %17, align 4
  %21 = load %struct.adm6996_priv*, %struct.adm6996_priv** %3, align 8
  %22 = getelementptr inbounds %struct.adm6996_priv, %struct.adm6996_priv* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @gpio_direction_output(i32 %23, i32 0)
  %25 = load %struct.adm6996_priv*, %struct.adm6996_priv** %3, align 8
  %26 = getelementptr inbounds %struct.adm6996_priv, %struct.adm6996_priv* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @gpio_direction_output(i32 %27, i32 0)
  %29 = load %struct.adm6996_priv*, %struct.adm6996_priv** %3, align 8
  %30 = getelementptr inbounds %struct.adm6996_priv, %struct.adm6996_priv* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @gpio_direction_output(i32 %31, i32 0)
  %33 = load %struct.adm6996_priv*, %struct.adm6996_priv** %3, align 8
  %34 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  %35 = call i32 @adm6996_gpio_write(%struct.adm6996_priv* %33, i32 0, i32* %34, i32 46)
  %36 = load %struct.adm6996_priv*, %struct.adm6996_priv** %3, align 8
  %37 = getelementptr inbounds %struct.adm6996_priv, %struct.adm6996_priv* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @gpio_direction_input(i32 %38)
  %40 = load %struct.adm6996_priv*, %struct.adm6996_priv** %3, align 8
  %41 = call i32 @adm6996_gpio_adclk(%struct.adm6996_priv* %40, i32 2)
  %42 = load %struct.adm6996_priv*, %struct.adm6996_priv** %3, align 8
  %43 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %44 = call i32 @adm6996_gpio_read(%struct.adm6996_priv* %42, i32 0, i32* %43, i32 32)
  %45 = load %struct.adm6996_priv*, %struct.adm6996_priv** %3, align 8
  %46 = call i32 @adm6996_gpio_adclk(%struct.adm6996_priv* %45, i32 2)
  %47 = load %struct.adm6996_priv*, %struct.adm6996_priv** %3, align 8
  %48 = getelementptr inbounds %struct.adm6996_priv, %struct.adm6996_priv* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @gpio_direction_input(i32 %49)
  %51 = load %struct.adm6996_priv*, %struct.adm6996_priv** %3, align 8
  %52 = getelementptr inbounds %struct.adm6996_priv, %struct.adm6996_priv* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @gpio_direction_input(i32 %53)
  %55 = load i32, i32* %4, align 4
  %56 = and i32 %55, 1
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %2
  %59 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %60 = load i32, i32* %59, align 16
  %61 = shl i32 %60, 8
  %62 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %61, %63
  br label %72

65:                                               ; preds = %2
  %66 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2
  %67 = load i32, i32* %66, align 8
  %68 = shl i32 %67, 8
  %69 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 3
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %68, %70
  br label %72

72:                                               ; preds = %65, %58
  %73 = phi i32 [ %64, %58 ], [ %71, %65 ]
  ret i32 %73
}

declare dso_local i32 @gpio_direction_output(i32, i32) #1

declare dso_local i32 @adm6996_gpio_write(%struct.adm6996_priv*, i32, i32*, i32) #1

declare dso_local i32 @gpio_direction_input(i32) #1

declare dso_local i32 @adm6996_gpio_adclk(%struct.adm6996_priv*, i32) #1

declare dso_local i32 @adm6996_gpio_read(%struct.adm6996_priv*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
