; ModuleID = '/home/carl/AnghaBench/php-src/ext/intl/converter/extr_converter.c_php_converter_to_u_callback.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/intl/converter/extr_converter.c_php_converter_to_u_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8*, i8* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i64, i32*, i32* }

@FAILURE = common dso_local global i64 0, align 8
@U_INTERNAL_PROGRAM_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Unexpected failure calling toUCallback()\00", align 1
@IS_LONG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_9__*, i8*, i8*, i32, i32*)* @php_converter_to_u_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @php_converter_to_u_callback(i8* %0, %struct.TYPE_9__* %1, i8* %2, i8* %3, i32 %4, i32* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_8__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca [4 x i32], align 16
  store i8* %0, i8** %7, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %17, %struct.TYPE_8__** %13, align 8
  %18 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 0
  %19 = load i32, i32* %11, align 4
  %20 = call i32 @ZVAL_LONG(i32* %18, i32 %19)
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %41

25:                                               ; preds = %6
  %26 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 1
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = ptrtoint i8* %32 to i64
  %37 = ptrtoint i8* %35 to i64
  %38 = sub i64 %36, %37
  %39 = inttoptr i64 %38 to i8*
  %40 = call i32 @ZVAL_STRINGL(i32* %26, i8* %29, i8* %39)
  br label %44

41:                                               ; preds = %6
  %42 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 1
  %43 = call i32 @ZVAL_EMPTY_STRING(i32* %42)
  br label %44

44:                                               ; preds = %41, %25
  %45 = load i8*, i8** %9, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %52

47:                                               ; preds = %44
  %48 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 2
  %49 = load i8*, i8** %9, align 8
  %50 = load i8*, i8** %10, align 8
  %51 = call i32 @ZVAL_STRINGL(i32* %48, i8* %49, i8* %50)
  br label %55

52:                                               ; preds = %44
  %53 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 2
  %54 = call i32 @ZVAL_EMPTY_STRING(i32* %53)
  br label %55

55:                                               ; preds = %52, %47
  %56 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 3
  %57 = load i32*, i32** %12, align 8
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @ZVAL_LONG(i32* %56, i32 %58)
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  store i32 4, i32* %62, align 8
  %63 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 0
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 3
  store i32* %63, i32** %66, align 8
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 2
  store i32* %14, i32** %69, align 8
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 1
  store i64 0, i64* %72, align 8
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = call i64 @zend_call_function(%struct.TYPE_10__* %74, i32* %76)
  %78 = load i64, i64* @FAILURE, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %55
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %82 = load i32, i32* @U_INTERNAL_PROGRAM_ERROR, align 4
  %83 = call i32 @php_converter_throw_failure(%struct.TYPE_8__* %81, i32 %82, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %94

84:                                               ; preds = %55
  %85 = load i32, i32* %14, align 4
  %86 = call i32 @Z_ISUNDEF(i32 %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %93, label %88

88:                                               ; preds = %84
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %91 = call i32 @php_converter_append_toUnicode_target(i32* %14, %struct.TYPE_9__* %89, %struct.TYPE_8__* %90)
  %92 = call i32 @zval_ptr_dtor(i32* %14)
  br label %93

93:                                               ; preds = %88, %84
  br label %94

94:                                               ; preds = %93, %80
  %95 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 3
  %96 = load i32, i32* %95, align 4
  %97 = call i64 @Z_TYPE(i32 %96)
  %98 = load i64, i64* @IS_LONG, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %105

100:                                              ; preds = %94
  %101 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 3
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @Z_LVAL(i32 %102)
  %104 = load i32*, i32** %12, align 8
  store i32 %103, i32* %104, align 4
  br label %124

105:                                              ; preds = %94
  %106 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 3
  %107 = load i32, i32* %106, align 4
  %108 = call i64 @Z_ISREF(i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %123

110:                                              ; preds = %105
  %111 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 3
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @Z_REFVAL(i32 %112)
  %114 = call i64 @Z_TYPE_P(i32 %113)
  %115 = load i64, i64* @IS_LONG, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %123

117:                                              ; preds = %110
  %118 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 3
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @Z_REFVAL(i32 %119)
  %121 = call i32 @Z_LVAL_P(i32 %120)
  %122 = load i32*, i32** %12, align 8
  store i32 %121, i32* %122, align 4
  br label %123

123:                                              ; preds = %117, %110, %105
  br label %124

124:                                              ; preds = %123, %100
  %125 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 0
  %126 = call i32 @zval_ptr_dtor(i32* %125)
  %127 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 1
  %128 = call i32 @zval_ptr_dtor(i32* %127)
  %129 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 2
  %130 = call i32 @zval_ptr_dtor(i32* %129)
  %131 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 3
  %132 = call i32 @zval_ptr_dtor(i32* %131)
  ret void
}

declare dso_local i32 @ZVAL_LONG(i32*, i32) #1

declare dso_local i32 @ZVAL_STRINGL(i32*, i8*, i8*) #1

declare dso_local i32 @ZVAL_EMPTY_STRING(i32*) #1

declare dso_local i64 @zend_call_function(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @php_converter_throw_failure(%struct.TYPE_8__*, i32, i8*) #1

declare dso_local i32 @Z_ISUNDEF(i32) #1

declare dso_local i32 @php_converter_append_toUnicode_target(i32*, %struct.TYPE_9__*, %struct.TYPE_8__*) #1

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
