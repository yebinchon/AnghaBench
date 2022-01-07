; ModuleID = '/home/carl/AnghaBench/php-src/ext/soap/extr_php_encoding.c_to_zval_long.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/soap/extr_php_encoding.c_to_zval_long.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i64, i32* }

@XML_TEXT_NODE = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@E_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Encoding: Violation of encoding rules\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32, %struct.TYPE_6__*)* @to_zval_long to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @to_zval_long(i32* %0, i32 %1, %struct.TYPE_6__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %6, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = call i32 @ZVAL_NULL(i32* %9)
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @FIND_XML_NULL(%struct.TYPE_6__* %11, i32* %12)
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %15 = icmp ne %struct.TYPE_6__* %14, null
  br i1 %15, label %16, label %73

16:                                               ; preds = %3
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = icmp ne %struct.TYPE_5__* %19, null
  br i1 %20, label %21, label %73

21:                                               ; preds = %16
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @XML_TEXT_NODE, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %69

29:                                               ; preds = %21
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %69

36:                                               ; preds = %29
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @whiteSpace_collapse(i64 %41)
  store i64 0, i64* @errno, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = inttoptr i64 %47 to i8*
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to i8*
  %55 = call i32 @strlen(i8* %54)
  %56 = call i32 @is_numeric_string(i8* %48, i32 %55, i32* %7, double* %8, i32 0)
  switch i32 %56, label %65 [
    i32 128, label %57
    i32 129, label %61
  ]

57:                                               ; preds = %36
  %58 = load i32*, i32** %4, align 8
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @ZVAL_LONG(i32* %58, i32 %59)
  br label %68

61:                                               ; preds = %36
  %62 = load i32*, i32** %4, align 8
  %63 = load double, double* %8, align 8
  %64 = call i32 @ZVAL_DOUBLE(i32* %62, double %63)
  br label %68

65:                                               ; preds = %36
  %66 = load i32, i32* @E_ERROR, align 4
  %67 = call i32 @soap_error0(i32 %66, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %68

68:                                               ; preds = %65, %61, %57
  br label %72

69:                                               ; preds = %29, %21
  %70 = load i32, i32* @E_ERROR, align 4
  %71 = call i32 @soap_error0(i32 %70, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %72

72:                                               ; preds = %69, %68
  br label %76

73:                                               ; preds = %16, %3
  %74 = load i32*, i32** %4, align 8
  %75 = call i32 @ZVAL_NULL(i32* %74)
  br label %76

76:                                               ; preds = %73, %72
  %77 = load i32*, i32** %4, align 8
  ret i32* %77
}

declare dso_local i32 @ZVAL_NULL(i32*) #1

declare dso_local i32 @FIND_XML_NULL(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @whiteSpace_collapse(i64) #1

declare dso_local i32 @is_numeric_string(i8*, i32, i32*, double*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @ZVAL_LONG(i32*, i32) #1

declare dso_local i32 @ZVAL_DOUBLE(i32*, double) #1

declare dso_local i32 @soap_error0(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
