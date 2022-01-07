; ModuleID = '/home/carl/AnghaBench/php-src/Zend/extr_zend_closures.c_zend_register_closure_ce.c'
source_filename = "/home/carl/AnghaBench/php-src/Zend/extr_zend_closures.c_zend_register_closure_ce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"Closure\00", align 1
@closure_functions = common dso_local global i32 0, align 4
@zend_ce_closure = common dso_local global %struct.TYPE_5__* null, align 8
@ZEND_ACC_FINAL = common dso_local global i32 0, align 4
@zend_closure_new = common dso_local global i32 0, align 4
@zend_class_serialize_deny = common dso_local global i32 0, align 4
@zend_class_unserialize_deny = common dso_local global i32 0, align 4
@closure_handlers = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@std_object_handlers = common dso_local global i32 0, align 4
@zend_closure_free_storage = common dso_local global i32 0, align 4
@zend_closure_get_constructor = common dso_local global i32 0, align 4
@zend_closure_get_method = common dso_local global i32 0, align 4
@zend_closure_write_property = common dso_local global i32 0, align 4
@zend_closure_read_property = common dso_local global i32 0, align 4
@zend_closure_get_property_ptr_ptr = common dso_local global i32 0, align 4
@zend_closure_has_property = common dso_local global i32 0, align 4
@zend_closure_unset_property = common dso_local global i32 0, align 4
@zend_closure_compare = common dso_local global i32 0, align 4
@zend_closure_clone = common dso_local global i32 0, align 4
@zend_closure_get_debug_info = common dso_local global i32 0, align 4
@zend_closure_get_closure = common dso_local global i32 0, align 4
@zend_closure_get_gc = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zend_register_closure_ce() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* %1, align 4
  %3 = load i32, i32* @closure_functions, align 4
  %4 = call i32 @INIT_CLASS_ENTRY(i32 %2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %3)
  %5 = call %struct.TYPE_5__* @zend_register_internal_class(i32* %1)
  store %struct.TYPE_5__* %5, %struct.TYPE_5__** @zend_ce_closure, align 8
  %6 = load i32, i32* @ZEND_ACC_FINAL, align 4
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** @zend_ce_closure, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = or i32 %9, %6
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* @zend_closure_new, align 4
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** @zend_ce_closure, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 2
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* @zend_class_serialize_deny, align 4
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** @zend_ce_closure, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* @zend_class_unserialize_deny, align 4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** @zend_ce_closure, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = call i32 @memcpy(%struct.TYPE_6__* @closure_handlers, i32* @std_object_handlers, i32 4)
  %21 = load i32, i32* @zend_closure_free_storage, align 4
  store i32 %21, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @closure_handlers, i32 0, i32 12), align 4
  %22 = load i32, i32* @zend_closure_get_constructor, align 4
  store i32 %22, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @closure_handlers, i32 0, i32 11), align 4
  %23 = load i32, i32* @zend_closure_get_method, align 4
  store i32 %23, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @closure_handlers, i32 0, i32 10), align 4
  %24 = load i32, i32* @zend_closure_write_property, align 4
  store i32 %24, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @closure_handlers, i32 0, i32 9), align 4
  %25 = load i32, i32* @zend_closure_read_property, align 4
  store i32 %25, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @closure_handlers, i32 0, i32 8), align 4
  %26 = load i32, i32* @zend_closure_get_property_ptr_ptr, align 4
  store i32 %26, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @closure_handlers, i32 0, i32 7), align 4
  %27 = load i32, i32* @zend_closure_has_property, align 4
  store i32 %27, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @closure_handlers, i32 0, i32 6), align 4
  %28 = load i32, i32* @zend_closure_unset_property, align 4
  store i32 %28, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @closure_handlers, i32 0, i32 5), align 4
  %29 = load i32, i32* @zend_closure_compare, align 4
  store i32 %29, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @closure_handlers, i32 0, i32 4), align 4
  %30 = load i32, i32* @zend_closure_clone, align 4
  store i32 %30, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @closure_handlers, i32 0, i32 3), align 4
  %31 = load i32, i32* @zend_closure_get_debug_info, align 4
  store i32 %31, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @closure_handlers, i32 0, i32 2), align 4
  %32 = load i32, i32* @zend_closure_get_closure, align 4
  store i32 %32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @closure_handlers, i32 0, i32 1), align 4
  %33 = load i32, i32* @zend_closure_get_gc, align 4
  store i32 %33, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @closure_handlers, i32 0, i32 0), align 4
  ret void
}

declare dso_local i32 @INIT_CLASS_ENTRY(i32, i8*, i32) #1

declare dso_local %struct.TYPE_5__* @zend_register_internal_class(i32*) #1

declare dso_local i32 @memcpy(%struct.TYPE_6__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
