; ModuleID = '/home/carl/AnghaBench/php-src/ext/ffi/extr_ffi.c_zend_ffi_validate_field_type.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/ffi/extr_ffi.c_zend_ffi_validate_field_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [60 x i8] c"struct/union can't contain an instance of itself at line %d\00", align 1
@line = common dso_local global i32 0, align 4
@FAILURE = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i64 0, align 8
@ZEND_FFI_ATTR_UNION = common dso_local global i32 0, align 4
@ZEND_FFI_ATTR_INCOMPLETE_ARRAY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"flexible array member in union at line %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, %struct.TYPE_6__*)* @zend_ffi_validate_field_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zend_ffi_validate_field_type(%struct.TYPE_6__* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %8 = icmp eq %struct.TYPE_6__* %6, %7
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load i32, i32* @line, align 4
  %11 = call i32 @FFI_G(i32 %10)
  %12 = call i32 @zend_ffi_throw_parser_error(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load i32, i32* @FAILURE, align 4
  store i32 %13, i32* %3, align 4
  br label %46

14:                                               ; preds = %2
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %16 = call i64 @zend_ffi_validate_var_type(%struct.TYPE_6__* %15, i32 1)
  %17 = load i64, i64* @SUCCESS, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = load i32, i32* @FAILURE, align 4
  store i32 %20, i32* %3, align 4
  br label %46

21:                                               ; preds = %14
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @ZEND_FFI_ATTR_UNION, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %21
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @ZEND_FFI_ATTR_INCOMPLETE_ARRAY, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %28
  %36 = load i32, i32* @line, align 4
  %37 = call i32 @FFI_G(i32 %36)
  %38 = call i32 @zend_ffi_throw_parser_error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* @FAILURE, align 4
  store i32 %39, i32* %3, align 4
  br label %46

40:                                               ; preds = %28
  br label %41

41:                                               ; preds = %40, %21
  br label %42

42:                                               ; preds = %41
  br label %43

43:                                               ; preds = %42
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %45 = call i32 @zend_ffi_validate_prev_field_type(%struct.TYPE_6__* %44)
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %43, %35, %19, %9
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @zend_ffi_throw_parser_error(i8*, i32) #1

declare dso_local i32 @FFI_G(i32) #1

declare dso_local i64 @zend_ffi_validate_var_type(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @zend_ffi_validate_prev_field_type(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
