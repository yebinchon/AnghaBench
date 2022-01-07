; ModuleID = '/home/carl/AnghaBench/php-src/ext/pdo/extr_pdo_dbh.c_pdo_raise_impl_error.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pdo/extr_pdo_dbh.c_pdo_raise_impl_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i64 }
%struct.TYPE_5__ = type { i8* }

@PDO_ERRMODE_SILENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"<<Unknown error>>\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"SQLSTATE[%s]: %s: %s\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"SQLSTATE[%s]: %s\00", align 1
@PDO_ERRMODE_EXCEPTION = common dso_local global i64 0, align 8
@E_WARNING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"message\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"code\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"errorInfo\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pdo_raise_impl_error(%struct.TYPE_6__* %0, %struct.TYPE_5__* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  store i8** %17, i8*** %9, align 8
  store i8* null, i8** %10, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %19 = icmp ne %struct.TYPE_6__* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %4
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @PDO_ERRMODE_SILENT, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %27

27:                                               ; preds = %26, %20, %4
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %29 = icmp ne %struct.TYPE_5__* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  store i8** %32, i8*** %9, align 8
  br label %33

33:                                               ; preds = %30, %27
  %34 = load i8**, i8*** %9, align 8
  %35 = load i8*, i8** %34, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = call i32 @strncpy(i8* %35, i8* %36, i32 6)
  %38 = load i8**, i8*** %9, align 8
  %39 = load i8*, i8** %38, align 8
  %40 = call i8* @pdo_sqlstate_state_to_description(i8* %39)
  store i8* %40, i8** %11, align 8
  %41 = load i8*, i8** %11, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %33
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  br label %44

44:                                               ; preds = %43, %33
  %45 = load i8*, i8** %8, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %53

47:                                               ; preds = %44
  %48 = load i8**, i8*** %9, align 8
  %49 = load i8*, i8** %48, align 8
  %50 = load i8*, i8** %11, align 8
  %51 = load i8*, i8** %8, align 8
  %52 = call i32 (i8**, i32, i8*, i8*, i8*, ...) @spprintf(i8** %10, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %49, i8* %50, i8* %51)
  br label %58

53:                                               ; preds = %44
  %54 = load i8**, i8*** %9, align 8
  %55 = load i8*, i8** %54, align 8
  %56 = load i8*, i8** %11, align 8
  %57 = call i32 (i8**, i32, i8*, i8*, i8*, ...) @spprintf(i8** %10, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* %55, i8* %56)
  br label %58

58:                                               ; preds = %53, %47
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %60 = icmp ne %struct.TYPE_6__* %59, null
  br i1 %60, label %61, label %71

61:                                               ; preds = %58
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @PDO_ERRMODE_EXCEPTION, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %61
  %68 = load i32, i32* @E_WARNING, align 4
  %69 = load i8*, i8** %10, align 8
  %70 = call i32 @php_error_docref(i32* null, i32 %68, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %69)
  br label %92

71:                                               ; preds = %61, %58
  %72 = call i32* @php_pdo_get_exception_base(i32 1)
  store i32* %72, i32** %14, align 8
  %73 = call i32* (...) @php_pdo_get_exception()
  store i32* %73, i32** %15, align 8
  %74 = load i32*, i32** %15, align 8
  %75 = call i32 @object_init_ex(i32* %12, i32* %74)
  %76 = load i32*, i32** %14, align 8
  %77 = load i8*, i8** %10, align 8
  %78 = call i32 @zend_update_property_string(i32* %76, i32* %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 7, i8* %77)
  %79 = load i32*, i32** %14, align 8
  %80 = load i8**, i8*** %9, align 8
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 @zend_update_property_string(i32* %79, i32* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 4, i8* %81)
  %83 = call i32 @array_init(i32* %13)
  %84 = load i8**, i8*** %9, align 8
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 @add_next_index_string(i32* %13, i8* %85)
  %87 = call i32 @add_next_index_long(i32* %13, i32 0)
  %88 = load i32*, i32** %15, align 8
  %89 = call i32 @zend_update_property(i32* %88, i32* %12, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32 9, i32* %13)
  %90 = call i32 @zval_ptr_dtor(i32* %13)
  %91 = call i32 @zend_throw_exception_object(i32* %12)
  br label %92

92:                                               ; preds = %71, %67
  %93 = load i8*, i8** %10, align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %95, label %98

95:                                               ; preds = %92
  %96 = load i8*, i8** %10, align 8
  %97 = call i32 @efree(i8* %96)
  br label %98

98:                                               ; preds = %95, %92
  ret void
}

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i8* @pdo_sqlstate_state_to_description(i8*) #1

declare dso_local i32 @spprintf(i8**, i32, i8*, i8*, i8*, ...) #1

declare dso_local i32 @php_error_docref(i32*, i32, i8*, i8*) #1

declare dso_local i32* @php_pdo_get_exception_base(i32) #1

declare dso_local i32* @php_pdo_get_exception(...) #1

declare dso_local i32 @object_init_ex(i32*, i32*) #1

declare dso_local i32 @zend_update_property_string(i32*, i32*, i8*, i32, i8*) #1

declare dso_local i32 @array_init(i32*) #1

declare dso_local i32 @add_next_index_string(i32*, i8*) #1

declare dso_local i32 @add_next_index_long(i32*, i32) #1

declare dso_local i32 @zend_update_property(i32*, i32*, i8*, i32, i32*) #1

declare dso_local i32 @zval_ptr_dtor(i32*) #1

declare dso_local i32 @zend_throw_exception_object(i32*) #1

declare dso_local i32 @efree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
