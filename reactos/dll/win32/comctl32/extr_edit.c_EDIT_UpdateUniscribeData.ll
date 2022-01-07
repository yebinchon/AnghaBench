; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_edit.c_EDIT_UpdateUniscribeData.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_edit.c_EDIT_UpdateUniscribeData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_7__*, i32, i32, i32*, i32*, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_7__* }

@ES_MULTILINE = common dso_local global i32 0, align 4
@ES_PASSWORD = common dso_local global i32 0, align 4
@SSA_LINK = common dso_local global i32 0, align 4
@SSA_FALLBACK = common dso_local global i32 0, align 4
@SSA_GLYPHS = common dso_local global i32 0, align 4
@SSA_PASSWORD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i64, double)* @EDIT_UpdateUniscribeData to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @EDIT_UpdateUniscribeData(%struct.TYPE_8__* %0, i64 %1, double %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca double, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca double, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i64 %1, i64* %6, align 8
  store double %2, double* %7, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @ES_MULTILINE, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %111, label %18

18:                                               ; preds = %3
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %107, label %23

23:                                               ; preds = %18
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %25 = call double @get_text_length(%struct.TYPE_8__* %24)
  store double %25, double* %9, align 8
  store i32* null, i32** %10, align 8
  %26 = load i64, i64* %6, align 8
  store i64 %26, i64* %11, align 8
  %27 = load i64, i64* %11, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %23
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @GetDC(i32 %32)
  store i64 %33, i64* %11, align 8
  br label %34

34:                                               ; preds = %29, %23
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 4
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %45

39:                                               ; preds = %34
  %40 = load i64, i64* %11, align 8
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 4
  %43 = load i32*, i32** %42, align 8
  %44 = call i32* @SelectObject(i64 %40, i32* %43)
  store i32* %44, i32** %10, align 8
  br label %45

45:                                               ; preds = %39, %34
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @ES_PASSWORD, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %70

52:                                               ; preds = %45
  %53 = load i64, i64* %11, align 8
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 6
  %56 = load double, double* %9, align 8
  %57 = load double, double* %9, align 8
  %58 = fmul double 1.500000e+00, %57
  %59 = fadd double %58, 1.600000e+01
  %60 = load i32, i32* @SSA_LINK, align 4
  %61 = load i32, i32* @SSA_FALLBACK, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @SSA_GLYPHS, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @SSA_PASSWORD, align 4
  %66 = or i32 %64, %65
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 2
  %69 = call i32 @ScriptStringAnalyse(i64 %53, i32* %55, double %56, double %59, i32 -1, i32 %66, i32 -1, i32* null, i32* null, i32* null, i32* null, i32* null, i32* %68)
  br label %87

70:                                               ; preds = %45
  %71 = load i64, i64* %11, align 8
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 5
  %74 = load i32*, i32** %73, align 8
  %75 = load double, double* %9, align 8
  %76 = load double, double* %9, align 8
  %77 = fmul double 1.500000e+00, %76
  %78 = fadd double %77, 1.600000e+01
  %79 = load i32, i32* @SSA_LINK, align 4
  %80 = load i32, i32* @SSA_FALLBACK, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @SSA_GLYPHS, align 4
  %83 = or i32 %81, %82
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 2
  %86 = call i32 @ScriptStringAnalyse(i64 %71, i32* %74, double %75, double %78, i32 -1, i32 %83, i32 -1, i32* null, i32* null, i32* null, i32* null, i32* null, i32* %85)
  br label %87

87:                                               ; preds = %70, %52
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 4
  %90 = load i32*, i32** %89, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %92, label %96

92:                                               ; preds = %87
  %93 = load i64, i64* %11, align 8
  %94 = load i32*, i32** %10, align 8
  %95 = call i32* @SelectObject(i64 %93, i32* %94)
  br label %96

96:                                               ; preds = %92, %87
  %97 = load i64, i64* %11, align 8
  %98 = load i64, i64* %6, align 8
  %99 = icmp ne i64 %97, %98
  br i1 %99, label %100, label %106

100:                                              ; preds = %96
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = load i64, i64* %11, align 8
  %105 = call i32 @ReleaseDC(i32 %103, i64 %104)
  br label %106

106:                                              ; preds = %100, %96
  br label %107

107:                                              ; preds = %106, %18
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  store i32 %110, i32* %4, align 4
  br label %134

111:                                              ; preds = %3
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 1
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %113, align 8
  store %struct.TYPE_7__* %114, %struct.TYPE_7__** %8, align 8
  br label %115

115:                                              ; preds = %123, %111
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %117 = icmp ne %struct.TYPE_7__* %116, null
  br i1 %117, label %118, label %121

118:                                              ; preds = %115
  %119 = load double, double* %7, align 8
  %120 = fcmp une double %119, 0.000000e+00
  br label %121

121:                                              ; preds = %118, %115
  %122 = phi i1 [ false, %115 ], [ %120, %118 ]
  br i1 %122, label %123, label %129

123:                                              ; preds = %121
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %125, align 8
  store %struct.TYPE_7__* %126, %struct.TYPE_7__** %8, align 8
  %127 = load double, double* %7, align 8
  %128 = fadd double %127, -1.000000e+00
  store double %128, double* %7, align 8
  br label %115

129:                                              ; preds = %121
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %131 = load i64, i64* %6, align 8
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %133 = call i32 @EDIT_UpdateUniscribeData_linedef(%struct.TYPE_8__* %130, i64 %131, %struct.TYPE_7__* %132)
  store i32 %133, i32* %4, align 4
  br label %134

134:                                              ; preds = %129, %107
  %135 = load i32, i32* %4, align 4
  ret i32 %135
}

declare dso_local double @get_text_length(%struct.TYPE_8__*) #1

declare dso_local i64 @GetDC(i32) #1

declare dso_local i32* @SelectObject(i64, i32*) #1

declare dso_local i32 @ScriptStringAnalyse(i64, i32*, double, double, i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @ReleaseDC(i32, i64) #1

declare dso_local i32 @EDIT_UpdateUniscribeData_linedef(%struct.TYPE_8__*, i64, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
