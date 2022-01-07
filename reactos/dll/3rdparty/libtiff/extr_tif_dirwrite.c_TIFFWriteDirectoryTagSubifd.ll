; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_dirwrite.c_TIFFWriteDirectoryTagSubifd.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_dirwrite.c_TIFFWriteDirectoryTagSubifd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i64, i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32* }

@TIFFWriteDirectoryTagSubifd.module = internal constant [28 x i8] c"TIFFWriteDirectoryTagSubifd\00", align 16
@TIFF_BIGTIFF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Out of memory\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Illegal value for SubIFD tag\00", align 1
@TIFFTAG_SUBIFD = common dso_local global i32 0, align 4
@TIFF_INSUBIFD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i64*, i32*)* @TIFFWriteDirectoryTagSubifd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TIFFWriteDirectoryTagSubifd(%struct.TYPE_7__* %0, i64* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32* %2, i32** %7, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 4
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %152

20:                                               ; preds = %3
  %21 = load i32*, i32** %7, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load i64*, i64** %6, align 8
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %25, 1
  store i64 %26, i64* %24, align 8
  store i32 1, i32* %4, align 4
  br label %152

27:                                               ; preds = %20
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %8, align 4
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @TIFF_BIGTIFF, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %107, label %37

37:                                               ; preds = %27
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sext i32 %41 to i64
  %43 = mul i64 %42, 8
  %44 = trunc i64 %43 to i32
  %45 = call i64* @_TIFFmalloc(i32 %44)
  store i64* %45, i64** %10, align 8
  %46 = load i64*, i64** %10, align 8
  %47 = icmp eq i64* %46, null
  br i1 %47, label %48, label %53

48:                                               ; preds = %37
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @TIFFErrorExt(i32 %51, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @TIFFWriteDirectoryTagSubifd.module, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %152

53:                                               ; preds = %37
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 4
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  store i32* %57, i32** %11, align 8
  %58 = load i64*, i64** %10, align 8
  store i64* %58, i64** %12, align 8
  store i64 0, i64* %13, align 8
  br label %59

59:                                               ; preds = %90, %53
  %60 = load i64, i64* %13, align 8
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 4
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = sext i32 %64 to i64
  %66 = icmp slt i64 %60, %65
  br i1 %66, label %67, label %93

67:                                               ; preds = %59
  %68 = load i32*, i32** %11, align 8
  %69 = icmp ne i32* %68, null
  %70 = zext i1 %69 to i32
  %71 = call i32 @assert(i32 %70)
  %72 = load i32*, i32** %11, align 8
  %73 = load i32, i32* %72, align 4
  %74 = sext i32 %73 to i64
  %75 = icmp ugt i64 %74, 4294967295
  br i1 %75, label %76, label %83

76:                                               ; preds = %67
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @TIFFErrorExt(i32 %79, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @TIFFWriteDirectoryTagSubifd.module, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %81 = load i64*, i64** %10, align 8
  %82 = call i32 @_TIFFfree(i64* %81)
  store i32 0, i32* %4, align 4
  br label %152

83:                                               ; preds = %67
  %84 = load i32*, i32** %11, align 8
  %85 = getelementptr inbounds i32, i32* %84, i32 1
  store i32* %85, i32** %11, align 8
  %86 = load i32, i32* %84, align 4
  %87 = sext i32 %86 to i64
  %88 = load i64*, i64** %12, align 8
  %89 = getelementptr inbounds i64, i64* %88, i32 1
  store i64* %89, i64** %12, align 8
  store i64 %87, i64* %88, align 8
  br label %90

90:                                               ; preds = %83
  %91 = load i64, i64* %13, align 8
  %92 = add nsw i64 %91, 1
  store i64 %92, i64* %13, align 8
  br label %59

93:                                               ; preds = %59
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %95 = load i64*, i64** %6, align 8
  %96 = load i32*, i32** %7, align 8
  %97 = load i32, i32* @TIFFTAG_SUBIFD, align 4
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 4
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = sext i32 %101 to i64
  %103 = load i64*, i64** %10, align 8
  %104 = call i32 @TIFFWriteDirectoryTagCheckedIfdArray(%struct.TYPE_7__* %94, i64* %95, i32* %96, i32 %97, i64 %102, i64* %103)
  store i32 %104, i32* %9, align 4
  %105 = load i64*, i64** %10, align 8
  %106 = call i32 @_TIFFfree(i64* %105)
  br label %122

107:                                              ; preds = %27
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %109 = load i64*, i64** %6, align 8
  %110 = load i32*, i32** %7, align 8
  %111 = load i32, i32* @TIFFTAG_SUBIFD, align 4
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 4
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = sext i32 %115 to i64
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 4
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = call i32 @TIFFWriteDirectoryTagCheckedIfd8Array(%struct.TYPE_7__* %108, i64* %109, i32* %110, i32 %111, i64 %116, i32* %120)
  store i32 %121, i32* %9, align 4
  br label %122

122:                                              ; preds = %107, %93
  %123 = load i32, i32* %9, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %126, label %125

125:                                              ; preds = %122
  store i32 0, i32* %4, align 4
  br label %152

126:                                              ; preds = %122
  %127 = load i32, i32* @TIFF_INSUBIFD, align 4
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = or i32 %130, %127
  store i32 %131, i32* %129, align 4
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 4
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = sext i32 %135 to i64
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 2
  store i64 %136, i64* %138, align 8
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 4
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = icmp eq i32 %142, 1
  br i1 %143, label %144, label %147

144:                                              ; preds = %126
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 3
  store i32 0, i32* %146, align 8
  br label %151

147:                                              ; preds = %126
  %148 = load i32, i32* %8, align 4
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 3
  store i32 %148, i32* %150, align 8
  br label %151

151:                                              ; preds = %147, %144
  store i32 1, i32* %4, align 4
  br label %152

152:                                              ; preds = %151, %125, %76, %48, %23, %19
  %153 = load i32, i32* %4, align 4
  ret i32 %153
}

declare dso_local i64* @_TIFFmalloc(i32) #1

declare dso_local i32 @TIFFErrorExt(i32, i8*, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @_TIFFfree(i64*) #1

declare dso_local i32 @TIFFWriteDirectoryTagCheckedIfdArray(%struct.TYPE_7__*, i64*, i32*, i32, i64, i64*) #1

declare dso_local i32 @TIFFWriteDirectoryTagCheckedIfd8Array(%struct.TYPE_7__*, i64*, i32*, i32, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
