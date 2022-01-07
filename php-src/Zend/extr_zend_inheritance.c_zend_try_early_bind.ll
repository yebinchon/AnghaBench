; ModuleID = '/home/carl/AnghaBench/php-src/Zend/extr_zend_inheritance.c_zend_try_early_bind.c'
source_filename = "/home/carl/AnghaBench/php-src/Zend/extr_zend_inheritance.c_zend_try_early_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32 }

@INHERITANCE_UNRESOLVED = common dso_local global i64 0, align 8
@class_table = common dso_local global i32 0, align 4
@E_COMPILE_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"Cannot declare %s %s, because the name is already in use\00", align 1
@INHERITANCE_SUCCESS = common dso_local global i64 0, align 8
@ZEND_ACC_IMPLICIT_ABSTRACT_CLASS = common dso_local global i32 0, align 4
@ZEND_ACC_INTERFACE = common dso_local global i32 0, align 4
@ZEND_ACC_TRAIT = common dso_local global i32 0, align 4
@ZEND_ACC_EXPLICIT_ABSTRACT_CLASS = common dso_local global i32 0, align 4
@ZEND_ACC_UNRESOLVED_VARIANCE = common dso_local global i32 0, align 4
@ZEND_ACC_LINKED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zend_try_early_bind(%struct.TYPE_12__* %0, %struct.TYPE_12__* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %13 = call i64 @zend_can_early_bind(%struct.TYPE_12__* %11, %struct.TYPE_12__* %12)
  store i64 %13, i64* %10, align 8
  %14 = load i64, i64* %10, align 8
  %15 = load i64, i64* @INHERITANCE_UNRESOLVED, align 8
  %16 = icmp ne i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i64 @EXPECTED(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %96

20:                                               ; preds = %4
  %21 = load i32*, i32** %9, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %43

23:                                               ; preds = %20
  %24 = load i32, i32* @class_table, align 4
  %25 = call i32 @EG(i32 %24)
  %26 = load i32*, i32** %9, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = call i32* @zend_hash_set_bucket_key(i32 %25, i32* %26, i32* %27)
  %29 = icmp eq i32* %28, null
  %30 = zext i1 %29 to i32
  %31 = call i64 @UNEXPECTED(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %23
  %34 = load i32, i32* @E_COMPILE_ERROR, align 4
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %36 = call i32 @zend_get_object_type(%struct.TYPE_12__* %35)
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @ZSTR_VAL(i32 %39)
  %41 = call i32 @zend_error_noreturn(i32 %34, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %40)
  store i32 0, i32* %5, align 4
  br label %97

42:                                               ; preds = %23
  br label %55

43:                                               ; preds = %20
  %44 = load i32, i32* @class_table, align 4
  %45 = call i32 @CG(i32 %44)
  %46 = load i32*, i32** %8, align 8
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %48 = call i32* @zend_hash_add_ptr(i32 %45, i32* %46, %struct.TYPE_12__* %47)
  %49 = icmp eq i32* %48, null
  %50 = zext i1 %49 to i32
  %51 = call i64 @UNEXPECTED(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %43
  store i32 0, i32* %5, align 4
  br label %97

54:                                               ; preds = %43
  br label %55

55:                                               ; preds = %54, %42
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %58 = load i64, i64* %10, align 8
  %59 = load i64, i64* @INHERITANCE_SUCCESS, align 8
  %60 = icmp eq i64 %58, %59
  %61 = zext i1 %60 to i32
  %62 = call i32 @zend_do_inheritance_ex(%struct.TYPE_12__* %56, %struct.TYPE_12__* %57, i32 %61)
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %64 = call i32 @zend_build_properties_info_table(%struct.TYPE_12__* %63)
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @ZEND_ACC_IMPLICIT_ABSTRACT_CLASS, align 4
  %69 = load i32, i32* @ZEND_ACC_INTERFACE, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @ZEND_ACC_TRAIT, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @ZEND_ACC_EXPLICIT_ABSTRACT_CLASS, align 4
  %74 = or i32 %72, %73
  %75 = and i32 %67, %74
  %76 = load i32, i32* @ZEND_ACC_IMPLICIT_ABSTRACT_CLASS, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %55
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %80 = call i32 @zend_verify_abstract_class(%struct.TYPE_12__* %79)
  br label %81

81:                                               ; preds = %78, %55
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @ZEND_ACC_UNRESOLVED_VARIANCE, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  %88 = xor i1 %87, true
  %89 = zext i1 %88 to i32
  %90 = call i32 @ZEND_ASSERT(i32 %89)
  %91 = load i32, i32* @ZEND_ACC_LINKED, align 4
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %94, %91
  store i32 %95, i32* %93, align 4
  store i32 1, i32* %5, align 4
  br label %97

96:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %97

97:                                               ; preds = %96, %81, %53, %33
  %98 = load i32, i32* %5, align 4
  ret i32 %98
}

declare dso_local i64 @zend_can_early_bind(%struct.TYPE_12__*, %struct.TYPE_12__*) #1

declare dso_local i64 @EXPECTED(i32) #1

declare dso_local i64 @UNEXPECTED(i32) #1

declare dso_local i32* @zend_hash_set_bucket_key(i32, i32*, i32*) #1

declare dso_local i32 @EG(i32) #1

declare dso_local i32 @zend_error_noreturn(i32, i8*, i32, i32) #1

declare dso_local i32 @zend_get_object_type(%struct.TYPE_12__*) #1

declare dso_local i32 @ZSTR_VAL(i32) #1

declare dso_local i32* @zend_hash_add_ptr(i32, i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @CG(i32) #1

declare dso_local i32 @zend_do_inheritance_ex(%struct.TYPE_12__*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @zend_build_properties_info_table(%struct.TYPE_12__*) #1

declare dso_local i32 @zend_verify_abstract_class(%struct.TYPE_12__*) #1

declare dso_local i32 @ZEND_ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
