; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_pngrutil.c_png_handle_gAMA.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_pngrutil.c_png_handle_gAMA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, float }
%struct.TYPE_14__ = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"in png_handle_gAMA\0A\00", align 1
@PNG_HAVE_IHDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Missing IHDR before gAMA\00", align 1
@PNG_HAVE_IDAT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Invalid gAMA after IDAT\00", align 1
@PNG_HAVE_PLTE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"Out of place gAMA chunk\00", align 1
@PNG_INFO_gAMA = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"Duplicate gAMA chunk\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"Incorrect gAMA chunk length\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"Ignoring gAMA chunk with gamma=0\00", align 1
@PNG_INFO_sRGB = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @png_handle_gAMA(%struct.TYPE_13__* %0, %struct.TYPE_14__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca [4 x i32], align 16
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = call i32 @png_debug(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @PNG_HAVE_IHDR, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %18 = call i32 @png_error(%struct.TYPE_13__* %17, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %44

19:                                               ; preds = %3
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @PNG_HAVE_IDAT, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %19
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %28 = call i32 @png_warning(%struct.TYPE_13__* %27, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i64 @png_crc_finish(%struct.TYPE_13__* %29, i32 %30)
  br label %85

32:                                               ; preds = %19
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @PNG_HAVE_PLTE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %41 = call i32 @png_warning(%struct.TYPE_13__* %40, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %42

42:                                               ; preds = %39, %32
  br label %43

43:                                               ; preds = %42
  br label %44

44:                                               ; preds = %43, %16
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %46 = icmp ne %struct.TYPE_14__* %45, null
  br i1 %46, label %47, label %60

47:                                               ; preds = %44
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @PNG_INFO_gAMA, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %47
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %56 = call i32 @png_warning(%struct.TYPE_13__* %55, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %58 = load i32, i32* %6, align 4
  %59 = call i64 @png_crc_finish(%struct.TYPE_13__* %57, i32 %58)
  br label %85

60:                                               ; preds = %47, %44
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %61, 4
  br i1 %62, label %63, label %69

63:                                               ; preds = %60
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %65 = call i32 @png_warning(%struct.TYPE_13__* %64, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %67 = load i32, i32* %6, align 4
  %68 = call i64 @png_crc_finish(%struct.TYPE_13__* %66, i32 %67)
  br label %85

69:                                               ; preds = %60
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %71 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %72 = call i32 @png_crc_read(%struct.TYPE_13__* %70, i32* %71, i32 4)
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %74 = call i64 @png_crc_finish(%struct.TYPE_13__* %73, i32 0)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %69
  br label %85

77:                                               ; preds = %69
  %78 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %79 = call i64 @png_get_uint_32(i32* %78)
  store i64 %79, i64* %7, align 8
  %80 = load i64, i64* %7, align 8
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %77
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %84 = call i32 @png_warning(%struct.TYPE_13__* %83, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  br label %85

85:                                               ; preds = %26, %54, %63, %76, %82, %77
  ret void
}

declare dso_local i32 @png_debug(i32, i8*) #1

declare dso_local i32 @png_error(%struct.TYPE_13__*, i8*) #1

declare dso_local i32 @png_warning(%struct.TYPE_13__*, i8*) #1

declare dso_local i64 @png_crc_finish(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @png_crc_read(%struct.TYPE_13__*, i32*, i32) #1

declare dso_local i64 @png_get_uint_32(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
