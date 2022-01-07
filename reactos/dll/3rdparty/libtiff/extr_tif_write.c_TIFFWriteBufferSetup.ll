; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_write.c_TIFFWriteBufferSetup.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_write.c_TIFFWriteBufferSetup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32*, i32*, i64, i32 }

@TIFFWriteBufferSetup.module = internal constant [21 x i8] c"TIFFWriteBufferSetup\00", align 16
@TIFF_MYBUFFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"No space for output buffer\00", align 1
@TIFF_BUFFERSETUP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TIFFWriteBufferSetup(%struct.TYPE_5__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 3
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %33

12:                                               ; preds = %3
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @TIFF_MYBUFFER, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %12
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 3
  %22 = load i32*, i32** %21, align 8
  %23 = call i32 @_TIFFfree(i32* %22)
  %24 = load i32, i32* @TIFF_MYBUFFER, align 4
  %25 = xor i32 %24, -1
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = and i32 %28, %25
  store i32 %29, i32* %27, align 8
  br label %30

30:                                               ; preds = %19, %12
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 3
  store i32* null, i32** %32, align 8
  br label %33

33:                                               ; preds = %30, %3
  %34 = load i32, i32* %7, align 4
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %36, label %53

36:                                               ; preds = %33
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %38 = call i64 @isTiled(%struct.TYPE_5__* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  br label %47

44:                                               ; preds = %36
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %46 = call i32 @TIFFStripSize(%struct.TYPE_5__* %45)
  br label %47

47:                                               ; preds = %44, %40
  %48 = phi i32 [ %43, %40 ], [ %46, %44 ]
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp slt i32 %49, 8192
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  store i32 8192, i32* %7, align 4
  br label %52

52:                                               ; preds = %51, %47
  store i8* null, i8** %6, align 8
  br label %53

53:                                               ; preds = %52, %33
  %54 = load i8*, i8** %6, align 8
  %55 = icmp eq i8* %54, null
  br i1 %55, label %56, label %72

56:                                               ; preds = %53
  %57 = load i32, i32* %7, align 4
  %58 = call i8* @_TIFFmalloc(i32 %57)
  store i8* %58, i8** %6, align 8
  %59 = load i8*, i8** %6, align 8
  %60 = icmp eq i8* %59, null
  br i1 %60, label %61, label %66

61:                                               ; preds = %56
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 6
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @TIFFErrorExt(i32 %64, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @TIFFWriteBufferSetup.module, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %99

66:                                               ; preds = %56
  %67 = load i32, i32* @TIFF_MYBUFFER, align 4
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 8
  br label %79

72:                                               ; preds = %53
  %73 = load i32, i32* @TIFF_MYBUFFER, align 4
  %74 = xor i32 %73, -1
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = and i32 %77, %74
  store i32 %78, i32* %76, align 8
  br label %79

79:                                               ; preds = %72, %66
  %80 = load i8*, i8** %6, align 8
  %81 = bitcast i8* %80 to i32*
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 3
  store i32* %81, i32** %83, align 8
  %84 = load i32, i32* %7, align 4
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 8
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 5
  store i64 0, i64* %88, align 8
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 3
  %91 = load i32*, i32** %90, align 8
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 4
  store i32* %91, i32** %93, align 8
  %94 = load i32, i32* @TIFF_BUFFERSETUP, align 4
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 8
  store i32 1, i32* %4, align 4
  br label %99

99:                                               ; preds = %79, %61
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

declare dso_local i32 @_TIFFfree(i32*) #1

declare dso_local i64 @isTiled(%struct.TYPE_5__*) #1

declare dso_local i32 @TIFFStripSize(%struct.TYPE_5__*) #1

declare dso_local i8* @_TIFFmalloc(i32) #1

declare dso_local i32 @TIFFErrorExt(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
