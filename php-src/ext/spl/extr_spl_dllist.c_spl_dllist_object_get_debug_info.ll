; ModuleID = '/home/carl/AnghaBench/php-src/ext/spl/extr_spl_dllist.c_spl_dllist_object_get_debug_info.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/spl/extr_spl_dllist.c_spl_dllist_object_get_debug_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_9__, %struct.TYPE_6__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_7__* }

@zval_add_ref = common dso_local global i64 0, align 8
@spl_ce_SplDoublyLinkedList = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"dllist\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*)* @spl_dllist_object_get_debug_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @spl_dllist_object_get_debug_info(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = call %struct.TYPE_8__* @spl_dllist_from_obj(i32* %13)
  store %struct.TYPE_8__* %14, %struct.TYPE_8__** %5, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  store %struct.TYPE_7__* %19, %struct.TYPE_7__** %6, align 8
  store i32 0, i32* %11, align 4
  %20 = load i32*, i32** %4, align 8
  store i32 1, i32* %20, align 4
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %2
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  %29 = call i32 @rebuild_object_properties(%struct.TYPE_9__* %28)
  br label %30

30:                                               ; preds = %26, %2
  %31 = call i32* @zend_new_array(i32 1)
  store i32* %31, i32** %12, align 8
  %32 = load i32*, i32** %12, align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i64, i64* @zval_add_ref, align 8
  %38 = trunc i64 %37 to i32
  %39 = call i32 @zend_hash_copy(i32* %32, i32 %36, i32 %38)
  %40 = load i32, i32* @spl_ce_SplDoublyLinkedList, align 4
  %41 = call i32* @spl_gen_private_prop_name(i32 %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  store i32* %41, i32** %10, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @ZVAL_LONG(i32* %8, i32 %44)
  %46 = load i32*, i32** %12, align 8
  %47 = load i32*, i32** %10, align 8
  %48 = call i32 @zend_hash_add(i32* %46, i32* %47, i32* %8)
  %49 = load i32*, i32** %10, align 8
  %50 = call i32 @zend_string_release_ex(i32* %49, i32 0)
  %51 = call i32 @array_init(i32* %9)
  br label %52

52:                                               ; preds = %73, %30
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %54 = icmp ne %struct.TYPE_7__* %53, null
  br i1 %54, label %55, label %77

55:                                               ; preds = %52
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %57, align 8
  store %struct.TYPE_7__* %58, %struct.TYPE_7__** %7, align 8
  %59 = load i32, i32* %11, align 4
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = call i32 @add_index_zval(i32* %9, i32 %59, i32* %61)
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i64 @Z_REFCOUNTED(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %55
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @Z_ADDREF(i32 %71)
  br label %73

73:                                               ; preds = %68, %55
  %74 = load i32, i32* %11, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %11, align 4
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  store %struct.TYPE_7__* %76, %struct.TYPE_7__** %6, align 8
  br label %52

77:                                               ; preds = %52
  %78 = load i32, i32* @spl_ce_SplDoublyLinkedList, align 4
  %79 = call i32* @spl_gen_private_prop_name(i32 %78, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 6)
  store i32* %79, i32** %10, align 8
  %80 = load i32*, i32** %12, align 8
  %81 = load i32*, i32** %10, align 8
  %82 = call i32 @zend_hash_add(i32* %80, i32* %81, i32* %9)
  %83 = load i32*, i32** %10, align 8
  %84 = call i32 @zend_string_release_ex(i32* %83, i32 0)
  %85 = load i32*, i32** %12, align 8
  ret i32* %85
}

declare dso_local %struct.TYPE_8__* @spl_dllist_from_obj(i32*) #1

declare dso_local i32 @rebuild_object_properties(%struct.TYPE_9__*) #1

declare dso_local i32* @zend_new_array(i32) #1

declare dso_local i32 @zend_hash_copy(i32*, i32, i32) #1

declare dso_local i32* @spl_gen_private_prop_name(i32, i8*, i32) #1

declare dso_local i32 @ZVAL_LONG(i32*, i32) #1

declare dso_local i32 @zend_hash_add(i32*, i32*, i32*) #1

declare dso_local i32 @zend_string_release_ex(i32*, i32) #1

declare dso_local i32 @array_init(i32*) #1

declare dso_local i32 @add_index_zval(i32*, i32, i32*) #1

declare dso_local i64 @Z_REFCOUNTED(i32) #1

declare dso_local i32 @Z_ADDREF(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
