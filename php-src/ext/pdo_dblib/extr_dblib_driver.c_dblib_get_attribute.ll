; ModuleID = '/home/carl/AnghaBench/php-src/ext/pdo_dblib/extr_dblib_driver.c_dblib_get_attribute.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pdo_dblib/extr_dblib_driver.c_dblib_get_attribute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }

@PDO_PARAM_STR_NATL = common dso_local global i32 0, align 4
@PDO_PARAM_STR_CHAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32, i32*)* @dblib_get_attribute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dblib_get_attribute(%struct.TYPE_5__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %12, %struct.TYPE_4__** %8, align 8
  %13 = load i32, i32* %6, align 4
  switch i32 %13, label %59 [
    i32 134, label %14
    i32 133, label %27
    i32 130, label %30
    i32 128, label %36
    i32 129, label %40
    i32 131, label %47
    i32 132, label %53
  ]

14:                                               ; preds = %3
  %15 = load i32*, i32** %7, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load i32, i32* @PDO_PARAM_STR_NATL, align 4
  br label %24

22:                                               ; preds = %14
  %23 = load i32, i32* @PDO_PARAM_STR_CHAR, align 4
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %21, %20 ], [ %23, %22 ]
  %26 = call i32 @ZVAL_LONG(i32* %15, i32 %25)
  br label %60

27:                                               ; preds = %3
  %28 = load i32*, i32** %7, align 8
  %29 = call i32 @ZVAL_TRUE(i32* %28)
  br label %60

30:                                               ; preds = %3
  %31 = load i32*, i32** %7, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @ZVAL_BOOL(i32* %31, i32 %34)
  br label %60

36:                                               ; preds = %3
  %37 = load i32*, i32** %7, align 8
  %38 = call i32 (...) @dbversion()
  %39 = call i32 @ZVAL_STRING(i32* %37, i32 %38)
  br label %60

40:                                               ; preds = %3
  %41 = load i32*, i32** %7, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @dbtds(i32 %44)
  %46 = call i32 @dblib_get_tds_version(i32* %41, i32 %45)
  br label %60

47:                                               ; preds = %3
  %48 = load i32*, i32** %7, align 8
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @ZVAL_BOOL(i32* %48, i32 %51)
  br label %60

53:                                               ; preds = %3
  %54 = load i32*, i32** %7, align 8
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @ZVAL_BOOL(i32* %54, i32 %57)
  br label %60

59:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %61

60:                                               ; preds = %53, %47, %40, %36, %30, %27, %24
  store i32 1, i32* %4, align 4
  br label %61

61:                                               ; preds = %60, %59
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i32 @ZVAL_LONG(i32*, i32) #1

declare dso_local i32 @ZVAL_TRUE(i32*) #1

declare dso_local i32 @ZVAL_BOOL(i32*, i32) #1

declare dso_local i32 @ZVAL_STRING(i32*, i32) #1

declare dso_local i32 @dbversion(...) #1

declare dso_local i32 @dblib_get_tds_version(i32*, i32) #1

declare dso_local i32 @dbtds(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
