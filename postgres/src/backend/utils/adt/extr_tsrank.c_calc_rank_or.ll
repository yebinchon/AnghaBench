; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_tsrank.c_calc_rank_or.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_tsrank.c_calc_rank_or.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i32, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (float (float*, i32, %struct.TYPE_12__*)* @calc_rank_or to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @calc_rank_or(float* %0, i32 %1, %struct.TYPE_12__* %2) #0 {
  %4 = alloca float*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_10__, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca float, align 4
  %16 = alloca i32**, align 8
  %17 = alloca i32, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca i32, align 4
  store float* %0, float** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %6, align 8
  store float 0.000000e+00, float* %15, align 4
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %17, align 4
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  store i32 1, i32* %24, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 1
  %26 = load i64*, i64** %25, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 0
  store i64 0, i64* %27, align 8
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %29 = call i32** @SortAndUniqItems(%struct.TYPE_12__* %28, i32* %17)
  store i32** %29, i32*** %16, align 8
  store i32 0, i32* %13, align 4
  br label %30

30:                                               ; preds = %137, %3
  %31 = load i32, i32* %13, align 4
  %32 = load i32, i32* %17, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %140

34:                                               ; preds = %30
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %37 = load i32**, i32*** %16, align 8
  %38 = load i32, i32* %13, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32*, i32** %37, i64 %39
  %41 = load i32*, i32** %40, align 8
  %42 = call %struct.TYPE_11__* @find_wordentry(i32 %35, %struct.TYPE_12__* %36, i32* %41, i32* %14)
  store %struct.TYPE_11__* %42, %struct.TYPE_11__** %7, align 8
  store %struct.TYPE_11__* %42, %struct.TYPE_11__** %8, align 8
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %44 = icmp ne %struct.TYPE_11__* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %34
  br label %137

46:                                               ; preds = %34
  br label %47

47:                                               ; preds = %115, %46
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %50 = ptrtoint %struct.TYPE_11__* %48 to i64
  %51 = ptrtoint %struct.TYPE_11__* %49 to i64
  %52 = sub i64 %50, %51
  %53 = sdiv exact i64 %52, 8
  %54 = load i32, i32* %14, align 4
  %55 = sext i32 %54 to i64
  %56 = icmp slt i64 %53, %55
  br i1 %56, label %57, label %136

57:                                               ; preds = %47
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %57
  %63 = load i32, i32* %5, align 4
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %65 = call i32 @POSDATALEN(i32 %63, %struct.TYPE_11__* %64)
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %5, align 4
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %68 = call i64* @POSDATAPTR(i32 %66, %struct.TYPE_11__* %67)
  store i64* %68, i64** %10, align 8
  br label %74

69:                                               ; preds = %57
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  store i32 %71, i32* %11, align 4
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 1
  %73 = load i64*, i64** %72, align 8
  store i64* %73, i64** %10, align 8
  br label %74

74:                                               ; preds = %69, %62
  store float 0.000000e+00, float* %18, align 4
  store float -1.000000e+00, float* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %12, align 4
  br label %75

75:                                               ; preds = %112, %74
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* %11, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %115

79:                                               ; preds = %75
  %80 = load float, float* %18, align 4
  %81 = load i64*, i64** %10, align 8
  %82 = load i32, i32* %12, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %81, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = call float @wpos(i64 %85)
  %87 = load i32, i32* %12, align 4
  %88 = add nsw i32 %87, 1
  %89 = load i32, i32* %12, align 4
  %90 = add nsw i32 %89, 1
  %91 = mul nsw i32 %88, %90
  %92 = sitofp i32 %91 to float
  %93 = fdiv float %86, %92
  %94 = fadd float %80, %93
  store float %94, float* %18, align 4
  %95 = load i64*, i64** %10, align 8
  %96 = load i32, i32* %12, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i64, i64* %95, i64 %97
  %99 = load i64, i64* %98, align 8
  %100 = call float @wpos(i64 %99)
  %101 = load float, float* %19, align 4
  %102 = fcmp ogt float %100, %101
  br i1 %102, label %103, label %111

103:                                              ; preds = %79
  %104 = load i64*, i64** %10, align 8
  %105 = load i32, i32* %12, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i64, i64* %104, i64 %106
  %108 = load i64, i64* %107, align 8
  %109 = call float @wpos(i64 %108)
  store float %109, float* %19, align 4
  %110 = load i32, i32* %12, align 4
  store i32 %110, i32* %20, align 4
  br label %111

111:                                              ; preds = %103, %79
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %12, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %12, align 4
  br label %75

115:                                              ; preds = %75
  %116 = load float, float* %15, align 4
  %117 = fpext float %116 to double
  %118 = load float, float* %19, align 4
  %119 = load float, float* %18, align 4
  %120 = fadd float %118, %119
  %121 = load float, float* %19, align 4
  %122 = load i32, i32* %20, align 4
  %123 = add nsw i32 %122, 1
  %124 = load i32, i32* %20, align 4
  %125 = add nsw i32 %124, 1
  %126 = mul nsw i32 %123, %125
  %127 = sitofp i32 %126 to float
  %128 = fdiv float %121, %127
  %129 = fsub float %120, %128
  %130 = fpext float %129 to double
  %131 = fdiv double %130, 0x3FFA51A662532707
  %132 = fadd double %117, %131
  %133 = fptrunc double %132 to float
  store float %133, float* %15, align 4
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 1
  store %struct.TYPE_11__* %135, %struct.TYPE_11__** %7, align 8
  br label %47

136:                                              ; preds = %47
  br label %137

137:                                              ; preds = %136, %45
  %138 = load i32, i32* %13, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %13, align 4
  br label %30

140:                                              ; preds = %30
  %141 = load i32, i32* %17, align 4
  %142 = icmp sgt i32 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %140
  %144 = load float, float* %15, align 4
  %145 = load i32, i32* %17, align 4
  %146 = sitofp i32 %145 to float
  %147 = fdiv float %144, %146
  store float %147, float* %15, align 4
  br label %148

148:                                              ; preds = %143, %140
  %149 = load i32**, i32*** %16, align 8
  %150 = call i32 @pfree(i32** %149)
  %151 = load float, float* %15, align 4
  ret float %151
}

declare dso_local i32** @SortAndUniqItems(%struct.TYPE_12__*, i32*) #1

declare dso_local %struct.TYPE_11__* @find_wordentry(i32, %struct.TYPE_12__*, i32*, i32*) #1

declare dso_local i32 @POSDATALEN(i32, %struct.TYPE_11__*) #1

declare dso_local i64* @POSDATAPTR(i32, %struct.TYPE_11__*) #1

declare dso_local float @wpos(i64) #1

declare dso_local i32 @pfree(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
