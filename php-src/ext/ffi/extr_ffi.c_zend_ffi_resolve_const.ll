; ModuleID = '/home/carl/AnghaBench/php-src/ext/ffi/extr_ffi.c_zend_ffi_resolve_const.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/ffi/extr_ffi.c_zend_ffi_resolve_const.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i64, i32, i32 }
%struct.TYPE_8__ = type { i64, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 }

@attribute_parsing = common dso_local global i32 0, align 4
@ZEND_FFI_VAL_NAME = common dso_local global i32 0, align 4
@symbols = common dso_local global i32 0, align 4
@ZEND_FFI_SYM_CONST = common dso_local global i64 0, align 8
@ZEND_FFI_VAL_INT32 = common dso_local global i32 0, align 4
@ZEND_FFI_VAL_INT64 = common dso_local global i32 0, align 4
@ZEND_FFI_VAL_UINT32 = common dso_local global i32 0, align 4
@ZEND_FFI_VAL_UINT64 = common dso_local global i32 0, align 4
@ZEND_FFI_VAL_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zend_ffi_resolve_const(i8* %0, i64 %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %6, align 8
  %8 = load i32, i32* @attribute_parsing, align 4
  %9 = call i64 @FFI_G(i32 %8)
  %10 = call i64 @UNEXPECTED(i64 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %3
  %13 = load i32, i32* @ZEND_FFI_VAL_NAME, align 4
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  store i8* %16, i8** %18, align 8
  %19 = load i64, i64* %5, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  store i64 %19, i64* %21, align 8
  br label %76

22:                                               ; preds = %3
  %23 = load i32, i32* @symbols, align 4
  %24 = call i64 @FFI_G(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %71

26:                                               ; preds = %22
  %27 = load i32, i32* @symbols, align 4
  %28 = call i64 @FFI_G(i32 %27)
  %29 = load i8*, i8** %4, align 8
  %30 = load i64, i64* %5, align 8
  %31 = call %struct.TYPE_8__* @zend_hash_str_find_ptr(i64 %28, i8* %29, i64 %30)
  store %struct.TYPE_8__* %31, %struct.TYPE_8__** %7, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %33 = icmp ne %struct.TYPE_8__* %32, null
  br i1 %33, label %34, label %70

34:                                               ; preds = %26
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @ZEND_FFI_SYM_CONST, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %70

40:                                               ; preds = %34
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 4
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  switch i32 %50, label %67 [
    i32 132, label %51
    i32 135, label %51
    i32 134, label %51
    i32 133, label %55
    i32 128, label %59
    i32 131, label %59
    i32 130, label %59
    i32 129, label %63
  ]

51:                                               ; preds = %40, %40, %40
  %52 = load i32, i32* @ZEND_FFI_VAL_INT32, align 4
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 8
  br label %69

55:                                               ; preds = %40
  %56 = load i32, i32* @ZEND_FFI_VAL_INT64, align 4
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 8
  br label %69

59:                                               ; preds = %40, %40, %40
  %60 = load i32, i32* @ZEND_FFI_VAL_UINT32, align 4
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 8
  br label %69

63:                                               ; preds = %40
  %64 = load i32, i32* @ZEND_FFI_VAL_UINT64, align 4
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 8
  br label %69

67:                                               ; preds = %40
  %68 = call i32 @ZEND_ASSERT(i32 0)
  br label %69

69:                                               ; preds = %67, %63, %59, %55, %51
  br label %76

70:                                               ; preds = %34, %26
  br label %71

71:                                               ; preds = %70, %22
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* @ZEND_FFI_VAL_ERROR, align 4
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 8
  br label %76

76:                                               ; preds = %72, %69, %12
  ret void
}

declare dso_local i64 @UNEXPECTED(i64) #1

declare dso_local i64 @FFI_G(i32) #1

declare dso_local %struct.TYPE_8__* @zend_hash_str_find_ptr(i64, i8*, i64) #1

declare dso_local i32 @ZEND_ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
