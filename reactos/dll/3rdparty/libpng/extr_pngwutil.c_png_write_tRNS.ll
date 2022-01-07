; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libpng/extr_pngwutil.c_png_write_tRNS.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libpng/extr_pngwutil.c_png_write_tRNS.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64 }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"in png_write_tRNS\00", align 1
@PNG_COLOR_TYPE_PALETTE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Invalid number of transparent colors specified\00", align 1
@png_tRNS = common dso_local global i32 0, align 4
@PNG_COLOR_TYPE_GRAY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [64 x i8] c"Ignoring attempt to write tRNS chunk out-of-range for bit_depth\00", align 1
@PNG_COLOR_TYPE_RGB = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [64 x i8] c"Ignoring attempt to write 16-bit tRNS chunk when bit_depth is 8\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"Can't write tRNS with an alpha channel\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @png_write_tRNS(%struct.TYPE_7__* %0, i32* %1, %struct.TYPE_8__* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [6 x i32], align 16
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = call i32 @png_debug(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* %10, align 4
  %14 = load i32, i32* @PNG_COLOR_TYPE_PALETTE, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %37

16:                                               ; preds = %5
  %17 = load i32, i32* %9, align 4
  %18 = icmp sle i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* %9, align 4
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = trunc i64 %23 to i32
  %25 = icmp sgt i32 %20, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %19, %16
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %28 = call i32 @png_app_warning(%struct.TYPE_7__* %27, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  br label %107

29:                                               ; preds = %19
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %31 = load i32, i32* @png_tRNS, align 4
  %32 = load i32*, i32** %7, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = trunc i64 %34 to i32
  %36 = call i32 @png_write_complete_chunk(%struct.TYPE_7__* %30, i32 %31, i32* %32, i32 %35)
  br label %107

37:                                               ; preds = %5
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* @PNG_COLOR_TYPE_GRAY, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %63

41:                                               ; preds = %37
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = shl i32 1, %47
  %49 = icmp sge i32 %44, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %41
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %52 = call i32 @png_app_warning(%struct.TYPE_7__* %51, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0))
  br label %107

53:                                               ; preds = %41
  %54 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 0
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @png_save_uint_16(i32* %54, i32 %57)
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %60 = load i32, i32* @png_tRNS, align 4
  %61 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 0
  %62 = call i32 @png_write_complete_chunk(%struct.TYPE_7__* %59, i32 %60, i32* %61, i32 2)
  br label %106

63:                                               ; preds = %37
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* @PNG_COLOR_TYPE_RGB, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %102

67:                                               ; preds = %63
  %68 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 0
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @png_save_uint_16(i32* %68, i32 %71)
  %73 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 0
  %74 = getelementptr inbounds i32, i32* %73, i64 2
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @png_save_uint_16(i32* %74, i32 %77)
  %79 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 0
  %80 = getelementptr inbounds i32, i32* %79, i64 4
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @png_save_uint_16(i32* %80, i32 %83)
  %85 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 0
  %86 = load i32, i32* %85, align 16
  %87 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 2
  %88 = load i32, i32* %87, align 8
  %89 = or i32 %86, %88
  %90 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 4
  %91 = load i32, i32* %90, align 16
  %92 = or i32 %89, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %67
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %96 = call i32 @png_app_warning(%struct.TYPE_7__* %95, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i64 0, i64 0))
  br label %107

97:                                               ; preds = %67
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %99 = load i32, i32* @png_tRNS, align 4
  %100 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 0
  %101 = call i32 @png_write_complete_chunk(%struct.TYPE_7__* %98, i32 %99, i32* %100, i32 6)
  br label %105

102:                                              ; preds = %63
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %104 = call i32 @png_app_warning(%struct.TYPE_7__* %103, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  br label %105

105:                                              ; preds = %102, %97
  br label %106

106:                                              ; preds = %105, %53
  br label %107

107:                                              ; preds = %26, %50, %94, %106, %29
  ret void
}

declare dso_local i32 @png_debug(i32, i8*) #1

declare dso_local i32 @png_app_warning(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @png_write_complete_chunk(%struct.TYPE_7__*, i32, i32*, i32) #1

declare dso_local i32 @png_save_uint_16(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
