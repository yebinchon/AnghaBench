; ModuleID = '/home/carl/AnghaBench/php-src/ext/intl/uchar/extr_uchar.c_enumCharNames_callback.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/intl/uchar/extr_uchar.c_enumCharNames_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32*, i32* }

@FAILURE = common dso_local global i64 0, align 8
@U_INTERNAL_PROGRAM_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"enumCharNames callback failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32, i32, i8*, i32)* @enumCharNames_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enumCharNames_callback(%struct.TYPE_4__* %0, i32 %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [3 x i32], align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = call i32 @ZVAL_NULL(i32* %12)
  %15 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @ZVAL_LONG(i32* %15, i32 %16)
  %18 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 1
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @ZVAL_LONG(i32* %18, i32 %19)
  %21 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 2
  %22 = load i8*, i8** %10, align 8
  %23 = load i32, i32* %11, align 4
  %24 = call i32 @ZVAL_STRINGL(i32* %21, i8* %22, i32 %23)
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 2
  store i32* %12, i32** %27, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  store i32 3, i32* %30, align 8
  %31 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  store i32* %31, i32** %34, align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = call i64 @zend_call_function(%struct.TYPE_5__* %36, i32* %38)
  %40 = load i64, i64* @FAILURE, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %5
  %43 = load i32, i32* @U_INTERNAL_PROGRAM_ERROR, align 4
  %44 = call i32 @intl_error_set_code(i32* null, i32 %43)
  %45 = call i32 @intl_error_set_custom_msg(i32* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 0)
  %46 = call i32 @zval_ptr_dtor(i32* %12)
  %47 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 2
  %48 = call i32 @zval_ptr_dtor_str(i32* %47)
  store i32 0, i32* %6, align 4
  br label %53

49:                                               ; preds = %5
  %50 = call i32 @zval_ptr_dtor(i32* %12)
  %51 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 2
  %52 = call i32 @zval_ptr_dtor_str(i32* %51)
  store i32 1, i32* %6, align 4
  br label %53

53:                                               ; preds = %49, %42
  %54 = load i32, i32* %6, align 4
  ret i32 %54
}

declare dso_local i32 @ZVAL_NULL(i32*) #1

declare dso_local i32 @ZVAL_LONG(i32*, i32) #1

declare dso_local i32 @ZVAL_STRINGL(i32*, i8*, i32) #1

declare dso_local i64 @zend_call_function(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @intl_error_set_code(i32*, i32) #1

declare dso_local i32 @intl_error_set_custom_msg(i32*, i8*, i32) #1

declare dso_local i32 @zval_ptr_dtor(i32*) #1

declare dso_local i32 @zval_ptr_dtor_str(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
