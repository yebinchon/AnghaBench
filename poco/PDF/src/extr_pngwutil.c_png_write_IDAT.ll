; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_pngwutil.c_png_write_IDAT.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_pngwutil.c_png_write_IDAT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"in png_write_IDAT\0A\00", align 1
@PNG_HAVE_IDAT = common dso_local global i32 0, align 4
@PNG_COMPRESSION_TYPE_BASE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [49 x i8] c"Invalid zlib compression method or flags in IDAT\00", align 1
@png_IDAT = common dso_local global i32 0, align 4
@PNG_IDAT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @png_write_IDAT(%struct.TYPE_5__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = call i32 @png_debug(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @PNG_HAVE_IDAT, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %122, label %18

18:                                               ; preds = %3
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @PNG_COMPRESSION_TYPE_BASE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %122

24:                                               ; preds = %18
  %25 = load i32*, i32** %5, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = and i32 %28, 15
  %30 = icmp eq i32 %29, 8
  br i1 %30, label %31, label %118

31:                                               ; preds = %24
  %32 = load i32, i32* %7, align 4
  %33 = and i32 %32, 240
  %34 = icmp ule i32 %33, 112
  br i1 %34, label %35, label %118

35:                                               ; preds = %31
  %36 = load i32, i32* %6, align 4
  %37 = icmp sge i32 %36, 2
  br i1 %37, label %38, label %117

38:                                               ; preds = %35
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %41, 16384
  br i1 %42, label %43, label %117

43:                                               ; preds = %38
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = icmp slt i32 %46, 16384
  br i1 %47, label %48, label %117

48:                                               ; preds = %43
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = mul nsw i32 %54, %57
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 4
  %62 = mul nsw i32 %58, %61
  %63 = add nsw i32 %62, 15
  %64 = ashr i32 %63, 3
  %65 = mul nsw i32 %51, %64
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %7, align 4
  %67 = lshr i32 %66, 4
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %9, align 4
  %69 = add i32 %68, 7
  %70 = shl i32 1, %69
  store i32 %70, i32* %10, align 4
  br label %71

71:                                               ; preds = %80, %48
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* %10, align 4
  %74 = icmp ule i32 %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %71
  %76 = load i32, i32* %10, align 4
  %77 = icmp uge i32 %76, 256
  br label %78

78:                                               ; preds = %75, %71
  %79 = phi i1 [ false, %71 ], [ %77, %75 ]
  br i1 %79, label %80, label %85

80:                                               ; preds = %78
  %81 = load i32, i32* %9, align 4
  %82 = add i32 %81, -1
  store i32 %82, i32* %9, align 4
  %83 = load i32, i32* %10, align 4
  %84 = lshr i32 %83, 1
  store i32 %84, i32* %10, align 4
  br label %71

85:                                               ; preds = %78
  %86 = load i32, i32* %7, align 4
  %87 = and i32 %86, 15
  %88 = load i32, i32* %9, align 4
  %89 = shl i32 %88, 4
  %90 = or i32 %87, %89
  store i32 %90, i32* %7, align 4
  %91 = load i32*, i32** %5, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %7, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %96, label %116

96:                                               ; preds = %85
  %97 = load i32, i32* %7, align 4
  %98 = load i32*, i32** %5, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 0
  store i32 %97, i32* %99, align 4
  %100 = load i32*, i32** %5, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 1
  %102 = load i32, i32* %101, align 4
  %103 = and i32 %102, 224
  store i32 %103, i32* %101, align 4
  %104 = load i32, i32* %7, align 4
  %105 = shl i32 %104, 8
  %106 = load i32*, i32** %5, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 1
  %108 = load i32, i32* %107, align 4
  %109 = add i32 %105, %108
  %110 = urem i32 %109, 31
  %111 = sub i32 31, %110
  %112 = load i32*, i32** %5, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 1
  %114 = load i32, i32* %113, align 4
  %115 = add nsw i32 %114, %111
  store i32 %115, i32* %113, align 4
  br label %116

116:                                              ; preds = %96, %85
  br label %117

117:                                              ; preds = %116, %43, %38, %35
  br label %121

118:                                              ; preds = %31, %24
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %120 = call i32 @png_error(%struct.TYPE_5__* %119, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  br label %121

121:                                              ; preds = %118, %117
  br label %122

122:                                              ; preds = %121, %18, %3
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %124 = load i32, i32* @png_IDAT, align 4
  %125 = load i32*, i32** %5, align 8
  %126 = load i32, i32* %6, align 4
  %127 = call i32 @png_write_chunk(%struct.TYPE_5__* %123, i32 %124, i32* %125, i32 %126)
  %128 = load i32, i32* @PNG_HAVE_IDAT, align 4
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = or i32 %131, %128
  store i32 %132, i32* %130, align 8
  ret void
}

declare dso_local i32 @png_debug(i32, i8*) #1

declare dso_local i32 @png_error(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @png_write_chunk(%struct.TYPE_5__*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
