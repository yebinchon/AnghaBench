; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libpng/extr_pngtrans.c_png_do_bgr.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libpng/extr_pngtrans.c_png_do_bgr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i32 }

@.str = private unnamed_addr constant [14 x i8] c"in png_do_bgr\00", align 1
@PNG_COLOR_MASK_COLOR = common dso_local global i32 0, align 4
@PNG_COLOR_TYPE_RGB = common dso_local global i32 0, align 4
@PNG_COLOR_TYPE_RGB_ALPHA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @png_do_bgr(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32* %1, i32** %4, align 8
  %12 = call i32 @png_debug(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @PNG_COLOR_MASK_COLOR, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %86

19:                                               ; preds = %2
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %5, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %25, 8
  br i1 %26, label %27, label %85

27:                                               ; preds = %19
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @PNG_COLOR_TYPE_RGB, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %55

33:                                               ; preds = %27
  store i64 0, i64* %7, align 8
  %34 = load i32*, i32** %4, align 8
  store i32* %34, i32** %6, align 8
  br label %35

35:                                               ; preds = %49, %33
  %36 = load i64, i64* %7, align 8
  %37 = load i64, i64* %5, align 8
  %38 = icmp slt i64 %36, %37
  br i1 %38, label %39, label %54

39:                                               ; preds = %35
  %40 = load i32*, i32** %6, align 8
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %8, align 4
  %42 = load i32*, i32** %6, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 2
  %44 = load i32, i32* %43, align 4
  %45 = load i32*, i32** %6, align 8
  store i32 %44, i32* %45, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load i32*, i32** %6, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 2
  store i32 %46, i32* %48, align 4
  br label %49

49:                                               ; preds = %39
  %50 = load i64, i64* %7, align 8
  %51 = add nsw i64 %50, 1
  store i64 %51, i64* %7, align 8
  %52 = load i32*, i32** %6, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 3
  store i32* %53, i32** %6, align 8
  br label %35

54:                                               ; preds = %35
  br label %84

55:                                               ; preds = %27
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @PNG_COLOR_TYPE_RGB_ALPHA, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %83

61:                                               ; preds = %55
  store i64 0, i64* %10, align 8
  %62 = load i32*, i32** %4, align 8
  store i32* %62, i32** %9, align 8
  br label %63

63:                                               ; preds = %77, %61
  %64 = load i64, i64* %10, align 8
  %65 = load i64, i64* %5, align 8
  %66 = icmp slt i64 %64, %65
  br i1 %66, label %67, label %82

67:                                               ; preds = %63
  %68 = load i32*, i32** %9, align 8
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %11, align 4
  %70 = load i32*, i32** %9, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 2
  %72 = load i32, i32* %71, align 4
  %73 = load i32*, i32** %9, align 8
  store i32 %72, i32* %73, align 4
  %74 = load i32, i32* %11, align 4
  %75 = load i32*, i32** %9, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 2
  store i32 %74, i32* %76, align 4
  br label %77

77:                                               ; preds = %67
  %78 = load i64, i64* %10, align 8
  %79 = add nsw i64 %78, 1
  store i64 %79, i64* %10, align 8
  %80 = load i32*, i32** %9, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 4
  store i32* %81, i32** %9, align 8
  br label %63

82:                                               ; preds = %63
  br label %83

83:                                               ; preds = %82, %55
  br label %84

84:                                               ; preds = %83, %54
  br label %85

85:                                               ; preds = %84, %19
  br label %86

86:                                               ; preds = %85, %2
  ret void
}

declare dso_local i32 @png_debug(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
