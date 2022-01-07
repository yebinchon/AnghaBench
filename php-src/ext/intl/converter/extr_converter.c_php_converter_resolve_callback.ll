; ModuleID = '/home/carl/AnghaBench/php-src/ext/intl/converter/extr_converter.c_php_converter_resolve_callback.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/intl/converter/extr_converter.c_php_converter_resolve_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@FAILURE = common dso_local global i64 0, align 8
@U_INTERNAL_PROGRAM_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Error setting converter callback: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i8*, %struct.TYPE_4__*, i32*)* @php_converter_resolve_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @php_converter_resolve_callback(i32* %0, i32* %1, i8* %2, %struct.TYPE_4__* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.TYPE_4__* %3, %struct.TYPE_4__** %9, align 8
  store i32* %4, i32** %10, align 8
  store i8* null, i8** %11, align 8
  %13 = call i32 @array_init(i32* %12)
  %14 = load i32*, i32** %6, align 8
  %15 = call i32 @Z_ADDREF_P(i32* %14)
  %16 = load i32*, i32** %6, align 8
  %17 = call i32 @add_index_zval(i32* %12, i32 0, i32* %16)
  %18 = load i8*, i8** %8, align 8
  %19 = call i32 @add_index_string(i32* %12, i32 1, i8* %18)
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %21 = load i32*, i32** %10, align 8
  %22 = call i64 @zend_fcall_info_init(i32* %12, i32 0, %struct.TYPE_4__* %20, i32* %21, i32* null, i8** %11)
  %23 = load i64, i64* @FAILURE, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %5
  %26 = load i32*, i32** %7, align 8
  %27 = load i32, i32* @U_INTERNAL_PROGRAM_ERROR, align 4
  %28 = load i8*, i8** %11, align 8
  %29 = call i32 @php_converter_throw_failure(i32* %26, i32 %27, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %28)
  br label %30

30:                                               ; preds = %25, %5
  %31 = load i32, i32* %12, align 4
  %32 = call i32 @Z_ARR(i32 %31)
  %33 = call i32 @zend_array_destroy(i32 %32)
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = call i32 @ZVAL_UNDEF(i32* %35)
  %37 = load i8*, i8** %11, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %30
  %40 = load i8*, i8** %11, align 8
  %41 = call i32 @efree(i8* %40)
  br label %42

42:                                               ; preds = %39, %30
  ret void
}

declare dso_local i32 @array_init(i32*) #1

declare dso_local i32 @Z_ADDREF_P(i32*) #1

declare dso_local i32 @add_index_zval(i32*, i32, i32*) #1

declare dso_local i32 @add_index_string(i32*, i32, i8*) #1

declare dso_local i64 @zend_fcall_info_init(i32*, i32, %struct.TYPE_4__*, i32*, i32*, i8**) #1

declare dso_local i32 @php_converter_throw_failure(i32*, i32, i8*, i8*) #1

declare dso_local i32 @zend_array_destroy(i32) #1

declare dso_local i32 @Z_ARR(i32) #1

declare dso_local i32 @ZVAL_UNDEF(i32*) #1

declare dso_local i32 @efree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
