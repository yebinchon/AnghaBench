; ModuleID = '/home/carl/AnghaBench/php-src/ext/ffi/extr_ffi.c_zend_ffi_nested_type.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/ffi/extr_ffi.c_zend_ffi_nested_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, %struct.TYPE_15__, i32, %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_15__ = type { %struct.TYPE_16__* }
%struct.TYPE_14__ = type { i32, %struct.TYPE_16__* }
%struct.TYPE_13__ = type { %struct.TYPE_16__* }

@zend_ffi_type_char = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@SUCCESS = common dso_local global i32 0, align 4
@FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, %struct.TYPE_16__*)* @zend_ffi_nested_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zend_ffi_nested_type(%struct.TYPE_16__* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  %6 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %7 = call %struct.TYPE_16__* @ZEND_FFI_TYPE(%struct.TYPE_16__* %6)
  store %struct.TYPE_16__* %7, %struct.TYPE_16__** %5, align 8
  %8 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  switch i32 %10, label %109 [
    i32 128, label %11
    i32 130, label %32
    i32 129, label %88
  ]

11:                                               ; preds = %2
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 5
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %16 = icmp eq %struct.TYPE_16__* %15, @zend_ffi_type_char
  br i1 %16, label %17, label %25

17:                                               ; preds = %11
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 5
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  store %struct.TYPE_16__* %18, %struct.TYPE_16__** %21, align 8
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %23 = call %struct.TYPE_16__* @ZEND_FFI_TYPE(%struct.TYPE_16__* %22)
  %24 = call i32 @zend_ffi_validate_vla(%struct.TYPE_16__* %23)
  store i32 %24, i32* %3, align 4
  br label %111

25:                                               ; preds = %11
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 5
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %29, align 8
  %31 = call i32 @zend_ffi_nested_type(%struct.TYPE_16__* %26, %struct.TYPE_16__* %30)
  store i32 %31, i32* %3, align 4
  br label %111

32:                                               ; preds = %2
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 4
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %35, align 8
  %37 = icmp eq %struct.TYPE_16__* %36, @zend_ffi_type_char
  br i1 %37, label %38, label %51

38:                                               ; preds = %32
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 4
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 1
  store %struct.TYPE_16__* %39, %struct.TYPE_16__** %42, align 8
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %44 = call %struct.TYPE_16__* @ZEND_FFI_TYPE(%struct.TYPE_16__* %43)
  %45 = call i32 @zend_ffi_validate_array_element_type(%struct.TYPE_16__* %44)
  %46 = load i32, i32* @SUCCESS, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %38
  %49 = load i32, i32* @FAILURE, align 4
  store i32 %49, i32* %3, align 4
  br label %111

50:                                               ; preds = %38
  br label %63

51:                                               ; preds = %32
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 4
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %55, align 8
  %57 = call i32 @zend_ffi_nested_type(%struct.TYPE_16__* %52, %struct.TYPE_16__* %56)
  %58 = load i32, i32* @SUCCESS, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %51
  %61 = load i32, i32* @FAILURE, align 4
  store i32 %61, i32* %3, align 4
  br label %111

62:                                               ; preds = %51
  br label %63

63:                                               ; preds = %62, %50
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 4
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 4
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %70, align 8
  %72 = call %struct.TYPE_16__* @ZEND_FFI_TYPE(%struct.TYPE_16__* %71)
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = mul nsw i32 %67, %74
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 4
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %80, align 8
  %82 = call %struct.TYPE_16__* @ZEND_FFI_TYPE(%struct.TYPE_16__* %81)
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 3
  store i32 %84, i32* %86, align 8
  %87 = load i32, i32* @SUCCESS, align 4
  store i32 %87, i32* %3, align 4
  br label %111

88:                                               ; preds = %2
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %91, align 8
  %93 = icmp eq %struct.TYPE_16__* %92, @zend_ffi_type_char
  br i1 %93, label %94, label %102

94:                                               ; preds = %88
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 0
  store %struct.TYPE_16__* %95, %struct.TYPE_16__** %98, align 8
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %100 = call %struct.TYPE_16__* @ZEND_FFI_TYPE(%struct.TYPE_16__* %99)
  %101 = call i32 @zend_ffi_validate_func_ret_type(%struct.TYPE_16__* %100)
  store i32 %101, i32* %3, align 4
  br label %111

102:                                              ; preds = %88
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %106, align 8
  %108 = call i32 @zend_ffi_nested_type(%struct.TYPE_16__* %103, %struct.TYPE_16__* %107)
  store i32 %108, i32* %3, align 4
  br label %111

109:                                              ; preds = %2
  %110 = call i32 @ZEND_ASSERT(i32 0)
  br label %111

111:                                              ; preds = %17, %25, %48, %60, %63, %94, %102, %109
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local %struct.TYPE_16__* @ZEND_FFI_TYPE(%struct.TYPE_16__*) #1

declare dso_local i32 @zend_ffi_validate_vla(%struct.TYPE_16__*) #1

declare dso_local i32 @zend_ffi_validate_array_element_type(%struct.TYPE_16__*) #1

declare dso_local i32 @zend_ffi_validate_func_ret_type(%struct.TYPE_16__*) #1

declare dso_local i32 @ZEND_ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
