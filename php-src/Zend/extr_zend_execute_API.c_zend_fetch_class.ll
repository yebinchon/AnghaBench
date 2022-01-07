; ModuleID = '/home/carl/AnghaBench/php-src/Zend/extr_zend_execute_API.c_zend_fetch_class.c'
source_filename = "/home/carl/AnghaBench/php-src/Zend/extr_zend_execute_API.c_zend_fetch_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_6__* }

@ZEND_FETCH_CLASS_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Cannot access self:: when no class scope is active\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"Cannot access parent:: when no class scope is active\00", align 1
@.str.2 = private unnamed_addr constant [62 x i8] c"Cannot access parent:: when current class scope has no parent\00", align 1
@current_execute_data = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [53 x i8] c"Cannot access static:: when no class scope is active\00", align 1
@ZEND_FETCH_CLASS_DEFAULT = common dso_local global i32 0, align 4
@ZEND_FETCH_CLASS_NO_AUTOLOAD = common dso_local global i32 0, align 4
@ZEND_FETCH_CLASS_SILENT = common dso_local global i32 0, align 4
@exception = common dso_local global i32 0, align 4
@ZEND_FETCH_CLASS_INTERFACE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"Interface '%s' not found\00", align 1
@ZEND_FETCH_CLASS_TRAIT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"Trait '%s' not found\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"Class '%s' not found\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @zend_fetch_class(i32* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @ZEND_FETCH_CLASS_MASK, align 4
  %11 = and i32 %9, %10
  store i32 %11, i32* %8, align 4
  br label %12

12:                                               ; preds = %78, %2
  %13 = load i32, i32* %8, align 4
  switch i32 %13, label %80 [
    i32 129, label %14
    i32 130, label %27
    i32 128, label %54
    i32 131, label %69
  ]

14:                                               ; preds = %12
  %15 = call %struct.TYPE_6__* (...) @zend_get_executed_scope()
  store %struct.TYPE_6__* %15, %struct.TYPE_6__** %7, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %17 = icmp ne %struct.TYPE_6__* %16, null
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i32 @UNEXPECTED(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %14
  %23 = load i32, i32* %5, align 4
  %24 = call i32 (i32, i32*, i8*, ...) @zend_throw_or_error(i32 %23, i32* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %22, %14
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  store %struct.TYPE_6__* %26, %struct.TYPE_6__** %3, align 8
  br label %132

27:                                               ; preds = %12
  %28 = call %struct.TYPE_6__* (...) @zend_get_executed_scope()
  store %struct.TYPE_6__* %28, %struct.TYPE_6__** %7, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %30 = icmp ne %struct.TYPE_6__* %29, null
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i32 @UNEXPECTED(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %27
  %36 = load i32, i32* %5, align 4
  %37 = call i32 (i32, i32*, i8*, ...) @zend_throw_or_error(i32 %36, i32* null, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %3, align 8
  br label %132

38:                                               ; preds = %27
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = icmp ne %struct.TYPE_6__* %41, null
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = call i32 @UNEXPECTED(i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %38
  %48 = load i32, i32* %5, align 4
  %49 = call i32 (i32, i32*, i8*, ...) @zend_throw_or_error(i32 %48, i32* null, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0))
  br label %50

50:                                               ; preds = %47, %38
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  store %struct.TYPE_6__* %53, %struct.TYPE_6__** %3, align 8
  br label %132

54:                                               ; preds = %12
  %55 = load i32, i32* @current_execute_data, align 4
  %56 = call i32 @EG(i32 %55)
  %57 = call %struct.TYPE_6__* @zend_get_called_scope(i32 %56)
  store %struct.TYPE_6__* %57, %struct.TYPE_6__** %6, align 8
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %59 = icmp ne %struct.TYPE_6__* %58, null
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  %62 = call i32 @UNEXPECTED(i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %54
  %65 = load i32, i32* %5, align 4
  %66 = call i32 (i32, i32*, i8*, ...) @zend_throw_or_error(i32 %65, i32* null, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0))
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %3, align 8
  br label %132

67:                                               ; preds = %54
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  store %struct.TYPE_6__* %68, %struct.TYPE_6__** %3, align 8
  br label %132

69:                                               ; preds = %12
  %70 = load i32*, i32** %4, align 8
  %71 = call i32 @zend_get_class_fetch_type(i32* %70)
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* @ZEND_FETCH_CLASS_DEFAULT, align 4
  %74 = icmp ne i32 %72, %73
  %75 = zext i1 %74 to i32
  %76 = call i32 @UNEXPECTED(i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %69
  br label %12

79:                                               ; preds = %69
  br label %80

80:                                               ; preds = %12, %79
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* @ZEND_FETCH_CLASS_NO_AUTOLOAD, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %80
  %86 = load i32*, i32** %4, align 8
  %87 = load i32, i32* %5, align 4
  %88 = call %struct.TYPE_6__* @zend_lookup_class_ex(i32* %86, i32* null, i32 %87)
  store %struct.TYPE_6__* %88, %struct.TYPE_6__** %3, align 8
  br label %132

89:                                               ; preds = %80
  %90 = load i32*, i32** %4, align 8
  %91 = load i32, i32* %5, align 4
  %92 = call %struct.TYPE_6__* @zend_lookup_class_ex(i32* %90, i32* null, i32 %91)
  store %struct.TYPE_6__* %92, %struct.TYPE_6__** %6, align 8
  %93 = icmp eq %struct.TYPE_6__* %92, null
  br i1 %93, label %94, label %129

94:                                               ; preds = %89
  %95 = load i32, i32* %5, align 4
  %96 = load i32, i32* @ZEND_FETCH_CLASS_SILENT, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %128, label %99

99:                                               ; preds = %94
  %100 = load i32, i32* @exception, align 4
  %101 = call i32 @EG(i32 %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %128, label %103

103:                                              ; preds = %99
  %104 = load i32, i32* %8, align 4
  %105 = load i32, i32* @ZEND_FETCH_CLASS_INTERFACE, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %112

107:                                              ; preds = %103
  %108 = load i32, i32* %5, align 4
  %109 = load i32*, i32** %4, align 8
  %110 = call i32 @ZSTR_VAL(i32* %109)
  %111 = call i32 (i32, i32*, i8*, ...) @zend_throw_or_error(i32 %108, i32* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %110)
  br label %127

112:                                              ; preds = %103
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* @ZEND_FETCH_CLASS_TRAIT, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %121

116:                                              ; preds = %112
  %117 = load i32, i32* %5, align 4
  %118 = load i32*, i32** %4, align 8
  %119 = call i32 @ZSTR_VAL(i32* %118)
  %120 = call i32 (i32, i32*, i8*, ...) @zend_throw_or_error(i32 %117, i32* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %119)
  br label %126

121:                                              ; preds = %112
  %122 = load i32, i32* %5, align 4
  %123 = load i32*, i32** %4, align 8
  %124 = call i32 @ZSTR_VAL(i32* %123)
  %125 = call i32 (i32, i32*, i8*, ...) @zend_throw_or_error(i32 %122, i32* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 %124)
  br label %126

126:                                              ; preds = %121, %116
  br label %127

127:                                              ; preds = %126, %107
  br label %128

128:                                              ; preds = %127, %99, %94
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %3, align 8
  br label %132

129:                                              ; preds = %89
  br label %130

130:                                              ; preds = %129
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  store %struct.TYPE_6__* %131, %struct.TYPE_6__** %3, align 8
  br label %132

132:                                              ; preds = %130, %128, %85, %67, %64, %50, %35, %25
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  ret %struct.TYPE_6__* %133
}

declare dso_local %struct.TYPE_6__* @zend_get_executed_scope(...) #1

declare dso_local i32 @UNEXPECTED(i32) #1

declare dso_local i32 @zend_throw_or_error(i32, i32*, i8*, ...) #1

declare dso_local %struct.TYPE_6__* @zend_get_called_scope(i32) #1

declare dso_local i32 @EG(i32) #1

declare dso_local i32 @zend_get_class_fetch_type(i32*) #1

declare dso_local %struct.TYPE_6__* @zend_lookup_class_ex(i32*, i32*, i32) #1

declare dso_local i32 @ZSTR_VAL(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
