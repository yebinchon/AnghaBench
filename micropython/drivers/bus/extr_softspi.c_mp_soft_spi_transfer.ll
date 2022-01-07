; ModuleID = '/home/carl/AnghaBench/micropython/drivers/bus/extr_softspi.c_mp_soft_spi_transfer.c'
source_filename = "/home/carl/AnghaBench/micropython/drivers/bus/extr_softspi.c_mp_soft_spi_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i64, i32, i32, i32 }

@MICROPY_HW_SOFTSPI_MIN_DELAY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_soft_spi_transfer(i8* %0, i64 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_2__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %16, %struct.TYPE_2__** %9, align 8
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %10, align 8
  store i64 0, i64* %11, align 8
  br label %20

20:                                               ; preds = %113, %4
  %21 = load i64, i64* %11, align 8
  %22 = load i64, i64* %6, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %116

24:                                               ; preds = %20
  %25 = load i32*, i32** %7, align 8
  %26 = load i64, i64* %11, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %29

29:                                               ; preds = %99, %24
  %30 = load i32, i32* %14, align 4
  %31 = icmp slt i32 %30, 8
  br i1 %31, label %32, label %104

32:                                               ; preds = %29
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %12, align 4
  %37 = ashr i32 %36, 7
  %38 = and i32 %37, 1
  %39 = call i32 @mp_hal_pin_write(i32 %35, i32 %38)
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %32
  %45 = load i64, i64* %10, align 8
  %46 = call i32 @mp_hal_delay_us_fast(i64 %45)
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = sub nsw i32 1, %52
  %54 = call i32 @mp_hal_pin_write(i32 %49, i32 %53)
  br label %66

55:                                               ; preds = %32
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = sub nsw i32 1, %61
  %63 = call i32 @mp_hal_pin_write(i32 %58, i32 %62)
  %64 = load i64, i64* %10, align 8
  %65 = call i32 @mp_hal_delay_us_fast(i64 %64)
  br label %66

66:                                               ; preds = %55, %44
  %67 = load i32, i32* %13, align 4
  %68 = shl i32 %67, 1
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @mp_hal_pin_read(i32 %71)
  %73 = or i32 %68, %72
  store i32 %73, i32* %13, align 4
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %88

78:                                               ; preds = %66
  %79 = load i64, i64* %10, align 8
  %80 = call i32 @mp_hal_delay_us_fast(i64 %79)
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @mp_hal_pin_write(i32 %83, i32 %86)
  br label %98

88:                                               ; preds = %66
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @mp_hal_pin_write(i32 %91, i32 %94)
  %96 = load i64, i64* %10, align 8
  %97 = call i32 @mp_hal_delay_us_fast(i64 %96)
  br label %98

98:                                               ; preds = %88, %78
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %14, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %14, align 4
  %102 = load i32, i32* %12, align 4
  %103 = shl i32 %102, 1
  store i32 %103, i32* %12, align 4
  br label %29

104:                                              ; preds = %29
  %105 = load i32*, i32** %8, align 8
  %106 = icmp ne i32* %105, null
  br i1 %106, label %107, label %112

107:                                              ; preds = %104
  %108 = load i32, i32* %13, align 4
  %109 = load i32*, i32** %8, align 8
  %110 = load i64, i64* %11, align 8
  %111 = getelementptr inbounds i32, i32* %109, i64 %110
  store i32 %108, i32* %111, align 4
  br label %112

112:                                              ; preds = %107, %104
  br label %113

113:                                              ; preds = %112
  %114 = load i64, i64* %11, align 8
  %115 = add i64 %114, 1
  store i64 %115, i64* %11, align 8
  br label %20

116:                                              ; preds = %20
  ret void
}

declare dso_local i32 @mp_hal_pin_write(i32, i32) #1

declare dso_local i32 @mp_hal_delay_us_fast(i64) #1

declare dso_local i32 @mp_hal_pin_read(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
