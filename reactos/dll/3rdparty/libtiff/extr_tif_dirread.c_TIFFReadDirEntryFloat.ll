; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_dirread.c_TIFFReadDirEntryFloat.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_dirread.c_TIFFReadDirEntryFloat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32 }

@TIFFReadDirEntryErrCount = common dso_local global i32 0, align 4
@TIFFReadDirEntryErrOk = common dso_local global i32 0, align 4
@FLT_MAX = common dso_local global double 0.000000e+00, align 8
@FLT_MIN = common dso_local global double 0.000000e+00, align 8
@TIFFReadDirEntryErrRange = common dso_local global i32 0, align 4
@TIFFReadDirEntryErrType = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_15__*, float*)* @TIFFReadDirEntryFloat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TIFFReadDirEntryFloat(i32* %0, %struct.TYPE_15__* %1, float* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca float*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %6, align 8
  store float* %2, float** %7, align 8
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 1
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* @TIFFReadDirEntryErrCount, align 4
  store i32 %25, i32* %4, align 4
  br label %166

26:                                               ; preds = %3
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %164 [
    i32 139, label %30
    i32 133, label %38
    i32 132, label %46
    i32 128, label %54
    i32 136, label %62
    i32 131, label %70
    i32 135, label %78
    i32 130, label %92
    i32 134, label %106
    i32 129, label %120
    i32 137, label %134
    i32 138, label %140
  ]

30:                                               ; preds = %26
  %31 = load i32*, i32** %5, align 8
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %33 = call i32 @TIFFReadDirEntryCheckedByte(i32* %31, %struct.TYPE_15__* %32, i64* %9)
  %34 = load i64, i64* %9, align 8
  %35 = sitofp i64 %34 to float
  %36 = load float*, float** %7, align 8
  store float %35, float* %36, align 4
  %37 = load i32, i32* @TIFFReadDirEntryErrOk, align 4
  store i32 %37, i32* %4, align 4
  br label %166

38:                                               ; preds = %26
  %39 = load i32*, i32** %5, align 8
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %41 = call i32 @TIFFReadDirEntryCheckedSbyte(i32* %39, %struct.TYPE_15__* %40, i64* %10)
  %42 = load i64, i64* %10, align 8
  %43 = sitofp i64 %42 to float
  %44 = load float*, float** %7, align 8
  store float %43, float* %44, align 4
  %45 = load i32, i32* @TIFFReadDirEntryErrOk, align 4
  store i32 %45, i32* %4, align 4
  br label %166

46:                                               ; preds = %26
  %47 = load i32*, i32** %5, align 8
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %49 = call i32 @TIFFReadDirEntryCheckedShort(i32* %47, %struct.TYPE_15__* %48, i64* %11)
  %50 = load i64, i64* %11, align 8
  %51 = sitofp i64 %50 to float
  %52 = load float*, float** %7, align 8
  store float %51, float* %52, align 4
  %53 = load i32, i32* @TIFFReadDirEntryErrOk, align 4
  store i32 %53, i32* %4, align 4
  br label %166

54:                                               ; preds = %26
  %55 = load i32*, i32** %5, align 8
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %57 = call i32 @TIFFReadDirEntryCheckedSshort(i32* %55, %struct.TYPE_15__* %56, i64* %12)
  %58 = load i64, i64* %12, align 8
  %59 = sitofp i64 %58 to float
  %60 = load float*, float** %7, align 8
  store float %59, float* %60, align 4
  %61 = load i32, i32* @TIFFReadDirEntryErrOk, align 4
  store i32 %61, i32* %4, align 4
  br label %166

62:                                               ; preds = %26
  %63 = load i32*, i32** %5, align 8
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %65 = call i32 @TIFFReadDirEntryCheckedLong(i32* %63, %struct.TYPE_15__* %64, i64* %13)
  %66 = load i64, i64* %13, align 8
  %67 = sitofp i64 %66 to float
  %68 = load float*, float** %7, align 8
  store float %67, float* %68, align 4
  %69 = load i32, i32* @TIFFReadDirEntryErrOk, align 4
  store i32 %69, i32* %4, align 4
  br label %166

70:                                               ; preds = %26
  %71 = load i32*, i32** %5, align 8
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %73 = call i32 @TIFFReadDirEntryCheckedSlong(i32* %71, %struct.TYPE_15__* %72, i64* %14)
  %74 = load i64, i64* %14, align 8
  %75 = sitofp i64 %74 to float
  %76 = load float*, float** %7, align 8
  store float %75, float* %76, align 4
  %77 = load i32, i32* @TIFFReadDirEntryErrOk, align 4
  store i32 %77, i32* %4, align 4
  br label %166

78:                                               ; preds = %26
  %79 = load i32*, i32** %5, align 8
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %81 = call i32 @TIFFReadDirEntryCheckedLong8(i32* %79, %struct.TYPE_15__* %80, i64* %15)
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* @TIFFReadDirEntryErrOk, align 4
  %84 = icmp ne i32 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %78
  %86 = load i32, i32* %8, align 4
  store i32 %86, i32* %4, align 4
  br label %166

87:                                               ; preds = %78
  %88 = load i64, i64* %15, align 8
  %89 = sitofp i64 %88 to float
  %90 = load float*, float** %7, align 8
  store float %89, float* %90, align 4
  %91 = load i32, i32* @TIFFReadDirEntryErrOk, align 4
  store i32 %91, i32* %4, align 4
  br label %166

92:                                               ; preds = %26
  %93 = load i32*, i32** %5, align 8
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %95 = call i32 @TIFFReadDirEntryCheckedSlong8(i32* %93, %struct.TYPE_15__* %94, i64* %16)
  store i32 %95, i32* %8, align 4
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* @TIFFReadDirEntryErrOk, align 4
  %98 = icmp ne i32 %96, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %92
  %100 = load i32, i32* %8, align 4
  store i32 %100, i32* %4, align 4
  br label %166

101:                                              ; preds = %92
  %102 = load i64, i64* %16, align 8
  %103 = sitofp i64 %102 to float
  %104 = load float*, float** %7, align 8
  store float %103, float* %104, align 4
  %105 = load i32, i32* @TIFFReadDirEntryErrOk, align 4
  store i32 %105, i32* %4, align 4
  br label %166

106:                                              ; preds = %26
  %107 = load i32*, i32** %5, align 8
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %109 = call i32 @TIFFReadDirEntryCheckedRational(i32* %107, %struct.TYPE_15__* %108, double* %17)
  store i32 %109, i32* %8, align 4
  %110 = load i32, i32* %8, align 4
  %111 = load i32, i32* @TIFFReadDirEntryErrOk, align 4
  %112 = icmp ne i32 %110, %111
  br i1 %112, label %113, label %115

113:                                              ; preds = %106
  %114 = load i32, i32* %8, align 4
  store i32 %114, i32* %4, align 4
  br label %166

115:                                              ; preds = %106
  %116 = load double, double* %17, align 8
  %117 = fptrunc double %116 to float
  %118 = load float*, float** %7, align 8
  store float %117, float* %118, align 4
  %119 = load i32, i32* @TIFFReadDirEntryErrOk, align 4
  store i32 %119, i32* %4, align 4
  br label %166

120:                                              ; preds = %26
  %121 = load i32*, i32** %5, align 8
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %123 = call i32 @TIFFReadDirEntryCheckedSrational(i32* %121, %struct.TYPE_15__* %122, double* %18)
  store i32 %123, i32* %8, align 4
  %124 = load i32, i32* %8, align 4
  %125 = load i32, i32* @TIFFReadDirEntryErrOk, align 4
  %126 = icmp ne i32 %124, %125
  br i1 %126, label %127, label %129

127:                                              ; preds = %120
  %128 = load i32, i32* %8, align 4
  store i32 %128, i32* %4, align 4
  br label %166

129:                                              ; preds = %120
  %130 = load double, double* %18, align 8
  %131 = fptrunc double %130 to float
  %132 = load float*, float** %7, align 8
  store float %131, float* %132, align 4
  %133 = load i32, i32* @TIFFReadDirEntryErrOk, align 4
  store i32 %133, i32* %4, align 4
  br label %166

134:                                              ; preds = %26
  %135 = load i32*, i32** %5, align 8
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %137 = load float*, float** %7, align 8
  %138 = call i32 @TIFFReadDirEntryCheckedFloat(i32* %135, %struct.TYPE_15__* %136, float* %137)
  %139 = load i32, i32* @TIFFReadDirEntryErrOk, align 4
  store i32 %139, i32* %4, align 4
  br label %166

140:                                              ; preds = %26
  %141 = load i32*, i32** %5, align 8
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %143 = call i32 @TIFFReadDirEntryCheckedDouble(i32* %141, %struct.TYPE_15__* %142, double* %19)
  store i32 %143, i32* %8, align 4
  %144 = load i32, i32* %8, align 4
  %145 = load i32, i32* @TIFFReadDirEntryErrOk, align 4
  %146 = icmp ne i32 %144, %145
  br i1 %146, label %147, label %149

147:                                              ; preds = %140
  %148 = load i32, i32* %8, align 4
  store i32 %148, i32* %4, align 4
  br label %166

149:                                              ; preds = %140
  %150 = load double, double* %19, align 8
  %151 = load double, double* @FLT_MAX, align 8
  %152 = fcmp ogt double %150, %151
  br i1 %152, label %157, label %153

153:                                              ; preds = %149
  %154 = load double, double* %19, align 8
  %155 = load double, double* @FLT_MIN, align 8
  %156 = fcmp olt double %154, %155
  br i1 %156, label %157, label %159

157:                                              ; preds = %153, %149
  %158 = load i32, i32* @TIFFReadDirEntryErrRange, align 4
  store i32 %158, i32* %4, align 4
  br label %166

159:                                              ; preds = %153
  %160 = load double, double* %19, align 8
  %161 = fptrunc double %160 to float
  %162 = load float*, float** %7, align 8
  store float %161, float* %162, align 4
  %163 = load i32, i32* @TIFFReadDirEntryErrOk, align 4
  store i32 %163, i32* %4, align 4
  br label %166

164:                                              ; preds = %26
  %165 = load i32, i32* @TIFFReadDirEntryErrType, align 4
  store i32 %165, i32* %4, align 4
  br label %166

166:                                              ; preds = %164, %159, %157, %147, %134, %129, %127, %115, %113, %101, %99, %87, %85, %70, %62, %54, %46, %38, %30, %24
  %167 = load i32, i32* %4, align 4
  ret i32 %167
}

declare dso_local i32 @TIFFReadDirEntryCheckedByte(i32*, %struct.TYPE_15__*, i64*) #1

declare dso_local i32 @TIFFReadDirEntryCheckedSbyte(i32*, %struct.TYPE_15__*, i64*) #1

declare dso_local i32 @TIFFReadDirEntryCheckedShort(i32*, %struct.TYPE_15__*, i64*) #1

declare dso_local i32 @TIFFReadDirEntryCheckedSshort(i32*, %struct.TYPE_15__*, i64*) #1

declare dso_local i32 @TIFFReadDirEntryCheckedLong(i32*, %struct.TYPE_15__*, i64*) #1

declare dso_local i32 @TIFFReadDirEntryCheckedSlong(i32*, %struct.TYPE_15__*, i64*) #1

declare dso_local i32 @TIFFReadDirEntryCheckedLong8(i32*, %struct.TYPE_15__*, i64*) #1

declare dso_local i32 @TIFFReadDirEntryCheckedSlong8(i32*, %struct.TYPE_15__*, i64*) #1

declare dso_local i32 @TIFFReadDirEntryCheckedRational(i32*, %struct.TYPE_15__*, double*) #1

declare dso_local i32 @TIFFReadDirEntryCheckedSrational(i32*, %struct.TYPE_15__*, double*) #1

declare dso_local i32 @TIFFReadDirEntryCheckedFloat(i32*, %struct.TYPE_15__*, float*) #1

declare dso_local i32 @TIFFReadDirEntryCheckedDouble(i32*, %struct.TYPE_15__*, double*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
