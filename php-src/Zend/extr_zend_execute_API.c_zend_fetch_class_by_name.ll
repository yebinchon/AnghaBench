; ModuleID = '/home/carl/AnghaBench/php-src/Zend/extr_zend_execute_API.c_zend_fetch_class_by_name.c'
source_filename = "/home/carl/AnghaBench/php-src/Zend/extr_zend_execute_API.c_zend_fetch_class_by_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZEND_FETCH_CLASS_NO_AUTOLOAD = common dso_local global i32 0, align 4
@ZEND_FETCH_CLASS_SILENT = common dso_local global i32 0, align 4
@exception = common dso_local global i32 0, align 4
@ZEND_FETCH_CLASS_EXCEPTION = common dso_local global i32 0, align 4
@E_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"During class fetch: Uncaught %s\00", align 1
@ZEND_FETCH_CLASS_MASK = common dso_local global i32 0, align 4
@ZEND_FETCH_CLASS_INTERFACE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Interface '%s' not found\00", align 1
@ZEND_FETCH_CLASS_TRAIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"Trait '%s' not found\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Class '%s' not found\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @zend_fetch_class_by_name(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @ZEND_FETCH_CLASS_NO_AUTOLOAD, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %3
  %16 = load i32*, i32** %5, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32* @zend_lookup_class_ex(i32* %16, i32* %17, i32 %18)
  store i32* %19, i32** %4, align 8
  br label %86

20:                                               ; preds = %3
  %21 = load i32*, i32** %5, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i32* @zend_lookup_class_ex(i32* %21, i32* %22, i32 %23)
  store i32* %24, i32** %8, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %83

26:                                               ; preds = %20
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @ZEND_FETCH_CLASS_SILENT, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i32* null, i32** %4, align 8
  br label %86

32:                                               ; preds = %26
  %33 = load i32, i32* @exception, align 4
  %34 = call i64 @EG(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %54

36:                                               ; preds = %32
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @ZEND_FETCH_CLASS_EXCEPTION, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %53, label %41

41:                                               ; preds = %36
  %42 = load i32, i32* @exception, align 4
  %43 = call i64 @EG(i32 %42)
  %44 = call i32 @ZVAL_OBJ(i32* %10, i64 %43)
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @Z_ADDREF(i32 %45)
  %47 = call i32 (...) @zend_clear_exception()
  %48 = call i32* @zval_get_string(i32* %10)
  store i32* %48, i32** %9, align 8
  %49 = load i32, i32* @E_ERROR, align 4
  %50 = load i32*, i32** %9, align 8
  %51 = call i32 @ZSTR_VAL(i32* %50)
  %52 = call i32 @zend_error_noreturn(i32 %49, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %41, %36
  store i32* null, i32** %4, align 8
  br label %86

54:                                               ; preds = %32
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @ZEND_FETCH_CLASS_MASK, align 4
  %57 = and i32 %55, %56
  %58 = load i32, i32* @ZEND_FETCH_CLASS_INTERFACE, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %54
  %61 = load i32, i32* %7, align 4
  %62 = load i32*, i32** %5, align 8
  %63 = call i32 @ZSTR_VAL(i32* %62)
  %64 = call i32 @zend_throw_or_error(i32 %61, i32* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  br label %82

65:                                               ; preds = %54
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @ZEND_FETCH_CLASS_MASK, align 4
  %68 = and i32 %66, %67
  %69 = load i32, i32* @ZEND_FETCH_CLASS_TRAIT, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %65
  %72 = load i32, i32* %7, align 4
  %73 = load i32*, i32** %5, align 8
  %74 = call i32 @ZSTR_VAL(i32* %73)
  %75 = call i32 @zend_throw_or_error(i32 %72, i32* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %74)
  br label %81

76:                                               ; preds = %65
  %77 = load i32, i32* %7, align 4
  %78 = load i32*, i32** %5, align 8
  %79 = call i32 @ZSTR_VAL(i32* %78)
  %80 = call i32 @zend_throw_or_error(i32 %77, i32* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %79)
  br label %81

81:                                               ; preds = %76, %71
  br label %82

82:                                               ; preds = %81, %60
  store i32* null, i32** %4, align 8
  br label %86

83:                                               ; preds = %20
  br label %84

84:                                               ; preds = %83
  %85 = load i32*, i32** %8, align 8
  store i32* %85, i32** %4, align 8
  br label %86

86:                                               ; preds = %84, %82, %53, %31, %15
  %87 = load i32*, i32** %4, align 8
  ret i32* %87
}

declare dso_local i32* @zend_lookup_class_ex(i32*, i32*, i32) #1

declare dso_local i64 @EG(i32) #1

declare dso_local i32 @ZVAL_OBJ(i32*, i64) #1

declare dso_local i32 @Z_ADDREF(i32) #1

declare dso_local i32 @zend_clear_exception(...) #1

declare dso_local i32* @zval_get_string(i32*) #1

declare dso_local i32 @zend_error_noreturn(i32, i8*, i32) #1

declare dso_local i32 @ZSTR_VAL(i32*) #1

declare dso_local i32 @zend_throw_or_error(i32, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
