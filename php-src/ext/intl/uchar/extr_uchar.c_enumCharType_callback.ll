; ModuleID = '/home/carl/AnghaBench/php-src/ext/intl/uchar/extr_uchar.c_enumCharType_callback.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/intl/uchar/extr_uchar.c_enumCharType_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32*, i32* }

@FAILURE = common dso_local global i64 0, align 8
@U_INTERNAL_PROGRAM_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"enumCharTypes callback failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32, i32, i32)* @enumCharType_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enumCharType_callback(%struct.TYPE_4__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [3 x i32], align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = call i32 @ZVAL_NULL(i32* %10)
  %13 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @ZVAL_LONG(i32* %13, i32 %14)
  %16 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 1
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @ZVAL_LONG(i32* %16, i32 %17)
  %19 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 2
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @ZVAL_LONG(i32* %19, i32 %20)
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 2
  store i32* %10, i32** %24, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  store i32 3, i32* %27, align 8
  %28 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  store i32* %28, i32** %31, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = call i64 @zend_call_function(%struct.TYPE_5__* %33, i32* %35)
  %37 = load i64, i64* @FAILURE, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %4
  %40 = load i32, i32* @U_INTERNAL_PROGRAM_ERROR, align 4
  %41 = call i32 @intl_error_set_code(i32* null, i32 %40)
  %42 = call i32 @intl_errors_set_custom_msg(i32* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 0)
  %43 = call i32 @zval_ptr_dtor(i32* %10)
  store i32 0, i32* %5, align 4
  br label %46

44:                                               ; preds = %4
  %45 = call i32 @zval_ptr_dtor(i32* %10)
  store i32 1, i32* %5, align 4
  br label %46

46:                                               ; preds = %44, %39
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local i32 @ZVAL_NULL(i32*) #1

declare dso_local i32 @ZVAL_LONG(i32*, i32) #1

declare dso_local i64 @zend_call_function(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @intl_error_set_code(i32*, i32) #1

declare dso_local i32 @intl_errors_set_custom_msg(i32*, i8*, i32) #1

declare dso_local i32 @zval_ptr_dtor(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
