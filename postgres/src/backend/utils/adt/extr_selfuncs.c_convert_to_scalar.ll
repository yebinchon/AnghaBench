; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_selfuncs.c_convert_to_scalar.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_selfuncs.c_convert_to_scalar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, double*, i32, i32, i32, double*, double*)* @convert_to_scalar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @convert_to_scalar(i32 %0, i32 %1, i32 %2, double* %3, i32 %4, i32 %5, i32 %6, double* %7, double* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca double*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca double*, align 8
  %19 = alloca double*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  store i32 %0, i32* %11, align 4
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store double* %3, double** %14, align 8
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store double* %7, double** %18, align 8
  store double* %8, double** %19, align 8
  store i32 0, i32* %20, align 4
  %24 = load i32, i32* %12, align 4
  switch i32 %24, label %118 [
    i32 161, label %25
    i32 152, label %25
    i32 151, label %25
    i32 150, label %25
    i32 155, label %25
    i32 154, label %25
    i32 145, label %25
    i32 144, label %25
    i32 136, label %25
    i32 137, label %25
    i32 138, label %25
    i32 139, label %25
    i32 143, label %25
    i32 134, label %25
    i32 142, label %25
    i32 141, label %25
    i32 135, label %25
    i32 140, label %25
    i32 158, label %42
    i32 160, label %42
    i32 128, label %42
    i32 133, label %42
    i32 146, label %42
    i32 159, label %72
    i32 131, label %84
    i32 130, label %84
    i32 156, label %84
    i32 149, label %84
    i32 132, label %84
    i32 129, label %84
    i32 153, label %101
    i32 157, label %101
    i32 147, label %101
    i32 148, label %101
  ]

25:                                               ; preds = %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* %12, align 4
  %28 = call double @convert_numeric_to_scalar(i32 %26, i32 %27, i32* %20)
  %29 = load double*, double** %14, align 8
  store double %28, double* %29, align 8
  %30 = load i32, i32* %15, align 4
  %31 = load i32, i32* %17, align 4
  %32 = call double @convert_numeric_to_scalar(i32 %30, i32 %31, i32* %20)
  %33 = load double*, double** %18, align 8
  store double %32, double* %33, align 8
  %34 = load i32, i32* %16, align 4
  %35 = load i32, i32* %17, align 4
  %36 = call double @convert_numeric_to_scalar(i32 %34, i32 %35, i32* %20)
  %37 = load double*, double** %19, align 8
  store double %36, double* %37, align 8
  %38 = load i32, i32* %20, align 4
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %10, align 4
  br label %122

42:                                               ; preds = %9, %9, %9, %9, %9
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* %13, align 4
  %46 = call i8* @convert_string_datum(i32 %43, i32 %44, i32 %45, i32* %20)
  store i8* %46, i8** %21, align 8
  %47 = load i32, i32* %15, align 4
  %48 = load i32, i32* %17, align 4
  %49 = load i32, i32* %13, align 4
  %50 = call i8* @convert_string_datum(i32 %47, i32 %48, i32 %49, i32* %20)
  store i8* %50, i8** %22, align 8
  %51 = load i32, i32* %16, align 4
  %52 = load i32, i32* %17, align 4
  %53 = load i32, i32* %13, align 4
  %54 = call i8* @convert_string_datum(i32 %51, i32 %52, i32 %53, i32* %20)
  store i8* %54, i8** %23, align 8
  %55 = load i32, i32* %20, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %42
  store i32 0, i32* %10, align 4
  br label %122

58:                                               ; preds = %42
  %59 = load i8*, i8** %21, align 8
  %60 = load double*, double** %14, align 8
  %61 = load i8*, i8** %22, align 8
  %62 = load double*, double** %18, align 8
  %63 = load i8*, i8** %23, align 8
  %64 = load double*, double** %19, align 8
  %65 = call i32 @convert_string_to_scalar(i8* %59, double* %60, i8* %61, double* %62, i8* %63, double* %64)
  %66 = load i8*, i8** %21, align 8
  %67 = call i32 @pfree(i8* %66)
  %68 = load i8*, i8** %22, align 8
  %69 = call i32 @pfree(i8* %68)
  %70 = load i8*, i8** %23, align 8
  %71 = call i32 @pfree(i8* %70)
  store i32 1, i32* %10, align 4
  br label %122

72:                                               ; preds = %9
  %73 = load i32, i32* %17, align 4
  %74 = icmp ne i32 %73, 159
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  store i32 0, i32* %10, align 4
  br label %122

76:                                               ; preds = %72
  %77 = load i32, i32* %11, align 4
  %78 = load double*, double** %14, align 8
  %79 = load i32, i32* %15, align 4
  %80 = load double*, double** %18, align 8
  %81 = load i32, i32* %16, align 4
  %82 = load double*, double** %19, align 8
  %83 = call i32 @convert_bytea_to_scalar(i32 %77, double* %78, i32 %79, double* %80, i32 %81, double* %82)
  store i32 1, i32* %10, align 4
  br label %122

84:                                               ; preds = %9, %9, %9, %9, %9, %9
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* %12, align 4
  %87 = call double @convert_timevalue_to_scalar(i32 %85, i32 %86, i32* %20)
  %88 = load double*, double** %14, align 8
  store double %87, double* %88, align 8
  %89 = load i32, i32* %15, align 4
  %90 = load i32, i32* %17, align 4
  %91 = call double @convert_timevalue_to_scalar(i32 %89, i32 %90, i32* %20)
  %92 = load double*, double** %18, align 8
  store double %91, double* %92, align 8
  %93 = load i32, i32* %16, align 4
  %94 = load i32, i32* %17, align 4
  %95 = call double @convert_timevalue_to_scalar(i32 %93, i32 %94, i32* %20)
  %96 = load double*, double** %19, align 8
  store double %95, double* %96, align 8
  %97 = load i32, i32* %20, align 4
  %98 = icmp ne i32 %97, 0
  %99 = xor i1 %98, true
  %100 = zext i1 %99 to i32
  store i32 %100, i32* %10, align 4
  br label %122

101:                                              ; preds = %9, %9, %9, %9
  %102 = load i32, i32* %11, align 4
  %103 = load i32, i32* %12, align 4
  %104 = call double @convert_network_to_scalar(i32 %102, i32 %103, i32* %20)
  %105 = load double*, double** %14, align 8
  store double %104, double* %105, align 8
  %106 = load i32, i32* %15, align 4
  %107 = load i32, i32* %17, align 4
  %108 = call double @convert_network_to_scalar(i32 %106, i32 %107, i32* %20)
  %109 = load double*, double** %18, align 8
  store double %108, double* %109, align 8
  %110 = load i32, i32* %16, align 4
  %111 = load i32, i32* %17, align 4
  %112 = call double @convert_network_to_scalar(i32 %110, i32 %111, i32* %20)
  %113 = load double*, double** %19, align 8
  store double %112, double* %113, align 8
  %114 = load i32, i32* %20, align 4
  %115 = icmp ne i32 %114, 0
  %116 = xor i1 %115, true
  %117 = zext i1 %116 to i32
  store i32 %117, i32* %10, align 4
  br label %122

118:                                              ; preds = %9
  %119 = load double*, double** %19, align 8
  store double 0.000000e+00, double* %119, align 8
  %120 = load double*, double** %18, align 8
  store double 0.000000e+00, double* %120, align 8
  %121 = load double*, double** %14, align 8
  store double 0.000000e+00, double* %121, align 8
  store i32 0, i32* %10, align 4
  br label %122

122:                                              ; preds = %118, %101, %84, %76, %75, %58, %57, %25
  %123 = load i32, i32* %10, align 4
  ret i32 %123
}

declare dso_local double @convert_numeric_to_scalar(i32, i32, i32*) #1

declare dso_local i8* @convert_string_datum(i32, i32, i32, i32*) #1

declare dso_local i32 @convert_string_to_scalar(i8*, double*, i8*, double*, i8*, double*) #1

declare dso_local i32 @pfree(i8*) #1

declare dso_local i32 @convert_bytea_to_scalar(i32, double*, i32, double*, i32, double*) #1

declare dso_local double @convert_timevalue_to_scalar(i32, i32, i32*) #1

declare dso_local double @convert_network_to_scalar(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
