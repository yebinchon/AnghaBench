; ModuleID = '/home/carl/AnghaBench/php-src/ext/spl/extr_spl_array.c_spl_array_get_property_ptr_ptr.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/spl/extr_spl_array.c_spl_array_get_property_ptr_ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64 }

@SPL_ARRAY_ARRAY_AS_PROPS = common dso_local global i32 0, align 4
@ZEND_PROPERTY_EXISTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32, i8**)* @spl_array_get_property_ptr_ptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @spl_array_get_property_ptr_ptr(i32* %0, i32* %1, i32 %2, i8** %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8** %3, i8*** %9, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = call %struct.TYPE_4__* @spl_array_from_obj(i32* %12)
  store %struct.TYPE_4__* %13, %struct.TYPE_4__** %10, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @SPL_ARRAY_ARRAY_AS_PROPS, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %38

20:                                               ; preds = %4
  %21 = load i32*, i32** %6, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = load i32, i32* @ZEND_PROPERTY_EXISTS, align 4
  %24 = call i32 @zend_std_has_property(i32* %21, i32* %22, i32 %23, i32* null)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %38, label %26

26:                                               ; preds = %20
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i32* null, i32** %5, align 8
  br label %44

32:                                               ; preds = %26
  %33 = load i32*, i32** %7, align 8
  %34 = call i32 @ZVAL_STR(i32* %11, i32* %33)
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i32* @spl_array_get_dimension_ptr(i32 1, %struct.TYPE_4__* %35, i32* %11, i32 %36)
  store i32* %37, i32** %5, align 8
  br label %44

38:                                               ; preds = %20, %4
  %39 = load i32*, i32** %6, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = load i32, i32* %8, align 4
  %42 = load i8**, i8*** %9, align 8
  %43 = call i32* @zend_std_get_property_ptr_ptr(i32* %39, i32* %40, i32 %41, i8** %42)
  store i32* %43, i32** %5, align 8
  br label %44

44:                                               ; preds = %38, %32, %31
  %45 = load i32*, i32** %5, align 8
  ret i32* %45
}

declare dso_local %struct.TYPE_4__* @spl_array_from_obj(i32*) #1

declare dso_local i32 @zend_std_has_property(i32*, i32*, i32, i32*) #1

declare dso_local i32 @ZVAL_STR(i32*, i32*) #1

declare dso_local i32* @spl_array_get_dimension_ptr(i32, %struct.TYPE_4__*, i32*, i32) #1

declare dso_local i32* @zend_std_get_property_ptr_ptr(i32*, i32*, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
