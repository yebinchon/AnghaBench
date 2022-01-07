; ModuleID = '/home/carl/AnghaBench/php-src/ext/sqlite3/extr_sqlite3.c_php_sqlite3_callback_compare.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/sqlite3/extr_sqlite3.c_php_sqlite3_callback_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32*, i32*, i32*, i32 }

@exception = common dso_local global i32 0, align 4
@FAILURE = common dso_local global i32 0, align 4
@E_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"An error occurred while invoking the compare callback\00", align 1
@IS_LONG = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [112 x i8] c"An error occurred while invoking the compare callback (invalid return type).  Collation behaviour is undefined.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i32, i8*)* @php_sqlite3_callback_compare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @php_sqlite3_callback_compare(i8* %0, i32 %1, i8* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca [2 x i32], align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %17, %struct.TYPE_5__** %12, align 8
  %18 = load i32, i32* @exception, align 4
  %19 = call i64 @EG(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %95

22:                                               ; preds = %5
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  store i32 40, i32* %26, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 5
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = call i32 @ZVAL_COPY_VALUE(i32* %30, i32* %32)
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 4
  store i32* null, i32** %37, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 3
  store i32* %14, i32** %41, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  store i32 2, i32* %45, align 4
  %46 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %47 = load i8*, i8** %9, align 8
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @ZVAL_STRINGL(i32* %46, i8* %47, i32 %48)
  %50 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  %51 = load i8*, i8** %11, align 8
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @ZVAL_STRINGL(i32* %50, i8* %51, i32 %52)
  %54 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 2
  store i32* %54, i32** %58, align 8
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = call i32 @zend_call_function(%struct.TYPE_6__* %61, i32* %64)
  store i32 %65, i32* %15, align 4
  %66 = load i32, i32* @FAILURE, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %22
  %69 = load i32, i32* @E_WARNING, align 4
  %70 = call i32 @php_error_docref(i32* null, i32 %69, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  br label %71

71:                                               ; preds = %68, %22
  %72 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %73 = call i32 @zval_ptr_dtor(i32* %72)
  %74 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  %75 = call i32 @zval_ptr_dtor(i32* %74)
  %76 = load i32, i32* @exception, align 4
  %77 = call i64 @EG(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %71
  store i32 0, i32* %15, align 4
  br label %92

80:                                               ; preds = %71
  %81 = load i32, i32* %14, align 4
  %82 = call i64 @Z_TYPE(i32 %81)
  %83 = load i64, i64* @IS_LONG, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %80
  %86 = load i32, i32* @E_WARNING, align 4
  %87 = call i32 @php_error_docref(i32* null, i32 %86, i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.1, i64 0, i64 0))
  br label %91

88:                                               ; preds = %80
  %89 = load i32, i32* %14, align 4
  %90 = call i32 @Z_LVAL(i32 %89)
  store i32 %90, i32* %15, align 4
  br label %91

91:                                               ; preds = %88, %85
  br label %92

92:                                               ; preds = %91, %79
  %93 = call i32 @zval_ptr_dtor(i32* %14)
  %94 = load i32, i32* %15, align 4
  store i32 %94, i32* %6, align 4
  br label %95

95:                                               ; preds = %92, %21
  %96 = load i32, i32* %6, align 4
  ret i32 %96
}

declare dso_local i64 @EG(i32) #1

declare dso_local i32 @ZVAL_COPY_VALUE(i32*, i32*) #1

declare dso_local i32 @ZVAL_STRINGL(i32*, i8*, i32) #1

declare dso_local i32 @zend_call_function(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @php_error_docref(i32*, i32, i8*) #1

declare dso_local i32 @zval_ptr_dtor(i32*) #1

declare dso_local i64 @Z_TYPE(i32) #1

declare dso_local i32 @Z_LVAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
