; ModuleID = '/home/carl/AnghaBench/php-src/ext/spl/extr_spl_observer.c_spl_object_storage_get_hash.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/spl/extr_spl_observer.c_spl_object_storage_get_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32* }
%struct.TYPE_7__ = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"getHash\00", align 1
@IS_STRING = common dso_local global i64 0, align 8
@SUCCESS = common dso_local global i32 0, align 4
@spl_ce_RuntimeException = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Hash needs to be a string\00", align 1
@FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, %struct.TYPE_7__*, i32*)* @spl_object_storage_get_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spl_object_storage_get_hash(%struct.TYPE_6__* %0, %struct.TYPE_7__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %45

13:                                               ; preds = %3
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32*, i32** %7, align 8
  %23 = call i32 @zend_call_method_with_1_params(%struct.TYPE_8__* %15, i32 %19, i64* %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* %8, i32* %22)
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @Z_ISUNDEF(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %43, label %27

27:                                               ; preds = %13
  %28 = load i32, i32* %8, align 4
  %29 = call i64 @Z_TYPE(i32 %28)
  %30 = load i64, i64* @IS_STRING, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = load i32, i32* %8, align 4
  %34 = call i32* @Z_STR(i32 %33)
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  store i32* %34, i32** %36, align 8
  %37 = load i32, i32* @SUCCESS, align 4
  store i32 %37, i32* %4, align 4
  br label %53

38:                                               ; preds = %27
  %39 = load i32, i32* @spl_ce_RuntimeException, align 4
  %40 = call i32 @zend_throw_exception(i32 %39, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %41 = call i32 @zval_ptr_dtor(i32* %8)
  %42 = load i32, i32* @FAILURE, align 4
  store i32 %42, i32* %4, align 4
  br label %53

43:                                               ; preds = %13
  %44 = load i32, i32* @FAILURE, align 4
  store i32 %44, i32* %4, align 4
  br label %53

45:                                               ; preds = %3
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  store i32* null, i32** %47, align 8
  %48 = load i32*, i32** %7, align 8
  %49 = call i32 @Z_OBJ_HANDLE_P(i32* %48)
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* @SUCCESS, align 4
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %45, %43, %38, %32
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @zend_call_method_with_1_params(%struct.TYPE_8__*, i32, i64*, i8*, i32*, i32*) #1

declare dso_local i32 @Z_ISUNDEF(i32) #1

declare dso_local i64 @Z_TYPE(i32) #1

declare dso_local i32* @Z_STR(i32) #1

declare dso_local i32 @zend_throw_exception(i32, i8*, i32) #1

declare dso_local i32 @zval_ptr_dtor(i32*) #1

declare dso_local i32 @Z_OBJ_HANDLE_P(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
