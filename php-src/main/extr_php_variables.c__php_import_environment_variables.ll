; ModuleID = '/home/carl/AnghaBench/php-src/main/extr_php_variables.c__php_import_environment_variables.c'
source_filename = "/home/carl/AnghaBench/php-src/main/extr_php_variables.c__php_import_environment_variables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@environ = common dso_local global i8** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_php_import_environment_variables(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8**, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %9 = call i32 (...) @tsrm_env_lock()
  %10 = load i8**, i8*** @environ, align 8
  store i8** %10, i8*** %3, align 8
  br label %11

11:                                               ; preds = %88, %1
  %12 = load i8**, i8*** %3, align 8
  %13 = icmp ne i8** %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = load i8**, i8*** %3, align 8
  %16 = load i8*, i8** %15, align 8
  %17 = icmp ne i8* %16, null
  br label %18

18:                                               ; preds = %14, %11
  %19 = phi i1 [ false, %11 ], [ %17, %14 ]
  br i1 %19, label %20, label %91

20:                                               ; preds = %18
  %21 = load i8**, i8*** %3, align 8
  %22 = load i8*, i8** %21, align 8
  %23 = call i8* @strchr(i8* %22, i8 signext 61)
  store i8* %23, i8** %4, align 8
  %24 = load i8*, i8** %4, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %37

26:                                               ; preds = %20
  %27 = load i8*, i8** %4, align 8
  %28 = load i8**, i8*** %3, align 8
  %29 = load i8*, i8** %28, align 8
  %30 = icmp eq i8* %27, %29
  br i1 %30, label %37, label %31

31:                                               ; preds = %26
  %32 = load i8**, i8*** %3, align 8
  %33 = load i8*, i8** %32, align 8
  %34 = load i8*, i8** %4, align 8
  %35 = call i32 @valid_environment_name(i8* %33, i8* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %31, %26, %20
  br label %88

38:                                               ; preds = %31
  %39 = load i8*, i8** %4, align 8
  %40 = load i8**, i8*** %3, align 8
  %41 = load i8*, i8** %40, align 8
  %42 = ptrtoint i8* %39 to i64
  %43 = ptrtoint i8* %41 to i64
  %44 = sub i64 %42, %43
  store i64 %44, i64* %5, align 8
  %45 = load i8*, i8** %4, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %4, align 8
  %47 = load i8*, i8** %4, align 8
  %48 = call i64 @strlen(i8* %47)
  store i64 %48, i64* %6, align 8
  %49 = load i64, i64* %6, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %38
  %52 = call i32 @ZVAL_EMPTY_STRING(i32* %7)
  br label %68

53:                                               ; preds = %38
  %54 = load i64, i64* %6, align 8
  %55 = icmp eq i64 %54, 1
  br i1 %55, label %56, label %62

56:                                               ; preds = %53
  %57 = load i8*, i8** %4, align 8
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = call i32 @ZSTR_CHAR(i32 %59)
  %61 = call i32 @ZVAL_INTERNED_STR(i32* %7, i32 %60)
  br label %67

62:                                               ; preds = %53
  %63 = load i8*, i8** %4, align 8
  %64 = load i64, i64* %6, align 8
  %65 = call i32 @zend_string_init(i8* %63, i64 %64, i32 0)
  %66 = call i32 @ZVAL_NEW_STR(i32* %7, i32 %65)
  br label %67

67:                                               ; preds = %62, %56
  br label %68

68:                                               ; preds = %67, %51
  %69 = load i8**, i8*** %3, align 8
  %70 = load i8*, i8** %69, align 8
  %71 = load i64, i64* %5, align 8
  %72 = load i32, i32* %8, align 4
  %73 = call i64 @ZEND_HANDLE_NUMERIC_STR(i8* %70, i64 %71, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %68
  %76 = load i32*, i32** %2, align 8
  %77 = call i32 @Z_ARRVAL_P(i32* %76)
  %78 = load i32, i32* %8, align 4
  %79 = call i32 @zend_hash_index_update(i32 %77, i32 %78, i32* %7)
  br label %87

80:                                               ; preds = %68
  %81 = load i8**, i8*** %3, align 8
  %82 = load i8*, i8** %81, align 8
  %83 = load i64, i64* %5, align 8
  %84 = load i32*, i32** %2, align 8
  %85 = call i32 @Z_ARRVAL_P(i32* %84)
  %86 = call i32 @php_register_variable_quick(i8* %82, i64 %83, i32* %7, i32 %85)
  br label %87

87:                                               ; preds = %80, %75
  br label %88

88:                                               ; preds = %87, %37
  %89 = load i8**, i8*** %3, align 8
  %90 = getelementptr inbounds i8*, i8** %89, i32 1
  store i8** %90, i8*** %3, align 8
  br label %11

91:                                               ; preds = %18
  %92 = call i32 (...) @tsrm_env_unlock()
  ret void
}

declare dso_local i32 @tsrm_env_lock(...) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @valid_environment_name(i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @ZVAL_EMPTY_STRING(i32*) #1

declare dso_local i32 @ZVAL_INTERNED_STR(i32*, i32) #1

declare dso_local i32 @ZSTR_CHAR(i32) #1

declare dso_local i32 @ZVAL_NEW_STR(i32*, i32) #1

declare dso_local i32 @zend_string_init(i8*, i64, i32) #1

declare dso_local i64 @ZEND_HANDLE_NUMERIC_STR(i8*, i64, i32) #1

declare dso_local i32 @zend_hash_index_update(i32, i32, i32*) #1

declare dso_local i32 @Z_ARRVAL_P(i32*) #1

declare dso_local i32 @php_register_variable_quick(i8*, i64, i32*, i32) #1

declare dso_local i32 @tsrm_env_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
