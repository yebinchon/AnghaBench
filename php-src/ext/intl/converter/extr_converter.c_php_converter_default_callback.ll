; ModuleID = '/home/carl/AnghaBench/php-src/ext/intl/converter/extr_converter.c_php_converter_default_callback.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/intl/converter/extr_converter.c_php_converter_default_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@U_ZERO_ERROR = common dso_local global i32 0, align 4
@U_INVALID_STATE_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Source Converter has not been initialized yet\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"ucnv_getSubstChars\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32*)* @php_converter_default_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @php_converter_default_callback(i32* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca [127 x i8], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %13 = load i32*, i32** %8, align 8
  %14 = call i32 @ZVAL_DEREF(i32* %13)
  %15 = load i32*, i32** %8, align 8
  %16 = call i32 @zval_ptr_dtor(i32* %15)
  %17 = load i32*, i32** %8, align 8
  %18 = load i32, i32* @U_ZERO_ERROR, align 4
  %19 = call i32 @ZVAL_LONG(i32* %17, i32 %18)
  %20 = load i32, i32* %7, align 4
  switch i32 %20, label %64 [
    i32 128, label %21
    i32 130, label %21
    i32 129, label %21
  ]

21:                                               ; preds = %4, %4, %4
  %22 = load i32*, i32** %6, align 8
  %23 = call i64 @CONV_GET(i32* %22)
  %24 = inttoptr i64 %23 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %24, %struct.TYPE_4__** %9, align 8
  store i32 127, i32* %11, align 4
  %25 = load i32, i32* @U_ZERO_ERROR, align 4
  store i32 %25, i32* %12, align 4
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %42, label %30

30:                                               ; preds = %21
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %32 = load i32, i32* @U_INVALID_STATE_ERROR, align 4
  %33 = call i32 @php_converter_throw_failure(%struct.TYPE_4__* %31, i32 %32, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %34 = getelementptr inbounds [127 x i8], [127 x i8]* %10, i64 0, i64 0
  store i8 26, i8* %34, align 16
  %35 = getelementptr inbounds [127 x i8], [127 x i8]* %10, i64 0, i64 1
  store i8 0, i8* %35, align 1
  store i32 1, i32* %11, align 4
  %36 = load i32*, i32** %8, align 8
  %37 = load i32, i32* @U_INVALID_STATE_ERROR, align 4
  %38 = call i32 @ZVAL_LONG(i32* %36, i32 %37)
  %39 = getelementptr inbounds [127 x i8], [127 x i8]* %10, i64 0, i64 0
  %40 = load i32, i32* %11, align 4
  %41 = call i32 @RETVAL_STRINGL(i8* %39, i32 %40)
  br label %64

42:                                               ; preds = %21
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds [127 x i8], [127 x i8]* %10, i64 0, i64 0
  %47 = call i32 @ucnv_getSubstChars(i32 %45, i8* %46, i32* %11, i32* %12)
  %48 = load i32, i32* %12, align 4
  %49 = call i32 @U_FAILURE(i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %42
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %53 = load i32, i32* %12, align 4
  %54 = call i32 @THROW_UFAILURE(%struct.TYPE_4__* %52, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  %55 = getelementptr inbounds [127 x i8], [127 x i8]* %10, i64 0, i64 0
  store i8 26, i8* %55, align 16
  %56 = getelementptr inbounds [127 x i8], [127 x i8]* %10, i64 0, i64 1
  store i8 0, i8* %56, align 1
  store i32 1, i32* %11, align 4
  %57 = load i32*, i32** %8, align 8
  %58 = load i32, i32* %12, align 4
  %59 = call i32 @ZVAL_LONG(i32* %57, i32 %58)
  br label %60

60:                                               ; preds = %51, %42
  %61 = getelementptr inbounds [127 x i8], [127 x i8]* %10, i64 0, i64 0
  %62 = load i32, i32* %11, align 4
  %63 = call i32 @RETVAL_STRINGL(i8* %61, i32 %62)
  br label %64

64:                                               ; preds = %30, %60, %4
  ret void
}

declare dso_local i32 @ZVAL_DEREF(i32*) #1

declare dso_local i32 @zval_ptr_dtor(i32*) #1

declare dso_local i32 @ZVAL_LONG(i32*, i32) #1

declare dso_local i64 @CONV_GET(i32*) #1

declare dso_local i32 @php_converter_throw_failure(%struct.TYPE_4__*, i32, i8*) #1

declare dso_local i32 @RETVAL_STRINGL(i8*, i32) #1

declare dso_local i32 @ucnv_getSubstChars(i32, i8*, i32*, i32*) #1

declare dso_local i32 @U_FAILURE(i32) #1

declare dso_local i32 @THROW_UFAILURE(%struct.TYPE_4__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
