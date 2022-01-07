; ModuleID = '/home/carl/AnghaBench/php-src/ext/spl/extr_spl_array.c_spl_array_get_debug_info.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/spl/extr_spl_array.c_spl_array_get_debug_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32* }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32* }

@SPL_ARRAY_IS_SELF = common dso_local global i32 0, align 4
@zval_add_ref = common dso_local global i64 0, align 8
@spl_handler_ArrayIterator = common dso_local global i32 0, align 4
@spl_ce_ArrayIterator = common dso_local global i32* null, align 8
@spl_ce_ArrayObject = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"storage\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_7__*, i32*)* @spl_array_get_debug_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @spl_array_get_debug_info(%struct.TYPE_7__* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %12 = call %struct.TYPE_8__* @spl_array_from_obj(%struct.TYPE_7__* %11)
  store %struct.TYPE_8__* %12, %struct.TYPE_8__** %9, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %2
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 2
  %21 = call i32 @rebuild_object_properties(%struct.TYPE_9__* %20)
  br label %22

22:                                               ; preds = %18, %2
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @SPL_ARRAY_IS_SELF, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %22
  %30 = load i32*, i32** %5, align 8
  store i32 0, i32* %30, align 4
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  store i32* %34, i32** %3, align 8
  br label %75

35:                                               ; preds = %22
  %36 = load i32*, i32** %5, align 8
  store i32 1, i32* %36, align 4
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = call i64 @zend_hash_num_elements(i32* %40)
  %42 = add nsw i64 %41, 1
  %43 = call i32* @zend_new_array(i64 %42)
  store i32* %43, i32** %10, align 8
  %44 = load i32*, i32** %10, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i64, i64* @zval_add_ref, align 8
  %50 = trunc i64 %49 to i32
  %51 = call i32 @zend_hash_copy(i32* %44, i32* %48, i32 %50)
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  store i32* %53, i32** %6, align 8
  %54 = load i32*, i32** %6, align 8
  %55 = call i32 @Z_TRY_ADDREF_P(i32* %54)
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = icmp eq i32* %58, @spl_handler_ArrayIterator
  br i1 %59, label %60, label %62

60:                                               ; preds = %35
  %61 = load i32*, i32** @spl_ce_ArrayIterator, align 8
  br label %64

62:                                               ; preds = %35
  %63 = load i32*, i32** @spl_ce_ArrayObject, align 8
  br label %64

64:                                               ; preds = %62, %60
  %65 = phi i32* [ %61, %60 ], [ %63, %62 ]
  store i32* %65, i32** %8, align 8
  %66 = load i32*, i32** %8, align 8
  %67 = call i32* @spl_gen_private_prop_name(i32* %66, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 7)
  store i32* %67, i32** %7, align 8
  %68 = load i32*, i32** %10, align 8
  %69 = load i32*, i32** %7, align 8
  %70 = load i32*, i32** %6, align 8
  %71 = call i32 @zend_symtable_update(i32* %68, i32* %69, i32* %70)
  %72 = load i32*, i32** %7, align 8
  %73 = call i32 @zend_string_release_ex(i32* %72, i32 0)
  %74 = load i32*, i32** %10, align 8
  store i32* %74, i32** %3, align 8
  br label %75

75:                                               ; preds = %64, %29
  %76 = load i32*, i32** %3, align 8
  ret i32* %76
}

declare dso_local %struct.TYPE_8__* @spl_array_from_obj(%struct.TYPE_7__*) #1

declare dso_local i32 @rebuild_object_properties(%struct.TYPE_9__*) #1

declare dso_local i32* @zend_new_array(i64) #1

declare dso_local i64 @zend_hash_num_elements(i32*) #1

declare dso_local i32 @zend_hash_copy(i32*, i32*, i32) #1

declare dso_local i32 @Z_TRY_ADDREF_P(i32*) #1

declare dso_local i32* @spl_gen_private_prop_name(i32*, i8*, i32) #1

declare dso_local i32 @zend_symtable_update(i32*, i32*, i32*) #1

declare dso_local i32 @zend_string_release_ex(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
