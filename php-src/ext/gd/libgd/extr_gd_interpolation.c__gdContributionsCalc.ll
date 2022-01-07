; ModuleID = '/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_interpolation.c__gdContributionsCalc.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_interpolation.c__gdContributionsCalc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, double* }

@DEFAULT_BOX_RADIUS = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_7__* (i32, i32, double, double (double)*)* @_gdContributionsCalc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_7__* @_gdContributionsCalc(i32 %0, i32 %1, double %2, double (double)* %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca double (double)*, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_7__*, align 8
  %16 = alloca double, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca double, align 8
  %20 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store double %2, double* %8, align 8
  store double (double)* %3, double (double)** %9, align 8
  store double 1.000000e+00, double* %11, align 8
  %21 = load double, double* @DEFAULT_BOX_RADIUS, align 8
  store double %21, double* %12, align 8
  %22 = load double, double* %8, align 8
  %23 = fcmp olt double %22, 1.000000e+00
  br i1 %23, label %24, label %29

24:                                               ; preds = %4
  %25 = load double, double* %12, align 8
  %26 = load double, double* %8, align 8
  %27 = fdiv double %25, %26
  store double %27, double* %10, align 8
  %28 = load double, double* %8, align 8
  store double %28, double* %11, align 8
  br label %31

29:                                               ; preds = %4
  %30 = load double, double* %12, align 8
  store double %30, double* %10, align 8
  br label %31

31:                                               ; preds = %29, %24
  %32 = load double, double* %10, align 8
  %33 = call i64 @ceil(double %32)
  %34 = trunc i64 %33 to i32
  %35 = mul nsw i32 2, %34
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %13, align 4
  %39 = call %struct.TYPE_7__* @_gdContributionsAlloc(i32 %37, i32 %38)
  store %struct.TYPE_7__* %39, %struct.TYPE_7__** %15, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %41 = icmp eq %struct.TYPE_7__* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %31
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %5, align 8
  br label %178

43:                                               ; preds = %31
  store i32 0, i32* %14, align 4
  br label %44

44:                                               ; preds = %173, %43
  %45 = load i32, i32* %14, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp ult i32 %45, %46
  br i1 %47, label %48, label %176

48:                                               ; preds = %44
  %49 = load i32, i32* %14, align 4
  %50 = uitofp i32 %49 to double
  %51 = load double, double* %8, align 8
  %52 = fdiv double %50, %51
  store double %52, double* %16, align 8
  %53 = load double, double* %16, align 8
  %54 = load double, double* %10, align 8
  %55 = fsub double %53, %54
  %56 = call i64 @floor(double %55)
  %57 = trunc i64 %56 to i32
  %58 = call i32 @MAX(i32 0, i32 %57)
  store i32 %58, i32* %17, align 4
  %59 = load double, double* %16, align 8
  %60 = load double, double* %10, align 8
  %61 = fadd double %59, %60
  %62 = call i64 @ceil(double %61)
  %63 = trunc i64 %62 to i32
  %64 = load i32, i32* %7, align 4
  %65 = sub nsw i32 %64, 1
  %66 = call i32 @MIN(i32 %63, i32 %65)
  store i32 %66, i32* %18, align 4
  store double 0.000000e+00, double* %19, align 8
  %67 = load i32, i32* %18, align 4
  %68 = load i32, i32* %17, align 4
  %69 = sub nsw i32 %67, %68
  %70 = add nsw i32 %69, 1
  %71 = load i32, i32* %13, align 4
  %72 = icmp sgt i32 %70, %71
  br i1 %72, label %73, label %85

73:                                               ; preds = %48
  %74 = load i32, i32* %17, align 4
  %75 = load i32, i32* %7, align 4
  %76 = sub nsw i32 %75, 0
  %77 = icmp slt i32 %74, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = load i32, i32* %17, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %17, align 4
  br label %84

81:                                               ; preds = %73
  %82 = load i32, i32* %18, align 4
  %83 = add nsw i32 %82, -1
  store i32 %83, i32* %18, align 4
  br label %84

84:                                               ; preds = %81, %78
  br label %85

85:                                               ; preds = %84, %48
  %86 = load i32, i32* %17, align 4
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = load i32, i32* %14, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  store i32 %86, i32* %93, align 8
  %94 = load i32, i32* %18, align 4
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %96, align 8
  %98 = load i32, i32* %14, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 1
  store i32 %94, i32* %101, align 4
  %102 = load i32, i32* %17, align 4
  store i32 %102, i32* %20, align 4
  br label %103

103:                                              ; preds = %133, %85
  %104 = load i32, i32* %20, align 4
  %105 = load i32, i32* %18, align 4
  %106 = icmp sle i32 %104, %105
  br i1 %106, label %107, label %136

107:                                              ; preds = %103
  %108 = load double, double* %11, align 8
  %109 = load double (double)*, double (double)** %9, align 8
  %110 = load double, double* %11, align 8
  %111 = load double, double* %16, align 8
  %112 = load i32, i32* %20, align 4
  %113 = sitofp i32 %112 to double
  %114 = fsub double %111, %113
  %115 = fmul double %110, %114
  %116 = call double %109(double %115)
  %117 = fmul double %108, %116
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %119, align 8
  %121 = load i32, i32* %14, align 4
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 2
  %125 = load double*, double** %124, align 8
  %126 = load i32, i32* %20, align 4
  %127 = load i32, i32* %17, align 4
  %128 = sub nsw i32 %126, %127
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds double, double* %125, i64 %129
  store double %117, double* %130, align 8
  %131 = load double, double* %19, align 8
  %132 = fadd double %131, %117
  store double %132, double* %19, align 8
  br label %133

133:                                              ; preds = %107
  %134 = load i32, i32* %20, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %20, align 4
  br label %103

136:                                              ; preds = %103
  %137 = load double, double* %19, align 8
  %138 = fcmp olt double %137, 0.000000e+00
  br i1 %138, label %139, label %142

139:                                              ; preds = %136
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %141 = call i32 @_gdContributionsFree(%struct.TYPE_7__* %140)
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %5, align 8
  br label %178

142:                                              ; preds = %136
  %143 = load double, double* %19, align 8
  %144 = fcmp ogt double %143, 0.000000e+00
  br i1 %144, label %145, label %172

145:                                              ; preds = %142
  %146 = load i32, i32* %17, align 4
  store i32 %146, i32* %20, align 4
  br label %147

147:                                              ; preds = %168, %145
  %148 = load i32, i32* %20, align 4
  %149 = load i32, i32* %18, align 4
  %150 = icmp sle i32 %148, %149
  br i1 %150, label %151, label %171

151:                                              ; preds = %147
  %152 = load double, double* %19, align 8
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 0
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %154, align 8
  %156 = load i32, i32* %14, align 4
  %157 = zext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 2
  %160 = load double*, double** %159, align 8
  %161 = load i32, i32* %20, align 4
  %162 = load i32, i32* %17, align 4
  %163 = sub nsw i32 %161, %162
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds double, double* %160, i64 %164
  %166 = load double, double* %165, align 8
  %167 = fdiv double %166, %152
  store double %167, double* %165, align 8
  br label %168

168:                                              ; preds = %151
  %169 = load i32, i32* %20, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %20, align 4
  br label %147

171:                                              ; preds = %147
  br label %172

172:                                              ; preds = %171, %142
  br label %173

173:                                              ; preds = %172
  %174 = load i32, i32* %14, align 4
  %175 = add i32 %174, 1
  store i32 %175, i32* %14, align 4
  br label %44

176:                                              ; preds = %44
  %177 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  store %struct.TYPE_7__* %177, %struct.TYPE_7__** %5, align 8
  br label %178

178:                                              ; preds = %176, %139, %42
  %179 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  ret %struct.TYPE_7__* %179
}

declare dso_local i64 @ceil(double) #1

declare dso_local %struct.TYPE_7__* @_gdContributionsAlloc(i32, i32) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i64 @floor(double) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @_gdContributionsFree(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
