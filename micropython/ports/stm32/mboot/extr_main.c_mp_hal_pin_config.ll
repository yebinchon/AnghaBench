; ModuleID = '/home/carl/AnghaBench/micropython/ports/stm32/mboot/extr_main.c_mp_hal_pin_config.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/stm32/mboot/extr_main.c_mp_hal_pin_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32* }

@GPIOA_BASE = common dso_local global i64 0, align 8
@GPIOB_BASE = common dso_local global i64 0, align 8
@AHBxENR_GPIOAEN_Pos = common dso_local global i32 0, align 4
@RCC = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_hal_pin_config(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %5, align 4
  %14 = and i32 %13, -16
  %15 = sext i32 %14 to i64
  %16 = inttoptr i64 %15 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %16, %struct.TYPE_3__** %9, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %18 = ptrtoint %struct.TYPE_3__* %17 to i64
  %19 = load i64, i64* @GPIOA_BASE, align 8
  %20 = sub i64 %18, %19
  %21 = load i64, i64* @GPIOB_BASE, align 8
  %22 = load i64, i64* @GPIOA_BASE, align 8
  %23 = sub i64 %21, %22
  %24 = udiv i64 %20, %23
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* @AHBxENR_GPIOAEN_Pos, align 4
  %27 = load i32, i32* %10, align 4
  %28 = add nsw i32 %26, %27
  %29 = shl i32 1, %28
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** @RCC, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 4
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** @RCC, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store volatile i32 %36, i32* %11, align 4
  %37 = load volatile i32, i32* %11, align 4
  %38 = load i32, i32* %5, align 4
  %39 = and i32 %38, 15
  store i32 %39, i32* %12, align 4
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %12, align 4
  %44 = mul nsw i32 2, %43
  %45 = shl i32 3, %44
  %46 = xor i32 %45, -1
  %47 = and i32 %42, %46
  %48 = load i32, i32* %6, align 4
  %49 = and i32 %48, 3
  %50 = load i32, i32* %12, align 4
  %51 = mul nsw i32 2, %50
  %52 = shl i32 %49, %51
  %53 = or i32 %47, %52
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %12, align 4
  %60 = shl i32 1, %59
  %61 = xor i32 %60, -1
  %62 = and i32 %58, %61
  %63 = load i32, i32* %6, align 4
  %64 = ashr i32 %63, 2
  %65 = load i32, i32* %12, align 4
  %66 = shl i32 %64, %65
  %67 = or i32 %62, %66
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* %12, align 4
  %74 = mul nsw i32 2, %73
  %75 = shl i32 3, %74
  %76 = xor i32 %75, -1
  %77 = and i32 %72, %76
  %78 = load i32, i32* %12, align 4
  %79 = mul nsw i32 2, %78
  %80 = shl i32 2, %79
  %81 = or i32 %77, %80
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 2
  store i32 %81, i32* %83, align 8
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %12, align 4
  %88 = mul nsw i32 2, %87
  %89 = shl i32 3, %88
  %90 = xor i32 %89, -1
  %91 = and i32 %86, %90
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* %12, align 4
  %94 = mul nsw i32 2, %93
  %95 = shl i32 %92, %94
  %96 = or i32 %91, %95
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 3
  store i32 %96, i32* %98, align 4
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 4
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %12, align 4
  %103 = ashr i32 %102, 3
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %101, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %12, align 4
  %108 = and i32 %107, 7
  %109 = mul nsw i32 4, %108
  %110 = shl i32 15, %109
  %111 = xor i32 %110, -1
  %112 = and i32 %106, %111
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* %12, align 4
  %115 = and i32 %114, 7
  %116 = mul nsw i32 4, %115
  %117 = shl i32 %113, %116
  %118 = or i32 %112, %117
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 4
  %121 = load i32*, i32** %120, align 8
  %122 = load i32, i32* %12, align 4
  %123 = ashr i32 %122, 3
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %121, i64 %124
  store i32 %118, i32* %125, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
