; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_video.c_calculate_frame_duration.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_video.c_calculate_frame_duration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__**, %struct.vo_chain* }
%struct.TYPE_6__ = type { double, double }
%struct.TYPE_5__ = type { double }
%struct.vo_chain = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { double }

@MP_NOPTS_VALUE = common dso_local global double 0.000000e+00, align 8
@.str = private unnamed_addr constant [24 x i8] c"value %f frame-duration\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"value %f frame-duration-approx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.MPContext*)* @calculate_frame_duration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @calculate_frame_duration(%struct.MPContext* %0) #0 {
  %2 = alloca %struct.MPContext*, align 8
  %3 = alloca %struct.vo_chain*, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  store %struct.MPContext* %0, %struct.MPContext** %2, align 8
  %14 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %15 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %14, i32 0, i32 4
  %16 = load %struct.vo_chain*, %struct.vo_chain** %15, align 8
  store %struct.vo_chain* %16, %struct.vo_chain** %3, align 8
  %17 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %18 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp sge i32 %19, 1
  br i1 %20, label %21, label %26

21:                                               ; preds = %1
  %22 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %23 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp sge i32 %24, 1
  br label %26

26:                                               ; preds = %21, %1
  %27 = phi i1 [ false, %1 ], [ %25, %21 ]
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = load %struct.vo_chain*, %struct.vo_chain** %3, align 8
  %31 = getelementptr inbounds %struct.vo_chain, %struct.vo_chain* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load double, double* %33, align 8
  %35 = fcmp ogt double %34, 0.000000e+00
  br i1 %35, label %36, label %43

36:                                               ; preds = %26
  %37 = load %struct.vo_chain*, %struct.vo_chain** %3, align 8
  %38 = getelementptr inbounds %struct.vo_chain, %struct.vo_chain* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load double, double* %40, align 8
  %42 = fdiv double 1.000000e+00, %41
  br label %44

43:                                               ; preds = %26
  br label %44

44:                                               ; preds = %43, %36
  %45 = phi double [ %42, %36 ], [ -1.000000e+00, %43 ]
  store double %45, double* %4, align 8
  %46 = load double, double* %4, align 8
  store double %46, double* %5, align 8
  %47 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %48 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp sge i32 %49, 2
  br i1 %50, label %51, label %82

51:                                               ; preds = %44
  %52 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %53 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %52, i32 0, i32 3
  %54 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %54, i64 0
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load double, double* %57, align 8
  store double %58, double* %6, align 8
  %59 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %60 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %59, i32 0, i32 3
  %61 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %61, i64 1
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load double, double* %64, align 8
  store double %65, double* %7, align 8
  %66 = load double, double* %6, align 8
  %67 = load double, double* @MP_NOPTS_VALUE, align 8
  %68 = fcmp une double %66, %67
  br i1 %68, label %69, label %81

69:                                               ; preds = %51
  %70 = load double, double* %7, align 8
  %71 = load double, double* @MP_NOPTS_VALUE, align 8
  %72 = fcmp une double %70, %71
  br i1 %72, label %73, label %81

73:                                               ; preds = %69
  %74 = load double, double* %7, align 8
  %75 = load double, double* %6, align 8
  %76 = fcmp oge double %74, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %73
  %78 = load double, double* %7, align 8
  %79 = load double, double* %6, align 8
  %80 = fsub double %78, %79
  store double %80, double* %5, align 8
  br label %81

81:                                               ; preds = %77, %73, %69, %51
  br label %82

82:                                               ; preds = %81, %44
  store double 3.100000e-03, double* %8, align 8
  store double 0.000000e+00, double* %9, align 8
  store i32 0, i32* %10, align 4
  store i32 1, i32* %11, align 4
  br label %83

83:                                               ; preds = %114, %82
  %84 = load i32, i32* %11, align 4
  %85 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %86 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp slt i32 %84, %87
  br i1 %88, label %89, label %117

89:                                               ; preds = %83
  %90 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %91 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %90, i32 0, i32 2
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %91, align 8
  %93 = load i32, i32* %11, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load double, double* %96, align 8
  store double %97, double* %12, align 8
  %98 = load double, double* %12, align 8
  %99 = fcmp ole double %98, 0.000000e+00
  br i1 %99, label %107, label %100

100:                                              ; preds = %89
  %101 = load double, double* %12, align 8
  %102 = load double, double* %5, align 8
  %103 = fsub double %101, %102
  %104 = call double @llvm.fabs.f64(double %103)
  %105 = load double, double* %8, align 8
  %106 = fcmp oge double %104, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %100, %89
  br label %117

108:                                              ; preds = %100
  %109 = load double, double* %12, align 8
  %110 = load double, double* %9, align 8
  %111 = fadd double %110, %109
  store double %111, double* %9, align 8
  %112 = load i32, i32* %10, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %10, align 4
  br label %114

114:                                              ; preds = %108
  %115 = load i32, i32* %11, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %11, align 4
  br label %83

117:                                              ; preds = %107, %83
  %118 = load i32, i32* %10, align 4
  %119 = icmp sgt i32 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %117
  %121 = load double, double* %9, align 8
  %122 = load i32, i32* %10, align 4
  %123 = sitofp i32 %122 to double
  %124 = fdiv double %121, %123
  br label %127

125:                                              ; preds = %117
  %126 = load double, double* %5, align 8
  br label %127

127:                                              ; preds = %125, %120
  %128 = phi double [ %124, %120 ], [ %126, %125 ]
  store double %128, double* %13, align 8
  %129 = load double, double* %4, align 8
  %130 = fcmp ogt double %129, 0.000000e+00
  br i1 %130, label %131, label %161

131:                                              ; preds = %127
  %132 = load double, double* %5, align 8
  %133 = load double, double* %4, align 8
  %134 = fsub double %132, %133
  %135 = call double @llvm.fabs.f64(double %134)
  %136 = load double, double* %8, align 8
  %137 = fcmp olt double %135, %136
  br i1 %137, label %138, label %160

138:                                              ; preds = %131
  %139 = load double, double* %9, align 8
  %140 = load double, double* %4, align 8
  %141 = load i32, i32* %10, align 4
  %142 = sitofp i32 %141 to double
  %143 = fmul double %140, %142
  %144 = fsub double %139, %143
  %145 = call double @llvm.fabs.f64(double %144)
  %146 = load double, double* %8, align 8
  %147 = fcmp olt double %145, %146
  br i1 %147, label %148, label %160

148:                                              ; preds = %138
  %149 = load i32, i32* %10, align 4
  %150 = icmp sge i32 %149, 16
  br i1 %150, label %158, label %151

151:                                              ; preds = %148
  %152 = load i32, i32* %10, align 4
  %153 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %154 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = sub nsw i32 %155, 4
  %157 = icmp sge i32 %152, %156
  br i1 %157, label %158, label %160

158:                                              ; preds = %151, %148
  %159 = load double, double* %4, align 8
  store double %159, double* %13, align 8
  br label %160

160:                                              ; preds = %158, %151, %138, %131
  br label %161

161:                                              ; preds = %160, %127
  %162 = load double, double* %5, align 8
  %163 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %164 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %163, i32 0, i32 2
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i64 0
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 0
  store double %162, double* %167, align 8
  %168 = load double, double* %13, align 8
  %169 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %170 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %169, i32 0, i32 2
  %171 = load %struct.TYPE_6__*, %struct.TYPE_6__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i64 0
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 1
  store double %168, double* %173, align 8
  %174 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %175 = load double, double* %5, align 8
  %176 = call i32 @MPMAX(i32 0, double %175)
  %177 = call i32 @MP_STATS(%struct.MPContext* %174, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %176)
  %178 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %179 = load double, double* %13, align 8
  %180 = call i32 @MPMAX(i32 0, double %179)
  %181 = call i32 @MP_STATS(%struct.MPContext* %178, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %180)
  ret void
}

declare dso_local i32 @assert(i32) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #2

declare dso_local i32 @MP_STATS(%struct.MPContext*, i8*, i32) #1

declare dso_local i32 @MPMAX(i32, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
