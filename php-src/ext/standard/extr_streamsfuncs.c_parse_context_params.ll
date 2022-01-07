; ModuleID = '/home/carl/AnghaBench/php-src/ext/standard/extr_streamsfuncs.c_parse_context_params.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/standard/extr_streamsfuncs.c_parse_context_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, i32 }

@SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"notification\00", align 1
@user_space_stream_notifier = common dso_local global i32 0, align 4
@user_space_stream_notifier_dtor = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"options\00", align 1
@IS_ARRAY = common dso_local global i64 0, align 8
@E_WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Invalid stream/context parameter\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32*)* @parse_context_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_context_params(%struct.TYPE_6__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32, i32* @SUCCESS, align 4
  store i32 %7, i32* %5, align 4
  %8 = load i32*, i32** %4, align 8
  %9 = call i32 @Z_ARRVAL_P(i32* %8)
  %10 = call i32* @zend_hash_str_find(i32 %9, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 12)
  store i32* %10, i32** %6, align 8
  %11 = icmp ne i32* null, %10
  br i1 %11, label %12, label %44

12:                                               ; preds = %2
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = icmp ne %struct.TYPE_7__* %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %12
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = call i32 @php_stream_notification_free(%struct.TYPE_7__* %20)
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %23, align 8
  br label %24

24:                                               ; preds = %17, %12
  %25 = call %struct.TYPE_7__* (...) @php_stream_notification_alloc()
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  store %struct.TYPE_7__* %25, %struct.TYPE_7__** %27, align 8
  %28 = load i32, i32* @user_space_stream_notifier, align 4
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 2
  store i32 %28, i32* %32, align 4
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  %37 = load i32*, i32** %6, align 8
  %38 = call i32 @ZVAL_COPY(i32* %36, i32* %37)
  %39 = load i32, i32* @user_space_stream_notifier_dtor, align 4
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  store i32 %39, i32* %43, align 4
  br label %44

44:                                               ; preds = %24, %2
  %45 = load i32*, i32** %4, align 8
  %46 = call i32 @Z_ARRVAL_P(i32* %45)
  %47 = call i32* @zend_hash_str_find(i32 %46, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 7)
  store i32* %47, i32** %6, align 8
  %48 = icmp ne i32* null, %47
  br i1 %48, label %49, label %62

49:                                               ; preds = %44
  %50 = load i32*, i32** %6, align 8
  %51 = call i64 @Z_TYPE_P(i32* %50)
  %52 = load i64, i64* @IS_ARRAY, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %56 = load i32*, i32** %6, align 8
  %57 = call i32 @parse_context_options(%struct.TYPE_6__* %55, i32* %56)
  br label %61

58:                                               ; preds = %49
  %59 = load i32, i32* @E_WARNING, align 4
  %60 = call i32 @php_error_docref(i32* null, i32 %59, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %61

61:                                               ; preds = %58, %54
  br label %62

62:                                               ; preds = %61, %44
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local i32* @zend_hash_str_find(i32, i8*, i32) #1

declare dso_local i32 @Z_ARRVAL_P(i32*) #1

declare dso_local i32 @php_stream_notification_free(%struct.TYPE_7__*) #1

declare dso_local %struct.TYPE_7__* @php_stream_notification_alloc(...) #1

declare dso_local i32 @ZVAL_COPY(i32*, i32*) #1

declare dso_local i64 @Z_TYPE_P(i32*) #1

declare dso_local i32 @parse_context_options(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @php_error_docref(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
