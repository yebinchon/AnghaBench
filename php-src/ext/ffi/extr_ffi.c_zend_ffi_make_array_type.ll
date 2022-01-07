; ModuleID = '/home/carl/AnghaBench/php-src/ext/ffi/extr_ffi.c_zend_ffi_make_array_type.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/ffi/extr_ffi.c_zend_ffi_make_array_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i64, i32, i32 }
%struct.TYPE_14__ = type { i64, i32, i32, i32 }
%struct.TYPE_15__ = type { i32, i32, %struct.TYPE_13__, i32, i32 }
%struct.TYPE_13__ = type { i32, i32 }

@ZEND_FFI_VAL_EMPTY = common dso_local global i64 0, align 8
@ZEND_FFI_VAL_UINT32 = common dso_local global i64 0, align 8
@ZEND_FFI_VAL_UINT64 = common dso_local global i64 0, align 8
@ZEND_FFI_VAL_INT32 = common dso_local global i64 0, align 8
@ZEND_FFI_VAL_INT64 = common dso_local global i64 0, align 8
@ZEND_FFI_VAL_CHAR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"unsupported array index type at line %d\00", align 1
@line = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"negative array index at line %d\00", align 1
@SUCCESS = common dso_local global i64 0, align 8
@bailout = common dso_local global i32 0, align 4
@FAILURE = common dso_local global i32 0, align 4
@persistent = common dso_local global i32 0, align 4
@ZEND_FFI_TYPE_ARRAY = common dso_local global i32 0, align 4
@default_type_attr = common dso_local global i32 0, align 4
@ZEND_FFI_ARRAY_ATTRS = common dso_local global i32 0, align 4
@ZEND_FFI_DCL_TYPE_QUALIFIERS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zend_ffi_make_array_type(%struct.TYPE_16__* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %9 = call i32 @zend_ffi_finalize_type(%struct.TYPE_16__* %8)
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.TYPE_15__* @ZEND_FFI_TYPE(i32 %12)
  store %struct.TYPE_15__* %13, %struct.TYPE_15__** %6, align 8
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @ZEND_FFI_VAL_EMPTY, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %71

20:                                               ; preds = %2
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @ZEND_FFI_VAL_UINT32, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %32, label %26

26:                                               ; preds = %20
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @ZEND_FFI_VAL_UINT64, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %26, %20
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %5, align 4
  br label %70

36:                                               ; preds = %26
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @ZEND_FFI_VAL_INT32, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %48, label %42

42:                                               ; preds = %36
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @ZEND_FFI_VAL_INT64, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %42, %36
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %5, align 4
  br label %69

52:                                               ; preds = %42
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @ZEND_FFI_VAL_CHAR, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %52
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  store i32 %61, i32* %5, align 4
  br label %68

62:                                               ; preds = %52
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %64 = call i32 @zend_ffi_cleanup_dcl(%struct.TYPE_16__* %63)
  %65 = load i32, i32* @line, align 4
  %66 = call i32 @FFI_G(i32 %65)
  %67 = call i32 @zend_ffi_parser_error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %66)
  br label %149

68:                                               ; preds = %58
  br label %69

69:                                               ; preds = %68, %48
  br label %70

70:                                               ; preds = %69, %32
  br label %71

71:                                               ; preds = %70, %19
  %72 = load i32, i32* %5, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %71
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %76 = call i32 @zend_ffi_cleanup_dcl(%struct.TYPE_16__* %75)
  %77 = load i32, i32* @line, align 4
  %78 = call i32 @FFI_G(i32 %77)
  %79 = call i32 @zend_ffi_parser_error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %78)
  br label %149

80:                                               ; preds = %71
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %82 = call i64 @zend_ffi_validate_array_element_type(%struct.TYPE_15__* %81)
  %83 = load i64, i64* @SUCCESS, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %92

85:                                               ; preds = %80
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %87 = call i32 @zend_ffi_cleanup_dcl(%struct.TYPE_16__* %86)
  %88 = load i32, i32* @bailout, align 4
  %89 = call i32 @FFI_G(i32 %88)
  %90 = load i32, i32* @FAILURE, align 4
  %91 = call i32 @LONGJMP(i32 %89, i32 %90)
  br label %92

92:                                               ; preds = %85, %80
  %93 = load i32, i32* @persistent, align 4
  %94 = call i32 @FFI_G(i32 %93)
  %95 = call %struct.TYPE_15__* @pemalloc(i32 24, i32 %94)
  store %struct.TYPE_15__* %95, %struct.TYPE_15__** %7, align 8
  %96 = load i32, i32* @ZEND_FFI_TYPE_ARRAY, align 4
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 4
  store i32 %96, i32* %98, align 4
  %99 = load i32, i32* @default_type_attr, align 4
  %100 = call i32 @FFI_G(i32 %99)
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @ZEND_FFI_ARRAY_ATTRS, align 4
  %105 = and i32 %103, %104
  %106 = or i32 %100, %105
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 4
  %109 = load i32, i32* %5, align 4
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = mul nsw i32 %109, %112
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 1
  store i32 %113, i32* %115, align 4
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 3
  store i32 %118, i32* %120, align 4
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 1
  store i32 %123, i32* %126, align 4
  %127 = load i32, i32* %5, align 4
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 0
  store i32 %127, i32* %130, align 4
  %131 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %132 = call i32 @ZEND_FFI_TYPE_MAKE_OWNED(%struct.TYPE_15__* %131)
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 3
  store i32 %132, i32* %134, align 4
  %135 = load i32, i32* @ZEND_FFI_DCL_TYPE_QUALIFIERS, align 4
  %136 = xor i32 %135, -1
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = and i32 %139, %136
  store i32 %140, i32* %138, align 8
  %141 = load i32, i32* @ZEND_FFI_ARRAY_ATTRS, align 4
  %142 = xor i32 %141, -1
  %143 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = and i32 %145, %142
  store i32 %146, i32* %144, align 8
  %147 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %147, i32 0, i32 1
  store i64 0, i64* %148, align 8
  br label %149

149:                                              ; preds = %92, %74, %62
  ret void
}

declare dso_local i32 @zend_ffi_finalize_type(%struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_15__* @ZEND_FFI_TYPE(i32) #1

declare dso_local i32 @zend_ffi_cleanup_dcl(%struct.TYPE_16__*) #1

declare dso_local i32 @zend_ffi_parser_error(i8*, i32) #1

declare dso_local i32 @FFI_G(i32) #1

declare dso_local i64 @zend_ffi_validate_array_element_type(%struct.TYPE_15__*) #1

declare dso_local i32 @LONGJMP(i32, i32) #1

declare dso_local %struct.TYPE_15__* @pemalloc(i32, i32) #1

declare dso_local i32 @ZEND_FFI_TYPE_MAKE_OWNED(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
