; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_tsrank.c_calc_rank.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_tsrank.c_calc_rank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_17__ = type { i64, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64 }

@QI_OPR = common dso_local global i64 0, align 8
@OP_AND = common dso_local global i64 0, align 8
@OP_PHRASE = common dso_local global i64 0, align 8
@RANK_NORM_LOGLENGTH = common dso_local global i32 0, align 4
@RANK_NORM_LENGTH = common dso_local global i32 0, align 4
@RANK_NORM_UNIQ = common dso_local global i32 0, align 4
@RANK_NORM_LOGUNIQ = common dso_local global i32 0, align 4
@RANK_NORM_RDIVRPLUS1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (float (float*, %struct.TYPE_15__*, %struct.TYPE_16__*, i32)* @calc_rank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @calc_rank(float* %0, %struct.TYPE_15__* %1, %struct.TYPE_16__* %2, i32 %3) #0 {
  %5 = alloca float, align 4
  %6 = alloca float*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca float, align 4
  %12 = alloca i32, align 4
  store float* %0, float** %6, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %7, align 8
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %14 = call %struct.TYPE_17__* @GETQUERY(%struct.TYPE_16__* %13)
  store %struct.TYPE_17__* %14, %struct.TYPE_17__** %10, align 8
  store float 0.000000e+00, float* %11, align 4
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %4
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %19, %4
  store float 0.000000e+00, float* %5, align 4
  br label %146

25:                                               ; preds = %19
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @QI_OPR, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %50

31:                                               ; preds = %25
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @OP_AND, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %45, label %38

38:                                               ; preds = %31
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @OP_PHRASE, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %38, %31
  %46 = load float*, float** %6, align 8
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %49 = call float @calc_rank_and(float* %46, %struct.TYPE_15__* %47, %struct.TYPE_16__* %48)
  br label %55

50:                                               ; preds = %38, %25
  %51 = load float*, float** %6, align 8
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %54 = call float @calc_rank_or(float* %51, %struct.TYPE_15__* %52, %struct.TYPE_16__* %53)
  br label %55

55:                                               ; preds = %50, %45
  %56 = phi float [ %49, %45 ], [ %54, %50 ]
  store float %56, float* %11, align 4
  %57 = load float, float* %11, align 4
  %58 = fcmp olt float %57, 0.000000e+00
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  store float 0x3BC79CA100000000, float* %11, align 4
  br label %60

60:                                               ; preds = %59, %55
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* @RANK_NORM_LOGLENGTH, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %80

65:                                               ; preds = %60
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp sgt i64 %68, 0
  br i1 %69, label %70, label %80

70:                                               ; preds = %65
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %72 = call i32 @cnt_length(%struct.TYPE_15__* %71)
  %73 = add nsw i32 %72, 1
  %74 = sitofp i32 %73 to double
  %75 = call float @log(double %74)
  %76 = call float @log(double 2.000000e+00)
  %77 = fdiv float %75, %76
  %78 = load float, float* %11, align 4
  %79 = fdiv float %78, %77
  store float %79, float* %11, align 4
  br label %80

80:                                               ; preds = %70, %65, %60
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* @RANK_NORM_LENGTH, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %96

85:                                               ; preds = %80
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %87 = call i32 @cnt_length(%struct.TYPE_15__* %86)
  store i32 %87, i32* %12, align 4
  %88 = load i32, i32* %12, align 4
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %85
  %91 = load i32, i32* %12, align 4
  %92 = sitofp i32 %91 to float
  %93 = load float, float* %11, align 4
  %94 = fdiv float %93, %92
  store float %94, float* %11, align 4
  br label %95

95:                                               ; preds = %90, %85
  br label %96

96:                                               ; preds = %95, %80
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* @RANK_NORM_UNIQ, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %113

101:                                              ; preds = %96
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp sgt i64 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %101
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = sitofp i64 %109 to float
  %111 = load float, float* %11, align 4
  %112 = fdiv float %111, %110
  store float %112, float* %11, align 4
  br label %113

113:                                              ; preds = %106, %101, %96
  %114 = load i32, i32* %9, align 4
  %115 = load i32, i32* @RANK_NORM_LOGUNIQ, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %134

118:                                              ; preds = %113
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = icmp sgt i64 %121, 0
  br i1 %122, label %123, label %134

123:                                              ; preds = %118
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = add nsw i64 %126, 1
  %128 = sitofp i64 %127 to double
  %129 = call float @log(double %128)
  %130 = call float @log(double 2.000000e+00)
  %131 = fdiv float %129, %130
  %132 = load float, float* %11, align 4
  %133 = fdiv float %132, %131
  store float %133, float* %11, align 4
  br label %134

134:                                              ; preds = %123, %118, %113
  %135 = load i32, i32* %9, align 4
  %136 = load i32, i32* @RANK_NORM_RDIVRPLUS1, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %134
  %140 = load float, float* %11, align 4
  %141 = fadd float %140, 1.000000e+00
  %142 = load float, float* %11, align 4
  %143 = fdiv float %142, %141
  store float %143, float* %11, align 4
  br label %144

144:                                              ; preds = %139, %134
  %145 = load float, float* %11, align 4
  store float %145, float* %5, align 4
  br label %146

146:                                              ; preds = %144, %24
  %147 = load float, float* %5, align 4
  ret float %147
}

declare dso_local %struct.TYPE_17__* @GETQUERY(%struct.TYPE_16__*) #1

declare dso_local float @calc_rank_and(float*, %struct.TYPE_15__*, %struct.TYPE_16__*) #1

declare dso_local float @calc_rank_or(float*, %struct.TYPE_15__*, %struct.TYPE_16__*) #1

declare dso_local float @log(double) #1

declare dso_local i32 @cnt_length(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
