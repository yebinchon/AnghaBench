; ModuleID = '/home/carl/AnghaBench/php-src/ext/ffi/extr_ffi.c_zend_ffi_cdata_compare_objects.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/ffi/extr_ffi.c_zend_ffi_cdata_compare_objects.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32 }
%struct.TYPE_4__ = type { i64 }

@IS_OBJECT = common dso_local global i64 0, align 8
@zend_ffi_cdata_ce = common dso_local global i64 0, align 8
@ZEND_FFI_TYPE_POINTER = common dso_local global i64 0, align 8
@zend_ffi_exception_ce = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"NULL pointer dereference\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Comparison of incompatible C types\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @zend_ffi_cdata_compare_objects to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zend_ffi_cdata_compare_objects(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = call i64 @Z_TYPE_P(i32* %12)
  %14 = load i64, i64* @IS_OBJECT, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %90

16:                                               ; preds = %2
  %17 = load i32*, i32** %4, align 8
  %18 = call i64 @Z_OBJCE_P(i32* %17)
  %19 = load i64, i64* @zend_ffi_cdata_ce, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %90

21:                                               ; preds = %16
  %22 = load i32*, i32** %5, align 8
  %23 = call i64 @Z_TYPE_P(i32* %22)
  %24 = load i64, i64* @IS_OBJECT, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %90

26:                                               ; preds = %21
  %27 = load i32*, i32** %5, align 8
  %28 = call i64 @Z_OBJCE_P(i32* %27)
  %29 = load i64, i64* @zend_ffi_cdata_ce, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %90

31:                                               ; preds = %26
  %32 = load i32*, i32** %4, align 8
  %33 = call i64 @Z_OBJ_P(i32* %32)
  %34 = inttoptr i64 %33 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %34, %struct.TYPE_5__** %6, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = call i64 @Z_OBJ_P(i32* %35)
  %37 = inttoptr i64 %36 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %37, %struct.TYPE_5__** %7, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call %struct.TYPE_4__* @ZEND_FFI_TYPE(i32 %40)
  store %struct.TYPE_4__* %41, %struct.TYPE_4__** %8, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call %struct.TYPE_4__* @ZEND_FFI_TYPE(i32 %44)
  store %struct.TYPE_4__* %45, %struct.TYPE_4__** %9, align 8
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @ZEND_FFI_TYPE_POINTER, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %89

51:                                               ; preds = %31
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @ZEND_FFI_TYPE_POINTER, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %89

57:                                               ; preds = %51
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = inttoptr i64 %60 to i8**
  %62 = load i8*, i8** %61, align 8
  store i8* %62, i8** %10, align 8
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = inttoptr i64 %65 to i8**
  %67 = load i8*, i8** %66, align 8
  store i8* %67, i8** %11, align 8
  %68 = load i8*, i8** %10, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %57
  %71 = load i8*, i8** %11, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %70, %57
  %74 = load i32, i32* @zend_ffi_exception_ce, align 4
  %75 = call i32 @zend_throw_error(i32 %74, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %93

76:                                               ; preds = %70
  %77 = load i8*, i8** %10, align 8
  %78 = load i8*, i8** %11, align 8
  %79 = icmp eq i8* %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  br label %87

81:                                               ; preds = %76
  %82 = load i8*, i8** %10, align 8
  %83 = load i8*, i8** %11, align 8
  %84 = icmp ult i8* %82, %83
  %85 = zext i1 %84 to i64
  %86 = select i1 %84, i32 -1, i32 1
  br label %87

87:                                               ; preds = %81, %80
  %88 = phi i32 [ 0, %80 ], [ %86, %81 ]
  store i32 %88, i32* %3, align 4
  br label %93

89:                                               ; preds = %51, %31
  br label %90

90:                                               ; preds = %89, %26, %21, %16, %2
  %91 = load i32, i32* @zend_ffi_exception_ce, align 4
  %92 = call i32 @zend_throw_error(i32 %91, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %93

93:                                               ; preds = %90, %87, %73
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i64 @Z_TYPE_P(i32*) #1

declare dso_local i64 @Z_OBJCE_P(i32*) #1

declare dso_local i64 @Z_OBJ_P(i32*) #1

declare dso_local %struct.TYPE_4__* @ZEND_FFI_TYPE(i32) #1

declare dso_local i32 @zend_throw_error(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
