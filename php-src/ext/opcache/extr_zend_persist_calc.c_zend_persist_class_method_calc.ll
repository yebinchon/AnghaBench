; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/extr_zend_persist_calc.c_zend_persist_class_method_calc.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/extr_zend_persist_calc.c_zend_persist_class_method_calc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32 }

@ZEND_USER_FUNCTION = common dso_local global i64 0, align 8
@ZEND_INTERNAL_FUNCTION = common dso_local global i64 0, align 8
@ZEND_ACC_ARENA_ALLOCATED = common dso_local global i32 0, align 4
@is_immutable_class = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @zend_persist_class_method_calc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zend_persist_class_method_calc(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = call %struct.TYPE_8__* @Z_PTR_P(i32* %5)
  store %struct.TYPE_8__* %6, %struct.TYPE_8__** %3, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @ZEND_USER_FUNCTION, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %39

12:                                               ; preds = %1
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @ZEND_INTERNAL_FUNCTION, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @ZEND_ASSERT(i32 %18)
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @ZEND_ACC_ARENA_ALLOCATED, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %12
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %28 = call %struct.TYPE_8__* @zend_shared_alloc_get_xlat_entry(%struct.TYPE_8__* %27)
  store %struct.TYPE_8__* %28, %struct.TYPE_8__** %4, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %30 = icmp ne %struct.TYPE_8__* %29, null
  br i1 %30, label %37, label %31

31:                                               ; preds = %26
  %32 = call i32 @ADD_SIZE_EX(i32 4)
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %34 = load i32*, i32** %2, align 8
  %35 = call %struct.TYPE_8__* @Z_PTR_P(i32* %34)
  %36 = call i32 @zend_shared_alloc_register_xlat_entry(%struct.TYPE_8__* %33, %struct.TYPE_8__* %35)
  br label %37

37:                                               ; preds = %31, %26
  br label %38

38:                                               ; preds = %37, %12
  br label %59

39:                                               ; preds = %1
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %41 = call %struct.TYPE_8__* @zend_shared_alloc_get_xlat_entry(%struct.TYPE_8__* %40)
  store %struct.TYPE_8__* %41, %struct.TYPE_8__** %4, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %43 = icmp ne %struct.TYPE_8__* %42, null
  br i1 %43, label %59, label %44

44:                                               ; preds = %39
  %45 = call i32 @ADD_SIZE_EX(i32 16)
  %46 = load i32*, i32** %2, align 8
  %47 = call %struct.TYPE_8__* @Z_PTR_P(i32* %46)
  %48 = call i32 @zend_persist_op_array_calc_ex(%struct.TYPE_8__* %47)
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %50 = load i32*, i32** %2, align 8
  %51 = call %struct.TYPE_8__* @Z_PTR_P(i32* %50)
  %52 = call i32 @zend_shared_alloc_register_xlat_entry(%struct.TYPE_8__* %49, %struct.TYPE_8__* %51)
  %53 = load i32, i32* @is_immutable_class, align 4
  %54 = call i32 @ZCG(i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %44
  %57 = call i32 @ADD_ARENA_SIZE(i32 8)
  br label %58

58:                                               ; preds = %56, %44
  br label %59

59:                                               ; preds = %38, %58, %39
  ret void
}

declare dso_local %struct.TYPE_8__* @Z_PTR_P(i32*) #1

declare dso_local i32 @ZEND_ASSERT(i32) #1

declare dso_local %struct.TYPE_8__* @zend_shared_alloc_get_xlat_entry(%struct.TYPE_8__*) #1

declare dso_local i32 @ADD_SIZE_EX(i32) #1

declare dso_local i32 @zend_shared_alloc_register_xlat_entry(%struct.TYPE_8__*, %struct.TYPE_8__*) #1

declare dso_local i32 @zend_persist_op_array_calc_ex(%struct.TYPE_8__*) #1

declare dso_local i32 @ZCG(i32) #1

declare dso_local i32 @ADD_ARENA_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
