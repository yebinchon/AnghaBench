; ModuleID = '/home/carl/AnghaBench/php-src/ext/intl/converter/extr_converter.c_php_converter_from_u_callback.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/intl/converter/extr_converter.c_php_converter_from_u_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i64, i32*, i32* }

@FAILURE = common dso_local global i64 0, align 8
@U_INTERNAL_PROGRAM_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Unexpected failure calling fromUCallback()\00", align 1
@IS_LONG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i32*, i32, i32, i32, i32*)* @php_converter_from_u_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @php_converter_from_u_callback(i8* %0, i32* %1, i32* %2, i32 %3, i32 %4, i32 %5, i32* %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_5__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca [4 x i32], align 16
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32* %6, i32** %14, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = bitcast i8* %20 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %21, %struct.TYPE_5__** %15, align 8
  %22 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 0
  %23 = load i32, i32* %13, align 4
  %24 = call i32 @ZVAL_LONG(i32* %22, i32 %23)
  %25 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 1
  %26 = call i32 @array_init(i32* %25)
  store i32 0, i32* %18, align 4
  br label %27

27:                                               ; preds = %31, %7
  %28 = load i32, i32* %18, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %27
  %32 = load i32*, i32** %10, align 8
  %33 = load i32, i32* %18, align 4
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %19, align 4
  %36 = call i32 @U16_NEXT(i32* %32, i32 %33, i32 %34, i32 %35)
  %37 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 1
  %38 = load i32, i32* %19, align 4
  %39 = call i32 @add_next_index_long(i32* %37, i32 %38)
  br label %27

40:                                               ; preds = %27
  %41 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 2
  %42 = load i32, i32* %12, align 4
  %43 = call i32 @ZVAL_LONG(i32* %41, i32 %42)
  %44 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 3
  %45 = load i32*, i32** %14, align 8
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @ZVAL_LONG(i32* %44, i32 %46)
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  store i32 4, i32* %50, align 8
  %51 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 0
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 3
  store i32* %51, i32** %54, align 8
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 2
  store i32* %16, i32** %57, align 8
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  store i64 0, i64* %60, align 8
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = call i64 @zend_call_function(%struct.TYPE_6__* %62, i32* %64)
  %66 = load i64, i64* @FAILURE, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %40
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %70 = load i32, i32* @U_INTERNAL_PROGRAM_ERROR, align 4
  %71 = call i32 @php_converter_throw_failure(%struct.TYPE_5__* %69, i32 %70, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %82

72:                                               ; preds = %40
  %73 = load i32, i32* %16, align 4
  %74 = call i32 @Z_ISUNDEF(i32 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %81, label %76

76:                                               ; preds = %72
  %77 = load i32*, i32** %9, align 8
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %79 = call i32 @php_converter_append_fromUnicode_target(i32* %16, i32* %77, %struct.TYPE_5__* %78)
  %80 = call i32 @zval_ptr_dtor(i32* %16)
  br label %81

81:                                               ; preds = %76, %72
  br label %82

82:                                               ; preds = %81, %68
  %83 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 3
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @Z_TYPE(i32 %84)
  %86 = load i64, i64* @IS_LONG, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %93

88:                                               ; preds = %82
  %89 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 3
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @Z_LVAL(i32 %90)
  %92 = load i32*, i32** %14, align 8
  store i32 %91, i32* %92, align 4
  br label %112

93:                                               ; preds = %82
  %94 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 3
  %95 = load i32, i32* %94, align 4
  %96 = call i64 @Z_ISREF(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %111

98:                                               ; preds = %93
  %99 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 3
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @Z_REFVAL(i32 %100)
  %102 = call i64 @Z_TYPE_P(i32 %101)
  %103 = load i64, i64* @IS_LONG, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %111

105:                                              ; preds = %98
  %106 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 3
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @Z_REFVAL(i32 %107)
  %109 = call i32 @Z_LVAL_P(i32 %108)
  %110 = load i32*, i32** %14, align 8
  store i32 %109, i32* %110, align 4
  br label %111

111:                                              ; preds = %105, %98, %93
  br label %112

112:                                              ; preds = %111, %88
  %113 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 0
  %114 = call i32 @zval_ptr_dtor(i32* %113)
  %115 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 1
  %116 = call i32 @zval_ptr_dtor(i32* %115)
  %117 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 2
  %118 = call i32 @zval_ptr_dtor(i32* %117)
  %119 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 3
  %120 = call i32 @zval_ptr_dtor(i32* %119)
  ret void
}

declare dso_local i32 @ZVAL_LONG(i32*, i32) #1

declare dso_local i32 @array_init(i32*) #1

declare dso_local i32 @U16_NEXT(i32*, i32, i32, i32) #1

declare dso_local i32 @add_next_index_long(i32*, i32) #1

declare dso_local i64 @zend_call_function(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @php_converter_throw_failure(%struct.TYPE_5__*, i32, i8*) #1

declare dso_local i32 @Z_ISUNDEF(i32) #1

declare dso_local i32 @php_converter_append_fromUnicode_target(i32*, i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @zval_ptr_dtor(i32*) #1

declare dso_local i64 @Z_TYPE(i32) #1

declare dso_local i32 @Z_LVAL(i32) #1

declare dso_local i64 @Z_ISREF(i32) #1

declare dso_local i64 @Z_TYPE_P(i32) #1

declare dso_local i32 @Z_REFVAL(i32) #1

declare dso_local i32 @Z_LVAL_P(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
