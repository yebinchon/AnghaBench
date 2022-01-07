; ModuleID = '/home/carl/AnghaBench/php-src/ext/intl/converter/extr_converter.c_php_converter_clone_object.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/intl/converter/extr_converter.c_php_converter_clone_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32, i8*, i8*, i32 }

@U_ZERO_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"ucnv_safeClone\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_11__* (%struct.TYPE_11__*)* @php_converter_clone_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_11__* @php_converter_clone_object(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %10 = call %struct.TYPE_12__* @php_converter_fetch_object(%struct.TYPE_11__* %9)
  store %struct.TYPE_12__* %10, %struct.TYPE_12__** %5, align 8
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.TYPE_11__* @php_converter_object_ctor(i32 %13, %struct.TYPE_12__** %4)
  store %struct.TYPE_11__* %14, %struct.TYPE_11__** %6, align 8
  %15 = load i32, i32* @U_ZERO_ERROR, align 4
  store i32 %15, i32* %7, align 4
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 3
  %18 = call i32 @intl_errors_reset(i32* %17)
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 2
  %21 = load i8*, i8** %20, align 8
  %22 = call i8* @ucnv_safeClone(i8* %21, i32* null, i32* null, i32* %7)
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 2
  store i8* %22, i8** %24, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i64 @U_SUCCESS(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %1
  %29 = load i32, i32* @U_ZERO_ERROR, align 4
  store i32 %29, i32* %7, align 4
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  %33 = call i8* @ucnv_safeClone(i8* %32, i32* null, i32* null, i32* %7)
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 1
  store i8* %33, i8** %35, align 8
  br label %36

36:                                               ; preds = %28, %1
  %37 = load i32, i32* %7, align 4
  %38 = call i64 @U_FAILURE(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %36
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @THROW_UFAILURE(%struct.TYPE_12__* %41, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 3
  %46 = call i32* @intl_error_get_message(i32* %45)
  store i32* %46, i32** %8, align 8
  %47 = load i32*, i32** %8, align 8
  %48 = call i32 @ZSTR_VAL(i32* %47)
  %49 = call i32 @zend_throw_exception(i32* null, i32 %48, i32 0)
  %50 = load i32*, i32** %8, align 8
  %51 = call i32 @zend_string_release_ex(i32* %50, i32 0)
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_11__* %52, %struct.TYPE_11__** %2, align 8
  br label %70

53:                                               ; preds = %36
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 2
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 @php_converter_set_callbacks(%struct.TYPE_12__* %54, i8* %57)
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 1
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @php_converter_set_callbacks(%struct.TYPE_12__* %59, i8* %62)
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  %68 = call i32 @zend_objects_clone_members(i32* %65, i32* %67)
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_11__* %69, %struct.TYPE_11__** %2, align 8
  br label %70

70:                                               ; preds = %53, %40
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  ret %struct.TYPE_11__* %71
}

declare dso_local %struct.TYPE_12__* @php_converter_fetch_object(%struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_11__* @php_converter_object_ctor(i32, %struct.TYPE_12__**) #1

declare dso_local i32 @intl_errors_reset(i32*) #1

declare dso_local i8* @ucnv_safeClone(i8*, i32*, i32*, i32*) #1

declare dso_local i64 @U_SUCCESS(i32) #1

declare dso_local i64 @U_FAILURE(i32) #1

declare dso_local i32 @THROW_UFAILURE(%struct.TYPE_12__*, i8*, i32) #1

declare dso_local i32* @intl_error_get_message(i32*) #1

declare dso_local i32 @zend_throw_exception(i32*, i32, i32) #1

declare dso_local i32 @ZSTR_VAL(i32*) #1

declare dso_local i32 @zend_string_release_ex(i32*, i32) #1

declare dso_local i32 @php_converter_set_callbacks(%struct.TYPE_12__*, i8*) #1

declare dso_local i32 @zend_objects_clone_members(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
