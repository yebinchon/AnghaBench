; ModuleID = '/home/carl/AnghaBench/micropython/ports/nrf/boards/microbit/modules/extr_microbitimage.c_microbit_image_set_pixel.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/nrf/boards/microbit/modules/extr_microbitimage.c_microbit_image_set_pixel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"index cannot be negative\00", align 1
@MAX_BRIGHTNESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"brightness out of bounds.\00", align 1
@mp_const_none = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"index too large\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @microbit_image_set_pixel(i32 %0, i64* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i64* %1, i64** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load i64*, i64** %5, align 8
  %12 = getelementptr inbounds i64, i64* %11, i64 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %14, %struct.TYPE_5__** %6, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %16 = call i32 @check_mutability(%struct.TYPE_5__* %15)
  %17 = load i64*, i64** %5, align 8
  %18 = getelementptr inbounds i64, i64* %17, i64 1
  %19 = load i64, i64* %18, align 8
  %20 = call i64 @mp_obj_get_int(i64 %19)
  store i64 %20, i64* %7, align 8
  %21 = load i64*, i64** %5, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 2
  %23 = load i64, i64* %22, align 8
  %24 = call i64 @mp_obj_get_int(i64 %23)
  store i64 %24, i64* %8, align 8
  %25 = load i64, i64* %7, align 8
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %2
  %28 = load i64, i64* %8, align 8
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27, %2
  %31 = call i32 @mp_raise_ValueError(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %27
  %33 = load i64*, i64** %5, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 3
  %35 = load i64, i64* %34, align 8
  %36 = call i64 @mp_obj_get_int(i64 %35)
  store i64 %36, i64* %9, align 8
  %37 = load i64, i64* %9, align 8
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %32
  %40 = load i64, i64* %9, align 8
  %41 = load i64, i64* @MAX_BRIGHTNESS, align 8
  %42 = icmp sgt i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %39, %32
  %44 = call i32 @mp_raise_ValueError(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43, %39
  %46 = load i64, i64* %7, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %48 = call i64 @imageWidth(%struct.TYPE_5__* %47)
  %49 = icmp slt i64 %46, %48
  br i1 %49, label %50, label %63

50:                                               ; preds = %45
  %51 = load i64, i64* %8, align 8
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %53 = call i64 @imageHeight(%struct.TYPE_5__* %52)
  %54 = icmp slt i64 %51, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %50
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i64, i64* %7, align 8
  %59 = load i64, i64* %8, align 8
  %60 = load i64, i64* %9, align 8
  %61 = call i32 @greyscaleSetPixelValue(i32* %57, i64 %58, i64 %59, i64 %60)
  %62 = load i64, i64* @mp_const_none, align 8
  store i64 %62, i64* %3, align 8
  br label %65

63:                                               ; preds = %50, %45
  %64 = call i32 @mp_raise_ValueError(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %65

65:                                               ; preds = %63, %55
  %66 = load i64, i64* %3, align 8
  ret i64 %66
}

declare dso_local i32 @check_mutability(%struct.TYPE_5__*) #1

declare dso_local i64 @mp_obj_get_int(i64) #1

declare dso_local i32 @mp_raise_ValueError(i8*) #1

declare dso_local i64 @imageWidth(%struct.TYPE_5__*) #1

declare dso_local i64 @imageHeight(%struct.TYPE_5__*) #1

declare dso_local i32 @greyscaleSetPixelValue(i32*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
