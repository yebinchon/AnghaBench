; ModuleID = '/home/carl/AnghaBench/php-src/ext/soap/extr_php_encoding.c_to_zval_user.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/soap/extr_php_encoding.c_to_zval_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@IS_UNDEF = common dso_local global i64 0, align 8
@FAILURE = common dso_local global i64 0, align 8
@E_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Encoding: Error calling from_xml callback\00", align 1
@exception = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @to_zval_user(i32* %0, %struct.TYPE_5__* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %11 = icmp ne %struct.TYPE_5__* %10, null
  br i1 %11, label %12, label %62

12:                                               ; preds = %3
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = icmp ne %struct.TYPE_4__* %15, null
  br i1 %16, label %17, label %62

17:                                               ; preds = %12
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @Z_TYPE(i32 %22)
  %24 = load i64, i64* @IS_UNDEF, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %62

26:                                               ; preds = %17
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @xmlCopyNode(i32 %27, i32 1)
  store i32 %28, i32* %9, align 4
  %29 = call i32 (...) @xmlBufferCreate()
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @xmlNodeDump(i32 %30, i32* null, i32 %31, i32 0, i32 0)
  %33 = load i32, i32* %7, align 4
  %34 = call i64 @xmlBufferContent(i32 %33)
  %35 = inttoptr i64 %34 to i8*
  %36 = call i32 @ZVAL_STRING(i32* %8, i8* %35)
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @xmlBufferFree(i32 %37)
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @xmlFreeNode(i32 %39)
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32*, i32** %4, align 8
  %46 = call i64 @call_user_function(i32* null, i32* null, i32* %44, i32* %45, i32 1, i32* %8)
  %47 = load i64, i64* @FAILURE, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %26
  %50 = load i32, i32* @E_ERROR, align 4
  %51 = call i32 @soap_error0(i32 %50, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %60

52:                                               ; preds = %26
  %53 = load i32, i32* @exception, align 4
  %54 = call i64 @EG(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load i32*, i32** %4, align 8
  %58 = call i32 @ZVAL_NULL(i32* %57)
  br label %59

59:                                               ; preds = %56, %52
  br label %60

60:                                               ; preds = %59, %49
  %61 = call i32 @zval_ptr_dtor(i32* %8)
  br label %65

62:                                               ; preds = %17, %12, %3
  %63 = load i32*, i32** %4, align 8
  %64 = call i32 @ZVAL_NULL(i32* %63)
  br label %65

65:                                               ; preds = %62, %60
  %66 = load i32*, i32** %4, align 8
  ret i32* %66
}

declare dso_local i64 @Z_TYPE(i32) #1

declare dso_local i32 @xmlCopyNode(i32, i32) #1

declare dso_local i32 @xmlBufferCreate(...) #1

declare dso_local i32 @xmlNodeDump(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @ZVAL_STRING(i32*, i8*) #1

declare dso_local i64 @xmlBufferContent(i32) #1

declare dso_local i32 @xmlBufferFree(i32) #1

declare dso_local i32 @xmlFreeNode(i32) #1

declare dso_local i64 @call_user_function(i32*, i32*, i32*, i32*, i32, i32*) #1

declare dso_local i32 @soap_error0(i32, i8*) #1

declare dso_local i64 @EG(i32) #1

declare dso_local i32 @ZVAL_NULL(i32*) #1

declare dso_local i32 @zval_ptr_dtor(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
