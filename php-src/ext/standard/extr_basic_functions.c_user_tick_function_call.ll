; ModuleID = '/home/carl/AnghaBench/php-src/ext/standard/extr_basic_functions.c_user_tick_function_call.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/standard/extr_basic_functions.c_user_tick_function_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32*, i64 }
%struct.TYPE_5__ = type { i32 }

@SUCCESS = common dso_local global i64 0, align 8
@IS_STRING = common dso_local global i64 0, align 8
@E_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Unable to call %s() - function does not exist\00", align 1
@IS_ARRAY = common dso_local global i64 0, align 8
@IS_OBJECT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [50 x i8] c"Unable to call %s::%s() - function does not exist\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Unable to call tick function\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*)* @user_tick_function_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @user_tick_function_call(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %9 = load i32*, i32** %8, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  store i32* %10, i32** %4, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %85, label %15

15:                                               ; preds = %1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store i32 1, i32* %17, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = sub nsw i64 %21, 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = call i64 @call_user_function(i32* null, i32* null, i32* %18, i32* %3, i64 %22, i32* %26)
  %28 = load i64, i64* @SUCCESS, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %15
  %31 = call i32 @zval_ptr_dtor(i32* %3)
  br label %82

32:                                               ; preds = %15
  %33 = load i32*, i32** %4, align 8
  %34 = call i64 @Z_TYPE_P(i32* %33)
  %35 = load i64, i64* @IS_STRING, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load i32, i32* @E_WARNING, align 4
  %39 = load i32*, i32** %4, align 8
  %40 = call i32 @Z_STRVAL_P(i32* %39)
  %41 = call i32 (i32*, i32, i8*, ...) @php_error_docref(i32* null, i32 %38, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %40)
  br label %81

42:                                               ; preds = %32
  %43 = load i32*, i32** %4, align 8
  %44 = call i64 @Z_TYPE_P(i32* %43)
  %45 = load i64, i64* @IS_ARRAY, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %77

47:                                               ; preds = %42
  %48 = load i32*, i32** %4, align 8
  %49 = call i32 @Z_ARRVAL_P(i32* %48)
  %50 = call i32* @zend_hash_index_find(i32 %49, i32 0)
  store i32* %50, i32** %5, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %77

52:                                               ; preds = %47
  %53 = load i32*, i32** %4, align 8
  %54 = call i32 @Z_ARRVAL_P(i32* %53)
  %55 = call i32* @zend_hash_index_find(i32 %54, i32 1)
  store i32* %55, i32** %6, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %77

57:                                               ; preds = %52
  %58 = load i32*, i32** %5, align 8
  %59 = call i64 @Z_TYPE_P(i32* %58)
  %60 = load i64, i64* @IS_OBJECT, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %77

62:                                               ; preds = %57
  %63 = load i32*, i32** %6, align 8
  %64 = call i64 @Z_TYPE_P(i32* %63)
  %65 = load i64, i64* @IS_STRING, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %77

67:                                               ; preds = %62
  %68 = load i32, i32* @E_WARNING, align 4
  %69 = load i32*, i32** %5, align 8
  %70 = call %struct.TYPE_5__* @Z_OBJCE_P(i32* %69)
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @ZSTR_VAL(i32 %72)
  %74 = load i32*, i32** %6, align 8
  %75 = call i32 @Z_STRVAL_P(i32* %74)
  %76 = call i32 (i32*, i32, i8*, ...) @php_error_docref(i32* null, i32 %68, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %73, i32 %75)
  br label %80

77:                                               ; preds = %62, %57, %52, %47, %42
  %78 = load i32, i32* @E_WARNING, align 4
  %79 = call i32 (i32*, i32, i8*, ...) @php_error_docref(i32* null, i32 %78, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %80

80:                                               ; preds = %77, %67
  br label %81

81:                                               ; preds = %80, %37
  br label %82

82:                                               ; preds = %81, %30
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  store i32 0, i32* %84, align 8
  br label %85

85:                                               ; preds = %82, %1
  ret void
}

declare dso_local i64 @call_user_function(i32*, i32*, i32*, i32*, i64, i32*) #1

declare dso_local i32 @zval_ptr_dtor(i32*) #1

declare dso_local i64 @Z_TYPE_P(i32*) #1

declare dso_local i32 @php_error_docref(i32*, i32, i8*, ...) #1

declare dso_local i32 @Z_STRVAL_P(i32*) #1

declare dso_local i32* @zend_hash_index_find(i32, i32) #1

declare dso_local i32 @Z_ARRVAL_P(i32*) #1

declare dso_local i32 @ZSTR_VAL(i32) #1

declare dso_local %struct.TYPE_5__* @Z_OBJCE_P(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
