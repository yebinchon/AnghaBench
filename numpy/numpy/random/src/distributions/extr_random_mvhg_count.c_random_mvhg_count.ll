; ModuleID = '/home/carl/AnghaBench/numpy/numpy/random/src/distributions/extr_random_mvhg_count.c_random_mvhg_count.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/random/src/distributions/extr_random_mvhg_count.c_random_mvhg_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @random_mvhg_count(i32* %0, i32 %1, i64 %2, i32* %3, i32 %4, i64 %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store i64 %2, i64* %11, align 8
  store i32* %3, i32** %12, align 8
  store i32 %4, i32* %13, align 4
  store i64 %5, i64* %14, align 8
  store i32* %6, i32** %15, align 8
  %27 = load i32, i32* %10, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %7
  %30 = load i32, i32* %13, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = load i64, i64* %14, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %32, %29, %7
  store i32 0, i32* %8, align 4
  br label %182

36:                                               ; preds = %32
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = mul i64 %38, 8
  %40 = trunc i64 %39 to i32
  %41 = call i64* @malloc(i32 %40)
  store i64* %41, i64** %16, align 8
  %42 = load i64*, i64** %16, align 8
  %43 = icmp eq i64* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  store i32 -1, i32* %8, align 4
  br label %182

45:                                               ; preds = %36
  store i64 0, i64* %18, align 8
  store i64 0, i64* %19, align 8
  br label %46

46:                                               ; preds = %69, %45
  %47 = load i64, i64* %18, align 8
  %48 = load i64, i64* %11, align 8
  %49 = icmp ult i64 %47, %48
  br i1 %49, label %50, label %72

50:                                               ; preds = %46
  store i32 0, i32* %20, align 4
  br label %51

51:                                               ; preds = %65, %50
  %52 = load i32, i32* %20, align 4
  %53 = load i32*, i32** %12, align 8
  %54 = load i64, i64* %18, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = icmp slt i32 %52, %56
  br i1 %57, label %58, label %68

58:                                               ; preds = %51
  %59 = load i64, i64* %18, align 8
  %60 = load i64*, i64** %16, align 8
  %61 = load i64, i64* %19, align 8
  %62 = getelementptr inbounds i64, i64* %60, i64 %61
  store i64 %59, i64* %62, align 8
  %63 = load i64, i64* %19, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %19, align 8
  br label %65

65:                                               ; preds = %58
  %66 = load i32, i32* %20, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %20, align 4
  br label %51

68:                                               ; preds = %51
  br label %69

69:                                               ; preds = %68
  %70 = load i64, i64* %18, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %18, align 8
  br label %46

72:                                               ; preds = %46
  %73 = load i32, i32* %13, align 4
  %74 = load i32, i32* %10, align 4
  %75 = sdiv i32 %74, 2
  %76 = icmp sgt i32 %73, %75
  %77 = zext i1 %76 to i32
  store i32 %77, i32* %17, align 4
  %78 = load i32, i32* %17, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %72
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* %13, align 4
  %83 = sub nsw i32 %81, %82
  store i32 %83, i32* %13, align 4
  br label %84

84:                                               ; preds = %80, %72
  store i64 0, i64* %21, align 8
  br label %85

85:                                               ; preds = %175, %84
  %86 = load i64, i64* %21, align 8
  %87 = load i64, i64* %14, align 8
  %88 = load i64, i64* %11, align 8
  %89 = mul i64 %87, %88
  %90 = icmp ult i64 %86, %89
  br i1 %90, label %91, label %179

91:                                               ; preds = %85
  store i64 0, i64* %22, align 8
  br label %92

92:                                               ; preds = %122, %91
  %93 = load i64, i64* %22, align 8
  %94 = load i32, i32* %13, align 4
  %95 = sext i32 %94 to i64
  %96 = icmp ult i64 %93, %95
  br i1 %96, label %97, label %125

97:                                               ; preds = %92
  %98 = load i64, i64* %22, align 8
  %99 = load i32*, i32** %9, align 8
  %100 = load i32, i32* %10, align 4
  %101 = sext i32 %100 to i64
  %102 = load i64, i64* %22, align 8
  %103 = sub i64 %101, %102
  %104 = sub i64 %103, 1
  %105 = call i64 @random_interval(i32* %99, i64 %104)
  %106 = add i64 %98, %105
  store i64 %106, i64* %24, align 8
  %107 = load i64*, i64** %16, align 8
  %108 = load i64, i64* %24, align 8
  %109 = getelementptr inbounds i64, i64* %107, i64 %108
  %110 = load i64, i64* %109, align 8
  store i64 %110, i64* %23, align 8
  %111 = load i64*, i64** %16, align 8
  %112 = load i64, i64* %22, align 8
  %113 = getelementptr inbounds i64, i64* %111, i64 %112
  %114 = load i64, i64* %113, align 8
  %115 = load i64*, i64** %16, align 8
  %116 = load i64, i64* %24, align 8
  %117 = getelementptr inbounds i64, i64* %115, i64 %116
  store i64 %114, i64* %117, align 8
  %118 = load i64, i64* %23, align 8
  %119 = load i64*, i64** %16, align 8
  %120 = load i64, i64* %22, align 8
  %121 = getelementptr inbounds i64, i64* %119, i64 %120
  store i64 %118, i64* %121, align 8
  br label %122

122:                                              ; preds = %97
  %123 = load i64, i64* %22, align 8
  %124 = add i64 %123, 1
  store i64 %124, i64* %22, align 8
  br label %92

125:                                              ; preds = %92
  store i64 0, i64* %25, align 8
  br label %126

126:                                              ; preds = %142, %125
  %127 = load i64, i64* %25, align 8
  %128 = load i32, i32* %13, align 4
  %129 = sext i32 %128 to i64
  %130 = icmp ult i64 %127, %129
  br i1 %130, label %131, label %145

131:                                              ; preds = %126
  %132 = load i32*, i32** %15, align 8
  %133 = load i64, i64* %21, align 8
  %134 = load i64*, i64** %16, align 8
  %135 = load i64, i64* %25, align 8
  %136 = getelementptr inbounds i64, i64* %134, i64 %135
  %137 = load i64, i64* %136, align 8
  %138 = add i64 %133, %137
  %139 = getelementptr inbounds i32, i32* %132, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %139, align 4
  br label %142

142:                                              ; preds = %131
  %143 = load i64, i64* %25, align 8
  %144 = add i64 %143, 1
  store i64 %144, i64* %25, align 8
  br label %126

145:                                              ; preds = %126
  %146 = load i32, i32* %17, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %174

148:                                              ; preds = %145
  store i64 0, i64* %26, align 8
  br label %149

149:                                              ; preds = %170, %148
  %150 = load i64, i64* %26, align 8
  %151 = load i64, i64* %11, align 8
  %152 = icmp ult i64 %150, %151
  br i1 %152, label %153, label %173

153:                                              ; preds = %149
  %154 = load i32*, i32** %12, align 8
  %155 = load i64, i64* %26, align 8
  %156 = getelementptr inbounds i32, i32* %154, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = load i32*, i32** %15, align 8
  %159 = load i64, i64* %21, align 8
  %160 = load i64, i64* %26, align 8
  %161 = add i64 %159, %160
  %162 = getelementptr inbounds i32, i32* %158, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = sub nsw i32 %157, %163
  %165 = load i32*, i32** %15, align 8
  %166 = load i64, i64* %21, align 8
  %167 = load i64, i64* %26, align 8
  %168 = add i64 %166, %167
  %169 = getelementptr inbounds i32, i32* %165, i64 %168
  store i32 %164, i32* %169, align 4
  br label %170

170:                                              ; preds = %153
  %171 = load i64, i64* %26, align 8
  %172 = add i64 %171, 1
  store i64 %172, i64* %26, align 8
  br label %149

173:                                              ; preds = %149
  br label %174

174:                                              ; preds = %173, %145
  br label %175

175:                                              ; preds = %174
  %176 = load i64, i64* %11, align 8
  %177 = load i64, i64* %21, align 8
  %178 = add i64 %177, %176
  store i64 %178, i64* %21, align 8
  br label %85

179:                                              ; preds = %85
  %180 = load i64*, i64** %16, align 8
  %181 = call i32 @free(i64* %180)
  store i32 0, i32* %8, align 4
  br label %182

182:                                              ; preds = %179, %44, %35
  %183 = load i32, i32* %8, align 4
  ret i32 %183
}

declare dso_local i64* @malloc(i32) #1

declare dso_local i64 @random_interval(i32*, i64) #1

declare dso_local i32 @free(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
