; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_string.c_kull_m_string_args_byName.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_string.c_kull_m_string_args_byName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kull_m_string_args_byName(i32 %0, i32** %1, i32* %2, i32** %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32** %1, i32*** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32** %3, i32*** %9, align 8
  store i32* %4, i32** %10, align 8
  %17 = load i32, i32* @FALSE, align 4
  store i32 %17, i32* %11, align 4
  %18 = load i32*, i32** %8, align 8
  %19 = call i32 @wcslen(i32* %18)
  %20 = sext i32 %19 to i64
  store i64 %20, i64* %15, align 8
  store i32 0, i32* %16, align 4
  br label %21

21:                                               ; preds = %119, %5
  %22 = load i32, i32* %16, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %122

25:                                               ; preds = %21
  %26 = load i32**, i32*** %7, align 8
  %27 = load i32, i32* %16, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32*, i32** %26, i64 %28
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @wcslen(i32* %30)
  %32 = icmp sgt i32 %31, 1
  br i1 %32, label %33, label %118

33:                                               ; preds = %25
  %34 = load i32**, i32*** %7, align 8
  %35 = load i32, i32* %16, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32*, i32** %34, i64 %36
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 47
  br i1 %41, label %51, label %42

42:                                               ; preds = %33
  %43 = load i32**, i32*** %7, align 8
  %44 = load i32, i32* %16, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32*, i32** %43, i64 %45
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp eq i32 %49, 45
  br i1 %50, label %51, label %118

51:                                               ; preds = %42, %33
  %52 = load i32**, i32*** %7, align 8
  %53 = load i32, i32* %16, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32*, i32** %52, i64 %54
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 1
  store i32* %57, i32** %12, align 8
  %58 = load i32**, i32*** %7, align 8
  %59 = load i32, i32* %16, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32*, i32** %58, i64 %60
  %62 = load i32*, i32** %61, align 8
  %63 = call i32* @wcschr(i32* %62, i32 58)
  store i32* %63, i32** %13, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %72, label %65

65:                                               ; preds = %51
  %66 = load i32**, i32*** %7, align 8
  %67 = load i32, i32* %16, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32*, i32** %66, i64 %68
  %70 = load i32*, i32** %69, align 8
  %71 = call i32* @wcschr(i32* %70, i32 61)
  store i32* %71, i32** %13, align 8
  br label %72

72:                                               ; preds = %65, %51
  %73 = load i32*, i32** %13, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %82

75:                                               ; preds = %72
  %76 = load i32*, i32** %13, align 8
  %77 = load i32*, i32** %12, align 8
  %78 = ptrtoint i32* %76 to i64
  %79 = ptrtoint i32* %77 to i64
  %80 = sub i64 %78, %79
  %81 = sdiv exact i64 %80, 4
  br label %86

82:                                               ; preds = %72
  %83 = load i32*, i32** %12, align 8
  %84 = call i32 @wcslen(i32* %83)
  %85 = sext i32 %84 to i64
  br label %86

86:                                               ; preds = %82, %75
  %87 = phi i64 [ %81, %75 ], [ %85, %82 ]
  store i64 %87, i64* %14, align 8
  %88 = load i64, i64* %14, align 8
  %89 = load i64, i64* %15, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %117

91:                                               ; preds = %86
  %92 = load i32*, i32** %8, align 8
  %93 = load i32*, i32** %12, align 8
  %94 = load i64, i64* %14, align 8
  %95 = call i64 @_wcsnicmp(i32* %92, i32* %93, i64 %94)
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %117

97:                                               ; preds = %91
  %98 = load i32**, i32*** %9, align 8
  %99 = icmp ne i32** %98, null
  br i1 %99, label %100, label %114

100:                                              ; preds = %97
  %101 = load i32*, i32** %13, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %103, label %113

103:                                              ; preds = %100
  %104 = load i32*, i32** %13, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 1
  %106 = load i32**, i32*** %9, align 8
  store i32* %105, i32** %106, align 8
  %107 = load i32**, i32*** %9, align 8
  %108 = getelementptr inbounds i32*, i32** %107, i64 0
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %109, align 4
  %111 = icmp ne i32 %110, 0
  %112 = zext i1 %111 to i32
  store i32 %112, i32* %11, align 4
  br label %113

113:                                              ; preds = %103, %100
  br label %116

114:                                              ; preds = %97
  %115 = load i32, i32* @TRUE, align 4
  store i32 %115, i32* %11, align 4
  br label %116

116:                                              ; preds = %114, %113
  br label %122

117:                                              ; preds = %91, %86
  br label %118

118:                                              ; preds = %117, %42, %25
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %16, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %16, align 4
  br label %21

122:                                              ; preds = %116, %21
  %123 = load i32, i32* %11, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %138, label %125

125:                                              ; preds = %122
  %126 = load i32**, i32*** %9, align 8
  %127 = icmp ne i32** %126, null
  br i1 %127, label %128, label %138

128:                                              ; preds = %125
  %129 = load i32*, i32** %10, align 8
  %130 = icmp ne i32* %129, null
  br i1 %130, label %131, label %135

131:                                              ; preds = %128
  %132 = load i32*, i32** %10, align 8
  %133 = load i32**, i32*** %9, align 8
  store i32* %132, i32** %133, align 8
  %134 = load i32, i32* @TRUE, align 4
  store i32 %134, i32* %11, align 4
  br label %137

135:                                              ; preds = %128
  %136 = load i32**, i32*** %9, align 8
  store i32* null, i32** %136, align 8
  br label %137

137:                                              ; preds = %135, %131
  br label %138

138:                                              ; preds = %137, %125, %122
  %139 = load i32, i32* %11, align 4
  ret i32 %139
}

declare dso_local i32 @wcslen(i32*) #1

declare dso_local i32* @wcschr(i32*, i32) #1

declare dso_local i64 @_wcsnicmp(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
