; ModuleID = '/home/carl/AnghaBench/php-src/ext/zip/extr_php_zip.c_php_zip_has_property.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/zip/extr_php_zip.c_php_zip_has_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }

@IS_NULL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i8**)* @php_zip_has_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @php_zip_has_property(i32* %0, i32* %1, i32 %2, i8** %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8** %3, i8*** %8, align 8
  store i32* null, i32** %10, align 8
  store i32 0, i32* %11, align 4
  %14 = load i32*, i32** %5, align 8
  %15 = call %struct.TYPE_4__* @php_zip_fetch_object(i32* %14)
  store %struct.TYPE_4__* %15, %struct.TYPE_4__** %9, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %4
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = call i32* @zend_hash_find_ptr(i32* %23, i32* %24)
  store i32* %25, i32** %10, align 8
  br label %26

26:                                               ; preds = %20, %4
  %27 = load i32*, i32** %10, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %57

29:                                               ; preds = %26
  %30 = load i32, i32* %7, align 4
  %31 = icmp eq i32 %30, 2
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 1, i32* %11, align 4
  br label %55

33:                                               ; preds = %29
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %35 = load i32*, i32** %10, align 8
  %36 = call i32* @php_zip_property_reader(%struct.TYPE_4__* %34, i32* %35, i32* %12)
  store i32* %36, i32** %13, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %54

38:                                               ; preds = %33
  %39 = load i32, i32* %7, align 4
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = call i32 @zend_is_true(i32* %12)
  store i32 %42, i32* %11, align 4
  br label %53

43:                                               ; preds = %38
  %44 = load i32, i32* %7, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %43
  %47 = load i32, i32* %12, align 4
  %48 = call i64 @Z_TYPE(i32 %47)
  %49 = load i64, i64* @IS_NULL, align 8
  %50 = icmp ne i64 %48, %49
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %11, align 4
  br label %52

52:                                               ; preds = %46, %43
  br label %53

53:                                               ; preds = %52, %41
  br label %54

54:                                               ; preds = %53, %33
  br label %55

55:                                               ; preds = %54, %32
  %56 = call i32 @zval_ptr_dtor(i32* %12)
  br label %63

57:                                               ; preds = %26
  %58 = load i32*, i32** %5, align 8
  %59 = load i32*, i32** %6, align 8
  %60 = load i32, i32* %7, align 4
  %61 = load i8**, i8*** %8, align 8
  %62 = call i32 @zend_std_has_property(i32* %58, i32* %59, i32 %60, i8** %61)
  store i32 %62, i32* %11, align 4
  br label %63

63:                                               ; preds = %57, %55
  %64 = load i32, i32* %11, align 4
  ret i32 %64
}

declare dso_local %struct.TYPE_4__* @php_zip_fetch_object(i32*) #1

declare dso_local i32* @zend_hash_find_ptr(i32*, i32*) #1

declare dso_local i32* @php_zip_property_reader(%struct.TYPE_4__*, i32*, i32*) #1

declare dso_local i32 @zend_is_true(i32*) #1

declare dso_local i64 @Z_TYPE(i32) #1

declare dso_local i32 @zval_ptr_dtor(i32*) #1

declare dso_local i32 @zend_std_has_property(i32*, i32*, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
