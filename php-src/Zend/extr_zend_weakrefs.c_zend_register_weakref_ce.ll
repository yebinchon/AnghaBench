; ModuleID = '/home/carl/AnghaBench/php-src/Zend/extr_zend_weakrefs.c_zend_register_weakref_ce.c'
source_filename = "/home/carl/AnghaBench/php-src/Zend/extr_zend_weakrefs.c_zend_register_weakref_ce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32*, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"WeakReference\00", align 1
@zend_weakref_methods = common dso_local global i32 0, align 4
@zend_ce_weakref = common dso_local global %struct.TYPE_6__* null, align 8
@ZEND_ACC_FINAL = common dso_local global i32 0, align 4
@zend_weakref_new = common dso_local global i32 0, align 4
@zend_class_serialize_deny = common dso_local global i32 0, align 4
@zend_class_unserialize_deny = common dso_local global i32 0, align 4
@zend_weakref_handlers = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@zend_weakref = common dso_local global i32 0, align 4
@std = common dso_local global i32 0, align 4
@zend_weakref_free = common dso_local global i32 0, align 4
@zend_weakref_no_read = common dso_local global i32 0, align 4
@zend_weakref_no_write = common dso_local global i32 0, align 4
@zend_weakref_no_isset = common dso_local global i32 0, align 4
@zend_weakref_no_unset = common dso_local global i32 0, align 4
@zend_weakref_no_read_ptr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zend_register_weakref_ce() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* %1, align 4
  %3 = load i32, i32* @zend_weakref_methods, align 4
  %4 = call i32 @INIT_CLASS_ENTRY(i32 %2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %3)
  %5 = call %struct.TYPE_6__* @zend_register_internal_class(i32* %1)
  store %struct.TYPE_6__* %5, %struct.TYPE_6__** @zend_ce_weakref, align 8
  %6 = load i32, i32* @ZEND_ACC_FINAL, align 4
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** @zend_ce_weakref, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = or i32 %9, %6
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* @zend_weakref_new, align 4
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** @zend_ce_weakref, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 2
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* @zend_class_serialize_deny, align 4
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** @zend_ce_weakref, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* @zend_class_unserialize_deny, align 4
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** @zend_ce_weakref, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = call i32 (...) @zend_get_std_object_handlers()
  %21 = call i32 @memcpy(%struct.TYPE_5__* @zend_weakref_handlers, i32 %20, i32 4)
  %22 = load i32, i32* @zend_weakref, align 4
  %23 = load i32, i32* @std, align 4
  %24 = call i32 @XtOffsetOf(i32 %22, i32 %23)
  store i32 %24, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @zend_weakref_handlers, i32 0, i32 7), align 8
  %25 = load i32, i32* @zend_weakref_free, align 4
  store i32 %25, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @zend_weakref_handlers, i32 0, i32 6), align 4
  %26 = load i32, i32* @zend_weakref_no_read, align 4
  store i32 %26, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @zend_weakref_handlers, i32 0, i32 5), align 8
  %27 = load i32, i32* @zend_weakref_no_write, align 4
  store i32 %27, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @zend_weakref_handlers, i32 0, i32 4), align 4
  %28 = load i32, i32* @zend_weakref_no_isset, align 4
  store i32 %28, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @zend_weakref_handlers, i32 0, i32 3), align 8
  %29 = load i32, i32* @zend_weakref_no_unset, align 4
  store i32 %29, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @zend_weakref_handlers, i32 0, i32 2), align 4
  %30 = load i32, i32* @zend_weakref_no_read_ptr, align 4
  store i32 %30, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @zend_weakref_handlers, i32 0, i32 1), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @zend_weakref_handlers, i32 0, i32 0), align 8
  ret void
}

declare dso_local i32 @INIT_CLASS_ENTRY(i32, i8*, i32) #1

declare dso_local %struct.TYPE_6__* @zend_register_internal_class(i32*) #1

declare dso_local i32 @memcpy(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @zend_get_std_object_handlers(...) #1

declare dso_local i32 @XtOffsetOf(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
