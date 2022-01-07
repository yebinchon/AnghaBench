; ModuleID = '/home/carl/AnghaBench/php-src/main/streams/extr_userspace.c_user_stream_create_object.c'
source_filename = "/home/carl/AnghaBench/php-src/main/streams/extr_userspace.c_user_stream_create_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.php_user_stream_wrapper = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32, i32*, i64, i32*, i8*, i32 }
%struct.TYPE_12__ = type { i8*, i32, %struct.TYPE_11__* }

@ZEND_ACC_INTERFACE = common dso_local global i32 0, align 4
@ZEND_ACC_TRAIT = common dso_local global i32 0, align 4
@ZEND_ACC_IMPLICIT_ABSTRACT_CLASS = common dso_local global i32 0, align 4
@ZEND_ACC_EXPLICIT_ABSTRACT_CLASS = common dso_local global i32 0, align 4
@FAILURE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"context\00", align 1
@E_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Could not execute %s::%s()\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.php_user_stream_wrapper*, %struct.TYPE_14__*, i32*)* @user_stream_create_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @user_stream_create_object(%struct.php_user_stream_wrapper* %0, %struct.TYPE_14__* %1, i32* %2) #0 {
  %4 = alloca %struct.php_user_stream_wrapper*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_13__, align 8
  %8 = alloca %struct.TYPE_12__, align 8
  %9 = alloca i32, align 4
  store %struct.php_user_stream_wrapper* %0, %struct.php_user_stream_wrapper** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load %struct.php_user_stream_wrapper*, %struct.php_user_stream_wrapper** %4, align 8
  %11 = getelementptr inbounds %struct.php_user_stream_wrapper, %struct.php_user_stream_wrapper* %10, i32 0, i32 0
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @ZEND_ACC_INTERFACE, align 4
  %16 = load i32, i32* @ZEND_ACC_TRAIT, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @ZEND_ACC_IMPLICIT_ABSTRACT_CLASS, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @ZEND_ACC_EXPLICIT_ABSTRACT_CLASS, align 4
  %21 = or i32 %19, %20
  %22 = and i32 %14, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32*, i32** %6, align 8
  %26 = call i32 @ZVAL_UNDEF(i32* %25)
  br label %112

27:                                               ; preds = %3
  %28 = load i32*, i32** %6, align 8
  %29 = load %struct.php_user_stream_wrapper*, %struct.php_user_stream_wrapper** %4, align 8
  %30 = getelementptr inbounds %struct.php_user_stream_wrapper, %struct.php_user_stream_wrapper* %29, i32 0, i32 0
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %30, align 8
  %32 = call i64 @object_init_ex(i32* %28, %struct.TYPE_15__* %31)
  %33 = load i64, i64* @FAILURE, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %27
  %36 = load i32*, i32** %6, align 8
  %37 = call i32 @ZVAL_UNDEF(i32* %36)
  br label %112

38:                                               ; preds = %27
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %40 = icmp ne %struct.TYPE_14__* %39, null
  br i1 %40, label %41, label %51

41:                                               ; preds = %38
  %42 = load i32*, i32** %6, align 8
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @add_property_resource(i32* %42, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @GC_ADDREF(i32 %49)
  br label %54

51:                                               ; preds = %38
  %52 = load i32*, i32** %6, align 8
  %53 = call i32 @add_property_null(i32* %52, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %54

54:                                               ; preds = %51, %41
  %55 = load %struct.php_user_stream_wrapper*, %struct.php_user_stream_wrapper** %4, align 8
  %56 = getelementptr inbounds %struct.php_user_stream_wrapper, %struct.php_user_stream_wrapper* %55, i32 0, i32 0
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %58, align 8
  %60 = icmp ne %struct.TYPE_11__* %59, null
  br i1 %60, label %61, label %112

61:                                               ; preds = %54
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 0
  store i32 48, i32* %62, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 6
  %64 = call i32 @ZVAL_UNDEF(i32* %63)
  %65 = load i32*, i32** %6, align 8
  %66 = call i8* @Z_OBJ_P(i32* %65)
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 5
  store i8* %66, i8** %67, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 4
  store i32* %9, i32** %68, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 3
  store i64 0, i64* %69, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 2
  store i32* null, i32** %70, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 1
  store i32 1, i32* %71, align 4
  %72 = load %struct.php_user_stream_wrapper*, %struct.php_user_stream_wrapper** %4, align 8
  %73 = getelementptr inbounds %struct.php_user_stream_wrapper, %struct.php_user_stream_wrapper* %72, i32 0, i32 0
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 2
  store %struct.TYPE_11__* %76, %struct.TYPE_11__** %77, align 8
  %78 = load i32*, i32** %6, align 8
  %79 = call i32 @Z_OBJCE_P(i32* %78)
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 1
  store i32 %79, i32* %80, align 8
  %81 = load i32*, i32** %6, align 8
  %82 = call i8* @Z_OBJ_P(i32* %81)
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  store i8* %82, i8** %83, align 8
  %84 = call i64 @zend_call_function(%struct.TYPE_13__* %7, %struct.TYPE_12__* %8)
  %85 = load i64, i64* @FAILURE, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %109

87:                                               ; preds = %61
  %88 = load i32, i32* @E_WARNING, align 4
  %89 = load %struct.php_user_stream_wrapper*, %struct.php_user_stream_wrapper** %4, align 8
  %90 = getelementptr inbounds %struct.php_user_stream_wrapper, %struct.php_user_stream_wrapper* %89, i32 0, i32 0
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @ZSTR_VAL(i32 %93)
  %95 = load %struct.php_user_stream_wrapper*, %struct.php_user_stream_wrapper** %4, align 8
  %96 = getelementptr inbounds %struct.php_user_stream_wrapper, %struct.php_user_stream_wrapper* %95, i32 0, i32 0
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @ZSTR_VAL(i32 %102)
  %104 = call i32 @php_error_docref(i32* null, i32 %88, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %94, i32 %103)
  %105 = load i32*, i32** %6, align 8
  %106 = call i32 @zval_ptr_dtor(i32* %105)
  %107 = load i32*, i32** %6, align 8
  %108 = call i32 @ZVAL_UNDEF(i32* %107)
  br label %111

109:                                              ; preds = %61
  %110 = call i32 @zval_ptr_dtor(i32* %9)
  br label %111

111:                                              ; preds = %109, %87
  br label %112

112:                                              ; preds = %24, %35, %111, %54
  ret void
}

declare dso_local i32 @ZVAL_UNDEF(i32*) #1

declare dso_local i64 @object_init_ex(i32*, %struct.TYPE_15__*) #1

declare dso_local i32 @add_property_resource(i32*, i8*, i32) #1

declare dso_local i32 @GC_ADDREF(i32) #1

declare dso_local i32 @add_property_null(i32*, i8*) #1

declare dso_local i8* @Z_OBJ_P(i32*) #1

declare dso_local i32 @Z_OBJCE_P(i32*) #1

declare dso_local i64 @zend_call_function(%struct.TYPE_13__*, %struct.TYPE_12__*) #1

declare dso_local i32 @php_error_docref(i32*, i32, i8*, i32, i32) #1

declare dso_local i32 @ZSTR_VAL(i32) #1

declare dso_local i32 @zval_ptr_dtor(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
