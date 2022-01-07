; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/ecpglib/extr_descriptor.c_get_int_item.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/ecpglib/extr_descriptor.c_get_int_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ECPG_VAR_NOT_NUMERIC = common dso_local global i32 0, align 4
@ECPG_SQLSTATE_RESTRICTED_DATA_TYPE_ATTRIBUTE_VIOLATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i32)* @get_int_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_int_item(i32 %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %8, align 4
  switch i32 %10, label %59 [
    i32 132, label %11
    i32 135, label %16
    i32 134, label %20
    i32 128, label %25
    i32 131, label %30
    i32 130, label %34
    i32 133, label %39
    i32 129, label %44
    i32 136, label %49
    i32 137, label %54
  ]

11:                                               ; preds = %4
  %12 = load i32, i32* %9, align 4
  %13 = trunc i32 %12 to i16
  %14 = load i8*, i8** %7, align 8
  %15 = bitcast i8* %14 to i16*
  store i16 %13, i16* %15, align 2
  br label %64

16:                                               ; preds = %4
  %17 = load i32, i32* %9, align 4
  %18 = load i8*, i8** %7, align 8
  %19 = bitcast i8* %18 to i32*
  store i32 %17, i32* %19, align 4
  br label %64

20:                                               ; preds = %4
  %21 = load i32, i32* %9, align 4
  %22 = sext i32 %21 to i64
  %23 = load i8*, i8** %7, align 8
  %24 = bitcast i8* %23 to i64*
  store i64 %22, i64* %24, align 8
  br label %64

25:                                               ; preds = %4
  %26 = load i32, i32* %9, align 4
  %27 = trunc i32 %26 to i16
  %28 = load i8*, i8** %7, align 8
  %29 = bitcast i8* %28 to i16*
  store i16 %27, i16* %29, align 2
  br label %64

30:                                               ; preds = %4
  %31 = load i32, i32* %9, align 4
  %32 = load i8*, i8** %7, align 8
  %33 = bitcast i8* %32 to i32*
  store i32 %31, i32* %33, align 4
  br label %64

34:                                               ; preds = %4
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = load i8*, i8** %7, align 8
  %38 = bitcast i8* %37 to i64*
  store i64 %36, i64* %38, align 8
  br label %64

39:                                               ; preds = %4
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = load i8*, i8** %7, align 8
  %43 = bitcast i8* %42 to i64*
  store i64 %41, i64* %43, align 8
  br label %64

44:                                               ; preds = %4
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = load i8*, i8** %7, align 8
  %48 = bitcast i8* %47 to i64*
  store i64 %46, i64* %48, align 8
  br label %64

49:                                               ; preds = %4
  %50 = load i32, i32* %9, align 4
  %51 = sitofp i32 %50 to float
  %52 = load i8*, i8** %7, align 8
  %53 = bitcast i8* %52 to float*
  store float %51, float* %53, align 4
  br label %64

54:                                               ; preds = %4
  %55 = load i32, i32* %9, align 4
  %56 = sitofp i32 %55 to double
  %57 = load i8*, i8** %7, align 8
  %58 = bitcast i8* %57 to double*
  store double %56, double* %58, align 8
  br label %64

59:                                               ; preds = %4
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @ECPG_VAR_NOT_NUMERIC, align 4
  %62 = load i32, i32* @ECPG_SQLSTATE_RESTRICTED_DATA_TYPE_ATTRIBUTE_VIOLATION, align 4
  %63 = call i32 @ecpg_raise(i32 %60, i32 %61, i32 %62, i32* null)
  store i32 0, i32* %5, align 4
  br label %65

64:                                               ; preds = %54, %49, %44, %39, %34, %30, %25, %20, %16, %11
  store i32 1, i32* %5, align 4
  br label %65

65:                                               ; preds = %64, %59
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local i32 @ecpg_raise(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
