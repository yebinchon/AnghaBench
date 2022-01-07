; ModuleID = '/home/carl/AnghaBench/php-src/sapi/phpdbg/extr_phpdbg_watch.c_phpdbg_create_array_watchpoint.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/phpdbg/extr_phpdbg_watch.c_phpdbg_create_array_watchpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_6__*, i32*, i32, %struct.TYPE_6__* }

@IS_ARRAY = common dso_local global i64 0, align 8
@IS_OBJECT = common dso_local global i64 0, align 8
@FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%.*s[]\00", align 1
@PHPDBG_WATCH_IMPLICIT = common dso_local global i32 0, align 4
@PHPDBG_WATCH_SIMPLE = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_6__*)* @phpdbg_create_array_watchpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @phpdbg_create_array_watchpoint(i32* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %9 = load i32*, i32** %4, align 8
  store i32* %9, i32** %8, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @ZVAL_DEREF(i32* %10)
  %12 = load i32*, i32** %4, align 8
  %13 = call i64 @Z_TYPE_P(i32* %12)
  %14 = load i64, i64* @IS_ARRAY, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %2
  %17 = load i32*, i32** %4, align 8
  %18 = call i64 @Z_TYPE_P(i32* %17)
  %19 = load i64, i64* @IS_OBJECT, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i32, i32* @FAILURE, align 4
  store i32 %22, i32* %3, align 4
  br label %65

23:                                               ; preds = %16, %2
  %24 = call %struct.TYPE_6__* @ecalloc(i32 1, i32 32)
  store %struct.TYPE_6__* %24, %struct.TYPE_6__** %6, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = call i64 @ZSTR_LEN(i32* %27)
  %29 = trunc i64 %28 to i32
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @ZSTR_VAL(i32* %32)
  %34 = call i32* @strpprintf(i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %33)
  store i32* %34, i32** %7, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @zend_string_release(i32* %37)
  %39 = load i32*, i32** %7, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  store i32* %39, i32** %41, align 8
  %42 = load i32, i32* @PHPDBG_WATCH_IMPLICIT, align 4
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 8
  %45 = load i32*, i32** %8, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %47 = call i32 @phpdbg_add_bucket_watch_element(i32* %45, %struct.TYPE_6__* %46)
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 3
  store %struct.TYPE_6__* %48, %struct.TYPE_6__** %50, align 8
  %51 = load i32, i32* @PHPDBG_WATCH_SIMPLE, align 4
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 8
  %54 = load i32*, i32** %7, align 8
  %55 = call i32* @zend_string_copy(i32* %54)
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  store i32* %55, i32** %57, align 8
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  store %struct.TYPE_6__* %58, %struct.TYPE_6__** %60, align 8
  %61 = load i32*, i32** %4, align 8
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %63 = call i32 @phpdbg_add_ht_watch_element(i32* %61, %struct.TYPE_6__* %62)
  %64 = load i32, i32* @SUCCESS, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %23, %21
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @ZVAL_DEREF(i32*) #1

declare dso_local i64 @Z_TYPE_P(i32*) #1

declare dso_local %struct.TYPE_6__* @ecalloc(i32, i32) #1

declare dso_local i32* @strpprintf(i32, i8*, i32, i32) #1

declare dso_local i64 @ZSTR_LEN(i32*) #1

declare dso_local i32 @ZSTR_VAL(i32*) #1

declare dso_local i32 @zend_string_release(i32*) #1

declare dso_local i32 @phpdbg_add_bucket_watch_element(i32*, %struct.TYPE_6__*) #1

declare dso_local i32* @zend_string_copy(i32*) #1

declare dso_local i32 @phpdbg_add_ht_watch_element(i32*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
