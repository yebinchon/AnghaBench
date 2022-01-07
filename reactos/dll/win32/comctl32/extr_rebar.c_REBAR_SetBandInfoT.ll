; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_rebar.c_REBAR_SetBandInfoT.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_rebar.c_REBAR_SetBandInfoT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i32 }
%struct.TYPE_17__ = type { i64, i32, i64 }
%struct.TYPE_16__ = type { i32* }

@REBARBANDINFOA_V3_SIZE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"index %d\0A\00", align 1
@RBBIM_TEXT = common dso_local global i32 0, align 4
@RBBIM_CHILDSIZE = common dso_local global i32 0, align 4
@RBBIM_SIZE = common dso_local global i32 0, align 4
@RBBIM_STYLE = common dso_local global i32 0, align 4
@RBBIM_IMAGE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i64, %struct.TYPE_17__*, i64)* @REBAR_SetBandInfoT to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @REBAR_SetBandInfoT(%struct.TYPE_15__* %0, i64 %1, %struct.TYPE_17__* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %14 = icmp ne %struct.TYPE_17__* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %4
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @REBARBANDINFOA_V3_SIZE, align 8
  %20 = icmp slt i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %15, %4
  %22 = load i32, i32* @FALSE, align 4
  store i32 %22, i32* %5, align 4
  br label %113

23:                                               ; preds = %15
  %24 = load i64, i64* %7, align 8
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp sge i64 %24, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* @FALSE, align 4
  store i32 %30, i32* %5, align 4
  br label %113

31:                                               ; preds = %23
  %32 = load i64, i64* %7, align 8
  %33 = call i32 @TRACE(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %32)
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %35 = call i32 @REBAR_DumpBandInfo(%struct.TYPE_17__* %34)
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %37 = load i64, i64* %7, align 8
  %38 = call %struct.TYPE_16__* @REBAR_GetBand(%struct.TYPE_15__* %36, i64 %37)
  store %struct.TYPE_16__* %38, %struct.TYPE_16__** %10, align 8
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %44 = call i32 @REBAR_CommonSetupBand(i32 %41, %struct.TYPE_17__* %42, %struct.TYPE_16__* %43)
  store i32 %44, i32* %11, align 4
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @RBBIM_TEXT, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %87

51:                                               ; preds = %31
  store i32* null, i32** %12, align 8
  %52 = load i64, i64* %9, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %51
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @Str_SetPtrW(i32** %12, i64 %57)
  br label %65

59:                                               ; preds = %51
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = trunc i64 %62 to i32
  %64 = call i32 @Str_SetPtrAtoW(i32** %12, i32 %63)
  br label %65

65:                                               ; preds = %59, %54
  %66 = load i32*, i32** %12, align 8
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = call i64 @REBAR_strdifW(i32* %66, i32* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %83

72:                                               ; preds = %65
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = call i32 @Free(i32* %75)
  %77 = load i32*, i32** %12, align 8
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 0
  store i32* %77, i32** %79, align 8
  %80 = load i32, i32* @RBBIM_TEXT, align 4
  %81 = load i32, i32* %11, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %11, align 4
  br label %86

83:                                               ; preds = %65
  %84 = load i32*, i32** %12, align 8
  %85 = call i32 @Free(i32* %84)
  br label %86

86:                                               ; preds = %83, %72
  br label %87

87:                                               ; preds = %86, %31
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %90 = call i32 @REBAR_ValidateBand(%struct.TYPE_15__* %88, %struct.TYPE_16__* %89)
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %92 = call i32 @REBAR_DumpBand(%struct.TYPE_15__* %91)
  %93 = load i32, i32* %11, align 4
  %94 = load i32, i32* @RBBIM_CHILDSIZE, align 4
  %95 = load i32, i32* @RBBIM_SIZE, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* @RBBIM_STYLE, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* @RBBIM_IMAGE, align 4
  %100 = or i32 %98, %99
  %101 = and i32 %93, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %111

103:                                              ; preds = %87
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %105 = call i32 @REBAR_Layout(%struct.TYPE_15__* %104)
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @TRUE, align 4
  %110 = call i32 @InvalidateRect(i32 %108, i32* null, i32 %109)
  br label %111

111:                                              ; preds = %103, %87
  %112 = load i32, i32* @TRUE, align 4
  store i32 %112, i32* %5, align 4
  br label %113

113:                                              ; preds = %111, %29, %21
  %114 = load i32, i32* %5, align 4
  ret i32 %114
}

declare dso_local i32 @TRACE(i8*, i64) #1

declare dso_local i32 @REBAR_DumpBandInfo(%struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_16__* @REBAR_GetBand(%struct.TYPE_15__*, i64) #1

declare dso_local i32 @REBAR_CommonSetupBand(i32, %struct.TYPE_17__*, %struct.TYPE_16__*) #1

declare dso_local i32 @Str_SetPtrW(i32**, i64) #1

declare dso_local i32 @Str_SetPtrAtoW(i32**, i32) #1

declare dso_local i64 @REBAR_strdifW(i32*, i32*) #1

declare dso_local i32 @Free(i32*) #1

declare dso_local i32 @REBAR_ValidateBand(%struct.TYPE_15__*, %struct.TYPE_16__*) #1

declare dso_local i32 @REBAR_DumpBand(%struct.TYPE_15__*) #1

declare dso_local i32 @REBAR_Layout(%struct.TYPE_15__*) #1

declare dso_local i32 @InvalidateRect(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
