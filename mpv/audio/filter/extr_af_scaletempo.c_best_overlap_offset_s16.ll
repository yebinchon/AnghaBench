; ModuleID = '/home/carl/AnghaBench/mpv/audio/filter/extr_af_scaletempo.c_best_overlap_offset_s16.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/filter/extr_af_scaletempo.c_best_overlap_offset_s16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.priv = type { i32*, i32*, i64, i32*, i64, i32, i64 }

@INT64_MIN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.priv*)* @best_overlap_offset_s16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @best_overlap_offset_s16(%struct.priv* %0) #0 {
  %2 = alloca %struct.priv*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  store %struct.priv* %0, %struct.priv** %2, align 8
  %14 = load i64, i64* @INT64_MIN, align 8
  store i64 %14, i64* %3, align 8
  store i32 0, i32* %4, align 4
  %15 = load %struct.priv*, %struct.priv** %2, align 8
  %16 = getelementptr inbounds %struct.priv, %struct.priv* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %5, align 8
  %18 = load %struct.priv*, %struct.priv** %2, align 8
  %19 = getelementptr inbounds %struct.priv, %struct.priv* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %6, align 8
  %21 = load %struct.priv*, %struct.priv** %2, align 8
  %22 = getelementptr inbounds %struct.priv, %struct.priv* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 %23
  store i32* %25, i32** %6, align 8
  %26 = load %struct.priv*, %struct.priv** %2, align 8
  %27 = getelementptr inbounds %struct.priv, %struct.priv* %26, i32 0, i32 3
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %7, align 8
  %29 = load %struct.priv*, %struct.priv** %2, align 8
  %30 = getelementptr inbounds %struct.priv, %struct.priv* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %8, align 8
  br label %32

32:                                               ; preds = %49, %1
  %33 = load i64, i64* %8, align 8
  %34 = load %struct.priv*, %struct.priv** %2, align 8
  %35 = getelementptr inbounds %struct.priv, %struct.priv* %34, i32 0, i32 4
  %36 = load i64, i64* %35, align 8
  %37 = icmp slt i64 %33, %36
  br i1 %37, label %38, label %52

38:                                               ; preds = %32
  %39 = load i32*, i32** %5, align 8
  %40 = getelementptr inbounds i32, i32* %39, i32 1
  store i32* %40, i32** %5, align 8
  %41 = load i32, i32* %39, align 4
  %42 = load i32*, i32** %6, align 8
  %43 = getelementptr inbounds i32, i32* %42, i32 1
  store i32* %43, i32** %6, align 8
  %44 = load i32, i32* %42, align 4
  %45 = mul nsw i32 %41, %44
  %46 = ashr i32 %45, 15
  %47 = load i32*, i32** %7, align 8
  %48 = getelementptr inbounds i32, i32* %47, i32 1
  store i32* %48, i32** %7, align 8
  store i32 %46, i32* %47, align 4
  br label %49

49:                                               ; preds = %38
  %50 = load i64, i64* %8, align 8
  %51 = add nsw i64 %50, 1
  store i64 %51, i64* %8, align 8
  br label %32

52:                                               ; preds = %32
  %53 = load %struct.priv*, %struct.priv** %2, align 8
  %54 = getelementptr inbounds %struct.priv, %struct.priv* %53, i32 0, i32 6
  %55 = load i64, i64* %54, align 8
  %56 = inttoptr i64 %55 to i32*
  %57 = load %struct.priv*, %struct.priv** %2, align 8
  %58 = getelementptr inbounds %struct.priv, %struct.priv* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds i32, i32* %56, i64 %59
  store i32* %60, i32** %9, align 8
  store i32 0, i32* %10, align 4
  br label %61

61:                                               ; preds = %173, %52
  %62 = load i32, i32* %10, align 4
  %63 = load %struct.priv*, %struct.priv** %2, align 8
  %64 = getelementptr inbounds %struct.priv, %struct.priv* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 8
  %66 = icmp slt i32 %62, %65
  br i1 %66, label %67, label %176

67:                                               ; preds = %61
  store i64 0, i64* %11, align 8
  %68 = load i32*, i32** %9, align 8
  store i32* %68, i32** %12, align 8
  %69 = load %struct.priv*, %struct.priv** %2, align 8
  %70 = getelementptr inbounds %struct.priv, %struct.priv* %69, i32 0, i32 3
  %71 = load i32*, i32** %70, align 8
  store i32* %71, i32** %7, align 8
  %72 = load %struct.priv*, %struct.priv** %2, align 8
  %73 = getelementptr inbounds %struct.priv, %struct.priv* %72, i32 0, i32 4
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.priv*, %struct.priv** %2, align 8
  %76 = getelementptr inbounds %struct.priv, %struct.priv* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = sub nsw i64 %74, %77
  %79 = load i32*, i32** %7, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 %78
  store i32* %80, i32** %7, align 8
  %81 = load %struct.priv*, %struct.priv** %2, align 8
  %82 = getelementptr inbounds %struct.priv, %struct.priv* %81, i32 0, i32 4
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.priv*, %struct.priv** %2, align 8
  %85 = getelementptr inbounds %struct.priv, %struct.priv* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = sub nsw i64 %83, %86
  %88 = load i32*, i32** %12, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 %87
  store i32* %89, i32** %12, align 8
  %90 = load %struct.priv*, %struct.priv** %2, align 8
  %91 = getelementptr inbounds %struct.priv, %struct.priv* %90, i32 0, i32 4
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.priv*, %struct.priv** %2, align 8
  %94 = getelementptr inbounds %struct.priv, %struct.priv* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = sub nsw i64 %92, %95
  %97 = sub nsw i64 0, %96
  store i64 %97, i64* %13, align 8
  br label %98

98:                                               ; preds = %157, %67
  %99 = load i32*, i32** %7, align 8
  %100 = load i64, i64* %13, align 8
  %101 = add nsw i64 %100, 0
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = load i32*, i32** %12, align 8
  %105 = load i64, i64* %13, align 8
  %106 = add nsw i64 %105, 0
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = mul nsw i32 %103, %108
  %110 = sext i32 %109 to i64
  %111 = load i64, i64* %11, align 8
  %112 = add nsw i64 %111, %110
  store i64 %112, i64* %11, align 8
  %113 = load i32*, i32** %7, align 8
  %114 = load i64, i64* %13, align 8
  %115 = add nsw i64 %114, 1
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = load i32*, i32** %12, align 8
  %119 = load i64, i64* %13, align 8
  %120 = add nsw i64 %119, 1
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = mul nsw i32 %117, %122
  %124 = sext i32 %123 to i64
  %125 = load i64, i64* %11, align 8
  %126 = add nsw i64 %125, %124
  store i64 %126, i64* %11, align 8
  %127 = load i32*, i32** %7, align 8
  %128 = load i64, i64* %13, align 8
  %129 = add nsw i64 %128, 2
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = load i32*, i32** %12, align 8
  %133 = load i64, i64* %13, align 8
  %134 = add nsw i64 %133, 2
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = mul nsw i32 %131, %136
  %138 = sext i32 %137 to i64
  %139 = load i64, i64* %11, align 8
  %140 = add nsw i64 %139, %138
  store i64 %140, i64* %11, align 8
  %141 = load i32*, i32** %7, align 8
  %142 = load i64, i64* %13, align 8
  %143 = add nsw i64 %142, 3
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = load i32*, i32** %12, align 8
  %147 = load i64, i64* %13, align 8
  %148 = add nsw i64 %147, 3
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = mul nsw i32 %145, %150
  %152 = sext i32 %151 to i64
  %153 = load i64, i64* %11, align 8
  %154 = add nsw i64 %153, %152
  store i64 %154, i64* %11, align 8
  %155 = load i64, i64* %13, align 8
  %156 = add nsw i64 %155, 4
  store i64 %156, i64* %13, align 8
  br label %157

157:                                              ; preds = %98
  %158 = load i64, i64* %13, align 8
  %159 = icmp slt i64 %158, 0
  br i1 %159, label %98, label %160

160:                                              ; preds = %157
  %161 = load i64, i64* %11, align 8
  %162 = load i64, i64* %3, align 8
  %163 = icmp sgt i64 %161, %162
  br i1 %163, label %164, label %167

164:                                              ; preds = %160
  %165 = load i64, i64* %11, align 8
  store i64 %165, i64* %3, align 8
  %166 = load i32, i32* %10, align 4
  store i32 %166, i32* %4, align 4
  br label %167

167:                                              ; preds = %164, %160
  %168 = load %struct.priv*, %struct.priv** %2, align 8
  %169 = getelementptr inbounds %struct.priv, %struct.priv* %168, i32 0, i32 2
  %170 = load i64, i64* %169, align 8
  %171 = load i32*, i32** %9, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 %170
  store i32* %172, i32** %9, align 8
  br label %173

173:                                              ; preds = %167
  %174 = load i32, i32* %10, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %10, align 4
  br label %61

176:                                              ; preds = %61
  %177 = load i32, i32* %4, align 4
  %178 = mul nsw i32 %177, 2
  %179 = sext i32 %178 to i64
  %180 = load %struct.priv*, %struct.priv** %2, align 8
  %181 = getelementptr inbounds %struct.priv, %struct.priv* %180, i32 0, i32 2
  %182 = load i64, i64* %181, align 8
  %183 = mul nsw i64 %179, %182
  %184 = trunc i64 %183 to i32
  ret i32 %184
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
