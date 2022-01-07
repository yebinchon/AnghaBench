; ModuleID = '/home/carl/AnghaBench/php-src/ext/sqlite3/extr_sqlite3.c_sqlite_value_to_zval.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/sqlite3/extr_sqlite3.c_sqlite_value_to_zval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZEND_LONG_MAX = common dso_local global i32 0, align 4
@ZEND_LONG_MIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*)* @sqlite_value_to_zval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sqlite_value_to_zval(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @sqlite3_column_type(i32* %8, i32 %9)
  switch i32 %10, label %54 [
    i32 129, label %11
    i32 130, label %37
    i32 128, label %43
    i32 132, label %46
    i32 131, label %53
  ]

11:                                               ; preds = %3
  %12 = load i32*, i32** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @sqlite3_column_int64(i32* %12, i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @ZEND_LONG_MAX, align 4
  %17 = icmp sgt i32 %15, %16
  br i1 %17, label %22, label %18

18:                                               ; preds = %11
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @ZEND_LONG_MIN, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %32

22:                                               ; preds = %18, %11
  %23 = load i32*, i32** %6, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i64 @sqlite3_column_text(i32* %24, i32 %25)
  %27 = inttoptr i64 %26 to i8*
  %28 = load i32*, i32** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @sqlite3_column_bytes(i32* %28, i32 %29)
  %31 = call i32 @ZVAL_STRINGL(i32* %23, i8* %27, i32 %30)
  br label %36

32:                                               ; preds = %18
  %33 = load i32*, i32** %6, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @ZVAL_LONG(i32* %33, i32 %34)
  br label %36

36:                                               ; preds = %32, %22
  br label %64

37:                                               ; preds = %3
  %38 = load i32*, i32** %6, align 8
  %39 = load i32*, i32** %4, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @sqlite3_column_double(i32* %39, i32 %40)
  %42 = call i32 @ZVAL_DOUBLE(i32* %38, i32 %41)
  br label %64

43:                                               ; preds = %3
  %44 = load i32*, i32** %6, align 8
  %45 = call i32 @ZVAL_NULL(i32* %44)
  br label %64

46:                                               ; preds = %3
  %47 = load i32*, i32** %6, align 8
  %48 = load i32*, i32** %4, align 8
  %49 = load i32, i32* %5, align 4
  %50 = call i64 @sqlite3_column_text(i32* %48, i32 %49)
  %51 = inttoptr i64 %50 to i8*
  %52 = call i32 @ZVAL_STRING(i32* %47, i8* %51)
  br label %64

53:                                               ; preds = %3
  br label %54

54:                                               ; preds = %3, %53
  %55 = load i32*, i32** %6, align 8
  %56 = load i32*, i32** %4, align 8
  %57 = load i32, i32* %5, align 4
  %58 = call i64 @sqlite3_column_blob(i32* %56, i32 %57)
  %59 = inttoptr i64 %58 to i8*
  %60 = load i32*, i32** %4, align 8
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @sqlite3_column_bytes(i32* %60, i32 %61)
  %63 = call i32 @ZVAL_STRINGL(i32* %55, i8* %59, i32 %62)
  br label %64

64:                                               ; preds = %54, %46, %43, %37, %36
  ret void
}

declare dso_local i32 @sqlite3_column_type(i32*, i32) #1

declare dso_local i32 @sqlite3_column_int64(i32*, i32) #1

declare dso_local i32 @ZVAL_STRINGL(i32*, i8*, i32) #1

declare dso_local i64 @sqlite3_column_text(i32*, i32) #1

declare dso_local i32 @sqlite3_column_bytes(i32*, i32) #1

declare dso_local i32 @ZVAL_LONG(i32*, i32) #1

declare dso_local i32 @ZVAL_DOUBLE(i32*, i32) #1

declare dso_local i32 @sqlite3_column_double(i32*, i32) #1

declare dso_local i32 @ZVAL_NULL(i32*) #1

declare dso_local i32 @ZVAL_STRING(i32*, i8*) #1

declare dso_local i64 @sqlite3_column_blob(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
