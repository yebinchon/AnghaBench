; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_zend_optimizer.c_get_class_entry_from_op1.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_zend_optimizer.c_get_class_entry_from_op1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64, i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_17__ = type { i64, %struct.TYPE_19__* }
%struct.TYPE_18__ = type { i64, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }

@IS_CONST = common dso_local global i64 0, align 8
@IS_STRING = common dso_local global i64 0, align 8
@class_table = common dso_local global i32 0, align 4
@ZEND_INTERNAL_CLASS = common dso_local global i64 0, align 8
@ZEND_USER_CLASS = common dso_local global i64 0, align 8
@IS_UNUSED = common dso_local global i64 0, align 8
@ZEND_ACC_TRAIT = common dso_local global i32 0, align 4
@ZEND_FETCH_CLASS_MASK = common dso_local global i32 0, align 4
@ZEND_FETCH_CLASS_SELF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_19__* (%struct.TYPE_16__*, %struct.TYPE_17__*, %struct.TYPE_18__*)* @get_class_entry_from_op1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_19__* @get_class_entry_from_op1(%struct.TYPE_16__* %0, %struct.TYPE_17__* %1, %struct.TYPE_18__* %2) #0 {
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %6, align 8
  store %struct.TYPE_18__* %2, %struct.TYPE_18__** %7, align 8
  %11 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %12 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @IS_CONST, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %84

16:                                               ; preds = %3
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32* @CRT_CONSTANT(i32 %20)
  store i32* %21, i32** %8, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = call i64 @Z_TYPE_P(i32* %22)
  %24 = load i64, i64* @IS_STRING, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %83

26:                                               ; preds = %16
  %27 = load i32*, i32** %8, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  %29 = call i32* @Z_STR_P(i32* %28)
  store i32* %29, i32** %9, align 8
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %31 = icmp ne %struct.TYPE_16__* %30, null
  br i1 %31, label %32, label %40

32:                                               ; preds = %26
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 0
  %35 = load i32*, i32** %9, align 8
  %36 = call %struct.TYPE_19__* @zend_hash_find_ptr(i32* %34, i32* %35)
  store %struct.TYPE_19__* %36, %struct.TYPE_19__** %10, align 8
  %37 = icmp ne %struct.TYPE_19__* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  store %struct.TYPE_19__* %39, %struct.TYPE_19__** %4, align 8
  br label %119

40:                                               ; preds = %32, %26
  %41 = load i32, i32* @class_table, align 4
  %42 = call i32* @EG(i32 %41)
  %43 = load i32*, i32** %9, align 8
  %44 = call %struct.TYPE_19__* @zend_hash_find_ptr(i32* %42, i32* %43)
  store %struct.TYPE_19__* %44, %struct.TYPE_19__** %10, align 8
  %45 = icmp ne %struct.TYPE_19__* %44, null
  br i1 %45, label %46, label %81

46:                                               ; preds = %40
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @ZEND_INTERNAL_CLASS, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  store %struct.TYPE_19__* %53, %struct.TYPE_19__** %4, align 8
  br label %119

54:                                               ; preds = %46
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @ZEND_USER_CLASS, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %79

60:                                               ; preds = %54
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %79

67:                                               ; preds = %60
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp eq i64 %72, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %67
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  store %struct.TYPE_19__* %78, %struct.TYPE_19__** %4, align 8
  br label %119

79:                                               ; preds = %67, %60, %54
  br label %80

80:                                               ; preds = %79
  br label %81

81:                                               ; preds = %80, %40
  br label %82

82:                                               ; preds = %81
  br label %83

83:                                               ; preds = %82, %16
  br label %118

84:                                               ; preds = %3
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @IS_UNUSED, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %117

90:                                               ; preds = %84
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_19__*, %struct.TYPE_19__** %92, align 8
  %94 = icmp ne %struct.TYPE_19__* %93, null
  br i1 %94, label %95, label %117

95:                                               ; preds = %90
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @ZEND_ACC_TRAIT, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %117, label %104

104:                                              ; preds = %95
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @ZEND_FETCH_CLASS_MASK, align 4
  %110 = and i32 %108, %109
  %111 = load i32, i32* @ZEND_FETCH_CLASS_SELF, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %117

113:                                              ; preds = %104
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %114, i32 0, i32 1
  %116 = load %struct.TYPE_19__*, %struct.TYPE_19__** %115, align 8
  store %struct.TYPE_19__* %116, %struct.TYPE_19__** %4, align 8
  br label %119

117:                                              ; preds = %104, %95, %90, %84
  br label %118

118:                                              ; preds = %117, %83
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %4, align 8
  br label %119

119:                                              ; preds = %118, %113, %77, %52, %38
  %120 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  ret %struct.TYPE_19__* %120
}

declare dso_local i32* @CRT_CONSTANT(i32) #1

declare dso_local i64 @Z_TYPE_P(i32*) #1

declare dso_local i32* @Z_STR_P(i32*) #1

declare dso_local %struct.TYPE_19__* @zend_hash_find_ptr(i32*, i32*) #1

declare dso_local i32* @EG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
