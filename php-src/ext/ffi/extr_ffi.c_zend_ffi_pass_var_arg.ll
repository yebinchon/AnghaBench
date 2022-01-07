; ModuleID = '/home/carl/AnghaBench/php-src/ext/ffi/extr_ffi.c_zend_ffi_pass_var_arg.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/ffi/extr_ffi.c_zend_ffi_pass_var_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@ffi_type_pointer = common dso_local global i32 0, align 4
@ffi_type_uint8 = common dso_local global i32 0, align 4
@ffi_type_sint32 = common dso_local global i32 0, align 4
@ffi_type_double = common dso_local global i32 0, align 4
@zend_ffi_cdata_ce = common dso_local global i32 0, align 4
@zend_ffi_exception_ce = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Unsupported argument type\00", align 1
@FAILURE = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@ffi_type_sint64 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32**, i8**, i64, i32*)* @zend_ffi_pass_var_arg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zend_ffi_pass_var_arg(i32* %0, i32** %1, i8** %2, i64 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_2__*, align 8
  %13 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store i32** %1, i32*** %8, align 8
  store i8** %2, i8*** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = call i32 @ZVAL_DEREF(i32* %14)
  %16 = load i32*, i32** %7, align 8
  %17 = call i32 @Z_TYPE_P(i32* %16)
  switch i32 %17, label %87 [
    i32 131, label %18
    i32 133, label %25
    i32 128, label %32
    i32 132, label %39
    i32 134, label %48
    i32 129, label %57
    i32 130, label %66
  ]

18:                                               ; preds = %5
  %19 = load i32**, i32*** %8, align 8
  store i32* @ffi_type_pointer, i32** %19, align 8
  %20 = load i8**, i8*** %9, align 8
  %21 = load i64, i64* %10, align 8
  %22 = getelementptr inbounds i8*, i8** %20, i64 %21
  %23 = load i8*, i8** %22, align 8
  %24 = bitcast i8* %23 to i8**
  store i8* null, i8** %24, align 8
  br label %91

25:                                               ; preds = %5
  %26 = load i32**, i32*** %8, align 8
  store i32* @ffi_type_uint8, i32** %26, align 8
  %27 = load i8**, i8*** %9, align 8
  %28 = load i64, i64* %10, align 8
  %29 = getelementptr inbounds i8*, i8** %27, i64 %28
  %30 = load i8*, i8** %29, align 8
  %31 = bitcast i8* %30 to i32*
  store i32 0, i32* %31, align 4
  br label %91

32:                                               ; preds = %5
  %33 = load i32**, i32*** %8, align 8
  store i32* @ffi_type_uint8, i32** %33, align 8
  %34 = load i8**, i8*** %9, align 8
  %35 = load i64, i64* %10, align 8
  %36 = getelementptr inbounds i8*, i8** %34, i64 %35
  %37 = load i8*, i8** %36, align 8
  %38 = bitcast i8* %37 to i32*
  store i32 1, i32* %38, align 4
  br label %91

39:                                               ; preds = %5
  %40 = load i32**, i32*** %8, align 8
  store i32* @ffi_type_sint32, i32** %40, align 8
  %41 = load i32*, i32** %7, align 8
  %42 = call i8* @Z_LVAL_P(i32* %41)
  %43 = load i8**, i8*** %9, align 8
  %44 = load i64, i64* %10, align 8
  %45 = getelementptr inbounds i8*, i8** %43, i64 %44
  %46 = load i8*, i8** %45, align 8
  %47 = bitcast i8* %46 to i8**
  store i8* %42, i8** %47, align 8
  br label %91

48:                                               ; preds = %5
  %49 = load i32**, i32*** %8, align 8
  store i32* @ffi_type_double, i32** %49, align 8
  %50 = load i32*, i32** %7, align 8
  %51 = call double @Z_DVAL_P(i32* %50)
  %52 = load i8**, i8*** %9, align 8
  %53 = load i64, i64* %10, align 8
  %54 = getelementptr inbounds i8*, i8** %52, i64 %53
  %55 = load i8*, i8** %54, align 8
  %56 = bitcast i8* %55 to double*
  store double %51, double* %56, align 8
  br label %91

57:                                               ; preds = %5
  %58 = load i32**, i32*** %8, align 8
  store i32* @ffi_type_pointer, i32** %58, align 8
  %59 = load i32*, i32** %7, align 8
  %60 = call i8* @Z_STRVAL_P(i32* %59)
  %61 = load i8**, i8*** %9, align 8
  %62 = load i64, i64* %10, align 8
  %63 = getelementptr inbounds i8*, i8** %61, i64 %62
  %64 = load i8*, i8** %63, align 8
  %65 = bitcast i8* %64 to i8**
  store i8* %60, i8** %65, align 8
  br label %91

66:                                               ; preds = %5
  %67 = load i32*, i32** %7, align 8
  %68 = call i32 @Z_OBJCE_P(i32* %67)
  %69 = load i32, i32* @zend_ffi_cdata_ce, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %86

71:                                               ; preds = %66
  %72 = load i32*, i32** %7, align 8
  %73 = call i64 @Z_OBJ_P(i32* %72)
  %74 = inttoptr i64 %73 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %74, %struct.TYPE_2__** %12, align 8
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32* @ZEND_FFI_TYPE(i32 %77)
  store i32* %78, i32** %13, align 8
  %79 = load i32*, i32** %7, align 8
  %80 = load i32*, i32** %13, align 8
  %81 = load i32**, i32*** %8, align 8
  %82 = load i8**, i8*** %9, align 8
  %83 = load i64, i64* %10, align 8
  %84 = load i32*, i32** %11, align 8
  %85 = call i32 @zend_ffi_pass_arg(i32* %79, i32* %80, i32** %81, i8** %82, i64 %83, i32* %84)
  store i32 %85, i32* %6, align 4
  br label %93

86:                                               ; preds = %66
  br label %87

87:                                               ; preds = %5, %86
  %88 = load i32, i32* @zend_ffi_exception_ce, align 4
  %89 = call i32 @zend_throw_error(i32 %88, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %90 = load i32, i32* @FAILURE, align 4
  store i32 %90, i32* %6, align 4
  br label %93

91:                                               ; preds = %57, %48, %39, %32, %25, %18
  %92 = load i32, i32* @SUCCESS, align 4
  store i32 %92, i32* %6, align 4
  br label %93

93:                                               ; preds = %91, %87, %71
  %94 = load i32, i32* %6, align 4
  ret i32 %94
}

declare dso_local i32 @ZVAL_DEREF(i32*) #1

declare dso_local i32 @Z_TYPE_P(i32*) #1

declare dso_local i8* @Z_LVAL_P(i32*) #1

declare dso_local double @Z_DVAL_P(i32*) #1

declare dso_local i8* @Z_STRVAL_P(i32*) #1

declare dso_local i32 @Z_OBJCE_P(i32*) #1

declare dso_local i64 @Z_OBJ_P(i32*) #1

declare dso_local i32* @ZEND_FFI_TYPE(i32) #1

declare dso_local i32 @zend_ffi_pass_arg(i32*, i32*, i32**, i8**, i64, i32*) #1

declare dso_local i32 @zend_throw_error(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
