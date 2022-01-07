; ModuleID = '/home/carl/AnghaBench/php-src/ext/reflection/extr_php_reflection.c_reflection_export_impl.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/reflection/extr_php_reflection.c_reflection_export_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"__tostring\00", align 1
@FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Invocation of method __toString() failed\00", align 1
@IS_UNDEF = common dso_local global i64 0, align 8
@E_WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"%s::__toString() did not return anything\00", align 1
@RETURN_FALSE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i64)* @reflection_export_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reflection_export_impl(i32* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = call i32 @ZVAL_STRINGL(i32* %7, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 10)
  %11 = load i32*, i32** %5, align 8
  %12 = call i32 @call_user_function(i32* null, i32* %11, i32* %7, i32* %8, i32 0, i32* null)
  store i32 %12, i32* %9, align 4
  %13 = call i32 @zval_ptr_dtor_str(i32* %7)
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* @FAILURE, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = call i32 @_DO_THROW(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %43

19:                                               ; preds = %3
  %20 = load i32, i32* %8, align 4
  %21 = call i64 @Z_TYPE(i32 %20)
  %22 = load i64, i64* @IS_UNDEF, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %19
  %25 = load i32, i32* @E_WARNING, align 4
  %26 = load i32*, i32** %5, align 8
  %27 = call %struct.TYPE_2__* @Z_OBJCE_P(i32* %26)
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @ZSTR_VAL(i32 %29)
  %31 = call i32 @php_error_docref(i32* null, i32 %25, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @RETURN_FALSE, align 4
  br label %33

33:                                               ; preds = %24, %19
  %34 = load i64, i64* %6, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i32*, i32** %4, align 8
  %38 = call i32 @ZVAL_COPY_VALUE(i32* %37, i32* %8)
  br label %43

39:                                               ; preds = %33
  %40 = call i32 @zend_print_zval(i32* %8, i32 0)
  %41 = call i32 @zend_printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %42 = call i32 @zval_ptr_dtor(i32* %8)
  br label %43

43:                                               ; preds = %17, %39, %36
  ret void
}

declare dso_local i32 @ZVAL_STRINGL(i32*, i8*, i32) #1

declare dso_local i32 @call_user_function(i32*, i32*, i32*, i32*, i32, i32*) #1

declare dso_local i32 @zval_ptr_dtor_str(i32*) #1

declare dso_local i32 @_DO_THROW(i8*) #1

declare dso_local i64 @Z_TYPE(i32) #1

declare dso_local i32 @php_error_docref(i32*, i32, i8*, i32) #1

declare dso_local i32 @ZSTR_VAL(i32) #1

declare dso_local %struct.TYPE_2__* @Z_OBJCE_P(i32*) #1

declare dso_local i32 @ZVAL_COPY_VALUE(i32*, i32*) #1

declare dso_local i32 @zend_print_zval(i32*, i32) #1

declare dso_local i32 @zend_printf(i8*) #1

declare dso_local i32 @zval_ptr_dtor(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
