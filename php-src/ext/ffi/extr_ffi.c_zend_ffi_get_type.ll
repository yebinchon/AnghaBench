; ModuleID = '/home/carl/AnghaBench/php-src/ext/ffi/extr_ffi.c_zend_ffi_get_type.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/ffi/extr_ffi.c_zend_ffi_get_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@ffi_type_float = common dso_local global i32 0, align 4
@ffi_type_double = common dso_local global i32 0, align 4
@ffi_type_longdouble = common dso_local global i32 0, align 4
@ffi_type_uint8 = common dso_local global i32 0, align 4
@ffi_type_sint8 = common dso_local global i32 0, align 4
@ffi_type_uint16 = common dso_local global i32 0, align 4
@ffi_type_sint16 = common dso_local global i32 0, align 4
@ffi_type_uint32 = common dso_local global i32 0, align 4
@ffi_type_sint32 = common dso_local global i32 0, align 4
@ffi_type_uint64 = common dso_local global i32 0, align 4
@ffi_type_sint64 = common dso_local global i32 0, align 4
@ffi_type_pointer = common dso_local global i32 0, align 4
@ffi_type_void = common dso_local global i32 0, align 4
@ZEND_FFI_ATTR_UNION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_6__*)* @zend_ffi_get_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @zend_ffi_get_type(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %4, align 4
  br label %9

9:                                                ; preds = %26, %1
  %10 = load i32, i32* %4, align 4
  switch i32 %10, label %43 [
    i32 140, label %11
    i32 142, label %12
    i32 139, label %13
    i32 129, label %14
    i32 134, label %15
    i32 132, label %16
    i32 137, label %17
    i32 131, label %18
    i32 136, label %19
    i32 130, label %20
    i32 135, label %21
    i32 138, label %22
    i32 128, label %23
    i32 144, label %24
    i32 143, label %25
    i32 141, label %26
    i32 133, label %31
  ]

11:                                               ; preds = %9
  store i32* @ffi_type_float, i32** %2, align 8
  br label %45

12:                                               ; preds = %9
  store i32* @ffi_type_double, i32** %2, align 8
  br label %45

13:                                               ; preds = %9
  store i32* @ffi_type_longdouble, i32** %2, align 8
  br label %45

14:                                               ; preds = %9
  store i32* @ffi_type_uint8, i32** %2, align 8
  br label %45

15:                                               ; preds = %9
  store i32* @ffi_type_sint8, i32** %2, align 8
  br label %45

16:                                               ; preds = %9
  store i32* @ffi_type_uint16, i32** %2, align 8
  br label %45

17:                                               ; preds = %9
  store i32* @ffi_type_sint16, i32** %2, align 8
  br label %45

18:                                               ; preds = %9
  store i32* @ffi_type_uint32, i32** %2, align 8
  br label %45

19:                                               ; preds = %9
  store i32* @ffi_type_sint32, i32** %2, align 8
  br label %45

20:                                               ; preds = %9
  store i32* @ffi_type_uint64, i32** %2, align 8
  br label %45

21:                                               ; preds = %9
  store i32* @ffi_type_sint64, i32** %2, align 8
  br label %45

22:                                               ; preds = %9
  store i32* @ffi_type_pointer, i32** %2, align 8
  br label %45

23:                                               ; preds = %9
  store i32* @ffi_type_void, i32** %2, align 8
  br label %45

24:                                               ; preds = %9
  store i32* @ffi_type_uint8, i32** %2, align 8
  br label %45

25:                                               ; preds = %9
  store i32* @ffi_type_sint8, i32** %2, align 8
  br label %45

26:                                               ; preds = %9
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %4, align 4
  br label %9

31:                                               ; preds = %9
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @ZEND_FFI_ATTR_UNION, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %31
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %40 = call i32* @zend_ffi_make_fake_struct_type(%struct.TYPE_6__* %39)
  store i32* %40, i32** %5, align 8
  %41 = load i32*, i32** %5, align 8
  store i32* %41, i32** %2, align 8
  br label %45

42:                                               ; preds = %31
  br label %44

43:                                               ; preds = %9
  br label %44

44:                                               ; preds = %43, %42
  store i32* null, i32** %2, align 8
  br label %45

45:                                               ; preds = %44, %38, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11
  %46 = load i32*, i32** %2, align 8
  ret i32* %46
}

declare dso_local i32* @zend_ffi_make_fake_struct_type(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
