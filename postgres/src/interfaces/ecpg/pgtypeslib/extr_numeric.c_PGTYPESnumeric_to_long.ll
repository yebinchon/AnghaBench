; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/pgtypeslib/extr_numeric.c_PGTYPESnumeric_to_long.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/pgtypeslib/extr_numeric.c_PGTYPESnumeric_to_long.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i64 0, align 8
@LONG_MIN = common dso_local global i64 0, align 8
@PGTYPES_NUM_UNDERFLOW = common dso_local global i64 0, align 8
@PGTYPES_NUM_OVERFLOW = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PGTYPESnumeric_to_long(i32* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i64* %1, i64** %5, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = call i8* @PGTYPESnumeric_to_asc(i32* %8, i32 0)
  store i8* %9, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %40

13:                                               ; preds = %2
  store i64 0, i64* @errno, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = call i64 @strtol(i8* %14, i8** %7, i32 10)
  %16 = load i64*, i64** %5, align 8
  store i64 %15, i64* %16, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = icmp eq i8* %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %13
  %21 = load i8*, i8** %6, align 8
  %22 = call i32 @free(i8* %21)
  store i32 -1, i32* %3, align 4
  br label %40

23:                                               ; preds = %13
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 @free(i8* %24)
  %26 = load i64, i64* @errno, align 8
  %27 = load i64, i64* @ERANGE, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %39

29:                                               ; preds = %23
  %30 = load i64*, i64** %5, align 8
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @LONG_MIN, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i64, i64* @PGTYPES_NUM_UNDERFLOW, align 8
  store i64 %35, i64* @errno, align 8
  br label %38

36:                                               ; preds = %29
  %37 = load i64, i64* @PGTYPES_NUM_OVERFLOW, align 8
  store i64 %37, i64* @errno, align 8
  br label %38

38:                                               ; preds = %36, %34
  store i32 -1, i32* %3, align 4
  br label %40

39:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %39, %38, %20, %12
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i8* @PGTYPESnumeric_to_asc(i32*, i32) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
