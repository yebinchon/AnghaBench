; ModuleID = '/home/carl/AnghaBench/php-src/ext/intl/resourcebundle/extr_resourcebundle_class.c_resourcebundle_register_class.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/intl/resourcebundle/extr_resourcebundle_class.c_resourcebundle_register_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32*, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"ResourceBundle\00", align 1
@ResourceBundle_class_functions = common dso_local global i32 0, align 4
@ResourceBundle_object_create = common dso_local global i32 0, align 4
@resourcebundle_get_iterator = common dso_local global i32 0, align 4
@ResourceBundle_ce_ptr = common dso_local global i32 0, align 4
@ResourceBundle_object_handlers = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@std_object_handlers = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@ResourceBundle_object = common dso_local global i32 0, align 4
@zend = common dso_local global i32 0, align 4
@ResourceBundle_object_free = common dso_local global i32 0, align 4
@resourcebundle_array_get = common dso_local global i32 0, align 4
@resourcebundle_array_count = common dso_local global i32 0, align 4
@zend_ce_traversable = common dso_local global i32 0, align 4
@zend_ce_countable = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @resourcebundle_register_class() #0 {
  %1 = alloca %struct.TYPE_6__, align 4
  %2 = load i32, i32* @ResourceBundle_class_functions, align 4
  %3 = bitcast %struct.TYPE_6__* %1 to i64*
  %4 = load i64, i64* %3, align 4
  %5 = call i32 @INIT_CLASS_ENTRY(i64 %4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %2)
  %6 = load i32, i32* @ResourceBundle_object_create, align 4
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 1
  store i32 %6, i32* %7, align 4
  %8 = load i32, i32* @resourcebundle_get_iterator, align 4
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  store i32 %8, i32* %9, align 4
  %10 = call i32 @zend_register_internal_class(%struct.TYPE_6__* %1)
  store i32 %10, i32* @ResourceBundle_ce_ptr, align 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.TYPE_7__* @ResourceBundle_object_handlers to i8*), i8* align 8 bitcast (%struct.TYPE_7__* @std_object_handlers to i8*), i64 32, i1 false)
  %11 = load i32, i32* @ResourceBundle_object, align 4
  %12 = load i32, i32* @zend, align 4
  %13 = call i32 @XtOffsetOf(i32 %11, i32 %12)
  store i32 %13, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ResourceBundle_object_handlers, i32 0, i32 4), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ResourceBundle_object_handlers, i32 0, i32 3), align 8
  %14 = load i32, i32* @ResourceBundle_object_free, align 4
  store i32 %14, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ResourceBundle_object_handlers, i32 0, i32 2), align 8
  %15 = load i32, i32* @resourcebundle_array_get, align 4
  store i32 %15, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ResourceBundle_object_handlers, i32 0, i32 1), align 4
  %16 = load i32, i32* @resourcebundle_array_count, align 4
  store i32 %16, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ResourceBundle_object_handlers, i32 0, i32 0), align 8
  %17 = load i32, i32* @ResourceBundle_ce_ptr, align 4
  %18 = load i32, i32* @zend_ce_traversable, align 4
  %19 = load i32, i32* @zend_ce_countable, align 4
  %20 = call i32 @zend_class_implements(i32 %17, i32 2, i32 %18, i32 %19)
  ret void
}

declare dso_local i32 @INIT_CLASS_ENTRY(i64, i8*, i32) #1

declare dso_local i32 @zend_register_internal_class(%struct.TYPE_6__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @XtOffsetOf(i32, i32) #1

declare dso_local i32 @zend_class_implements(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
