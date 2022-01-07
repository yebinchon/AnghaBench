; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/intl/extr_misc.c_InsSpacesFmt.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/intl/extr_misc.c_InsSpacesFmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @InsSpacesFmt(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca [255 x i32], align 16
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %14 = load i64, i64* @FALSE, align 8
  store i64 %14, i64* %13, align 8
  %15 = call i32 (...) @GetProcessHeap()
  %16 = call i64 @HeapAlloc(i32 %15, i32 0, i32 1020)
  %17 = inttoptr i64 %16 to i32*
  store i32* %17, i32** %6, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %134

21:                                               ; preds = %2
  %22 = load i32*, i32** %6, align 8
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 @wcscpy(i32* %22, i32* %23)
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %21
  %29 = load i32*, i32** %6, align 8
  store i32* %29, i32** %3, align 8
  br label %134

30:                                               ; preds = %21
  store i64 0, i64* %9, align 8
  br label %31

31:                                               ; preds = %98, %30
  %32 = load i64, i64* %9, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = call i64 @wcslen(i32* %33)
  %35 = icmp ule i64 %32, %34
  br i1 %35, label %36, label %101

36:                                               ; preds = %31
  %37 = load i32*, i32** %5, align 8
  %38 = load i64, i64* %9, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 59
  br i1 %41, label %48, label %42

42:                                               ; preds = %36
  %43 = load i32*, i32** %5, align 8
  %44 = load i64, i64* %9, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %89

48:                                               ; preds = %42, %36
  %49 = getelementptr inbounds [255 x i32], [255 x i32]* %8, i64 0, i64 0
  %50 = call i64 @_wtoi(i32* %49)
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %48
  %53 = load i64, i64* %13, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %52
  %56 = load i64, i64* @TRUE, align 8
  store i64 %56, i64* %13, align 8
  br label %101

57:                                               ; preds = %52, %48
  %58 = load i64, i64* %13, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = load i64, i64* %11, align 8
  %62 = load i64, i64* %12, align 8
  %63 = add i64 %62, %61
  store i64 %63, i64* %12, align 8
  br label %69

64:                                               ; preds = %57
  %65 = getelementptr inbounds [255 x i32], [255 x i32]* %8, i64 0, i64 0
  %66 = call i64 @_wtoi(i32* %65)
  %67 = load i64, i64* %12, align 8
  %68 = add i64 %67, %66
  store i64 %68, i64* %12, align 8
  br label %69

69:                                               ; preds = %64, %60
  %70 = load i64, i64* %10, align 8
  %71 = getelementptr inbounds [255 x i32], [255 x i32]* %8, i64 0, i64 %70
  store i32 0, i32* %71, align 4
  store i64 0, i64* %10, align 8
  %72 = load i32*, i32** %6, align 8
  %73 = load i64, i64* %12, align 8
  %74 = call i32* @InsSpacePos(i32* %72, i64 %73)
  store i32* %74, i32** %7, align 8
  %75 = load i32*, i32** %6, align 8
  %76 = load i32*, i32** %7, align 8
  %77 = call i32 @wcscpy(i32* %75, i32* %76)
  %78 = call i32 (...) @GetProcessHeap()
  %79 = load i32*, i32** %7, align 8
  %80 = call i32 @HeapFree(i32 %78, i32 0, i32* %79)
  %81 = load i64, i64* %13, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %88, label %83

83:                                               ; preds = %69
  %84 = load i64, i64* %12, align 8
  %85 = add i64 %84, 1
  store i64 %85, i64* %12, align 8
  %86 = getelementptr inbounds [255 x i32], [255 x i32]* %8, i64 0, i64 0
  %87 = call i64 @_wtoi(i32* %86)
  store i64 %87, i64* %11, align 8
  br label %88

88:                                               ; preds = %83, %69
  br label %97

89:                                               ; preds = %42
  %90 = load i32*, i32** %5, align 8
  %91 = load i64, i64* %9, align 8
  %92 = getelementptr inbounds i32, i32* %90, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = load i64, i64* %10, align 8
  %95 = add i64 %94, 1
  store i64 %95, i64* %10, align 8
  %96 = getelementptr inbounds [255 x i32], [255 x i32]* %8, i64 0, i64 %94
  store i32 %93, i32* %96, align 4
  br label %97

97:                                               ; preds = %89, %88
  br label %98

98:                                               ; preds = %97
  %99 = load i64, i64* %9, align 8
  %100 = add i64 %99, 1
  store i64 %100, i64* %9, align 8
  br label %31

101:                                              ; preds = %55, %31
  %102 = load i64, i64* %13, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %132

104:                                              ; preds = %101
  %105 = load i64, i64* %11, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %132

107:                                              ; preds = %104
  %108 = load i64, i64* %12, align 8
  %109 = load i64, i64* %11, align 8
  %110 = add i64 %108, %109
  store i64 %110, i64* %9, align 8
  br label %111

111:                                              ; preds = %126, %107
  %112 = load i64, i64* %9, align 8
  %113 = load i32*, i32** %6, align 8
  %114 = call i64 @wcslen(i32* %113)
  %115 = icmp ult i64 %112, %114
  br i1 %115, label %116, label %131

116:                                              ; preds = %111
  %117 = load i32*, i32** %6, align 8
  %118 = load i64, i64* %9, align 8
  %119 = call i32* @InsSpacePos(i32* %117, i64 %118)
  store i32* %119, i32** %7, align 8
  %120 = load i32*, i32** %6, align 8
  %121 = load i32*, i32** %7, align 8
  %122 = call i32 @wcscpy(i32* %120, i32* %121)
  %123 = call i32 (...) @GetProcessHeap()
  %124 = load i32*, i32** %7, align 8
  %125 = call i32 @HeapFree(i32 %123, i32 0, i32* %124)
  br label %126

126:                                              ; preds = %116
  %127 = load i64, i64* %11, align 8
  %128 = add i64 %127, 1
  %129 = load i64, i64* %9, align 8
  %130 = add i64 %129, %128
  store i64 %130, i64* %9, align 8
  br label %111

131:                                              ; preds = %111
  br label %132

132:                                              ; preds = %131, %104, %101
  %133 = load i32*, i32** %6, align 8
  store i32* %133, i32** %3, align 8
  br label %134

134:                                              ; preds = %132, %28, %20
  %135 = load i32*, i32** %3, align 8
  ret i32* %135
}

declare dso_local i64 @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @wcscpy(i32*, i32*) #1

declare dso_local i64 @wcslen(i32*) #1

declare dso_local i64 @_wtoi(i32*) #1

declare dso_local i32* @InsSpacePos(i32*, i64) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
