; ModuleID = '/home/carl/AnghaBench/php-src/Zend/extr_zend_inheritance.c_lookup_class.c'
source_filename = "/home/carl/AnghaBench/php-src/Zend/extr_zend_inheritance.c_lookup_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@in_compilation = common dso_local global i32 0, align 4
@ZEND_FETCH_CLASS_ALLOW_UNLINKED = common dso_local global i32 0, align 4
@ZEND_FETCH_CLASS_NO_AUTOLOAD = common dso_local global i32 0, align 4
@delayed_autoloads = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_6__* (%struct.TYPE_6__*, i32*, i64)* @lookup_class to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_6__* @lookup_class(%struct.TYPE_6__* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i32, i32* @in_compilation, align 4
  %11 = call i32 @CG(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %44, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @ZEND_FETCH_CLASS_ALLOW_UNLINKED, align 4
  %15 = load i32, i32* @ZEND_FETCH_CLASS_NO_AUTOLOAD, align 4
  %16 = or i32 %14, %15
  store i32 %16, i32* %9, align 4
  %17 = load i32*, i32** %6, align 8
  %18 = load i32, i32* %9, align 4
  %19 = call %struct.TYPE_6__* @zend_lookup_class_ex(i32* %17, i32* null, i32 %18)
  store %struct.TYPE_6__* %19, %struct.TYPE_6__** %8, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %21 = icmp ne %struct.TYPE_6__* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %13
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  store %struct.TYPE_6__* %23, %struct.TYPE_6__** %4, align 8
  br label %67

24:                                               ; preds = %13
  %25 = load i64, i64* %7, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %43

27:                                               ; preds = %24
  %28 = load i32, i32* @delayed_autoloads, align 4
  %29 = call i32 @CG(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* @delayed_autoloads, align 4
  %33 = call i32 @CG(i32 %32)
  %34 = call i32 @ALLOC_HASHTABLE(i32 %33)
  %35 = load i32, i32* @delayed_autoloads, align 4
  %36 = call i32 @CG(i32 %35)
  %37 = call i32 @zend_hash_init(i32 %36, i32 0, i32* null, i32* null, i32 0)
  br label %38

38:                                               ; preds = %31, %27
  %39 = load i32, i32* @delayed_autoloads, align 4
  %40 = call i32 @CG(i32 %39)
  %41 = load i32*, i32** %6, align 8
  %42 = call i32 @zend_hash_add_empty_element(i32 %40, i32* %41)
  br label %43

43:                                               ; preds = %38, %24
  br label %66

44:                                               ; preds = %3
  %45 = load i32*, i32** %6, align 8
  %46 = load i32, i32* @ZEND_FETCH_CLASS_NO_AUTOLOAD, align 4
  %47 = call %struct.TYPE_6__* @zend_lookup_class_ex(i32* %45, i32* null, i32 %46)
  store %struct.TYPE_6__* %47, %struct.TYPE_6__** %8, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %49 = icmp ne %struct.TYPE_6__* %48, null
  br i1 %49, label %50, label %56

50:                                               ; preds = %44
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %52 = call i64 @class_visible(%struct.TYPE_6__* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  store %struct.TYPE_6__* %55, %struct.TYPE_6__** %4, align 8
  br label %67

56:                                               ; preds = %50, %44
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32*, i32** %6, align 8
  %61 = call i64 @zend_string_equals_ci(i32 %59, i32* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %56
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  store %struct.TYPE_6__* %64, %struct.TYPE_6__** %4, align 8
  br label %67

65:                                               ; preds = %56
  br label %66

66:                                               ; preds = %65, %43
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %4, align 8
  br label %67

67:                                               ; preds = %66, %63, %54, %22
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  ret %struct.TYPE_6__* %68
}

declare dso_local i32 @CG(i32) #1

declare dso_local %struct.TYPE_6__* @zend_lookup_class_ex(i32*, i32*, i32) #1

declare dso_local i32 @ALLOC_HASHTABLE(i32) #1

declare dso_local i32 @zend_hash_init(i32, i32, i32*, i32*, i32) #1

declare dso_local i32 @zend_hash_add_empty_element(i32, i32*) #1

declare dso_local i64 @class_visible(%struct.TYPE_6__*) #1

declare dso_local i64 @zend_string_equals_ci(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
