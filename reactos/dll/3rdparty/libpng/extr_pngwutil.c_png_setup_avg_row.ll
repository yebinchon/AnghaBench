; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libpng/extr_pngwutil.c_png_setup_avg_row.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libpng/extr_pngwutil.c_png_setup_avg_row.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32*, i32* }

@PNG_FILTER_VALUE_AVG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_3__*, i64, i64, i64)* @png_setup_avg_row to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @png_setup_avg_row(%struct.TYPE_3__* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  store i64 0, i64* %14, align 8
  %16 = load i32, i32* @PNG_FILTER_VALUE_AVG, align 4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  store i32 %16, i32* %20, align 4
  store i64 0, i64* %13, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  store i32* %24, i32** %9, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  store i32* %28, i32** %10, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  store i32* %32, i32** %11, align 8
  br label %33

33:                                               ; preds = %64, %4
  %34 = load i64, i64* %13, align 8
  %35 = load i64, i64* %6, align 8
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %37, label %67

37:                                               ; preds = %33
  %38 = load i32*, i32** %9, align 8
  %39 = getelementptr inbounds i32, i32* %38, i32 1
  store i32* %39, i32** %9, align 8
  %40 = load i32, i32* %38, align 4
  %41 = load i32*, i32** %11, align 8
  %42 = getelementptr inbounds i32, i32* %41, i32 1
  store i32* %42, i32** %11, align 8
  %43 = load i32, i32* %41, align 4
  %44 = sdiv i32 %43, 2
  %45 = sub nsw i32 %40, %44
  %46 = and i32 %45, 255
  %47 = sext i32 %46 to i64
  %48 = inttoptr i64 %47 to i8*
  %49 = ptrtoint i8* %48 to i32
  %50 = load i32*, i32** %10, align 8
  %51 = getelementptr inbounds i32, i32* %50, i32 1
  store i32* %51, i32** %10, align 8
  store i32 %49, i32* %50, align 4
  store i32 %49, i32* %15, align 4
  %52 = load i32, i32* %15, align 4
  %53 = icmp ult i32 %52, 128
  br i1 %53, label %54, label %56

54:                                               ; preds = %37
  %55 = load i32, i32* %15, align 4
  br label %59

56:                                               ; preds = %37
  %57 = load i32, i32* %15, align 4
  %58 = sub i32 256, %57
  br label %59

59:                                               ; preds = %56, %54
  %60 = phi i32 [ %55, %54 ], [ %58, %56 ]
  %61 = zext i32 %60 to i64
  %62 = load i64, i64* %14, align 8
  %63 = add i64 %62, %61
  store i64 %63, i64* %14, align 8
  br label %64

64:                                               ; preds = %59
  %65 = load i64, i64* %13, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %13, align 8
  br label %33

67:                                               ; preds = %33
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 1
  store i32* %71, i32** %12, align 8
  br label %72

72:                                               ; preds = %112, %67
  %73 = load i64, i64* %13, align 8
  %74 = load i64, i64* %7, align 8
  %75 = icmp ult i64 %73, %74
  br i1 %75, label %76, label %115

76:                                               ; preds = %72
  %77 = load i32*, i32** %9, align 8
  %78 = getelementptr inbounds i32, i32* %77, i32 1
  store i32* %78, i32** %9, align 8
  %79 = load i32, i32* %77, align 4
  %80 = load i32*, i32** %11, align 8
  %81 = getelementptr inbounds i32, i32* %80, i32 1
  store i32* %81, i32** %11, align 8
  %82 = load i32, i32* %80, align 4
  %83 = load i32*, i32** %12, align 8
  %84 = getelementptr inbounds i32, i32* %83, i32 1
  store i32* %84, i32** %12, align 8
  %85 = load i32, i32* %83, align 4
  %86 = add nsw i32 %82, %85
  %87 = sdiv i32 %86, 2
  %88 = sub nsw i32 %79, %87
  %89 = and i32 %88, 255
  %90 = sext i32 %89 to i64
  %91 = inttoptr i64 %90 to i8*
  %92 = ptrtoint i8* %91 to i32
  %93 = load i32*, i32** %10, align 8
  %94 = getelementptr inbounds i32, i32* %93, i32 1
  store i32* %94, i32** %10, align 8
  store i32 %92, i32* %93, align 4
  store i32 %92, i32* %15, align 4
  %95 = load i32, i32* %15, align 4
  %96 = icmp ult i32 %95, 128
  br i1 %96, label %97, label %99

97:                                               ; preds = %76
  %98 = load i32, i32* %15, align 4
  br label %102

99:                                               ; preds = %76
  %100 = load i32, i32* %15, align 4
  %101 = sub i32 256, %100
  br label %102

102:                                              ; preds = %99, %97
  %103 = phi i32 [ %98, %97 ], [ %101, %99 ]
  %104 = zext i32 %103 to i64
  %105 = load i64, i64* %14, align 8
  %106 = add i64 %105, %104
  store i64 %106, i64* %14, align 8
  %107 = load i64, i64* %14, align 8
  %108 = load i64, i64* %8, align 8
  %109 = icmp ugt i64 %107, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %102
  br label %115

111:                                              ; preds = %102
  br label %112

112:                                              ; preds = %111
  %113 = load i64, i64* %13, align 8
  %114 = add i64 %113, 1
  store i64 %114, i64* %13, align 8
  br label %72

115:                                              ; preds = %110, %72
  %116 = load i64, i64* %14, align 8
  ret i64 %116
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
