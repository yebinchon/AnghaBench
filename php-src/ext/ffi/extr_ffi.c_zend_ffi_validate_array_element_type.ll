; ModuleID = '/home/carl/AnghaBench/php-src/ext/ffi/extr_ffi.c_zend_ffi_validate_array_element_type.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/ffi/extr_ffi.c_zend_ffi_validate_array_element_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }

@ZEND_FFI_TYPE_FUNC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"array of functions is not allowed at line %d\00", align 1
@line = common dso_local global i32 0, align 4
@FAILURE = common dso_local global i32 0, align 4
@ZEND_FFI_TYPE_ARRAY = common dso_local global i64 0, align 8
@ZEND_FFI_ATTR_INCOMPLETE_ARRAY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"only the leftmost array can be undimensioned at line %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @zend_ffi_validate_array_element_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zend_ffi_validate_array_element_type(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @ZEND_FFI_TYPE_FUNC, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load i32, i32* @line, align 4
  %11 = call i32 @FFI_G(i32 %10)
  %12 = call i32 @zend_ffi_throw_parser_error(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load i32, i32* @FAILURE, align 4
  store i32 %13, i32* %2, align 4
  br label %36

14:                                               ; preds = %1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @ZEND_FFI_TYPE_ARRAY, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %32

20:                                               ; preds = %14
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @ZEND_FFI_ATTR_INCOMPLETE_ARRAY, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %20
  %28 = load i32, i32* @line, align 4
  %29 = call i32 @FFI_G(i32 %28)
  %30 = call i32 @zend_ffi_throw_parser_error(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* @FAILURE, align 4
  store i32 %31, i32* %2, align 4
  br label %36

32:                                               ; preds = %20, %14
  br label %33

33:                                               ; preds = %32
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %35 = call i32 @zend_ffi_validate_type(%struct.TYPE_4__* %34, i32 0, i32 1)
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %33, %27, %9
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @zend_ffi_throw_parser_error(i8*, i32) #1

declare dso_local i32 @FFI_G(i32) #1

declare dso_local i32 @zend_ffi_validate_type(%struct.TYPE_4__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
