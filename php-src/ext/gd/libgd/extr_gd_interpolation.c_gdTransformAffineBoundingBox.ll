; ModuleID = '/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_interpolation.c_gdTransformAffineBoundingBox.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_interpolation.c_gdTransformAffineBoundingBox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%struct.TYPE_8__ = type { double, double }

@GD_TRUE = common dso_local global i64 0, align 8
@GD_FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gdTransformAffineBoundingBox(%struct.TYPE_7__* %0, double* %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca double*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca [4 x %struct.TYPE_8__], align 16
  %9 = alloca %struct.TYPE_8__, align 8
  %10 = alloca %struct.TYPE_8__, align 8
  %11 = alloca %struct.TYPE_8__, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store double* %1, double** %6, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %7, align 8
  %13 = getelementptr inbounds [4 x %struct.TYPE_8__], [4 x %struct.TYPE_8__]* %8, i64 0, i64 0
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  store double 0.000000e+00, double* %14, align 16
  %15 = getelementptr inbounds [4 x %struct.TYPE_8__], [4 x %struct.TYPE_8__]* %8, i64 0, i64 0
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  store double 0.000000e+00, double* %16, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sitofp i32 %19 to double
  %21 = getelementptr inbounds [4 x %struct.TYPE_8__], [4 x %struct.TYPE_8__]* %8, i64 0, i64 1
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  store double %20, double* %22, align 16
  %23 = getelementptr inbounds [4 x %struct.TYPE_8__], [4 x %struct.TYPE_8__]* %8, i64 0, i64 1
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  store double 0.000000e+00, double* %24, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = sitofp i32 %27 to double
  %29 = getelementptr inbounds [4 x %struct.TYPE_8__], [4 x %struct.TYPE_8__]* %8, i64 0, i64 2
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  store double %28, double* %30, align 16
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = sitofp i32 %33 to double
  %35 = getelementptr inbounds [4 x %struct.TYPE_8__], [4 x %struct.TYPE_8__]* %8, i64 0, i64 2
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  store double %34, double* %36, align 8
  %37 = getelementptr inbounds [4 x %struct.TYPE_8__], [4 x %struct.TYPE_8__]* %8, i64 0, i64 3
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  store double 0.000000e+00, double* %38, align 16
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = sitofp i32 %41 to double
  %43 = getelementptr inbounds [4 x %struct.TYPE_8__], [4 x %struct.TYPE_8__]* %8, i64 0, i64 3
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  store double %42, double* %44, align 8
  store i32 0, i32* %12, align 4
  br label %45

45:                                               ; preds = %64, %3
  %46 = load i32, i32* %12, align 4
  %47 = icmp slt i32 %46, 4
  br i1 %47, label %48, label %67

48:                                               ; preds = %45
  %49 = load i32, i32* %12, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [4 x %struct.TYPE_8__], [4 x %struct.TYPE_8__]* %8, i64 0, i64 %50
  %52 = bitcast %struct.TYPE_8__* %11 to i8*
  %53 = bitcast %struct.TYPE_8__* %51 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %52, i8* align 16 %53, i64 16, i1 false)
  %54 = load i32, i32* %12, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [4 x %struct.TYPE_8__], [4 x %struct.TYPE_8__]* %8, i64 0, i64 %55
  %57 = load double*, double** %6, align 8
  %58 = call i64 @gdAffineApplyToPointF(%struct.TYPE_8__* %56, %struct.TYPE_8__* %11, double* %57)
  %59 = load i64, i64* @GD_TRUE, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %48
  %62 = load i32, i32* @GD_FALSE, align 4
  store i32 %62, i32* %4, align 4
  br label %177

63:                                               ; preds = %48
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %12, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %12, align 4
  br label %45

67:                                               ; preds = %45
  %68 = getelementptr inbounds [4 x %struct.TYPE_8__], [4 x %struct.TYPE_8__]* %8, i64 0, i64 0
  %69 = bitcast %struct.TYPE_8__* %9 to i8*
  %70 = bitcast %struct.TYPE_8__* %68 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %69, i8* align 16 %70, i64 16, i1 false)
  %71 = getelementptr inbounds [4 x %struct.TYPE_8__], [4 x %struct.TYPE_8__]* %8, i64 0, i64 0
  %72 = bitcast %struct.TYPE_8__* %10 to i8*
  %73 = bitcast %struct.TYPE_8__* %71 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %72, i8* align 16 %73, i64 16, i1 false)
  store i32 1, i32* %12, align 4
  br label %74

74:                                               ; preds = %142, %67
  %75 = load i32, i32* %12, align 4
  %76 = icmp slt i32 %75, 4
  br i1 %76, label %77, label %145

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %79 = load double, double* %78, align 8
  %80 = load i32, i32* %12, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [4 x %struct.TYPE_8__], [4 x %struct.TYPE_8__]* %8, i64 0, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = load double, double* %83, align 16
  %85 = fcmp ogt double %79, %84
  br i1 %85, label %86, label %93

86:                                               ; preds = %77
  %87 = load i32, i32* %12, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [4 x %struct.TYPE_8__], [4 x %struct.TYPE_8__]* %8, i64 0, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = load double, double* %90, align 16
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  store double %91, double* %92, align 8
  br label %93

93:                                               ; preds = %86, %77
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %95 = load double, double* %94, align 8
  %96 = load i32, i32* %12, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [4 x %struct.TYPE_8__], [4 x %struct.TYPE_8__]* %8, i64 0, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 1
  %100 = load double, double* %99, align 8
  %101 = fcmp ogt double %95, %100
  br i1 %101, label %102, label %109

102:                                              ; preds = %93
  %103 = load i32, i32* %12, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [4 x %struct.TYPE_8__], [4 x %struct.TYPE_8__]* %8, i64 0, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 1
  %107 = load double, double* %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  store double %107, double* %108, align 8
  br label %109

109:                                              ; preds = %102, %93
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %111 = load double, double* %110, align 8
  %112 = load i32, i32* %12, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [4 x %struct.TYPE_8__], [4 x %struct.TYPE_8__]* %8, i64 0, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  %116 = load double, double* %115, align 16
  %117 = fcmp olt double %111, %116
  br i1 %117, label %118, label %125

118:                                              ; preds = %109
  %119 = load i32, i32* %12, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds [4 x %struct.TYPE_8__], [4 x %struct.TYPE_8__]* %8, i64 0, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  %123 = load double, double* %122, align 16
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  store double %123, double* %124, align 8
  br label %125

125:                                              ; preds = %118, %109
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %127 = load double, double* %126, align 8
  %128 = load i32, i32* %12, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds [4 x %struct.TYPE_8__], [4 x %struct.TYPE_8__]* %8, i64 0, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 1
  %132 = load double, double* %131, align 8
  %133 = fcmp olt double %127, %132
  br i1 %133, label %134, label %141

134:                                              ; preds = %125
  %135 = load i32, i32* %12, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds [4 x %struct.TYPE_8__], [4 x %struct.TYPE_8__]* %8, i64 0, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 1
  %139 = load double, double* %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  store double %139, double* %140, align 8
  br label %141

141:                                              ; preds = %134, %125
  br label %142

142:                                              ; preds = %141
  %143 = load i32, i32* %12, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %12, align 4
  br label %74

145:                                              ; preds = %74
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %147 = load double, double* %146, align 8
  %148 = fptosi double %147 to i32
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 2
  store i32 %148, i32* %150, align 4
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %152 = load double, double* %151, align 8
  %153 = fptosi double %152 to i32
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 3
  store i32 %153, i32* %155, align 4
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %157 = load double, double* %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %159 = load double, double* %158, align 8
  %160 = fsub double %157, %159
  %161 = call i64 @floor(double %160)
  %162 = trunc i64 %161 to i32
  %163 = sub nsw i32 %162, 1
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 0
  store i32 %163, i32* %165, align 4
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %167 = load double, double* %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %169 = load double, double* %168, align 8
  %170 = fsub double %167, %169
  %171 = call i64 @floor(double %170)
  %172 = trunc i64 %171 to i32
  %173 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 1
  store i32 %172, i32* %174, align 4
  %175 = load i64, i64* @GD_TRUE, align 8
  %176 = trunc i64 %175 to i32
  store i32 %176, i32* %4, align 4
  br label %177

177:                                              ; preds = %145, %61
  %178 = load i32, i32* %4, align 4
  ret i32 %178
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @gdAffineApplyToPointF(%struct.TYPE_8__*, %struct.TYPE_8__*, double*) #2

declare dso_local i64 @floor(double) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
