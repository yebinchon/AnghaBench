; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_compiled_base.c_binary_search_with_guess.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_compiled_base.c_binary_search_with_guess.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LIKELY_IN_CACHE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64*, i32, i32)* @binary_search_with_guess to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @binary_search_with_guess(i64 %0, i64* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i64* %1, i64** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %13 = load i32, i32* %8, align 4
  store i32 %13, i32* %11, align 4
  %14 = load i64, i64* %6, align 8
  %15 = load i64*, i64** %7, align 8
  %16 = load i32, i32* %8, align 4
  %17 = sub nsw i32 %16, 1
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i64, i64* %15, i64 %18
  %20 = load i64, i64* %19, align 8
  %21 = icmp sgt i64 %14, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %5, align 4
  br label %171

24:                                               ; preds = %4
  %25 = load i64, i64* %6, align 8
  %26 = load i64*, i64** %7, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp slt i64 %25, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  store i32 -1, i32* %5, align 4
  br label %171

31:                                               ; preds = %24
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %8, align 4
  %34 = icmp sle i32 %33, 4
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = load i64, i64* %6, align 8
  %37 = load i64*, i64** %7, align 8
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @_linear_search(i64 %36, i64* %37, i32 %38, i32 1)
  store i32 %39, i32* %5, align 4
  br label %171

40:                                               ; preds = %32
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %8, align 4
  %43 = sub nsw i32 %42, 3
  %44 = icmp sgt i32 %41, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i32, i32* %8, align 4
  %47 = sub nsw i32 %46, 3
  store i32 %47, i32* %9, align 4
  br label %48

48:                                               ; preds = %45, %40
  %49 = load i32, i32* %9, align 4
  %50 = icmp slt i32 %49, 1
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  store i32 1, i32* %9, align 4
  br label %52

52:                                               ; preds = %51, %48
  %53 = load i64, i64* %6, align 8
  %54 = load i64*, i64** %7, align 8
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i64, i64* %54, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = icmp slt i64 %53, %58
  br i1 %59, label %60, label %94

60:                                               ; preds = %52
  %61 = load i64, i64* %6, align 8
  %62 = load i64*, i64** %7, align 8
  %63 = load i32, i32* %9, align 4
  %64 = sub nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i64, i64* %62, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = icmp slt i64 %61, %67
  br i1 %68, label %69, label %90

69:                                               ; preds = %60
  %70 = load i32, i32* %9, align 4
  %71 = sub nsw i32 %70, 1
  store i32 %71, i32* %11, align 4
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* @LIKELY_IN_CACHE_SIZE, align 4
  %74 = icmp sgt i32 %72, %73
  br i1 %74, label %75, label %89

75:                                               ; preds = %69
  %76 = load i64, i64* %6, align 8
  %77 = load i64*, i64** %7, align 8
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* @LIKELY_IN_CACHE_SIZE, align 4
  %80 = sub nsw i32 %78, %79
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i64, i64* %77, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = icmp sge i64 %76, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %75
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* @LIKELY_IN_CACHE_SIZE, align 4
  %88 = sub nsw i32 %86, %87
  store i32 %88, i32* %10, align 4
  br label %89

89:                                               ; preds = %85, %75, %69
  br label %93

90:                                               ; preds = %60
  %91 = load i32, i32* %9, align 4
  %92 = sub nsw i32 %91, 1
  store i32 %92, i32* %5, align 4
  br label %171

93:                                               ; preds = %89
  br label %143

94:                                               ; preds = %52
  %95 = load i64, i64* %6, align 8
  %96 = load i64*, i64** %7, align 8
  %97 = load i32, i32* %9, align 4
  %98 = add nsw i32 %97, 1
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i64, i64* %96, i64 %99
  %101 = load i64, i64* %100, align 8
  %102 = icmp slt i64 %95, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %94
  %104 = load i32, i32* %9, align 4
  store i32 %104, i32* %5, align 4
  br label %171

105:                                              ; preds = %94
  %106 = load i64, i64* %6, align 8
  %107 = load i64*, i64** %7, align 8
  %108 = load i32, i32* %9, align 4
  %109 = add nsw i32 %108, 2
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i64, i64* %107, i64 %110
  %112 = load i64, i64* %111, align 8
  %113 = icmp slt i64 %106, %112
  br i1 %113, label %114, label %117

114:                                              ; preds = %105
  %115 = load i32, i32* %9, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %5, align 4
  br label %171

117:                                              ; preds = %105
  %118 = load i32, i32* %9, align 4
  %119 = add nsw i32 %118, 2
  store i32 %119, i32* %10, align 4
  %120 = load i32, i32* %9, align 4
  %121 = load i32, i32* %8, align 4
  %122 = load i32, i32* @LIKELY_IN_CACHE_SIZE, align 4
  %123 = sub nsw i32 %121, %122
  %124 = sub nsw i32 %123, 1
  %125 = icmp slt i32 %120, %124
  br i1 %125, label %126, label %140

126:                                              ; preds = %117
  %127 = load i64, i64* %6, align 8
  %128 = load i64*, i64** %7, align 8
  %129 = load i32, i32* %9, align 4
  %130 = load i32, i32* @LIKELY_IN_CACHE_SIZE, align 4
  %131 = add nsw i32 %129, %130
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i64, i64* %128, i64 %132
  %134 = load i64, i64* %133, align 8
  %135 = icmp slt i64 %127, %134
  br i1 %135, label %136, label %140

136:                                              ; preds = %126
  %137 = load i32, i32* %9, align 4
  %138 = load i32, i32* @LIKELY_IN_CACHE_SIZE, align 4
  %139 = add nsw i32 %137, %138
  store i32 %139, i32* %11, align 4
  br label %140

140:                                              ; preds = %136, %126, %117
  br label %141

141:                                              ; preds = %140
  br label %142

142:                                              ; preds = %141
  br label %143

143:                                              ; preds = %142, %93
  br label %144

144:                                              ; preds = %167, %143
  %145 = load i32, i32* %10, align 4
  %146 = load i32, i32* %11, align 4
  %147 = icmp slt i32 %145, %146
  br i1 %147, label %148, label %168

148:                                              ; preds = %144
  %149 = load i32, i32* %10, align 4
  %150 = load i32, i32* %11, align 4
  %151 = load i32, i32* %10, align 4
  %152 = sub nsw i32 %150, %151
  %153 = ashr i32 %152, 1
  %154 = add nsw i32 %149, %153
  store i32 %154, i32* %12, align 4
  %155 = load i64, i64* %6, align 8
  %156 = load i64*, i64** %7, align 8
  %157 = load i32, i32* %12, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i64, i64* %156, i64 %158
  %160 = load i64, i64* %159, align 8
  %161 = icmp sge i64 %155, %160
  br i1 %161, label %162, label %165

162:                                              ; preds = %148
  %163 = load i32, i32* %12, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %10, align 4
  br label %167

165:                                              ; preds = %148
  %166 = load i32, i32* %12, align 4
  store i32 %166, i32* %11, align 4
  br label %167

167:                                              ; preds = %165, %162
  br label %144

168:                                              ; preds = %144
  %169 = load i32, i32* %10, align 4
  %170 = sub nsw i32 %169, 1
  store i32 %170, i32* %5, align 4
  br label %171

171:                                              ; preds = %168, %114, %103, %90, %35, %30, %22
  %172 = load i32, i32* %5, align 4
  ret i32 %172
}

declare dso_local i32 @_linear_search(i64, i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
