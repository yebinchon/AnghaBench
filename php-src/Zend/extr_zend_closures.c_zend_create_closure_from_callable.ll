; ModuleID = '/home/carl/AnghaBench/php-src/Zend/extr_zend_closures.c_zend_create_closure_from_callable.c'
source_filename = "/home/carl/AnghaBench/php-src/Zend/extr_zend_closures.c_zend_create_closure_from_callable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, %struct.TYPE_12__*, %struct.TYPE_15__* }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_15__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, %struct.TYPE_17__*, i32 }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_17__*, i32, i32, i32 }

@FAILURE = common dso_local global i32 0, align 4
@ZEND_ACC_CALL_VIA_TRAMPOLINE = common dso_local global i32 0, align 4
@zend_ce_closure = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"__invoke\00", align 1
@SUCCESS = common dso_local global i32 0, align 4
@ZEND_ACC_STATIC = common dso_local global i32 0, align 4
@ZEND_INTERNAL_FUNCTION = common dso_local global i32 0, align 4
@zend_closure_call_magic = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i8**)* @zend_create_closure_from_callable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zend_create_closure_from_callable(i32* %0, i32* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.TYPE_16__, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_14__, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8** %2, i8*** %7, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = load i8**, i8*** %7, align 8
  %14 = call i32 @zend_is_callable_ex(i32* %12, i32* null, i32 0, i32* null, %struct.TYPE_16__* %8, i8** %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @FAILURE, align 4
  store i32 %17, i32* %4, align 4
  br label %150

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 2
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  store %struct.TYPE_15__* %20, %struct.TYPE_15__** %9, align 8
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @ZEND_ACC_CALL_VIA_TRAMPOLINE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %121

28:                                               ; preds = %18
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 1
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %29, align 8
  %31 = icmp ne %struct.TYPE_12__* %30, null
  br i1 %31, label %32, label %57

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 1
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @zend_ce_closure, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %57

39:                                               ; preds = %32
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i64 @zend_string_equals_literal(i32 %43, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %39
  %47 = load i32*, i32** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 1
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %48, align 8
  %50 = call i32 @ZVAL_OBJ(i32* %47, %struct.TYPE_12__* %49)
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 1
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %51, align 8
  %53 = call i32 @GC_ADDREF(%struct.TYPE_12__* %52)
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %55 = call i32 @zend_free_trampoline(%struct.TYPE_15__* %54)
  %56 = load i32, i32* @SUCCESS, align 4
  store i32 %56, i32* %4, align 4
  br label %150

57:                                               ; preds = %39, %32, %28
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %60, align 8
  %62 = icmp ne %struct.TYPE_17__* %61, null
  br i1 %62, label %65, label %63

63:                                               ; preds = %57
  %64 = load i32, i32* @FAILURE, align 4
  store i32 %64, i32* %4, align 4
  br label %150

65:                                               ; preds = %57
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @ZEND_ACC_STATIC, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %84

73:                                               ; preds = %65
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %83, label %81

81:                                               ; preds = %73
  %82 = load i32, i32* @FAILURE, align 4
  store i32 %82, i32* %4, align 4
  br label %150

83:                                               ; preds = %73
  br label %95

84:                                               ; preds = %65
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_17__*, %struct.TYPE_17__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %84
  %93 = load i32, i32* @FAILURE, align 4
  store i32 %93, i32* %4, align 4
  br label %150

94:                                               ; preds = %84
  br label %95

95:                                               ; preds = %94, %83
  %96 = call i32 @memset(%struct.TYPE_14__* %11, i32 0, i32 32)
  %97 = load i32, i32* @ZEND_INTERNAL_FUNCTION, align 4
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 4
  store i32 %97, i32* %98, align 8
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @ZEND_ACC_STATIC, align 4
  %104 = and i32 %102, %103
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 0
  store i32 %104, i32* %105, align 8
  %106 = load i32, i32* @zend_closure_call_magic, align 4
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 3
  store i32 %106, i32* %107, align 4
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 2
  store i32 %111, i32* %112, align 8
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 1
  %116 = load %struct.TYPE_17__*, %struct.TYPE_17__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 1
  store %struct.TYPE_17__* %116, %struct.TYPE_17__** %117, align 8
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %119 = call i32 @zend_free_trampoline(%struct.TYPE_15__* %118)
  %120 = bitcast %struct.TYPE_14__* %11 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %120, %struct.TYPE_15__** %9, align 8
  br label %121

121:                                              ; preds = %95, %18
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 1
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %122, align 8
  %124 = icmp ne %struct.TYPE_12__* %123, null
  br i1 %124, label %125, label %138

125:                                              ; preds = %121
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 1
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %126, align 8
  %128 = call i32 @ZVAL_OBJ(i32* %10, %struct.TYPE_12__* %127)
  %129 = load i32*, i32** %5, align 8
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %131 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 1
  %134 = load %struct.TYPE_17__*, %struct.TYPE_17__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @zend_create_fake_closure(i32* %129, %struct.TYPE_15__* %130, %struct.TYPE_17__* %134, i32 %136, i32* %10)
  br label %148

138:                                              ; preds = %121
  %139 = load i32*, i32** %5, align 8
  %140 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 1
  %144 = load %struct.TYPE_17__*, %struct.TYPE_17__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @zend_create_fake_closure(i32* %139, %struct.TYPE_15__* %140, %struct.TYPE_17__* %144, i32 %146, i32* null)
  br label %148

148:                                              ; preds = %138, %125
  %149 = load i32, i32* @SUCCESS, align 4
  store i32 %149, i32* %4, align 4
  br label %150

150:                                              ; preds = %148, %92, %81, %63, %46, %16
  %151 = load i32, i32* %4, align 4
  ret i32 %151
}

declare dso_local i32 @zend_is_callable_ex(i32*, i32*, i32, i32*, %struct.TYPE_16__*, i8**) #1

declare dso_local i64 @zend_string_equals_literal(i32, i8*) #1

declare dso_local i32 @ZVAL_OBJ(i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @GC_ADDREF(%struct.TYPE_12__*) #1

declare dso_local i32 @zend_free_trampoline(%struct.TYPE_15__*) #1

declare dso_local i32 @memset(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @zend_create_fake_closure(i32*, %struct.TYPE_15__*, %struct.TYPE_17__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
