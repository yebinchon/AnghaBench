; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_pngwutil.c_png_write_tRNS.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_pngwutil.c_png_write_tRNS.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64 }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"in png_write_tRNS\0A\00", align 1
@PNG_COLOR_TYPE_PALETTE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Invalid number of transparent colors specified\00", align 1
@png_tRNS = common dso_local global i32 0, align 4
@PNG_COLOR_TYPE_GRAY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [64 x i8] c"Ignoring attempt to write tRNS chunk out-of-range for bit_depth\00", align 1
@PNG_COLOR_TYPE_RGB = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [64 x i8] c"Ignoring attempt to write 16-bit tRNS chunk when bit_depth is 8\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"Can't write tRNS with an alpha channel\00", align 1
@PNG_tRNS = common dso_local global i32 0, align 4

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
  %12 = call i32 @png_debug(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* %10, align 4
  %14 = load i32, i32* @PNG_COLOR_TYPE_PALETTE, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %35

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
  %28 = call i32 @png_warning(%struct.TYPE_7__* %27, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  br label %110

29:                                               ; preds = %19
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %31 = load i32, i32* @png_tRNS, align 4
  %32 = load i32*, i32** %7, align 8
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @png_write_chunk(%struct.TYPE_7__* %30, i32 %31, i32* %32, i32 %33)
  br label %110

35:                                               ; preds = %5
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* @PNG_COLOR_TYPE_GRAY, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %61

39:                                               ; preds = %35
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = shl i32 1, %45
  %47 = icmp sge i32 %42, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %39
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %50 = call i32 @png_warning(%struct.TYPE_7__* %49, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0))
  br label %110

51:                                               ; preds = %39
  %52 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 0
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @png_save_uint_16(i32* %52, i32 %55)
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %58 = load i32, i32* @png_tRNS, align 4
  %59 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 0
  %60 = call i32 @png_write_chunk(%struct.TYPE_7__* %57, i32 %58, i32* %59, i32 2)
  br label %109

61:                                               ; preds = %35
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* @PNG_COLOR_TYPE_RGB, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %105

65:                                               ; preds = %61
  %66 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 0
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @png_save_uint_16(i32* %66, i32 %69)
  %71 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 0
  %72 = getelementptr inbounds i32, i32* %71, i64 2
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @png_save_uint_16(i32* %72, i32 %75)
  %77 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 0
  %78 = getelementptr inbounds i32, i32* %77, i64 4
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @png_save_uint_16(i32* %78, i32 %81)
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp eq i32 %85, 8
  br i1 %86, label %87, label %100

87:                                               ; preds = %65
  %88 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 0
  %89 = load i32, i32* %88, align 16
  %90 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 2
  %91 = load i32, i32* %90, align 8
  %92 = or i32 %89, %91
  %93 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 4
  %94 = load i32, i32* %93, align 16
  %95 = or i32 %92, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %87
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %99 = call i32 @png_warning(%struct.TYPE_7__* %98, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i64 0, i64 0))
  br label %110

100:                                              ; preds = %87, %65
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %102 = load i32, i32* @png_tRNS, align 4
  %103 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 0
  %104 = call i32 @png_write_chunk(%struct.TYPE_7__* %101, i32 %102, i32* %103, i32 6)
  br label %108

105:                                              ; preds = %61
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %107 = call i32 @png_warning(%struct.TYPE_7__* %106, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  br label %108

108:                                              ; preds = %105, %100
  br label %109

109:                                              ; preds = %108, %51
  br label %110

110:                                              ; preds = %26, %48, %97, %109, %29
  ret void
}

declare dso_local i32 @png_debug(i32, i8*) #1

declare dso_local i32 @png_warning(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @png_write_chunk(%struct.TYPE_7__*, i32, i32*, i32) #1

declare dso_local i32 @png_save_uint_16(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
