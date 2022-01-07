; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/compatlib/extr_informix.c_deccvdbl.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/compatlib/extr_informix.c_deccvdbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CDECIMALTYPE = common dso_local global i32 0, align 4
@CDOUBLETYPE = common dso_local global i32 0, align 4
@ECPG_INFORMIX_OUT_OF_MEMORY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @deccvdbl(double %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store double %0, double* %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 1, i32* %7, align 4
  %8 = load i32, i32* @CDECIMALTYPE, align 4
  %9 = load i32*, i32** %5, align 8
  %10 = bitcast i32* %9 to i8*
  %11 = call i32 @rsetnull(i32 %8, i8* %10)
  %12 = load i32, i32* @CDOUBLETYPE, align 4
  %13 = bitcast double* %4 to i8*
  %14 = call i64 @risnull(i32 %12, i8* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %37

17:                                               ; preds = %2
  %18 = call i32* (...) @PGTYPESnumeric_new()
  store i32* %18, i32** %6, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i32, i32* @ECPG_INFORMIX_OUT_OF_MEMORY, align 4
  store i32 %22, i32* %3, align 4
  br label %37

23:                                               ; preds = %17
  %24 = load double, double* %4, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = call i32 @PGTYPESnumeric_from_double(double %24, i32* %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = load i32*, i32** %6, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = call i32 @PGTYPESnumeric_to_decimal(i32* %30, i32* %31)
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %29, %23
  %34 = load i32*, i32** %6, align 8
  %35 = call i32 @PGTYPESnumeric_free(i32* %34)
  %36 = load i32, i32* %7, align 4
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %33, %21, %16
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @rsetnull(i32, i8*) #1

declare dso_local i64 @risnull(i32, i8*) #1

declare dso_local i32* @PGTYPESnumeric_new(...) #1

declare dso_local i32 @PGTYPESnumeric_from_double(double, i32*) #1

declare dso_local i32 @PGTYPESnumeric_to_decimal(i32*, i32*) #1

declare dso_local i32 @PGTYPESnumeric_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
