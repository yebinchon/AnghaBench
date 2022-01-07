; ModuleID = '/home/carl/AnghaBench/php-src/ext/intl/collator/extr_collator_convert.c_collator_convert_object_to_string.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/intl/collator/extr_collator_convert.c_collator_convert_object_to_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 (i32, i32*, i32)* }

@U_ZERO_ERROR = common dso_local global i32 0, align 4
@IS_OBJECT = common dso_local global i64 0, align 8
@IS_STRING = common dso_local global i32 0, align 4
@FAILURE = common dso_local global i64 0, align 8
@E_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [70 x i8] c"Error casting object to string in collator_convert_object_to_string()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @collator_convert_object_to_string(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32* null, i32** %5, align 8
  %9 = load i32, i32* @U_ZERO_ERROR, align 4
  store i32 %9, i32* %6, align 4
  store i32* null, i32** %7, align 8
  store i32 0, i32* %8, align 4
  %10 = load i32*, i32** %3, align 8
  %11 = call i64 @Z_TYPE_P(i32* %10)
  %12 = load i64, i64* @IS_OBJECT, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @COLLATOR_CONVERT_RETURN_FAILED(i32* %15)
  br label %17

17:                                               ; preds = %14, %2
  %18 = load i32*, i32** %3, align 8
  %19 = call %struct.TYPE_2__* @Z_OBJ_HT_P(i32* %18)
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64 (i32, i32*, i32)*, i64 (i32, i32*, i32)** %20, align 8
  %22 = icmp ne i64 (i32, i32*, i32)* %21, null
  br i1 %22, label %23, label %42

23:                                               ; preds = %17
  %24 = load i32*, i32** %4, align 8
  store i32* %24, i32** %5, align 8
  %25 = load i32*, i32** %3, align 8
  %26 = call %struct.TYPE_2__* @Z_OBJ_HT_P(i32* %25)
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64 (i32, i32*, i32)*, i64 (i32, i32*, i32)** %27, align 8
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @Z_OBJ_P(i32* %29)
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* @IS_STRING, align 4
  %33 = call i64 %28(i32 %30, i32* %31, i32 %32)
  %34 = load i64, i64* @FAILURE, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %23
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 @zval_ptr_dtor(i32* %37)
  %39 = load i32*, i32** %3, align 8
  %40 = call i32 @COLLATOR_CONVERT_RETURN_FAILED(i32* %39)
  br label %41

41:                                               ; preds = %36, %23
  br label %42

42:                                               ; preds = %41, %17
  %43 = load i32*, i32** %5, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i32*, i32** %3, align 8
  %47 = call i32 @COLLATOR_CONVERT_RETURN_FAILED(i32* %46)
  br label %48

48:                                               ; preds = %45, %42
  %49 = load i32*, i32** %5, align 8
  %50 = call i32 @Z_STRVAL_P(i32* %49)
  %51 = load i32*, i32** %5, align 8
  %52 = call i32 @Z_STRLEN_P(i32* %51)
  %53 = call i32 @intl_convert_utf8_to_utf16(i32** %7, i32* %8, i32 %50, i32 %52, i32* %6)
  %54 = load i32, i32* %6, align 4
  %55 = call i64 @U_FAILURE(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %48
  %58 = load i32, i32* @E_WARNING, align 4
  %59 = call i32 @php_error(i32 %58, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0))
  br label %60

60:                                               ; preds = %57, %48
  %61 = load i32*, i32** %5, align 8
  %62 = call i32 @zval_ptr_dtor_str(i32* %61)
  %63 = load i32*, i32** %5, align 8
  %64 = load i32*, i32** %7, align 8
  %65 = bitcast i32* %64 to i8*
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @UBYTES(i32 %66)
  %68 = call i32 @ZVAL_STRINGL(i32* %63, i8* %65, i32 %67)
  %69 = load i32*, i32** %7, align 8
  %70 = bitcast i32* %69 to i8*
  %71 = call i32 @efree(i8* %70)
  %72 = load i32*, i32** %5, align 8
  ret i32* %72
}

declare dso_local i64 @Z_TYPE_P(i32*) #1

declare dso_local i32 @COLLATOR_CONVERT_RETURN_FAILED(i32*) #1

declare dso_local %struct.TYPE_2__* @Z_OBJ_HT_P(i32*) #1

declare dso_local i32 @Z_OBJ_P(i32*) #1

declare dso_local i32 @zval_ptr_dtor(i32*) #1

declare dso_local i32 @intl_convert_utf8_to_utf16(i32**, i32*, i32, i32, i32*) #1

declare dso_local i32 @Z_STRVAL_P(i32*) #1

declare dso_local i32 @Z_STRLEN_P(i32*) #1

declare dso_local i64 @U_FAILURE(i32) #1

declare dso_local i32 @php_error(i32, i8*) #1

declare dso_local i32 @zval_ptr_dtor_str(i32*) #1

declare dso_local i32 @ZVAL_STRINGL(i32*, i8*, i32) #1

declare dso_local i32 @UBYTES(i32) #1

declare dso_local i32 @efree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
