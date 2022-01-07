; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/pgtypeslib/extr_numeric.c_numericvar_to_double.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/pgtypeslib/extr_numeric.c_numericvar_to_double.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }

@errno = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i64 0, align 8
@PGTYPES_NUM_UNDERFLOW = common dso_local global i64 0, align 8
@PGTYPES_NUM_OVERFLOW = common dso_local global i64 0, align 8
@PGTYPES_NUM_BAD_NUMERIC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, double*)* @numericvar_to_double to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @numericvar_to_double(%struct.TYPE_8__* %0, double* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca double*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca double, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store double* %1, double** %5, align 8
  %10 = call %struct.TYPE_8__* (...) @PGTYPESnumeric_new()
  store %struct.TYPE_8__* %10, %struct.TYPE_8__** %9, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %12 = icmp eq %struct.TYPE_8__* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %63

14:                                               ; preds = %2
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %17 = call i64 @PGTYPESnumeric_copy(%struct.TYPE_8__* %15, %struct.TYPE_8__* %16)
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %21 = call i32 @PGTYPESnumeric_free(%struct.TYPE_8__* %20)
  store i32 -1, i32* %3, align 4
  br label %63

22:                                               ; preds = %14
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i8* @get_str_from_var(%struct.TYPE_8__* %23, i32 %26)
  store i8* %27, i8** %6, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %29 = call i32 @PGTYPESnumeric_free(%struct.TYPE_8__* %28)
  %30 = load i8*, i8** %6, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %22
  store i32 -1, i32* %3, align 4
  br label %63

33:                                               ; preds = %22
  store i64 0, i64* @errno, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = call double @strtod(i8* %34, i8** %8)
  store double %35, double* %7, align 8
  %36 = load i64, i64* @errno, align 8
  %37 = load i64, i64* @ERANGE, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %33
  %40 = load i8*, i8** %6, align 8
  %41 = call i32 @free(i8* %40)
  %42 = load double, double* %7, align 8
  %43 = fcmp oeq double %42, 0.000000e+00
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = load i64, i64* @PGTYPES_NUM_UNDERFLOW, align 8
  store i64 %45, i64* @errno, align 8
  br label %48

46:                                               ; preds = %39
  %47 = load i64, i64* @PGTYPES_NUM_OVERFLOW, align 8
  store i64 %47, i64* @errno, align 8
  br label %48

48:                                               ; preds = %46, %44
  store i32 -1, i32* %3, align 4
  br label %63

49:                                               ; preds = %33
  %50 = load i8*, i8** %8, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load i8*, i8** %6, align 8
  %56 = call i32 @free(i8* %55)
  %57 = load i64, i64* @PGTYPES_NUM_BAD_NUMERIC, align 8
  store i64 %57, i64* @errno, align 8
  store i32 -1, i32* %3, align 4
  br label %63

58:                                               ; preds = %49
  %59 = load i8*, i8** %6, align 8
  %60 = call i32 @free(i8* %59)
  %61 = load double, double* %7, align 8
  %62 = load double*, double** %5, align 8
  store double %61, double* %62, align 8
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %58, %54, %48, %32, %19, %13
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local %struct.TYPE_8__* @PGTYPESnumeric_new(...) #1

declare dso_local i64 @PGTYPESnumeric_copy(%struct.TYPE_8__*, %struct.TYPE_8__*) #1

declare dso_local i32 @PGTYPESnumeric_free(%struct.TYPE_8__*) #1

declare dso_local i8* @get_str_from_var(%struct.TYPE_8__*, i32) #1

declare dso_local double @strtod(i8*, i8**) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
