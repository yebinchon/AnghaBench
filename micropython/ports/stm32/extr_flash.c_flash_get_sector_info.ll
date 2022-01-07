; ModuleID = '/home/carl/AnghaBench/micropython/ports/stm32/extr_flash.c_flash_get_sector_info.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/stm32/extr_flash.c_flash_get_sector_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32 }

@flash_layout = common dso_local global %struct.TYPE_3__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @flash_get_sector_info(i64 %0, i64* %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  %12 = load i64, i64* %5, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** @flash_layout, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i64 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp sge i64 %12, %16
  br i1 %17, label %18, label %101

18:                                               ; preds = %3
  store i64 0, i64* %8, align 8
  store i32 0, i32* %9, align 4
  br label %19

19:                                               ; preds = %97, %18
  %20 = load i32, i32* %9, align 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** @flash_layout, align 8
  %22 = call i32 @MP_ARRAY_SIZE(%struct.TYPE_3__* %21)
  %23 = icmp slt i32 %20, %22
  br i1 %23, label %24, label %100

24:                                               ; preds = %19
  store i32 0, i32* %10, align 4
  br label %25

25:                                               ; preds = %93, %24
  %26 = load i32, i32* %10, align 4
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** @flash_layout, align 8
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %26, %32
  br i1 %33, label %34, label %96

34:                                               ; preds = %25
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** @flash_layout, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* %10, align 4
  %42 = add nsw i32 %41, 1
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** @flash_layout, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = mul nsw i32 %42, %48
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %40, %50
  store i64 %51, i64* %11, align 8
  %52 = load i64, i64* %5, align 8
  %53 = load i64, i64* %11, align 8
  %54 = icmp slt i64 %52, %53
  br i1 %54, label %55, label %90

55:                                               ; preds = %34
  %56 = load i64*, i64** %6, align 8
  %57 = icmp ne i64* %56, null
  br i1 %57, label %58, label %76

58:                                               ; preds = %55
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** @flash_layout, align 8
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i32, i32* %10, align 4
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** @flash_layout, align 8
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = mul nsw i32 %65, %71
  %73 = sext i32 %72 to i64
  %74 = add nsw i64 %64, %73
  %75 = load i64*, i64** %6, align 8
  store i64 %74, i64* %75, align 8
  br label %76

76:                                               ; preds = %58, %55
  %77 = load i64*, i64** %7, align 8
  %78 = icmp ne i64* %77, null
  br i1 %78, label %79, label %88

79:                                               ; preds = %76
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** @flash_layout, align 8
  %81 = load i32, i32* %9, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = sext i32 %85 to i64
  %87 = load i64*, i64** %7, align 8
  store i64 %86, i64* %87, align 8
  br label %88

88:                                               ; preds = %79, %76
  %89 = load i64, i64* %8, align 8
  store i64 %89, i64* %4, align 8
  br label %102

90:                                               ; preds = %34
  %91 = load i64, i64* %8, align 8
  %92 = add nsw i64 %91, 1
  store i64 %92, i64* %8, align 8
  br label %93

93:                                               ; preds = %90
  %94 = load i32, i32* %10, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %10, align 4
  br label %25

96:                                               ; preds = %25
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %9, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %9, align 4
  br label %19

100:                                              ; preds = %19
  br label %101

101:                                              ; preds = %100, %3
  store i64 0, i64* %4, align 8
  br label %102

102:                                              ; preds = %101, %88
  %103 = load i64, i64* %4, align 8
  ret i64 %103
}

declare dso_local i32 @MP_ARRAY_SIZE(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
