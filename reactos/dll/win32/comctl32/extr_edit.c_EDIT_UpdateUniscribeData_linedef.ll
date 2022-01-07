; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_edit.c_EDIT_UpdateUniscribeData_linedef.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_edit.c_EDIT_UpdateUniscribeData_linedef.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32*, i32*, i32, i32 }
%struct.TYPE_8__ = type { double, i32, i32* }
%struct.TYPE_7__ = type { i64, i32, i32, i32 }

@SSA_LINK = common dso_local global i32 0, align 4
@SSA_FALLBACK = common dso_local global i32 0, align 4
@SSA_GLYPHS = common dso_local global i32 0, align 4
@SSA_TAB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"ScriptStringAnalyse failed (%x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_9__*, i64, %struct.TYPE_8__*)* @EDIT_UpdateUniscribeData_linedef to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @EDIT_UpdateUniscribeData_linedef(%struct.TYPE_9__* %0, i64 %1, %struct.TYPE_8__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_7__, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %7, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %14 = icmp ne %struct.TYPE_8__* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %119

16:                                               ; preds = %3
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load double, double* %18, align 8
  %20 = fcmp une double %19, 0.000000e+00
  br i1 %20, label %21, label %115

21:                                               ; preds = %16
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %115, label %26

26:                                               ; preds = %21
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %8, align 4
  store i32* null, i32** %9, align 8
  %30 = load i64, i64* %6, align 8
  store i64 %30, i64* %10, align 8
  %31 = load i64, i64* %10, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %26
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @GetDC(i32 %36)
  store i64 %37, i64* %10, align 8
  br label %38

38:                                               ; preds = %33, %26
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = load i64, i64* %10, align 8
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = call i32* @SelectObject(i64 %44, i32* %47)
  store i32* %48, i32** %9, align 8
  br label %49

49:                                               ; preds = %43, %38
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 3
  store i32 %52, i32* %53, align 8
  %54 = load i64, i64* %10, align 8
  %55 = call i32 @GdiGetCharDimensions(i64 %54, i32* null, i32* null)
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 2
  store i32 %55, i32* %56, align 4
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  store i32 %59, i32* %60, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  store i64 0, i64* %61, align 8
  %62 = load i64, i64* %10, align 8
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load double, double* %70, align 8
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load double, double* %73, align 8
  %75 = fmul double 1.500000e+00, %74
  %76 = fadd double %75, 1.600000e+01
  %77 = load i32, i32* @SSA_LINK, align 4
  %78 = load i32, i32* @SSA_FALLBACK, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @SSA_GLYPHS, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @SSA_TAB, align 4
  %83 = or i32 %81, %82
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 2
  %86 = call i32 @ScriptStringAnalyse(i64 %62, i32* %68, double %71, double %76, i32 -1, i32 %83, i32 -1, i32* null, i32* null, i32* null, %struct.TYPE_7__* %11, i32* null, i32** %85)
  store i32 %86, i32* %12, align 4
  %87 = load i32, i32* %12, align 4
  %88 = call i64 @FAILED(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %49
  %91 = load i32, i32* %12, align 4
  %92 = call i32 @WARN(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %91)
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 2
  store i32* null, i32** %94, align 8
  br label %95

95:                                               ; preds = %90, %49
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = icmp ne i32* %98, null
  br i1 %99, label %100, label %104

100:                                              ; preds = %95
  %101 = load i64, i64* %10, align 8
  %102 = load i32*, i32** %9, align 8
  %103 = call i32* @SelectObject(i64 %101, i32* %102)
  br label %104

104:                                              ; preds = %100, %95
  %105 = load i64, i64* %10, align 8
  %106 = load i64, i64* %6, align 8
  %107 = icmp ne i64 %105, %106
  br i1 %107, label %108, label %114

108:                                              ; preds = %104
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i64, i64* %10, align 8
  %113 = call i32 @ReleaseDC(i32 %111, i64 %112)
  br label %114

114:                                              ; preds = %108, %104
  br label %115

115:                                              ; preds = %114, %21, %16
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 2
  %118 = load i32*, i32** %117, align 8
  store i32* %118, i32** %4, align 8
  br label %119

119:                                              ; preds = %115, %15
  %120 = load i32*, i32** %4, align 8
  ret i32* %120
}

declare dso_local i64 @GetDC(i32) #1

declare dso_local i32* @SelectObject(i64, i32*) #1

declare dso_local i32 @GdiGetCharDimensions(i64, i32*, i32*) #1

declare dso_local i32 @ScriptStringAnalyse(i64, i32*, double, double, i32, i32, i32, i32*, i32*, i32*, %struct.TYPE_7__*, i32*, i32**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @WARN(i8*, i32) #1

declare dso_local i32 @ReleaseDC(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
