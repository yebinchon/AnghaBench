; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/gdiplus/extr_image.c_get_gif_background_color.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/gdiplus/extr_image.c_get_gif_background_color.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32, i64 }

@PropertyTagIndexBackground = common dso_local global i64 0, align 8
@PropertyTagIndexTransparent = common dso_local global i64 0, align 8
@PropertyTagGlobalPalette = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"can't get gif background color\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @get_gif_background_color to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_gif_background_color(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32 0, i32* %4, align 4
  store i64 0, i64* %5, align 8
  br label %8

8:                                                ; preds = %35, %1
  %9 = load i64, i64* %5, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ult i64 %9, %12
  br i1 %13, label %14, label %38

14:                                               ; preds = %8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = load i64, i64* %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @PropertyTagIndexBackground, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %14
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = load i64, i64* %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to i32*
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %4, align 4
  br label %38

34:                                               ; preds = %14
  br label %35

35:                                               ; preds = %34
  %36 = load i64, i64* %5, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %5, align 8
  br label %8

38:                                               ; preds = %24, %8
  store i64 0, i64* %5, align 8
  br label %39

39:                                               ; preds = %71, %38
  %40 = load i64, i64* %5, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ult i64 %40, %43
  br i1 %44, label %45, label %74

45:                                               ; preds = %39
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = load i64, i64* %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @PropertyTagIndexTransparent, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %70

55:                                               ; preds = %45
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = load i64, i64* %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = inttoptr i64 %62 to i32*
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* %4, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %55
  store i32 0, i32* %2, align 4
  br label %136

69:                                               ; preds = %55
  br label %70

70:                                               ; preds = %69, %45
  br label %71

71:                                               ; preds = %70
  %72 = load i64, i64* %5, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %5, align 8
  br label %39

74:                                               ; preds = %39
  store i64 0, i64* %5, align 8
  br label %75

75:                                               ; preds = %131, %74
  %76 = load i64, i64* %5, align 8
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ult i64 %76, %79
  br i1 %80, label %81, label %134

81:                                               ; preds = %75
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = load i64, i64* %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @PropertyTagGlobalPalette, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %130

91:                                               ; preds = %81
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = load i64, i64* %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = sdiv i32 %98, 3
  %100 = load i32, i32* %4, align 4
  %101 = icmp sgt i32 %99, %100
  br i1 %101, label %102, label %129

102:                                              ; preds = %91
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = load i64, i64* %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = inttoptr i64 %109 to i32*
  %111 = load i32, i32* %4, align 4
  %112 = mul nsw i32 %111, 3
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %110, i64 %113
  store i32* %114, i32** %7, align 8
  %115 = load i32*, i32** %7, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 2
  %117 = load i32, i32* %116, align 4
  %118 = load i32*, i32** %7, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 1
  %120 = load i32, i32* %119, align 4
  %121 = shl i32 %120, 8
  %122 = add nsw i32 %117, %121
  %123 = load i32*, i32** %7, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 0
  %125 = load i32, i32* %124, align 4
  %126 = shl i32 %125, 16
  %127 = add nsw i32 %122, %126
  %128 = add i32 %127, -16777216
  store i32 %128, i32* %2, align 4
  br label %136

129:                                              ; preds = %91
  br label %134

130:                                              ; preds = %81
  br label %131

131:                                              ; preds = %130
  %132 = load i64, i64* %5, align 8
  %133 = add i64 %132, 1
  store i64 %133, i64* %5, align 8
  br label %75

134:                                              ; preds = %129, %75
  %135 = call i32 @FIXME(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %136

136:                                              ; preds = %134, %102, %68
  %137 = load i32, i32* %2, align 4
  ret i32 %137
}

declare dso_local i32 @FIXME(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
