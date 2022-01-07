; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comdlg32/extr_fontdlg.c_AddFontFamily.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comdlg32/extr_fontdlg.c_AddFontFamily.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i8*, i32, i64 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_13__ = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"font=%s (nFontType=%d)\0A\00", align 1
@CF_FIXEDPITCHONLY = common dso_local global i32 0, align 4
@FIXED_PITCH = common dso_local global i32 0, align 4
@CF_ANSIONLY = common dso_local global i32 0, align 4
@ANSI_CHARSET = common dso_local global i64 0, align 8
@CF_TTONLY = common dso_local global i32 0, align 4
@TRUETYPE_FONTTYPE = common dso_local global i32 0, align 4
@CF_NOVERTFONTS = common dso_local global i32 0, align 4
@CB_FINDSTRINGEXACT = common dso_local global i32 0, align 4
@CB_ERR = common dso_local global i32 0, align 4
@CB_ADDSTRING = common dso_local global i32 0, align 4
@CB_SETITEMDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, %struct.TYPE_12__*, i32, %struct.TYPE_16__*, i32, %struct.TYPE_13__*)* @AddFontFamily to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AddFontFamily(%struct.TYPE_15__* %0, %struct.TYPE_12__* %1, i32 %2, %struct.TYPE_16__* %3, i32 %4, %struct.TYPE_13__* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_13__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %8, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.TYPE_16__* %3, %struct.TYPE_16__** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.TYPE_13__* %5, %struct.TYPE_13__** %13, align 8
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 0
  store %struct.TYPE_14__* %18, %struct.TYPE_14__** %16, align 8
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 @debugstr_w(i8* %21)
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @TRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %23)
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @CF_FIXEDPITCHONLY, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %6
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @FIXED_PITCH, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %31
  store i32 1, i32* %7, align 4
  br label %137

39:                                               ; preds = %31
  br label %40

40:                                               ; preds = %39, %6
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @CF_ANSIONLY, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %40
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @ANSI_CHARSET, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  store i32 1, i32* %7, align 4
  br label %137

54:                                               ; preds = %47
  br label %55

55:                                               ; preds = %54, %40
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @CF_TTONLY, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %55
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* @TRUETYPE_FONTTYPE, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %62
  store i32 1, i32* %7, align 4
  br label %137

68:                                               ; preds = %62
  br label %69

69:                                               ; preds = %68, %55
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @CF_NOVERTFONTS, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %86

76:                                               ; preds = %69
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 0
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 64
  br i1 %83, label %84, label %85

84:                                               ; preds = %76
  store i32 1, i32* %7, align 4
  br label %137

85:                                               ; preds = %76
  br label %86

86:                                               ; preds = %85, %69
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %88 = icmp ne %struct.TYPE_13__* %87, null
  br i1 %88, label %89, label %94

89:                                               ; preds = %86
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %91, align 4
  br label %94

94:                                               ; preds = %89, %86
  %95 = load i32, i32* %12, align 4
  %96 = load i32, i32* @CB_FINDSTRINGEXACT, align 4
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 0
  %99 = load i8*, i8** %98, align 8
  %100 = ptrtoint i8* %99 to i32
  %101 = call i32 @SendMessageW(i32 %95, i32 %96, i32 0, i32 %100)
  store i32 %101, i32* %14, align 4
  %102 = load i32, i32* %14, align 4
  %103 = load i32, i32* @CB_ERR, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %136

105:                                              ; preds = %94
  %106 = load i32, i32* %12, align 4
  %107 = load i32, i32* @CB_ADDSTRING, align 4
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 0
  %110 = load i8*, i8** %109, align 8
  %111 = ptrtoint i8* %110 to i32
  %112 = call i32 @SendMessageW(i32 %106, i32 %107, i32 0, i32 %111)
  store i32 %112, i32* %14, align 4
  %113 = load i32, i32* %14, align 4
  %114 = load i32, i32* @CB_ERR, align 4
  %115 = icmp ne i32 %113, %114
  br i1 %115, label %116, label %135

116:                                              ; preds = %105
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = shl i32 %119, 8
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @HIWORD(i32 %124)
  %126 = and i32 %125, 255
  %127 = or i32 %120, %126
  store i32 %127, i32* %15, align 4
  %128 = load i32, i32* %12, align 4
  %129 = load i32, i32* @CB_SETITEMDATA, align 4
  %130 = load i32, i32* %14, align 4
  %131 = load i32, i32* %10, align 4
  %132 = load i32, i32* %15, align 4
  %133 = call i32 @MAKELONG(i32 %131, i32 %132)
  %134 = call i32 @SendMessageW(i32 %128, i32 %129, i32 %130, i32 %133)
  br label %135

135:                                              ; preds = %116, %105
  br label %136

136:                                              ; preds = %135, %94
  store i32 1, i32* %7, align 4
  br label %137

137:                                              ; preds = %136, %84, %67, %53, %38
  %138 = load i32, i32* %7, align 4
  ret i32 %138
}

declare dso_local i32 @TRACE(i8*, i32, i32) #1

declare dso_local i32 @debugstr_w(i8*) #1

declare dso_local i32 @SendMessageW(i32, i32, i32, i32) #1

declare dso_local i32 @HIWORD(i32) #1

declare dso_local i32 @MAKELONG(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
