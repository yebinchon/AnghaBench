; ModuleID = '/home/carl/AnghaBench/php-src/Zend/extr_zend_generators.c_zend_register_generator_ce.c'
source_filename = "/home/carl/AnghaBench/php-src/Zend/extr_zend_generators.c_zend_register_generator_ce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32*, i32, i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"Generator\00", align 1
@generator_functions = common dso_local global i32* null, align 8
@zend_ce_generator = common dso_local global %struct.TYPE_6__* null, align 8
@ZEND_ACC_FINAL = common dso_local global i32 0, align 4
@zend_generator_create = common dso_local global i32 0, align 4
@zend_class_serialize_deny = common dso_local global i32 0, align 4
@zend_class_unserialize_deny = common dso_local global i32 0, align 4
@zend_ce_iterator = common dso_local global i32 0, align 4
@zend_generator_get_iterator = common dso_local global i32 0, align 4
@zend_generator_handlers = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@std_object_handlers = common dso_local global i32 0, align 4
@zend_generator_free_storage = common dso_local global i32 0, align 4
@zend_generator_dtor_storage = common dso_local global i32 0, align 4
@zend_generator_get_gc = common dso_local global i32 0, align 4
@zend_generator_get_constructor = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"ClosedGeneratorException\00", align 1
@zend_ce_exception = common dso_local global i32 0, align 4
@zend_ce_ClosedGeneratorException = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zend_register_generator_ce() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* %1, align 4
  %3 = load i32*, i32** @generator_functions, align 8
  %4 = call i32 @INIT_CLASS_ENTRY(i32 %2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* %3)
  %5 = call %struct.TYPE_6__* @zend_register_internal_class(i32* %1)
  store %struct.TYPE_6__* %5, %struct.TYPE_6__** @zend_ce_generator, align 8
  %6 = load i32, i32* @ZEND_ACC_FINAL, align 4
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** @zend_ce_generator, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 4
  %10 = or i32 %9, %6
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* @zend_generator_create, align 4
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** @zend_ce_generator, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 3
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* @zend_class_serialize_deny, align 4
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** @zend_ce_generator, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* @zend_class_unserialize_deny, align 4
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** @zend_ce_generator, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** @zend_ce_generator, align 8
  %21 = load i32, i32* @zend_ce_iterator, align 4
  %22 = call i32 @zend_class_implements(%struct.TYPE_6__* %20, i32 1, i32 %21)
  %23 = load i32, i32* @zend_generator_get_iterator, align 4
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** @zend_ce_generator, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = call i32 @memcpy(%struct.TYPE_7__* @zend_generator_handlers, i32* @std_object_handlers, i32 4)
  %27 = load i32, i32* @zend_generator_free_storage, align 4
  store i32 %27, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @zend_generator_handlers, i32 0, i32 4), align 8
  %28 = load i32, i32* @zend_generator_dtor_storage, align 4
  store i32 %28, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @zend_generator_handlers, i32 0, i32 3), align 4
  %29 = load i32, i32* @zend_generator_get_gc, align 4
  store i32 %29, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @zend_generator_handlers, i32 0, i32 2), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @zend_generator_handlers, i32 0, i32 1), align 8
  %30 = load i32, i32* @zend_generator_get_constructor, align 4
  store i32 %30, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @zend_generator_handlers, i32 0, i32 0), align 8
  %31 = load i32, i32* %1, align 4
  %32 = call i32 @INIT_CLASS_ENTRY(i32 %31, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32* null)
  %33 = load i32, i32* @zend_ce_exception, align 4
  %34 = call i32 @zend_register_internal_class_ex(i32* %1, i32 %33)
  store i32 %34, i32* @zend_ce_ClosedGeneratorException, align 4
  ret void
}

declare dso_local i32 @INIT_CLASS_ENTRY(i32, i8*, i32*) #1

declare dso_local %struct.TYPE_6__* @zend_register_internal_class(i32*) #1

declare dso_local i32 @zend_class_implements(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_7__*, i32*, i32) #1

declare dso_local i32 @zend_register_internal_class_ex(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
