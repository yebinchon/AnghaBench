; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/driver/extr_spi.c_spi_mast_set_mosi.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/driver/extr_spi.c_spi_mast_set_mosi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i64 }

@SPI_USR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @spi_mast_set_mosi(i32 %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_2__, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %12 = load i32, i32* %5, align 4
  %13 = icmp sgt i32 %12, 1
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  br label %131

15:                                               ; preds = %4
  %16 = load i32, i32* %7, align 4
  %17 = icmp sgt i32 %16, 32
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  br label %131

19:                                               ; preds = %15
  %20 = load i32, i32* %6, align 4
  %21 = ashr i32 %20, 5
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp sgt i32 %22, 15
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %131

25:                                               ; preds = %19
  br label %26

26:                                               ; preds = %33, %25
  %27 = load i32, i32* %5, align 4
  %28 = call i64 @SPI_CMD(i32 %27)
  %29 = call i32 @READ_PERI_REG(i64 %28)
  %30 = load i32, i32* @SPI_USR, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  br label %26

34:                                               ; preds = %26
  %35 = load i32, i32* %5, align 4
  %36 = call i64 @SPI_W0(i32 %35)
  %37 = load i32, i32* %10, align 4
  %38 = mul nsw i32 %37, 4
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %36, %39
  %41 = call i32 @READ_PERI_REG(i64 %40)
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  store i32 %41, i32* %44, align 4
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  %48 = load i32, i32* %47, align 4
  %49 = call i8* @swap_endianess(i32 %48)
  %50 = ptrtoint i8* %49 to i32
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  store i32 %50, i32* %53, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp slt i32 %54, 15
  br i1 %55, label %56, label %77

56:                                               ; preds = %34
  %57 = load i32, i32* %5, align 4
  %58 = call i64 @SPI_W0(i32 %57)
  %59 = load i32, i32* %10, align 4
  %60 = add nsw i32 %59, 1
  %61 = mul nsw i32 %60, 4
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %58, %62
  %64 = call i32 @READ_PERI_REG(i64 %63)
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  store i32 %64, i32* %67, align 4
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  %71 = load i32, i32* %70, align 4
  %72 = call i8* @swap_endianess(i32 %71)
  %73 = ptrtoint i8* %72 to i32
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  store i32 %73, i32* %76, align 4
  br label %77

77:                                               ; preds = %56, %34
  %78 = load i32, i32* %6, align 4
  %79 = and i32 %78, 31
  %80 = sub nsw i32 64, %79
  %81 = load i32, i32* %7, align 4
  %82 = sub nsw i32 %80, %81
  store i32 %82, i32* %11, align 4
  %83 = load i32, i32* %7, align 4
  %84 = zext i32 %83 to i64
  %85 = shl i64 1, %84
  %86 = sub i64 %85, 1
  %87 = load i32, i32* %11, align 4
  %88 = zext i32 %87 to i64
  %89 = shl i64 %86, %88
  %90 = xor i64 %89, -1
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = and i64 %92, %90
  store i64 %93, i64* %91, align 8
  %94 = load i64, i64* %8, align 8
  %95 = trunc i64 %94 to i32
  %96 = load i32, i32* %11, align 4
  %97 = shl i32 %95, %96
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = or i64 %100, %98
  store i64 %101, i64* %99, align 8
  %102 = load i32, i32* %10, align 4
  %103 = icmp slt i32 %102, 15
  br i1 %103, label %104, label %118

104:                                              ; preds = %77
  %105 = load i32, i32* %5, align 4
  %106 = call i64 @SPI_W0(i32 %105)
  %107 = load i32, i32* %10, align 4
  %108 = add nsw i32 %107, 1
  %109 = mul nsw i32 %108, 4
  %110 = sext i32 %109 to i64
  %111 = add nsw i64 %106, %110
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 0
  %115 = load i32, i32* %114, align 4
  %116 = call i8* @swap_endianess(i32 %115)
  %117 = call i32 @WRITE_PERI_REG(i64 %111, i8* %116)
  br label %118

118:                                              ; preds = %104, %77
  %119 = load i32, i32* %5, align 4
  %120 = call i64 @SPI_W0(i32 %119)
  %121 = load i32, i32* %10, align 4
  %122 = mul nsw i32 %121, 4
  %123 = sext i32 %122 to i64
  %124 = add nsw i64 %120, %123
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 1
  %128 = load i32, i32* %127, align 4
  %129 = call i8* @swap_endianess(i32 %128)
  %130 = call i32 @WRITE_PERI_REG(i64 %124, i8* %129)
  br label %131

131:                                              ; preds = %118, %24, %18, %14
  ret void
}

declare dso_local i32 @READ_PERI_REG(i64) #1

declare dso_local i64 @SPI_CMD(i32) #1

declare dso_local i64 @SPI_W0(i32) #1

declare dso_local i8* @swap_endianess(i32) #1

declare dso_local i32 @WRITE_PERI_REG(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
