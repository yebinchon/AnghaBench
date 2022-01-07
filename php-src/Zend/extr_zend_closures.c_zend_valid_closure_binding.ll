; ModuleID = '/home/carl/AnghaBench/php-src/Zend/extr_zend_closures.c_zend_valid_closure_binding.c'
source_filename = "/home/carl/AnghaBench/php-src/Zend/extr_zend_closures.c_zend_valid_closure_binding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, %struct.TYPE_13__*, i32 }
%struct.TYPE_13__ = type { i64, i32 }
%struct.TYPE_14__ = type { i32 }

@ZEND_ACC_FAKE_CLOSURE = common dso_local global i32 0, align 4
@ZEND_ACC_STATIC = common dso_local global i32 0, align 4
@E_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Cannot bind an instance to a static closure\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"Cannot bind method %s::%s() to object of class %s\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Cannot unbind $this of method\00", align 1
@ZEND_ACC_USES_THIS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"Cannot unbind $this of closure using $this\00", align 1
@ZEND_INTERNAL_CLASS = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [50 x i8] c"Cannot bind closure to scope of internal class %s\00", align 1
@.str.5 = private unnamed_addr constant [83 x i8] c"Cannot rebind scope of closure created by ReflectionFunctionAbstract::getClosure()\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i32*, %struct.TYPE_13__*)* @zend_valid_closure_binding to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zend_valid_closure_binding(%struct.TYPE_12__* %0, i32* %1, %struct.TYPE_13__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %7, align 8
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 1
  store %struct.TYPE_11__* %11, %struct.TYPE_11__** %8, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @ZEND_ACC_FAKE_CLOSURE, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %9, align 4
  %20 = load i32*, i32** %6, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %72

22:                                               ; preds = %3
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @ZEND_ACC_STATIC, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %22
  %31 = load i32, i32* @E_WARNING, align 4
  %32 = call i32 (i32, i8*, ...) @zend_error(i32 %31, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %151

33:                                               ; preds = %22
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %71

36:                                               ; preds = %33
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %39, align 8
  %41 = icmp ne %struct.TYPE_13__* %40, null
  br i1 %41, label %42, label %71

42:                                               ; preds = %36
  %43 = load i32*, i32** %6, align 8
  %44 = call %struct.TYPE_14__* @Z_OBJCE_P(i32* %43)
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %47, align 8
  %49 = call i32 @instanceof_function(%struct.TYPE_14__* %44, %struct.TYPE_13__* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %71, label %51

51:                                               ; preds = %42
  %52 = load i32, i32* @E_WARNING, align 4
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @ZSTR_VAL(i32 %58)
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @ZSTR_VAL(i32 %63)
  %65 = load i32*, i32** %6, align 8
  %66 = call %struct.TYPE_14__* @Z_OBJCE_P(i32* %65)
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @ZSTR_VAL(i32 %68)
  %70 = call i32 (i32, i8*, ...) @zend_error(i32 %52, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %59, i32 %64, i32 %69)
  store i32 0, i32* %4, align 4
  br label %151

71:                                               ; preds = %42, %36, %33
  br label %114

72:                                               ; preds = %3
  %73 = load i32, i32* %9, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %92

75:                                               ; preds = %72
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %78, align 8
  %80 = icmp ne %struct.TYPE_13__* %79, null
  br i1 %80, label %81, label %92

81:                                               ; preds = %75
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @ZEND_ACC_STATIC, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %81
  %90 = load i32, i32* @E_WARNING, align 4
  %91 = call i32 (i32, i8*, ...) @zend_error(i32 %90, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %151

92:                                               ; preds = %81, %75, %72
  %93 = load i32, i32* %9, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %112, label %95

95:                                               ; preds = %92
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @Z_ISUNDEF(i32 %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %112, label %101

101:                                              ; preds = %95
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @ZEND_ACC_USES_THIS, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %101
  %110 = load i32, i32* @E_WARNING, align 4
  %111 = call i32 (i32, i8*, ...) @zend_error(i32 %110, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %151

112:                                              ; preds = %101, %95, %92
  br label %113

113:                                              ; preds = %112
  br label %114

114:                                              ; preds = %113, %71
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %116 = icmp ne %struct.TYPE_13__* %115, null
  br i1 %116, label %117, label %137

117:                                              ; preds = %114
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 1
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %121, align 8
  %123 = icmp ne %struct.TYPE_13__* %118, %122
  br i1 %123, label %124, label %137

124:                                              ; preds = %117
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @ZEND_INTERNAL_CLASS, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %137

130:                                              ; preds = %124
  %131 = load i32, i32* @E_WARNING, align 4
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @ZSTR_VAL(i32 %134)
  %136 = call i32 (i32, i8*, ...) @zend_error(i32 %131, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0), i32 %135)
  store i32 0, i32* %4, align 4
  br label %151

137:                                              ; preds = %124, %117, %114
  %138 = load i32, i32* %9, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %150

140:                                              ; preds = %137
  %141 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 1
  %145 = load %struct.TYPE_13__*, %struct.TYPE_13__** %144, align 8
  %146 = icmp ne %struct.TYPE_13__* %141, %145
  br i1 %146, label %147, label %150

147:                                              ; preds = %140
  %148 = load i32, i32* @E_WARNING, align 4
  %149 = call i32 (i32, i8*, ...) @zend_error(i32 %148, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %151

150:                                              ; preds = %140, %137
  store i32 1, i32* %4, align 4
  br label %151

151:                                              ; preds = %150, %147, %130, %109, %89, %51, %30
  %152 = load i32, i32* %4, align 4
  ret i32 %152
}

declare dso_local i32 @zend_error(i32, i8*, ...) #1

declare dso_local i32 @instanceof_function(%struct.TYPE_14__*, %struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_14__* @Z_OBJCE_P(i32*) #1

declare dso_local i32 @ZSTR_VAL(i32) #1

declare dso_local i32 @Z_ISUNDEF(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
