; ModuleID = '/home/carl/AnghaBench/php-src/ext/spl/extr_spl_array.c_spl_array_set_array.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/spl/extr_spl_array.c_spl_array_set_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@IS_OBJECT = common dso_local global i64 0, align 8
@IS_ARRAY = common dso_local global i64 0, align 8
@spl_ce_InvalidArgumentException = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Passed variable is not an array or object\00", align 1
@spl_handler_ArrayObject = common dso_local global i32 0, align 4
@spl_handler_ArrayIterator = common dso_local global i32 0, align 4
@SPL_ARRAY_INT_MASK = common dso_local global i32 0, align 4
@SPL_ARRAY_IS_SELF = common dso_local global i32 0, align 4
@SPL_ARRAY_USE_OTHER = common dso_local global i32 0, align 4
@get_properties = common dso_local global i32 0, align 4
@zend_std_get_properties = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [55 x i8] c"Overloaded object of type %s is not compatible with %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_9__*, i32*, i32, i32)* @spl_array_set_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spl_array_set_array(i32* %0, %struct.TYPE_9__* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load i32*, i32** %8, align 8
  %14 = call i64 @Z_TYPE_P(i32* %13)
  %15 = load i64, i64* @IS_OBJECT, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %25

17:                                               ; preds = %5
  %18 = load i32*, i32** %8, align 8
  %19 = call i64 @Z_TYPE_P(i32* %18)
  %20 = load i64, i64* @IS_ARRAY, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i32, i32* @spl_ce_InvalidArgumentException, align 4
  %24 = call i32 @zend_throw_exception(i32 %23, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 0)
  br label %143

25:                                               ; preds = %17, %5
  %26 = load i32*, i32** %8, align 8
  %27 = call i64 @Z_TYPE_P(i32* %26)
  %28 = load i64, i64* @IS_ARRAY, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %50

30:                                               ; preds = %25
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 2
  %33 = call i32 @zval_ptr_dtor(i32* %32)
  %34 = load i32*, i32** %8, align 8
  %35 = call i32 @Z_REFCOUNT_P(i32* %34)
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %42

37:                                               ; preds = %30
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 2
  %40 = load i32*, i32** %8, align 8
  %41 = call i32 @ZVAL_COPY(i32* %39, i32* %40)
  br label %49

42:                                               ; preds = %30
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 2
  %45 = load i32*, i32** %8, align 8
  %46 = call i32 @Z_ARR_P(i32* %45)
  %47 = call i32 @zend_array_dup(i32 %46)
  %48 = call i32 @ZVAL_ARR(i32* %44, i32 %47)
  br label %49

49:                                               ; preds = %42, %37
  br label %126

50:                                               ; preds = %25
  %51 = load i32*, i32** %8, align 8
  %52 = call i32* @Z_OBJ_HT_P(i32* %51)
  %53 = icmp eq i32* %52, @spl_handler_ArrayObject
  br i1 %53, label %58, label %54

54:                                               ; preds = %50
  %55 = load i32*, i32** %8, align 8
  %56 = call i32* @Z_OBJ_HT_P(i32* %55)
  %57 = icmp eq i32* %56, @spl_handler_ArrayIterator
  br i1 %57, label %58, label %95

58:                                               ; preds = %54, %50
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 2
  %61 = call i32 @zval_ptr_dtor(i32* %60)
  %62 = load i32, i32* %10, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %58
  %65 = load i32*, i32** %8, align 8
  %66 = call %struct.TYPE_9__* @Z_SPLARRAY_P(i32* %65)
  store %struct.TYPE_9__* %66, %struct.TYPE_9__** %11, align 8
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @SPL_ARRAY_INT_MASK, align 4
  %71 = xor i32 %70, -1
  %72 = and i32 %69, %71
  store i32 %72, i32* %9, align 4
  br label %73

73:                                               ; preds = %64, %58
  %74 = load i32*, i32** %6, align 8
  %75 = call i64 @Z_OBJ_P(i32* %74)
  %76 = load i32*, i32** %8, align 8
  %77 = call i64 @Z_OBJ_P(i32* %76)
  %78 = icmp eq i64 %75, %77
  br i1 %78, label %79, label %86

79:                                               ; preds = %73
  %80 = load i32, i32* @SPL_ARRAY_IS_SELF, align 4
  %81 = load i32, i32* %9, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %9, align 4
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 2
  %85 = call i32 @ZVAL_UNDEF(i32* %84)
  br label %94

86:                                               ; preds = %73
  %87 = load i32, i32* @SPL_ARRAY_USE_OTHER, align 4
  %88 = load i32, i32* %9, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %9, align 4
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 2
  %92 = load i32*, i32** %8, align 8
  %93 = call i32 @ZVAL_COPY(i32* %91, i32* %92)
  br label %94

94:                                               ; preds = %86, %79
  br label %125

95:                                               ; preds = %54
  %96 = load i32*, i32** %8, align 8
  %97 = load i32, i32* @get_properties, align 4
  %98 = call i64 @Z_OBJ_HANDLER_P(i32* %96, i32 %97)
  store i64 %98, i64* %12, align 8
  %99 = load i64, i64* %12, align 8
  %100 = load i64, i64* @zend_std_get_properties, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %102, label %117

102:                                              ; preds = %95
  %103 = load i32, i32* @spl_ce_InvalidArgumentException, align 4
  %104 = load i32*, i32** %8, align 8
  %105 = call %struct.TYPE_10__* @Z_OBJCE_P(i32* %104)
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @ZSTR_VAL(i32 %107)
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 3
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @ZSTR_VAL(i32 %114)
  %116 = call i32 @zend_throw_exception_ex(i32 %103, i32 0, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %108, i32 %115)
  br label %143

117:                                              ; preds = %95
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 2
  %120 = call i32 @zval_ptr_dtor(i32* %119)
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 2
  %123 = load i32*, i32** %8, align 8
  %124 = call i32 @ZVAL_COPY(i32* %122, i32* %123)
  br label %125

125:                                              ; preds = %117, %94
  br label %126

126:                                              ; preds = %125, %49
  %127 = load i32, i32* @SPL_ARRAY_IS_SELF, align 4
  %128 = xor i32 %127, -1
  %129 = load i32, i32* @SPL_ARRAY_USE_OTHER, align 4
  %130 = xor i32 %129, -1
  %131 = and i32 %128, %130
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = and i32 %134, %131
  store i32 %135, i32* %133, align 8
  %136 = load i32, i32* %9, align 4
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = or i32 %139, %136
  store i32 %140, i32* %138, align 8
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 1
  store i64 -1, i64* %142, align 8
  br label %143

143:                                              ; preds = %126, %102, %22
  ret void
}

declare dso_local i64 @Z_TYPE_P(i32*) #1

declare dso_local i32 @zend_throw_exception(i32, i8*, i32) #1

declare dso_local i32 @zval_ptr_dtor(i32*) #1

declare dso_local i32 @Z_REFCOUNT_P(i32*) #1

declare dso_local i32 @ZVAL_COPY(i32*, i32*) #1

declare dso_local i32 @ZVAL_ARR(i32*, i32) #1

declare dso_local i32 @zend_array_dup(i32) #1

declare dso_local i32 @Z_ARR_P(i32*) #1

declare dso_local i32* @Z_OBJ_HT_P(i32*) #1

declare dso_local %struct.TYPE_9__* @Z_SPLARRAY_P(i32*) #1

declare dso_local i64 @Z_OBJ_P(i32*) #1

declare dso_local i32 @ZVAL_UNDEF(i32*) #1

declare dso_local i64 @Z_OBJ_HANDLER_P(i32*, i32) #1

declare dso_local i32 @zend_throw_exception_ex(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @ZSTR_VAL(i32) #1

declare dso_local %struct.TYPE_10__* @Z_OBJCE_P(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
