; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_write.c_TIFFWriteRawStrip.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_write.c_TIFFWriteRawStrip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i64, i64, i64, i32 }

@TIFFWriteRawStrip.module = internal constant [18 x i8] c"TIFFWriteRawStrip\00", align 16
@PLANARCONFIG_SEPARATE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [56 x i8] c"Can not grow image by strips when using separate planes\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Zero strips per image\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TIFFWriteRawStrip(%struct.TYPE_8__* %0, i64 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 3
  store %struct.TYPE_7__* %12, %struct.TYPE_7__** %10, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %14 = call i32 @WRITECHECKSTRIPS(%struct.TYPE_8__* %13, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @TIFFWriteRawStrip.module, i64 0, i64 0))
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %93

17:                                               ; preds = %4
  %18 = load i64, i64* %7, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp sge i64 %18, %21
  br i1 %22, label %23, label %56

23:                                               ; preds = %17
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @PLANARCONFIG_SEPARATE, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %23
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @TIFFErrorExt(i32 %32, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @TIFFWriteRawStrip.module, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %93

34:                                               ; preds = %23
  %35 = load i64, i64* %7, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp sge i64 %35, %38
  br i1 %39, label %40, label %50

40:                                               ; preds = %34
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = call i64 @TIFFhowmany_32(i32 %43, i64 %46)
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 2
  store i64 %47, i64* %49, align 8
  br label %50

50:                                               ; preds = %40, %34
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %52 = call i32 @TIFFGrowStrips(%struct.TYPE_8__* %51, i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @TIFFWriteRawStrip.module, i64 0, i64 0))
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %50
  store i32 -1, i32* %5, align 4
  br label %93

55:                                               ; preds = %50
  br label %56

56:                                               ; preds = %55, %17
  %57 = load i64, i64* %7, align 8
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 2
  store i64 %57, i64* %59, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %56
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @TIFFErrorExt(i32 %67, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @TIFFWriteRawStrip.module, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %93

69:                                               ; preds = %56
  %70 = load i64, i64* %7, align 8
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = srem i64 %70, %73
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = mul nsw i64 %74, %77
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  store i64 %78, i64* %80, align 8
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %82 = load i64, i64* %7, align 8
  %83 = load i8*, i8** %8, align 8
  %84 = bitcast i8* %83 to i32*
  %85 = load i32, i32* %9, align 4
  %86 = call i64 @TIFFAppendToStrip(%struct.TYPE_8__* %81, i64 %82, i32* %84, i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %69
  %89 = load i32, i32* %9, align 4
  br label %91

90:                                               ; preds = %69
  br label %91

91:                                               ; preds = %90, %88
  %92 = phi i32 [ %89, %88 ], [ -1, %90 ]
  store i32 %92, i32* %5, align 4
  br label %93

93:                                               ; preds = %91, %64, %54, %29, %16
  %94 = load i32, i32* %5, align 4
  ret i32 %94
}

declare dso_local i32 @WRITECHECKSTRIPS(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @TIFFErrorExt(i32, i8*, i8*) #1

declare dso_local i64 @TIFFhowmany_32(i32, i64) #1

declare dso_local i32 @TIFFGrowStrips(%struct.TYPE_8__*, i32, i8*) #1

declare dso_local i64 @TIFFAppendToStrip(%struct.TYPE_8__*, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
