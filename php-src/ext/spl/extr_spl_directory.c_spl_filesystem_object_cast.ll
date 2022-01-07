; ModuleID = '/home/carl/AnghaBench/php-src/ext/spl/extr_spl_directory.c_spl_filesystem_object_cast.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/spl/extr_spl_directory.c_spl_filesystem_object_cast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_14__, i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }

@IS_STRING = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@_IS_BOOL = common dso_local global i32 0, align 4
@FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i32*, i32)* @spl_filesystem_object_cast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spl_filesystem_object_cast(%struct.TYPE_15__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %10 = call %struct.TYPE_16__* @spl_filesystem_from_obj(%struct.TYPE_15__* %9)
  store %struct.TYPE_16__* %10, %struct.TYPE_16__** %8, align 8
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @IS_STRING, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %51

14:                                               ; preds = %3
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %14
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @zend_std_cast_object_tostring(%struct.TYPE_15__* %22, i32* %23, i32 %24)
  store i32 %25, i32* %4, align 4
  br label %64

26:                                               ; preds = %14
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %50 [
    i32 128, label %30
    i32 129, label %30
    i32 130, label %40
  ]

30:                                               ; preds = %26, %26
  %31 = load i32*, i32** %6, align 8
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @ZVAL_STRINGL(i32* %31, i32 %34, i32 %37)
  %39 = load i32, i32* @SUCCESS, align 4
  store i32 %39, i32* %4, align 4
  br label %64

40:                                               ; preds = %26
  %41 = load i32*, i32** %6, align 8
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @ZVAL_STRING(i32* %41, i32 %47)
  %49 = load i32, i32* @SUCCESS, align 4
  store i32 %49, i32* %4, align 4
  br label %64

50:                                               ; preds = %26
  br label %60

51:                                               ; preds = %3
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @_IS_BOOL, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = load i32*, i32** %6, align 8
  %57 = call i32 @ZVAL_TRUE(i32* %56)
  %58 = load i32, i32* @SUCCESS, align 4
  store i32 %58, i32* %4, align 4
  br label %64

59:                                               ; preds = %51
  br label %60

60:                                               ; preds = %59, %50
  %61 = load i32*, i32** %6, align 8
  %62 = call i32 @ZVAL_NULL(i32* %61)
  %63 = load i32, i32* @FAILURE, align 4
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %60, %55, %40, %30, %21
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local %struct.TYPE_16__* @spl_filesystem_from_obj(%struct.TYPE_15__*) #1

declare dso_local i32 @zend_std_cast_object_tostring(%struct.TYPE_15__*, i32*, i32) #1

declare dso_local i32 @ZVAL_STRINGL(i32*, i32, i32) #1

declare dso_local i32 @ZVAL_STRING(i32*, i32) #1

declare dso_local i32 @ZVAL_TRUE(i32*) #1

declare dso_local i32 @ZVAL_NULL(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
