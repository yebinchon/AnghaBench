; ModuleID = '/home/carl/AnghaBench/php-src/ext/intl/transliterator/extr_transliterator_class.c_transliterator_register_Transliterator_class.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/intl/transliterator/extr_transliterator_class.c_transliterator_register_Transliterator_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"Transliterator\00", align 1
@Transliterator_class_functions = common dso_local global i32 0, align 4
@Transliterator_object_create = common dso_local global i32 0, align 4
@Transliterator_ce_ptr = common dso_local global i32 0, align 4
@Transliterator_handlers = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@std_object_handlers = common dso_local global i32 0, align 4
@Transliterator_object = common dso_local global i32 0, align 4
@zo = common dso_local global i32 0, align 4
@Transliterator_objects_free = common dso_local global i32 0, align 4
@Transliterator_clone_obj = common dso_local global i32 0, align 4
@Transliterator_get_property_ptr_ptr = common dso_local global i32 0, align 4
@Transliterator_read_property = common dso_local global i32 0, align 4
@Transliterator_write_property = common dso_local global i32 0, align 4
@E_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [72 x i8] c"Transliterator: attempt to create properties on a non-registered class.\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@ZEND_ACC_PUBLIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @transliterator_register_Transliterator_class() #0 {
  %1 = alloca %struct.TYPE_6__, align 4
  %2 = load i32, i32* @Transliterator_class_functions, align 4
  %3 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  %4 = load i32, i32* %3, align 4
  %5 = call i32 @INIT_CLASS_ENTRY(i32 %4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %2)
  %6 = load i32, i32* @Transliterator_object_create, align 4
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  store i32 %6, i32* %7, align 4
  %8 = call i32 @zend_register_internal_class(%struct.TYPE_6__* %1)
  store i32 %8, i32* @Transliterator_ce_ptr, align 4
  %9 = call i32 @memcpy(%struct.TYPE_7__* @Transliterator_handlers, i32* @std_object_handlers, i32 24)
  %10 = load i32, i32* @Transliterator_object, align 4
  %11 = load i32, i32* @zo, align 4
  %12 = call i32 @XtOffsetOf(i32 %10, i32 %11)
  store i32 %12, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Transliterator_handlers, i32 0, i32 5), align 4
  %13 = load i32, i32* @Transliterator_objects_free, align 4
  store i32 %13, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Transliterator_handlers, i32 0, i32 4), align 4
  %14 = load i32, i32* @Transliterator_clone_obj, align 4
  store i32 %14, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Transliterator_handlers, i32 0, i32 3), align 4
  %15 = load i32, i32* @Transliterator_get_property_ptr_ptr, align 4
  store i32 %15, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Transliterator_handlers, i32 0, i32 2), align 4
  %16 = load i32, i32* @Transliterator_read_property, align 4
  store i32 %16, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Transliterator_handlers, i32 0, i32 1), align 4
  %17 = load i32, i32* @Transliterator_write_property, align 4
  store i32 %17, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Transliterator_handlers, i32 0, i32 0), align 4
  %18 = load i32, i32* @Transliterator_ce_ptr, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %0
  %21 = load i32, i32* @E_ERROR, align 4
  %22 = call i32 @zend_error(i32 %21, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0))
  br label %27

23:                                               ; preds = %0
  %24 = load i32, i32* @Transliterator_ce_ptr, align 4
  %25 = load i32, i32* @ZEND_ACC_PUBLIC, align 4
  %26 = call i32 @zend_declare_property_null(i32 %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 2, i32 %25)
  br label %27

27:                                               ; preds = %23, %20
  ret void
}

declare dso_local i32 @INIT_CLASS_ENTRY(i32, i8*, i32) #1

declare dso_local i32 @zend_register_internal_class(%struct.TYPE_6__*) #1

declare dso_local i32 @memcpy(%struct.TYPE_7__*, i32*, i32) #1

declare dso_local i32 @XtOffsetOf(i32, i32) #1

declare dso_local i32 @zend_error(i32, i8*) #1

declare dso_local i32 @zend_declare_property_null(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
