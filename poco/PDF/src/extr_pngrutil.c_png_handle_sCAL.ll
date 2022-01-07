; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_pngrutil.c_png_handle_sCAL.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_pngrutil.c_png_handle_sCAL.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.TYPE_17__ = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"in png_handle_sCAL\0A\00", align 1
@PNG_HAVE_IHDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Missing IHDR before sCAL\00", align 1
@PNG_HAVE_IDAT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Invalid sCAL after IDAT\00", align 1
@PNG_INFO_sCAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"Duplicate sCAL chunk\00", align 1
@.str.4 = private unnamed_addr constant [52 x i8] c"Allocating and reading sCAL chunk data (%lu bytes)\0A\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"Out of memory while processing sCAL chunk\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"Truncated sCAL chunk\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"Invalid sCAL data\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @png_handle_sCAL(%struct.TYPE_16__* %0, %struct.TYPE_17__* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = call i32 @png_debug(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @PNG_HAVE_IHDR, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %19 = call i32 @png_error(%struct.TYPE_16__* %18, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %51

20:                                               ; preds = %3
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @PNG_HAVE_IDAT, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %20
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %29 = call i32 @png_warning(%struct.TYPE_16__* %28, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %31 = load i64, i64* %6, align 8
  %32 = call i64 @png_crc_finish(%struct.TYPE_16__* %30, i64 %31)
  br label %124

33:                                               ; preds = %20
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %35 = icmp ne %struct.TYPE_17__* %34, null
  br i1 %35, label %36, label %49

36:                                               ; preds = %33
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @PNG_INFO_sCAL, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %36
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %45 = call i32 @png_warning(%struct.TYPE_16__* %44, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %47 = load i64, i64* %6, align 8
  %48 = call i64 @png_crc_finish(%struct.TYPE_16__* %46, i64 %47)
  br label %124

49:                                               ; preds = %36, %33
  br label %50

50:                                               ; preds = %49
  br label %51

51:                                               ; preds = %50, %17
  %52 = load i64, i64* %6, align 8
  %53 = add nsw i64 %52, 1
  %54 = call i32 @png_debug1(i32 2, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0), i64 %53)
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %56 = load i64, i64* %6, align 8
  %57 = add nsw i64 %56, 1
  %58 = call i64 @png_malloc_warn(%struct.TYPE_16__* %55, i64 %57)
  %59 = inttoptr i64 %58 to i32*
  store i32* %59, i32** %7, align 8
  %60 = load i32*, i32** %7, align 8
  %61 = icmp eq i32* %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %51
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %64 = call i32 @png_warning(%struct.TYPE_16__* %63, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0))
  br label %124

65:                                               ; preds = %51
  %66 = load i64, i64* %6, align 8
  store i64 %66, i64* %9, align 8
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %68 = load i32*, i32** %7, align 8
  %69 = ptrtoint i32* %68 to i32
  %70 = load i64, i64* %9, align 8
  %71 = call i32 @png_crc_read(%struct.TYPE_16__* %67, i32 %69, i64 %70)
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %73 = call i64 @png_crc_finish(%struct.TYPE_16__* %72, i64 0)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %65
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %77 = load i32*, i32** %7, align 8
  %78 = call i32 @png_free(%struct.TYPE_16__* %76, i32* %77)
  br label %124

79:                                               ; preds = %65
  %80 = load i32*, i32** %7, align 8
  %81 = load i64, i64* %9, align 8
  %82 = getelementptr inbounds i32, i32* %80, i64 %81
  store i32 0, i32* %82, align 4
  %83 = load i32*, i32** %7, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 1
  store i32* %84, i32** %8, align 8
  %85 = load i32*, i32** %7, align 8
  store i32* %85, i32** %8, align 8
  br label %86

86:                                               ; preds = %91, %79
  %87 = load i32*, i32** %8, align 8
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %86
  br label %91

91:                                               ; preds = %90
  %92 = load i32*, i32** %8, align 8
  %93 = getelementptr inbounds i32, i32* %92, i32 1
  store i32* %93, i32** %8, align 8
  br label %86

94:                                               ; preds = %86
  %95 = load i32*, i32** %8, align 8
  %96 = getelementptr inbounds i32, i32* %95, i32 1
  store i32* %96, i32** %8, align 8
  %97 = load i32*, i32** %7, align 8
  %98 = load i64, i64* %9, align 8
  %99 = getelementptr inbounds i32, i32* %97, i64 %98
  %100 = load i32*, i32** %8, align 8
  %101 = icmp ult i32* %99, %100
  br i1 %101, label %102, label %108

102:                                              ; preds = %94
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %104 = call i32 @png_warning(%struct.TYPE_16__* %103, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %106 = load i32*, i32** %7, align 8
  %107 = call i32 @png_free(%struct.TYPE_16__* %105, i32* %106)
  br label %124

108:                                              ; preds = %94
  %109 = load i32*, i32** %7, align 8
  %110 = load i64, i64* %9, align 8
  %111 = getelementptr inbounds i32, i32* %109, i64 %110
  %112 = load i32*, i32** %8, align 8
  %113 = icmp ult i32* %111, %112
  br i1 %113, label %114, label %120

114:                                              ; preds = %108
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %116 = call i32 @png_warning(%struct.TYPE_16__* %115, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %118 = load i32*, i32** %7, align 8
  %119 = call i32 @png_free(%struct.TYPE_16__* %117, i32* %118)
  br label %124

120:                                              ; preds = %108
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %122 = load i32*, i32** %7, align 8
  %123 = call i32 @png_free(%struct.TYPE_16__* %121, i32* %122)
  br label %124

124:                                              ; preds = %120, %114, %102, %75, %62, %43, %27
  ret void
}

declare dso_local i32 @png_debug(i32, i8*) #1

declare dso_local i32 @png_error(%struct.TYPE_16__*, i8*) #1

declare dso_local i32 @png_warning(%struct.TYPE_16__*, i8*) #1

declare dso_local i64 @png_crc_finish(%struct.TYPE_16__*, i64) #1

declare dso_local i32 @png_debug1(i32, i8*, i64) #1

declare dso_local i64 @png_malloc_warn(%struct.TYPE_16__*, i64) #1

declare dso_local i32 @png_crc_read(%struct.TYPE_16__*, i32, i64) #1

declare dso_local i32 @png_free(%struct.TYPE_16__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
