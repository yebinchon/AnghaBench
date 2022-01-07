; ModuleID = '/home/carl/AnghaBench/php-src/ext/gmp/extr_gmp.c_gmp_unserialize.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/gmp/extr_gmp.c_gmp_unserialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FAILURE = common dso_local global i32 0, align 4
@IS_STRING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"Could not unserialize number\00", align 1
@IS_ARRAY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"Could not unserialize properties\00", align 1
@zval_add_ref = common dso_local global i64 0, align 8
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i8*, i64, i32*)* @gmp_unserialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gmp_unserialize(i32* %0, i32* %1, i8* %2, i64 %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32* %4, i32** %10, align 8
  %18 = load i32, i32* @FAILURE, align 4
  store i32 %18, i32* %15, align 4
  %19 = load i32, i32* %16, align 4
  %20 = call i32 @PHP_VAR_UNSERIALIZE_INIT(i32 %19)
  %21 = load i32*, i32** %6, align 8
  %22 = call i32 @gmp_create(i32* %21, i32* %11)
  %23 = load i32*, i32** %6, align 8
  %24 = call i32* @Z_OBJ_P(i32* %23)
  store i32* %24, i32** %17, align 8
  %25 = load i8*, i8** %8, align 8
  store i8* %25, i8** %12, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = load i64, i64* %9, align 8
  %28 = getelementptr inbounds i8, i8* %26, i64 %27
  store i8* %28, i8** %13, align 8
  %29 = call i32* @var_tmp_var(i32* %16)
  store i32* %29, i32** %14, align 8
  %30 = load i32*, i32** %14, align 8
  %31 = load i8*, i8** %13, align 8
  %32 = call i32 @php_var_unserialize(i32* %30, i8** %12, i8* %31, i32* %16)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %5
  %35 = load i32*, i32** %14, align 8
  %36 = call i64 @Z_TYPE_P(i32* %35)
  %37 = load i64, i64* @IS_STRING, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %45, label %39

39:                                               ; preds = %34
  %40 = load i32, i32* %11, align 4
  %41 = load i32*, i32** %14, align 8
  %42 = call i32 @convert_to_gmp(i32 %40, i32* %41, i32 10)
  %43 = load i32, i32* @FAILURE, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %39, %34, %5
  %46 = call i32 @zend_throw_exception(i32* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 0)
  br label %75

47:                                               ; preds = %39
  %48 = call i32* @var_tmp_var(i32* %16)
  store i32* %48, i32** %14, align 8
  %49 = load i32*, i32** %14, align 8
  %50 = load i8*, i8** %13, align 8
  %51 = call i32 @php_var_unserialize(i32* %49, i8** %12, i8* %50, i32* %16)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %47
  %54 = load i32*, i32** %14, align 8
  %55 = call i64 @Z_TYPE_P(i32* %54)
  %56 = load i64, i64* @IS_ARRAY, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %53, %47
  %59 = call i32 @zend_throw_exception(i32* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 0)
  br label %75

60:                                               ; preds = %53
  %61 = load i32*, i32** %14, align 8
  %62 = call i32 @Z_ARRVAL_P(i32* %61)
  %63 = call i64 @zend_hash_num_elements(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %60
  %66 = load i32*, i32** %17, align 8
  %67 = call i32 @zend_std_get_properties(i32* %66)
  %68 = load i32*, i32** %14, align 8
  %69 = call i32 @Z_ARRVAL_P(i32* %68)
  %70 = load i64, i64* @zval_add_ref, align 8
  %71 = trunc i64 %70 to i32
  %72 = call i32 @zend_hash_copy(i32 %67, i32 %69, i32 %71)
  br label %73

73:                                               ; preds = %65, %60
  %74 = load i32, i32* @SUCCESS, align 4
  store i32 %74, i32* %15, align 4
  br label %75

75:                                               ; preds = %73, %58, %45
  %76 = load i32, i32* %16, align 4
  %77 = call i32 @PHP_VAR_UNSERIALIZE_DESTROY(i32 %76)
  %78 = load i32, i32* %15, align 4
  ret i32 %78
}

declare dso_local i32 @PHP_VAR_UNSERIALIZE_INIT(i32) #1

declare dso_local i32 @gmp_create(i32*, i32*) #1

declare dso_local i32* @Z_OBJ_P(i32*) #1

declare dso_local i32* @var_tmp_var(i32*) #1

declare dso_local i32 @php_var_unserialize(i32*, i8**, i8*, i32*) #1

declare dso_local i64 @Z_TYPE_P(i32*) #1

declare dso_local i32 @convert_to_gmp(i32, i32*, i32) #1

declare dso_local i32 @zend_throw_exception(i32*, i8*, i32) #1

declare dso_local i64 @zend_hash_num_elements(i32) #1

declare dso_local i32 @Z_ARRVAL_P(i32*) #1

declare dso_local i32 @zend_hash_copy(i32, i32, i32) #1

declare dso_local i32 @zend_std_get_properties(i32*) #1

declare dso_local i32 @PHP_VAR_UNSERIALIZE_DESTROY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
