; ModuleID = '/home/carl/AnghaBench/php-src/ext/ffi/extr_ffi.c_zend_ffi_expr_sizeof_val.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/ffi/extr_ffi.c_zend_ffi_expr_sizeof_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_9__ = type { i64, i64, i64, i32 }

@ZEND_FFI_VAL_UINT32 = common dso_local global i64 0, align 8
@ZEND_FFI_VAL_INT32 = common dso_local global i64 0, align 8
@zend_ffi_type_uint32 = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@ZEND_FFI_VAL_UINT64 = common dso_local global i64 0, align 8
@ZEND_FFI_VAL_INT64 = common dso_local global i64 0, align 8
@zend_ffi_type_uint64 = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@ZEND_FFI_VAL_FLOAT = common dso_local global i64 0, align 8
@zend_ffi_type_float = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@ZEND_FFI_VAL_DOUBLE = common dso_local global i64 0, align 8
@zend_ffi_type_double = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@ZEND_FFI_VAL_LONG_DOUBLE = common dso_local global i64 0, align 8
@zend_ffi_type_long_double = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@ZEND_FFI_VAL_CHAR = common dso_local global i64 0, align 8
@zend_ffi_type_char = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@ZEND_FFI_VAL_STRING = common dso_local global i64 0, align 8
@ZEND_FFI_VAL_ERROR = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zend_ffi_expr_sizeof_val(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %3 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @ZEND_FFI_VAL_UINT32, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %14, label %8

8:                                                ; preds = %1
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @ZEND_FFI_VAL_INT32, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %8, %1
  %15 = load i64, i64* @ZEND_FFI_VAL_UINT32, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  store i64 %15, i64* %17, align 8
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @zend_ffi_type_uint32, i32 0, i32 0), align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 2
  store i64 %18, i64* %20, align 8
  br label %134

21:                                               ; preds = %8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @ZEND_FFI_VAL_UINT64, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %33, label %27

27:                                               ; preds = %21
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @ZEND_FFI_VAL_INT64, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %27, %21
  %34 = load i64, i64* @ZEND_FFI_VAL_UINT32, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @zend_ffi_type_uint64, i32 0, i32 0), align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 2
  store i64 %37, i64* %39, align 8
  br label %133

40:                                               ; preds = %27
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @ZEND_FFI_VAL_FLOAT, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %40
  %47 = load i64, i64* @ZEND_FFI_VAL_UINT32, align 8
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  %50 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @zend_ffi_type_float, i32 0, i32 0), align 8
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 2
  store i64 %50, i64* %52, align 8
  br label %132

53:                                               ; preds = %40
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @ZEND_FFI_VAL_DOUBLE, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %53
  %60 = load i64, i64* @ZEND_FFI_VAL_UINT32, align 8
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  store i64 %60, i64* %62, align 8
  %63 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @zend_ffi_type_double, i32 0, i32 0), align 8
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 2
  store i64 %63, i64* %65, align 8
  br label %131

66:                                               ; preds = %53
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @ZEND_FFI_VAL_LONG_DOUBLE, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %79

72:                                               ; preds = %66
  %73 = load i64, i64* @ZEND_FFI_VAL_UINT32, align 8
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  store i64 %73, i64* %75, align 8
  %76 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @zend_ffi_type_long_double, i32 0, i32 0), align 8
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 2
  store i64 %76, i64* %78, align 8
  br label %130

79:                                               ; preds = %66
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @ZEND_FFI_VAL_CHAR, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %92

85:                                               ; preds = %79
  %86 = load i64, i64* @ZEND_FFI_VAL_UINT32, align 8
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 0
  store i64 %86, i64* %88, align 8
  %89 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @zend_ffi_type_char, i32 0, i32 0), align 8
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 2
  store i64 %89, i64* %91, align 8
  br label %129

92:                                               ; preds = %79
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @ZEND_FFI_VAL_STRING, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %123

98:                                               ; preds = %92
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = call i64 @memchr(i32 %101, i8 signext 92, i64 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %98
  %108 = load i8*, i8** @ZEND_FFI_VAL_ERROR, align 8
  %109 = ptrtoint i8* %108 to i64
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 0
  store i64 %109, i64* %111, align 8
  br label %122

112:                                              ; preds = %98
  %113 = load i64, i64* @ZEND_FFI_VAL_UINT32, align 8
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 0
  store i64 %113, i64* %115, align 8
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = add nsw i64 %118, 1
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 2
  store i64 %119, i64* %121, align 8
  br label %122

122:                                              ; preds = %112, %107
  br label %128

123:                                              ; preds = %92
  %124 = load i8*, i8** @ZEND_FFI_VAL_ERROR, align 8
  %125 = ptrtoint i8* %124 to i64
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 0
  store i64 %125, i64* %127, align 8
  br label %128

128:                                              ; preds = %123, %122
  br label %129

129:                                              ; preds = %128, %85
  br label %130

130:                                              ; preds = %129, %72
  br label %131

131:                                              ; preds = %130, %59
  br label %132

132:                                              ; preds = %131, %46
  br label %133

133:                                              ; preds = %132, %33
  br label %134

134:                                              ; preds = %133, %14
  ret void
}

declare dso_local i64 @memchr(i32, i8 signext, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
