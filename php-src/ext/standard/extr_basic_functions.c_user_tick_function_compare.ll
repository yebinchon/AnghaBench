; ModuleID = '/home/carl/AnghaBench/php-src/ext/standard/extr_basic_functions.c_user_tick_function_compare.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/standard/extr_basic_functions.c_user_tick_function_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32* }

@IS_STRING = common dso_local global i64 0, align 8
@IS_ARRAY = common dso_local global i64 0, align 8
@IS_OBJECT = common dso_local global i64 0, align 8
@E_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Unable to delete tick function executed at the moment\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, %struct.TYPE_4__*)* @user_tick_function_compare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @user_tick_function_compare(%struct.TYPE_4__* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  store i32* %12, i32** %6, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  store i32* %16, i32** %7, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = call i64 @Z_TYPE_P(i32* %17)
  %19 = load i64, i64* @IS_STRING, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %32

21:                                               ; preds = %2
  %22 = load i32*, i32** %7, align 8
  %23 = call i64 @Z_TYPE_P(i32* %22)
  %24 = load i64, i64* @IS_STRING, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load i32*, i32** %6, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = call i64 @zend_binary_zval_strcmp(i32* %27, i32* %28)
  %30 = icmp eq i64 %29, 0
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %8, align 4
  br label %67

32:                                               ; preds = %21, %2
  %33 = load i32*, i32** %6, align 8
  %34 = call i64 @Z_TYPE_P(i32* %33)
  %35 = load i64, i64* @IS_ARRAY, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %48

37:                                               ; preds = %32
  %38 = load i32*, i32** %7, align 8
  %39 = call i64 @Z_TYPE_P(i32* %38)
  %40 = load i64, i64* @IS_ARRAY, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load i32*, i32** %6, align 8
  %44 = load i32*, i32** %7, align 8
  %45 = call i64 @zend_compare_arrays(i32* %43, i32* %44)
  %46 = icmp eq i64 %45, 0
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %8, align 4
  br label %66

48:                                               ; preds = %37, %32
  %49 = load i32*, i32** %6, align 8
  %50 = call i64 @Z_TYPE_P(i32* %49)
  %51 = load i64, i64* @IS_OBJECT, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %64

53:                                               ; preds = %48
  %54 = load i32*, i32** %7, align 8
  %55 = call i64 @Z_TYPE_P(i32* %54)
  %56 = load i64, i64* @IS_OBJECT, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %53
  %59 = load i32*, i32** %6, align 8
  %60 = load i32*, i32** %7, align 8
  %61 = call i64 @zend_compare_objects(i32* %59, i32* %60)
  %62 = icmp eq i64 %61, 0
  %63 = zext i1 %62 to i32
  store i32 %63, i32* %8, align 4
  br label %65

64:                                               ; preds = %53, %48
  store i32 0, i32* %8, align 4
  br label %65

65:                                               ; preds = %64, %58
  br label %66

66:                                               ; preds = %65, %42
  br label %67

67:                                               ; preds = %66, %26
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %67
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load i32, i32* @E_WARNING, align 4
  %77 = call i32 @php_error_docref(i32* null, i32 %76, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %80

78:                                               ; preds = %70, %67
  %79 = load i32, i32* %8, align 4
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %78, %75
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i64 @Z_TYPE_P(i32*) #1

declare dso_local i64 @zend_binary_zval_strcmp(i32*, i32*) #1

declare dso_local i64 @zend_compare_arrays(i32*, i32*) #1

declare dso_local i64 @zend_compare_objects(i32*, i32*) #1

declare dso_local i32 @php_error_docref(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
