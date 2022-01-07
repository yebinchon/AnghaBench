; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/mediatek/files-4.19/drivers/net/phy/mtk/mt753x/extr_mt7531.c_mt7531_eee_setting.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/mediatek/files-4.19/drivers/net/phy/mtk/mt753x/extr_mt7531.c_mt7531_eee_setting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsw_mt753x = type { i32 (%struct.gsw_mt753x*, i32, i32, i32)*, i32 (%struct.gsw_mt753x*, i32, i32, i32)*, i32 (%struct.gsw_mt753x*, i32, i32, i32, i32)* }

@PHY_DEV1E = common dso_local global i32 0, align 4
@PHY_DEV1E_REG_189 = common dso_local global i32 0, align 4
@DESCRAMBLER_CLEAR_EN = common dso_local global i32 0, align 4
@DSP_CH = common dso_local global i32 0, align 4
@DSP_NOD_ADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gsw_mt753x*, i32)* @mt7531_eee_setting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt7531_eee_setting(%struct.gsw_mt753x* %0, i32 %1) #0 {
  %3 = alloca %struct.gsw_mt753x*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.gsw_mt753x* %0, %struct.gsw_mt753x** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %3, align 8
  %8 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %7, i32 0, i32 0
  %9 = load i32 (%struct.gsw_mt753x*, i32, i32, i32)*, i32 (%struct.gsw_mt753x*, i32, i32, i32)** %8, align 8
  %10 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @PHY_DEV1E, align 4
  %13 = load i32, i32* @PHY_DEV1E_REG_189, align 4
  %14 = call i32 %9(%struct.gsw_mt753x* %10, i32 %11, i32 %12, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* @DESCRAMBLER_CLEAR_EN, align 4
  %16 = xor i32 %15, -1
  %17 = load i32, i32* %6, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %6, align 4
  %19 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %3, align 8
  %20 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %19, i32 0, i32 2
  %21 = load i32 (%struct.gsw_mt753x*, i32, i32, i32, i32)*, i32 (%struct.gsw_mt753x*, i32, i32, i32, i32)** %20, align 8
  %22 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @PHY_DEV1E, align 4
  %25 = load i32, i32* @PHY_DEV1E_REG_189, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 %21(%struct.gsw_mt753x* %22, i32 %23, i32 %24, i32 %25, i32 %26)
  %28 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %3, align 8
  %29 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %28, i32 0, i32 1
  %30 = load i32 (%struct.gsw_mt753x*, i32, i32, i32)*, i32 (%struct.gsw_mt753x*, i32, i32, i32)** %29, align 8
  %31 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %3, align 8
  %32 = load i32, i32* %4, align 4
  %33 = call i32 %30(%struct.gsw_mt753x* %31, i32 %32, i32 31, i32 21173)
  %34 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %3, align 8
  %35 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %34, i32 0, i32 2
  %36 = load i32 (%struct.gsw_mt753x*, i32, i32, i32, i32)*, i32 (%struct.gsw_mt753x*, i32, i32, i32, i32)** %35, align 8
  %37 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %3, align 8
  %38 = load i32, i32* %4, align 4
  %39 = call i32 %36(%struct.gsw_mt753x* %37, i32 %38, i32 30, i32 721, i32 0)
  %40 = load i32, i32* @DSP_CH, align 4
  %41 = shl i32 %40, 11
  %42 = or i32 32768, %41
  %43 = load i32, i32* @DSP_NOD_ADDR, align 4
  %44 = shl i32 %43, 7
  %45 = or i32 %42, %44
  %46 = or i32 %45, 16
  store i32 %46, i32* %5, align 4
  %47 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %3, align 8
  %48 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %47, i32 0, i32 1
  %49 = load i32 (%struct.gsw_mt753x*, i32, i32, i32)*, i32 (%struct.gsw_mt753x*, i32, i32, i32)** %48, align 8
  %50 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %3, align 8
  %51 = load i32, i32* %4, align 4
  %52 = call i32 %49(%struct.gsw_mt753x* %50, i32 %51, i32 17, i32 27)
  %53 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %3, align 8
  %54 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %53, i32 0, i32 1
  %55 = load i32 (%struct.gsw_mt753x*, i32, i32, i32)*, i32 (%struct.gsw_mt753x*, i32, i32, i32)** %54, align 8
  %56 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %3, align 8
  %57 = load i32, i32* %4, align 4
  %58 = call i32 %55(%struct.gsw_mt753x* %56, i32 %57, i32 18, i32 0)
  %59 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %3, align 8
  %60 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %59, i32 0, i32 1
  %61 = load i32 (%struct.gsw_mt753x*, i32, i32, i32)*, i32 (%struct.gsw_mt753x*, i32, i32, i32)** %60, align 8
  %62 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %3, align 8
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* %5, align 4
  %65 = call i32 %61(%struct.gsw_mt753x* %62, i32 %63, i32 16, i32 %64)
  %66 = load i32, i32* @DSP_CH, align 4
  %67 = shl i32 %66, 11
  %68 = or i32 32768, %67
  %69 = load i32, i32* @DSP_NOD_ADDR, align 4
  %70 = shl i32 %69, 7
  %71 = or i32 %68, %70
  %72 = or i32 %71, 30
  store i32 %72, i32* %5, align 4
  %73 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %3, align 8
  %74 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %73, i32 0, i32 1
  %75 = load i32 (%struct.gsw_mt753x*, i32, i32, i32)*, i32 (%struct.gsw_mt753x*, i32, i32, i32)** %74, align 8
  %76 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %3, align 8
  %77 = load i32, i32* %4, align 4
  %78 = call i32 %75(%struct.gsw_mt753x* %76, i32 %77, i32 17, i32 0)
  %79 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %3, align 8
  %80 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %79, i32 0, i32 1
  %81 = load i32 (%struct.gsw_mt753x*, i32, i32, i32)*, i32 (%struct.gsw_mt753x*, i32, i32, i32)** %80, align 8
  %82 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %3, align 8
  %83 = load i32, i32* %4, align 4
  %84 = call i32 %81(%struct.gsw_mt753x* %82, i32 %83, i32 18, i32 0)
  %85 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %3, align 8
  %86 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %85, i32 0, i32 1
  %87 = load i32 (%struct.gsw_mt753x*, i32, i32, i32)*, i32 (%struct.gsw_mt753x*, i32, i32, i32)** %86, align 8
  %88 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %3, align 8
  %89 = load i32, i32* %4, align 4
  %90 = load i32, i32* %5, align 4
  %91 = call i32 %87(%struct.gsw_mt753x* %88, i32 %89, i32 16, i32 %90)
  %92 = load i32, i32* @DSP_CH, align 4
  %93 = shl i32 %92, 11
  %94 = or i32 32768, %93
  %95 = load i32, i32* @DSP_NOD_ADDR, align 4
  %96 = shl i32 %95, 7
  %97 = or i32 %94, %96
  %98 = or i32 %97, 32
  store i32 %98, i32* %5, align 4
  %99 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %3, align 8
  %100 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %99, i32 0, i32 1
  %101 = load i32 (%struct.gsw_mt753x*, i32, i32, i32)*, i32 (%struct.gsw_mt753x*, i32, i32, i32)** %100, align 8
  %102 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %3, align 8
  %103 = load i32, i32* %4, align 4
  %104 = call i32 %101(%struct.gsw_mt753x* %102, i32 %103, i32 17, i32 1280)
  %105 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %3, align 8
  %106 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %105, i32 0, i32 1
  %107 = load i32 (%struct.gsw_mt753x*, i32, i32, i32)*, i32 (%struct.gsw_mt753x*, i32, i32, i32)** %106, align 8
  %108 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %3, align 8
  %109 = load i32, i32* %4, align 4
  %110 = call i32 %107(%struct.gsw_mt753x* %108, i32 %109, i32 18, i32 0)
  %111 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %3, align 8
  %112 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %111, i32 0, i32 1
  %113 = load i32 (%struct.gsw_mt753x*, i32, i32, i32)*, i32 (%struct.gsw_mt753x*, i32, i32, i32)** %112, align 8
  %114 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %3, align 8
  %115 = load i32, i32* %4, align 4
  %116 = load i32, i32* %5, align 4
  %117 = call i32 %113(%struct.gsw_mt753x* %114, i32 %115, i32 16, i32 %116)
  %118 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %3, align 8
  %119 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %118, i32 0, i32 1
  %120 = load i32 (%struct.gsw_mt753x*, i32, i32, i32)*, i32 (%struct.gsw_mt753x*, i32, i32, i32)** %119, align 8
  %121 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %3, align 8
  %122 = load i32, i32* %4, align 4
  %123 = call i32 %120(%struct.gsw_mt753x* %121, i32 %122, i32 31, i32 0)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
