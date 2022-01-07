; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_pngwutil.c_png_write_start_row.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_pngwutil.c_png_write_start_row.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_5__, i64, i64, i32*, i64, i32*, i32*, i8*, i32*, i32* }
%struct.TYPE_5__ = type { i32, i64 }

@.str = private unnamed_addr constant [24 x i8] c"in png_write_start_row\0A\00", align 1
@PNG_FILTER_VALUE_NONE = common dso_local global i32 0, align 4
@PNG_FILTER_SUB = common dso_local global i32 0, align 4
@PNG_FILTER_VALUE_SUB = common dso_local global i32 0, align 4
@PNG_FILTER_AVG = common dso_local global i32 0, align 4
@PNG_FILTER_UP = common dso_local global i32 0, align 4
@PNG_FILTER_PAETH = common dso_local global i32 0, align 4
@PNG_FILTER_VALUE_UP = common dso_local global i32 0, align 4
@PNG_FILTER_VALUE_AVG = common dso_local global i32 0, align 4
@PNG_FILTER_VALUE_PAETH = common dso_local global i32 0, align 4
@PNG_INTERLACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @png_write_start_row(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %4 = call i32 @png_debug(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = mul nsw i32 %7, %10
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = call i64 @PNG_ROWBYTES(i32 %11, i32 %14)
  %16 = add nsw i64 %15, 1
  store i64 %16, i64* %3, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %18 = load i64, i64* %3, align 8
  %19 = call i64 @png_malloc(%struct.TYPE_6__* %17, i64 %18)
  %20 = inttoptr i64 %19 to i8*
  %21 = bitcast i8* %20 to i32*
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 18
  store i32* %21, i32** %23, align 8
  %24 = load i32, i32* @PNG_FILTER_VALUE_NONE, align 4
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 18
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  store i32 %24, i32* %28, align 4
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @PNG_FILTER_SUB, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %51

35:                                               ; preds = %1
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 13
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %39, 1
  %41 = call i64 @png_malloc(%struct.TYPE_6__* %36, i64 %40)
  %42 = inttoptr i64 %41 to i8*
  %43 = bitcast i8* %42 to i32*
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 17
  store i32* %43, i32** %45, align 8
  %46 = load i32, i32* @PNG_FILTER_VALUE_SUB, align 4
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 17
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  store i32 %46, i32* %50, align 4
  br label %51

51:                                               ; preds = %35, %1
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @PNG_FILTER_AVG, align 4
  %56 = load i32, i32* @PNG_FILTER_UP, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @PNG_FILTER_PAETH, align 4
  %59 = or i32 %57, %58
  %60 = and i32 %54, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %143

62:                                               ; preds = %51
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %64 = load i64, i64* %3, align 8
  %65 = call i64 @png_malloc(%struct.TYPE_6__* %63, i64 %64)
  %66 = inttoptr i64 %65 to i8*
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 16
  store i8* %66, i8** %68, align 8
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 16
  %71 = load i8*, i8** %70, align 8
  %72 = load i64, i64* %3, align 8
  %73 = call i32 @png_memset(i8* %71, i32 0, i64 %72)
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @PNG_FILTER_UP, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %96

80:                                               ; preds = %62
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 13
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %84, 1
  %86 = call i64 @png_malloc(%struct.TYPE_6__* %81, i64 %85)
  %87 = inttoptr i64 %86 to i8*
  %88 = bitcast i8* %87 to i32*
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 15
  store i32* %88, i32** %90, align 8
  %91 = load i32, i32* @PNG_FILTER_VALUE_UP, align 4
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 15
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 0
  store i32 %91, i32* %95, align 4
  br label %96

96:                                               ; preds = %80, %62
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @PNG_FILTER_AVG, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %119

103:                                              ; preds = %96
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 13
  %107 = load i64, i64* %106, align 8
  %108 = add nsw i64 %107, 1
  %109 = call i64 @png_malloc(%struct.TYPE_6__* %104, i64 %108)
  %110 = inttoptr i64 %109 to i8*
  %111 = bitcast i8* %110 to i32*
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 14
  store i32* %111, i32** %113, align 8
  %114 = load i32, i32* @PNG_FILTER_VALUE_AVG, align 4
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 14
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 0
  store i32 %114, i32* %118, align 4
  br label %119

119:                                              ; preds = %103, %96
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @PNG_FILTER_PAETH, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %142

126:                                              ; preds = %119
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 13
  %130 = load i64, i64* %129, align 8
  %131 = add nsw i64 %130, 1
  %132 = call i64 @png_malloc(%struct.TYPE_6__* %127, i64 %131)
  %133 = inttoptr i64 %132 to i8*
  %134 = bitcast i8* %133 to i32*
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 12
  store i32* %134, i32** %136, align 8
  %137 = load i32, i32* @PNG_FILTER_VALUE_PAETH, align 4
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 12
  %140 = load i32*, i32** %139, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 0
  store i32 %137, i32* %141, align 4
  br label %142

142:                                              ; preds = %126, %119
  br label %143

143:                                              ; preds = %142, %51
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 6
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 5
  store i32 %146, i32* %148, align 4
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 7
  store i32 %151, i32* %153, align 4
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 10
  %156 = load i64, i64* %155, align 8
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 9
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 1
  store i64 %156, i64* %159, align 8
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 8
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 9
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 0
  store i32 %162, i32* %165, align 8
  ret void
}

declare dso_local i32 @png_debug(i32, i8*) #1

declare dso_local i64 @PNG_ROWBYTES(i32, i32) #1

declare dso_local i64 @png_malloc(%struct.TYPE_6__*, i64) #1

declare dso_local i32 @png_memset(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
