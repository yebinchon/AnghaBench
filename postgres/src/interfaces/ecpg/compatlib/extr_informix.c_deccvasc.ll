; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/compatlib/extr_informix.c_deccvasc.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/compatlib/extr_informix.c_deccvasc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CDECIMALTYPE = common dso_local global i32 0, align 4
@CSTRINGTYPE = common dso_local global i32 0, align 4
@ECPG_INFORMIX_NUM_UNDERFLOW = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ECPG_INFORMIX_NUM_OVERFLOW = common dso_local global i32 0, align 4
@ECPG_INFORMIX_BAD_NUMERIC = common dso_local global i32 0, align 4
@ECPG_INFORMIX_BAD_EXPONENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @deccvasc(i8* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %9, align 4
  %12 = load i32, i32* @CDECIMALTYPE, align 4
  %13 = load i32*, i32** %7, align 8
  %14 = bitcast i32* %13 to i8*
  %15 = call i32 @rsetnull(i32 %12, i8* %14)
  %16 = load i32, i32* @CSTRINGTYPE, align 4
  %17 = load i8*, i8** %5, align 8
  %18 = call i64 @risnull(i32 %16, i8* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %59

21:                                               ; preds = %3
  %22 = load i8*, i8** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i8* @ecpg_strndup(i8* %22, i32 %23)
  store i8* %24, i8** %8, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %21
  %28 = load i32, i32* @ECPG_INFORMIX_NUM_UNDERFLOW, align 4
  store i32 %28, i32* %9, align 4
  br label %55

29:                                               ; preds = %21
  store i32 0, i32* @errno, align 4
  %30 = load i8*, i8** %8, align 8
  %31 = call i32* @PGTYPESnumeric_from_asc(i8* %30, i32* null)
  store i32* %31, i32** %10, align 8
  %32 = load i32*, i32** %10, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %43, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* @errno, align 4
  switch i32 %35, label %40 [
    i32 128, label %36
    i32 129, label %38
  ]

36:                                               ; preds = %34
  %37 = load i32, i32* @ECPG_INFORMIX_NUM_OVERFLOW, align 4
  store i32 %37, i32* %9, align 4
  br label %42

38:                                               ; preds = %34
  %39 = load i32, i32* @ECPG_INFORMIX_BAD_NUMERIC, align 4
  store i32 %39, i32* %9, align 4
  br label %42

40:                                               ; preds = %34
  %41 = load i32, i32* @ECPG_INFORMIX_BAD_EXPONENT, align 4
  store i32 %41, i32* %9, align 4
  br label %42

42:                                               ; preds = %40, %38, %36
  br label %54

43:                                               ; preds = %29
  %44 = load i32*, i32** %10, align 8
  %45 = load i32*, i32** %7, align 8
  %46 = call i32 @PGTYPESnumeric_to_decimal(i32* %44, i32* %45)
  store i32 %46, i32* %11, align 4
  %47 = load i32*, i32** %10, align 8
  %48 = call i32 @PGTYPESnumeric_free(i32* %47)
  %49 = load i32, i32* %11, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %43
  %52 = load i32, i32* @ECPG_INFORMIX_NUM_OVERFLOW, align 4
  store i32 %52, i32* %9, align 4
  br label %53

53:                                               ; preds = %51, %43
  br label %54

54:                                               ; preds = %53, %42
  br label %55

55:                                               ; preds = %54, %27
  %56 = load i8*, i8** %8, align 8
  %57 = call i32 @free(i8* %56)
  %58 = load i32, i32* %9, align 4
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %55, %20
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @rsetnull(i32, i8*) #1

declare dso_local i64 @risnull(i32, i8*) #1

declare dso_local i8* @ecpg_strndup(i8*, i32) #1

declare dso_local i32* @PGTYPESnumeric_from_asc(i8*, i32*) #1

declare dso_local i32 @PGTYPESnumeric_to_decimal(i32*, i32*) #1

declare dso_local i32 @PGTYPESnumeric_free(i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
