; ModuleID = '/home/carl/AnghaBench/micropython/ports/stm32/mboot/extr_main.c_flash_write.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/stm32/mboot/extr_main.c_flash_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }

@flash_layout = common dso_local global %struct.TYPE_2__* null, align 8
@TYPEPROGRAM_WORD = common dso_local global i32 0, align 4
@HAL_OK = common dso_local global i64 0, align 8
@FLASH_TYPEPROGRAM_FLASHWORD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32*, i64)* @flash_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flash_write(i64 %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i64, i64* %5, align 8
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @flash_layout, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp sge i64 %11, %15
  br i1 %16, label %17, label %30

17:                                               ; preds = %3
  %18 = load i64, i64* %5, align 8
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @flash_layout, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @flash_layout, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %22, %26
  %28 = icmp slt i64 %18, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %17
  store i32 -1, i32* %4, align 4
  br label %59

30:                                               ; preds = %17, %3
  %31 = load i32*, i32** %6, align 8
  %32 = bitcast i32* %31 to i64*
  store i64* %32, i64** %8, align 8
  %33 = load i64, i64* %7, align 8
  %34 = add i64 %33, 3
  %35 = udiv i64 %34, 4
  store i64 %35, i64* %9, align 8
  %36 = call i32 (...) @HAL_FLASH_Unlock()
  store i64 0, i64* %10, align 8
  br label %37

37:                                               ; preds = %55, %30
  %38 = load i64, i64* %10, align 8
  %39 = load i64, i64* %9, align 8
  %40 = icmp ult i64 %38, %39
  br i1 %40, label %41, label %58

41:                                               ; preds = %37
  %42 = load i32, i32* @TYPEPROGRAM_WORD, align 4
  %43 = load i64, i64* %5, align 8
  %44 = load i64*, i64** %8, align 8
  %45 = load i64, i64* %44, align 8
  %46 = call i64 @HAL_FLASH_Program(i32 %42, i64 %43, i64 %45)
  %47 = load i64, i64* @HAL_OK, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  store i32 -1, i32* %4, align 4
  br label %59

50:                                               ; preds = %41
  %51 = load i64, i64* %5, align 8
  %52 = add nsw i64 %51, 4
  store i64 %52, i64* %5, align 8
  %53 = load i64*, i64** %8, align 8
  %54 = getelementptr inbounds i64, i64* %53, i64 1
  store i64* %54, i64** %8, align 8
  br label %55

55:                                               ; preds = %50
  %56 = load i64, i64* %10, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %10, align 8
  br label %37

58:                                               ; preds = %37
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %58, %49, %29
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @HAL_FLASH_Unlock(...) #1

declare dso_local i64 @HAL_FLASH_Program(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
