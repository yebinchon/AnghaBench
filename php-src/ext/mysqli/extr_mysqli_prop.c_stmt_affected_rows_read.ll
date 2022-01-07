; ModuleID = '/home/carl/AnghaBench/php-src/ext/mysqli/extr_mysqli_prop.c_stmt_affected_rows_read.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mysqli/extr_mysqli_prop.c_stmt_affected_rows_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i64 }

@MYSQLI_STATUS_VALID = common dso_local global i32 0, align 4
@ZEND_LONG_MAX = common dso_local global i64 0, align 8
@MYSQLI_LLU_SPEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_5__*, i32*)* @stmt_affected_rows_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @stmt_affected_rows_read(%struct.TYPE_5__* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32, i32* @MYSQLI_STATUS_VALID, align 4
  %9 = call i32 @CHECK_STATUS(i32 %8)
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.TYPE_7__*
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %16, %struct.TYPE_6__** %6, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %18 = icmp ne %struct.TYPE_6__* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @ZVAL_NULL(i32* %20)
  br label %49

22:                                               ; preds = %2
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @mysql_stmt_affected_rows(i32 %25)
  store i64 %26, i64* %7, align 8
  %27 = load i64, i64* %7, align 8
  %28 = icmp eq i64 %27, -1
  br i1 %28, label %29, label %33

29:                                               ; preds = %22
  %30 = load i32*, i32** %5, align 8
  %31 = call i32 @ZVAL_LONG(i32* %30, i32 -1)
  %32 = load i32*, i32** %5, align 8
  store i32* %32, i32** %3, align 8
  br label %51

33:                                               ; preds = %22
  %34 = load i64, i64* %7, align 8
  %35 = load i64, i64* @ZEND_LONG_MAX, align 8
  %36 = icmp slt i64 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = load i32*, i32** %5, align 8
  %39 = load i64, i64* %7, align 8
  %40 = trunc i64 %39 to i32
  %41 = call i32 @ZVAL_LONG(i32* %38, i32 %40)
  br label %48

42:                                               ; preds = %33
  %43 = load i32*, i32** %5, align 8
  %44 = load i32, i32* @MYSQLI_LLU_SPEC, align 4
  %45 = load i64, i64* %7, align 8
  %46 = call i32 @strpprintf(i32 0, i32 %44, i64 %45)
  %47 = call i32 @ZVAL_NEW_STR(i32* %43, i32 %46)
  br label %48

48:                                               ; preds = %42, %37
  br label %49

49:                                               ; preds = %48, %19
  %50 = load i32*, i32** %5, align 8
  store i32* %50, i32** %3, align 8
  br label %51

51:                                               ; preds = %49, %29
  %52 = load i32*, i32** %3, align 8
  ret i32* %52
}

declare dso_local i32 @CHECK_STATUS(i32) #1

declare dso_local i32 @ZVAL_NULL(i32*) #1

declare dso_local i64 @mysql_stmt_affected_rows(i32) #1

declare dso_local i32 @ZVAL_LONG(i32*, i32) #1

declare dso_local i32 @ZVAL_NEW_STR(i32*, i32) #1

declare dso_local i32 @strpprintf(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
