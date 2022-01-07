; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_dirwrite.c_TIFFWriteDirectoryTagCheckedRational.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_dirwrite.c_TIFFWriteDirectoryTagCheckedRational.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@TIFFWriteDirectoryTagCheckedRational.module = internal constant [37 x i8] c"TIFFWriteDirectoryTagCheckedRational\00", align 16
@.str = private unnamed_addr constant [26 x i8] c"Negative value is illegal\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Not-a-number value is illegal\00", align 1
@TIFF_SWAB = common dso_local global i32 0, align 4
@TIFF_RATIONAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32*, i32*, i32, double)* @TIFFWriteDirectoryTagCheckedRational to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TIFFWriteDirectoryTagCheckedRational(%struct.TYPE_4__* %0, i32* %1, i32* %2, i32 %3, double %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca [2 x i32], align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store double %4, double* %11, align 8
  %13 = call i32 @assert(i32 1)
  %14 = load double, double* %11, align 8
  %15 = fcmp olt double %14, 0.000000e+00
  br i1 %15, label %16, label %21

16:                                               ; preds = %5
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @TIFFErrorExt(i32 %19, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @TIFFWriteDirectoryTagCheckedRational.module, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %89

21:                                               ; preds = %5
  %22 = load double, double* %11, align 8
  %23 = load double, double* %11, align 8
  %24 = fcmp une double %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @TIFFErrorExt(i32 %28, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @TIFFWriteDirectoryTagCheckedRational.module, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %89

30:                                               ; preds = %21
  %31 = load double, double* %11, align 8
  %32 = fcmp oeq double %31, 0.000000e+00
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  store i32 0, i32* %34, align 4
  %35 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  store i32 1, i32* %35, align 4
  br label %67

36:                                               ; preds = %30
  %37 = load double, double* %11, align 8
  %38 = fcmp ole double %37, 0x41EFFFFFFFE00000
  br i1 %38, label %39, label %50

39:                                               ; preds = %36
  %40 = load double, double* %11, align 8
  %41 = load double, double* %11, align 8
  %42 = fptosi double %41 to i32
  %43 = sitofp i32 %42 to double
  %44 = fcmp oeq double %40, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %39
  %46 = load double, double* %11, align 8
  %47 = fptosi double %46 to i32
  %48 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  store i32 %47, i32* %48, align 4
  %49 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  store i32 1, i32* %49, align 4
  br label %66

50:                                               ; preds = %39, %36
  %51 = load double, double* %11, align 8
  %52 = fcmp olt double %51, 1.000000e+00
  br i1 %52, label %53, label %59

53:                                               ; preds = %50
  %54 = load double, double* %11, align 8
  %55 = fmul double %54, 0x41EFFFFFFFE00000
  %56 = fptosi double %55 to i32
  %57 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  store i32 %56, i32* %57, align 4
  %58 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  store i32 -1, i32* %58, align 4
  br label %65

59:                                               ; preds = %50
  %60 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  store i32 -1, i32* %60, align 4
  %61 = load double, double* %11, align 8
  %62 = fdiv double 0x41EFFFFFFFE00000, %61
  %63 = fptosi double %62 to i32
  %64 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  store i32 %63, i32* %64, align 4
  br label %65

65:                                               ; preds = %59, %53
  br label %66

66:                                               ; preds = %65, %45
  br label %67

67:                                               ; preds = %66, %33
  br label %68

68:                                               ; preds = %67
  br label %69

69:                                               ; preds = %68
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @TIFF_SWAB, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %69
  %77 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %78 = call i32 @TIFFSwabLong(i32* %77)
  %79 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %80 = call i32 @TIFFSwabLong(i32* %79)
  br label %81

81:                                               ; preds = %76, %69
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %83 = load i32*, i32** %8, align 8
  %84 = load i32*, i32** %9, align 8
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* @TIFF_RATIONAL, align 4
  %87 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %88 = call i32 @TIFFWriteDirectoryTagData(%struct.TYPE_4__* %82, i32* %83, i32* %84, i32 %85, i32 %86, i32 1, i32 8, i32* %87)
  store i32 %88, i32* %6, align 4
  br label %89

89:                                               ; preds = %81, %25, %16
  %90 = load i32, i32* %6, align 4
  ret i32 %90
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @TIFFErrorExt(i32, i8*, i8*) #1

declare dso_local i32 @TIFFSwabLong(i32*) #1

declare dso_local i32 @TIFFWriteDirectoryTagData(%struct.TYPE_4__*, i32*, i32*, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
