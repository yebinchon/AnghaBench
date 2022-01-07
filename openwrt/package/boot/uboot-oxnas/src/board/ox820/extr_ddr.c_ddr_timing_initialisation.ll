; ModuleID = '/home/carl/AnghaBench/openwrt/package/boot/uboot-oxnas/src/board/ox820/extr_ddr.c_ddr_timing_initialisation.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/boot/uboot-oxnas/src/board/ox820/extr_ddr.c_ddr_timing_initialisation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@C_DDR_REG_TIMING0 = common dso_local global i64 0, align 8
@C_DDR_REG_TIMING1 = common dso_local global i64 0, align 8
@C_DDR_REG_TIMING2 = common dso_local global i64 0, align 8
@C_DDR_REG_PHY_TIMING = common dso_local global i64 0, align 8
@C_DDR_REG_PHY_WR_RATIO = common dso_local global i64 0, align 8
@C_DDR_REG_PHY_RD_RATIO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @ddr_timing_initialisation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ddr_timing_initialisation(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  store volatile i32 0, i32* %3, align 4
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = shl i32 %6, 0
  store volatile i32 %7, i32* %3, align 4
  %8 = load volatile i32, i32* %3, align 4
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = shl i32 %11, 4
  %13 = add nsw i32 %8, %12
  store volatile i32 %13, i32* %3, align 4
  %14 = load volatile i32, i32* %3, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = shl i32 %17, 8
  %19 = add nsw i32 %14, %18
  store volatile i32 %19, i32* %3, align 4
  %20 = load volatile i32, i32* %3, align 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = shl i32 %23, 12
  %25 = add nsw i32 %20, %24
  store volatile i32 %25, i32* %3, align 4
  %26 = load volatile i32, i32* %3, align 4
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = shl i32 %29, 16
  %31 = add nsw i32 %26, %30
  store volatile i32 %31, i32* %3, align 4
  %32 = load volatile i32, i32* %3, align 4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 4
  %36 = shl i32 %35, 20
  %37 = add nsw i32 %32, %36
  store volatile i32 %37, i32* %3, align 4
  %38 = load volatile i32, i32* %3, align 4
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 6
  %41 = load i32, i32* %40, align 4
  %42 = shl i32 %41, 24
  %43 = add nsw i32 %38, %42
  store volatile i32 %43, i32* %3, align 4
  %44 = load volatile i32, i32* %3, align 4
  %45 = load i64, i64* @C_DDR_REG_TIMING0, align 8
  %46 = inttoptr i64 %45 to i32*
  store volatile i32 %44, i32* %46, align 4
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 7
  %49 = load i32, i32* %48, align 4
  %50 = shl i32 %49, 0
  store volatile i32 %50, i32* %3, align 4
  %51 = load volatile i32, i32* %3, align 4
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 8
  %54 = load i32, i32* %53, align 4
  %55 = shl i32 %54, 8
  %56 = add nsw i32 %51, %55
  store volatile i32 %56, i32* %3, align 4
  %57 = load volatile i32, i32* %3, align 4
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 9
  %60 = load i32, i32* %59, align 4
  %61 = shl i32 %60, 16
  %62 = add nsw i32 %57, %61
  store volatile i32 %62, i32* %3, align 4
  %63 = load volatile i32, i32* %3, align 4
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 10
  %66 = load i32, i32* %65, align 4
  %67 = shl i32 %66, 24
  %68 = add nsw i32 %63, %67
  store volatile i32 %68, i32* %3, align 4
  %69 = load volatile i32, i32* %3, align 4
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 11
  %72 = load i32, i32* %71, align 4
  %73 = shl i32 %72, 28
  %74 = add nsw i32 %69, %73
  store volatile i32 %74, i32* %3, align 4
  %75 = load volatile i32, i32* %3, align 4
  %76 = load i64, i64* @C_DDR_REG_TIMING1, align 8
  %77 = inttoptr i64 %76 to i32*
  store volatile i32 %75, i32* %77, align 4
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 12
  %80 = load i32, i32* %79, align 4
  %81 = shl i32 %80, 0
  store volatile i32 %81, i32* %3, align 4
  %82 = load volatile i32, i32* %3, align 4
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 13
  %85 = load i32, i32* %84, align 4
  %86 = shl i32 %85, 4
  %87 = add nsw i32 %82, %86
  store volatile i32 %87, i32* %3, align 4
  %88 = load volatile i32, i32* %3, align 4
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 14
  %91 = load i32, i32* %90, align 4
  %92 = shl i32 %91, 8
  %93 = add nsw i32 %88, %92
  store volatile i32 %93, i32* %3, align 4
  %94 = load volatile i32, i32* %3, align 4
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 15
  %97 = load i32, i32* %96, align 4
  %98 = shl i32 %97, 16
  %99 = add nsw i32 %94, %98
  store volatile i32 %99, i32* %3, align 4
  %100 = load volatile i32, i32* %3, align 4
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 16
  %103 = load i32, i32* %102, align 4
  %104 = shl i32 %103, 21
  %105 = add nsw i32 %100, %104
  store volatile i32 %105, i32* %3, align 4
  %106 = load volatile i32, i32* %3, align 4
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 17
  %109 = load i32, i32* %108, align 4
  %110 = shl i32 %109, 24
  %111 = add nsw i32 %106, %110
  store volatile i32 %111, i32* %3, align 4
  %112 = load volatile i32, i32* %3, align 4
  %113 = load i64, i64* @C_DDR_REG_TIMING2, align 8
  %114 = inttoptr i64 %113 to i32*
  store volatile i32 %112, i32* %114, align 4
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 18
  %117 = load i32, i32* %116, align 4
  %118 = shl i32 %117, 16
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 19
  %121 = load i32, i32* %120, align 4
  %122 = shl i32 %121, 8
  %123 = or i32 %118, %122
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 13
  %126 = load i32, i32* %125, align 4
  %127 = shl i32 %126, 4
  %128 = or i32 %123, %127
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 12
  %131 = load i32, i32* %130, align 4
  %132 = shl i32 %131, 0
  %133 = or i32 %128, %132
  store volatile i32 %133, i32* %3, align 4
  %134 = load volatile i32, i32* %3, align 4
  %135 = load i64, i64* @C_DDR_REG_PHY_TIMING, align 8
  %136 = inttoptr i64 %135 to i32*
  store volatile i32 %134, i32* %136, align 4
  %137 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 20
  %139 = load i32, i32* %138, align 4
  store volatile i32 %139, i32* %3, align 4
  %140 = load volatile i32, i32* %3, align 4
  %141 = load i64, i64* @C_DDR_REG_PHY_WR_RATIO, align 8
  %142 = inttoptr i64 %141 to i32*
  store volatile i32 %140, i32* %142, align 4
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 21
  %145 = load i32, i32* %144, align 4
  store volatile i32 %145, i32* %3, align 4
  %146 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 22
  %148 = load i32, i32* %147, align 4
  %149 = shl i32 %148, 8
  %150 = load volatile i32, i32* %3, align 4
  %151 = add nsw i32 %150, %149
  store volatile i32 %151, i32* %3, align 4
  %152 = load volatile i32, i32* %3, align 4
  %153 = load i64, i64* @C_DDR_REG_PHY_RD_RATIO, align 8
  %154 = inttoptr i64 %153 to i32*
  store volatile i32 %152, i32* %154, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
