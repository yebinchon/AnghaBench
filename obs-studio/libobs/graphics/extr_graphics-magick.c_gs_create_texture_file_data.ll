; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_graphics-magick.c_gs_create_texture_file_data.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_graphics-magick.c_gs_create_texture_file_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_16__ = type { i64, i32 }
%struct.TYPE_15__ = type { i64, i64 }

@.str = private unnamed_addr constant [5 x i8] c"BGRA\00", align 1
@CharPixel = common dso_local global i32 0, align 4
@UndefinedException = common dso_local global i64 0, align 8
@LOG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"magickcore warning/error getting pixels from file '%s': %s\00", align 1
@GS_BGRA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"magickcore warning/error reading file '%s': %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @gs_create_texture_file_data(i8* %0, i32* %1, i64* %2, i64* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca %struct.TYPE_16__*, align 8
  %13 = alloca %struct.TYPE_15__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  store i32* null, i32** %10, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %4
  %19 = load i8*, i8** %6, align 8
  %20 = load i8, i8* %19, align 1
  %21 = icmp ne i8 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %18, %4
  store i32* null, i32** %5, align 8
  br label %98

23:                                               ; preds = %18
  %24 = call %struct.TYPE_14__* @CloneImageInfo(i32* null)
  store %struct.TYPE_14__* %24, %struct.TYPE_14__** %11, align 8
  %25 = call %struct.TYPE_16__* (...) @AcquireExceptionInfo()
  store %struct.TYPE_16__* %25, %struct.TYPE_16__** %12, align 8
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i8*, i8** %6, align 8
  %30 = call i32 @strcpy(i32 %28, i8* %29)
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %33 = call %struct.TYPE_15__* @ReadImage(%struct.TYPE_14__* %31, %struct.TYPE_16__* %32)
  store %struct.TYPE_15__* %33, %struct.TYPE_15__** %13, align 8
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %35 = icmp ne %struct.TYPE_15__* %34, null
  br i1 %35, label %36, label %78

36:                                               ; preds = %23
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %14, align 8
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %15, align 8
  %43 = load i64, i64* %14, align 8
  %44 = load i64, i64* %15, align 8
  %45 = mul i64 %43, %44
  %46 = mul i64 %45, 4
  %47 = call i32* @bmalloc(i64 %46)
  store i32* %47, i32** %10, align 8
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %49 = load i64, i64* %14, align 8
  %50 = load i64, i64* %15, align 8
  %51 = load i32, i32* @CharPixel, align 4
  %52 = load i32*, i32** %10, align 8
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %54 = call i32 @ExportImagePixels(%struct.TYPE_15__* %48, i32 0, i32 0, i64 %49, i64 %50, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %51, i32* %52, %struct.TYPE_16__* %53)
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @UndefinedException, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %69

60:                                               ; preds = %36
  %61 = load i32, i32* @LOG_WARNING, align 4
  %62 = load i8*, i8** %6, align 8
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @blog(i32 %61, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i8* %62, i32 %65)
  %67 = load i32*, i32** %10, align 8
  %68 = call i32 @bfree(i32* %67)
  store i32* null, i32** %10, align 8
  br label %69

69:                                               ; preds = %60, %36
  %70 = load i32, i32* @GS_BGRA, align 4
  %71 = load i32*, i32** %7, align 8
  store i32 %70, i32* %71, align 4
  %72 = load i64, i64* %14, align 8
  %73 = load i64*, i64** %8, align 8
  store i64 %72, i64* %73, align 8
  %74 = load i64, i64* %15, align 8
  %75 = load i64*, i64** %9, align 8
  store i64 %74, i64* %75, align 8
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %77 = call i32 @DestroyImage(%struct.TYPE_15__* %76)
  br label %92

78:                                               ; preds = %23
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @UndefinedException, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %91

84:                                               ; preds = %78
  %85 = load i32, i32* @LOG_WARNING, align 4
  %86 = load i8*, i8** %6, align 8
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @blog(i32 %85, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i8* %86, i32 %89)
  br label %91

91:                                               ; preds = %84, %78
  br label %92

92:                                               ; preds = %91, %69
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %94 = call i32 @DestroyImageInfo(%struct.TYPE_14__* %93)
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %96 = call i32 @DestroyExceptionInfo(%struct.TYPE_16__* %95)
  %97 = load i32*, i32** %10, align 8
  store i32* %97, i32** %5, align 8
  br label %98

98:                                               ; preds = %92, %22
  %99 = load i32*, i32** %5, align 8
  ret i32* %99
}

declare dso_local %struct.TYPE_14__* @CloneImageInfo(i32*) #1

declare dso_local %struct.TYPE_16__* @AcquireExceptionInfo(...) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local %struct.TYPE_15__* @ReadImage(%struct.TYPE_14__*, %struct.TYPE_16__*) #1

declare dso_local i32* @bmalloc(i64) #1

declare dso_local i32 @ExportImagePixels(%struct.TYPE_15__*, i32, i32, i64, i64, i8*, i32, i32*, %struct.TYPE_16__*) #1

declare dso_local i32 @blog(i32, i8*, i8*, i32) #1

declare dso_local i32 @bfree(i32*) #1

declare dso_local i32 @DestroyImage(%struct.TYPE_15__*) #1

declare dso_local i32 @DestroyImageInfo(%struct.TYPE_14__*) #1

declare dso_local i32 @DestroyExceptionInfo(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
