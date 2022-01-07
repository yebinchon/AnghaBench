; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_dirread.c_TIFFReadDirEntryDouble.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_dirread.c_TIFFReadDirEntryDouble.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32 }

@TIFFReadDirEntryErrCount = common dso_local global i32 0, align 4
@TIFFReadDirEntryErrOk = common dso_local global i32 0, align 4
@TIFFReadDirEntryErrType = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_15__*, double*)* @TIFFReadDirEntryDouble to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TIFFReadDirEntryDouble(i32* %0, %struct.TYPE_15__* %1, double* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca double*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca float, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %6, align 8
  store double* %2, double** %7, align 8
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 1
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* @TIFFReadDirEntryErrCount, align 4
  store i32 %23, i32* %4, align 4
  br label %132

24:                                               ; preds = %3
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %130 [
    i32 139, label %28
    i32 133, label %36
    i32 132, label %44
    i32 128, label %52
    i32 136, label %60
    i32 131, label %68
    i32 135, label %76
    i32 130, label %90
    i32 134, label %104
    i32 129, label %110
    i32 137, label %116
    i32 138, label %124
  ]

28:                                               ; preds = %24
  %29 = load i32*, i32** %5, align 8
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %31 = call i32 @TIFFReadDirEntryCheckedByte(i32* %29, %struct.TYPE_15__* %30, i64* %9)
  %32 = load i64, i64* %9, align 8
  %33 = sitofp i64 %32 to double
  %34 = load double*, double** %7, align 8
  store double %33, double* %34, align 8
  %35 = load i32, i32* @TIFFReadDirEntryErrOk, align 4
  store i32 %35, i32* %4, align 4
  br label %132

36:                                               ; preds = %24
  %37 = load i32*, i32** %5, align 8
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %39 = call i32 @TIFFReadDirEntryCheckedSbyte(i32* %37, %struct.TYPE_15__* %38, i64* %10)
  %40 = load i64, i64* %10, align 8
  %41 = sitofp i64 %40 to double
  %42 = load double*, double** %7, align 8
  store double %41, double* %42, align 8
  %43 = load i32, i32* @TIFFReadDirEntryErrOk, align 4
  store i32 %43, i32* %4, align 4
  br label %132

44:                                               ; preds = %24
  %45 = load i32*, i32** %5, align 8
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %47 = call i32 @TIFFReadDirEntryCheckedShort(i32* %45, %struct.TYPE_15__* %46, i64* %11)
  %48 = load i64, i64* %11, align 8
  %49 = sitofp i64 %48 to double
  %50 = load double*, double** %7, align 8
  store double %49, double* %50, align 8
  %51 = load i32, i32* @TIFFReadDirEntryErrOk, align 4
  store i32 %51, i32* %4, align 4
  br label %132

52:                                               ; preds = %24
  %53 = load i32*, i32** %5, align 8
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %55 = call i32 @TIFFReadDirEntryCheckedSshort(i32* %53, %struct.TYPE_15__* %54, i64* %12)
  %56 = load i64, i64* %12, align 8
  %57 = sitofp i64 %56 to double
  %58 = load double*, double** %7, align 8
  store double %57, double* %58, align 8
  %59 = load i32, i32* @TIFFReadDirEntryErrOk, align 4
  store i32 %59, i32* %4, align 4
  br label %132

60:                                               ; preds = %24
  %61 = load i32*, i32** %5, align 8
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %63 = call i32 @TIFFReadDirEntryCheckedLong(i32* %61, %struct.TYPE_15__* %62, i64* %13)
  %64 = load i64, i64* %13, align 8
  %65 = sitofp i64 %64 to double
  %66 = load double*, double** %7, align 8
  store double %65, double* %66, align 8
  %67 = load i32, i32* @TIFFReadDirEntryErrOk, align 4
  store i32 %67, i32* %4, align 4
  br label %132

68:                                               ; preds = %24
  %69 = load i32*, i32** %5, align 8
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %71 = call i32 @TIFFReadDirEntryCheckedSlong(i32* %69, %struct.TYPE_15__* %70, i64* %14)
  %72 = load i64, i64* %14, align 8
  %73 = sitofp i64 %72 to double
  %74 = load double*, double** %7, align 8
  store double %73, double* %74, align 8
  %75 = load i32, i32* @TIFFReadDirEntryErrOk, align 4
  store i32 %75, i32* %4, align 4
  br label %132

76:                                               ; preds = %24
  %77 = load i32*, i32** %5, align 8
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %79 = call i32 @TIFFReadDirEntryCheckedLong8(i32* %77, %struct.TYPE_15__* %78, i64* %15)
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* @TIFFReadDirEntryErrOk, align 4
  %82 = icmp ne i32 %80, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %76
  %84 = load i32, i32* %8, align 4
  store i32 %84, i32* %4, align 4
  br label %132

85:                                               ; preds = %76
  %86 = load i64, i64* %15, align 8
  %87 = sitofp i64 %86 to double
  %88 = load double*, double** %7, align 8
  store double %87, double* %88, align 8
  %89 = load i32, i32* @TIFFReadDirEntryErrOk, align 4
  store i32 %89, i32* %4, align 4
  br label %132

90:                                               ; preds = %24
  %91 = load i32*, i32** %5, align 8
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %93 = call i32 @TIFFReadDirEntryCheckedSlong8(i32* %91, %struct.TYPE_15__* %92, i64* %16)
  store i32 %93, i32* %8, align 4
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* @TIFFReadDirEntryErrOk, align 4
  %96 = icmp ne i32 %94, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %90
  %98 = load i32, i32* %8, align 4
  store i32 %98, i32* %4, align 4
  br label %132

99:                                               ; preds = %90
  %100 = load i64, i64* %16, align 8
  %101 = sitofp i64 %100 to double
  %102 = load double*, double** %7, align 8
  store double %101, double* %102, align 8
  %103 = load i32, i32* @TIFFReadDirEntryErrOk, align 4
  store i32 %103, i32* %4, align 4
  br label %132

104:                                              ; preds = %24
  %105 = load i32*, i32** %5, align 8
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %107 = load double*, double** %7, align 8
  %108 = call i32 @TIFFReadDirEntryCheckedRational(i32* %105, %struct.TYPE_15__* %106, double* %107)
  store i32 %108, i32* %8, align 4
  %109 = load i32, i32* %8, align 4
  store i32 %109, i32* %4, align 4
  br label %132

110:                                              ; preds = %24
  %111 = load i32*, i32** %5, align 8
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %113 = load double*, double** %7, align 8
  %114 = call i32 @TIFFReadDirEntryCheckedSrational(i32* %111, %struct.TYPE_15__* %112, double* %113)
  store i32 %114, i32* %8, align 4
  %115 = load i32, i32* %8, align 4
  store i32 %115, i32* %4, align 4
  br label %132

116:                                              ; preds = %24
  %117 = load i32*, i32** %5, align 8
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %119 = call i32 @TIFFReadDirEntryCheckedFloat(i32* %117, %struct.TYPE_15__* %118, float* %17)
  %120 = load float, float* %17, align 4
  %121 = fpext float %120 to double
  %122 = load double*, double** %7, align 8
  store double %121, double* %122, align 8
  %123 = load i32, i32* @TIFFReadDirEntryErrOk, align 4
  store i32 %123, i32* %4, align 4
  br label %132

124:                                              ; preds = %24
  %125 = load i32*, i32** %5, align 8
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %127 = load double*, double** %7, align 8
  %128 = call i32 @TIFFReadDirEntryCheckedDouble(i32* %125, %struct.TYPE_15__* %126, double* %127)
  store i32 %128, i32* %8, align 4
  %129 = load i32, i32* %8, align 4
  store i32 %129, i32* %4, align 4
  br label %132

130:                                              ; preds = %24
  %131 = load i32, i32* @TIFFReadDirEntryErrType, align 4
  store i32 %131, i32* %4, align 4
  br label %132

132:                                              ; preds = %130, %124, %116, %110, %104, %99, %97, %85, %83, %68, %60, %52, %44, %36, %28, %22
  %133 = load i32, i32* %4, align 4
  ret i32 %133
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
