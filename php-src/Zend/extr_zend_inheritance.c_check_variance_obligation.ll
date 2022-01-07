; ModuleID = '/home/carl/AnghaBench/php-src/Zend/extr_zend_inheritance.c_check_variance_obligation.c'
source_filename = "/home/carl/AnghaBench/php-src/Zend/extr_zend_inheritance.c_check_variance_obligation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@OBLIGATION_DEPENDENCY = common dso_local global i64 0, align 8
@ZEND_ACC_UNRESOLVED_VARIANCE = common dso_local global i32 0, align 4
@ZEND_ACC_LINKED = common dso_local global i32 0, align 4
@ZEND_HASH_APPLY_KEEP = common dso_local global i32 0, align 4
@OBLIGATION_COMPATIBILITY = common dso_local global i64 0, align 8
@INHERITANCE_SUCCESS = common dso_local global i64 0, align 8
@INHERITANCE_UNRESOLVED = common dso_local global i64 0, align 8
@INHERITANCE_ERROR = common dso_local global i64 0, align 8
@OBLIGATION_PROPERTY_COMPATIBILITY = common dso_local global i64 0, align 8
@ZEND_HASH_APPLY_REMOVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @check_variance_obligation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_variance_obligation(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call %struct.TYPE_6__* @Z_PTR_P(i32* %8)
  store %struct.TYPE_6__* %9, %struct.TYPE_6__** %4, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @OBLIGATION_DEPENDENCY, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %38

15:                                               ; preds = %1
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 5
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  store %struct.TYPE_5__* %18, %struct.TYPE_5__** %5, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @ZEND_ACC_UNRESOLVED_VARIANCE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %15
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %27 = call i32 @resolve_delayed_variance_obligations(%struct.TYPE_5__* %26)
  br label %28

28:                                               ; preds = %25, %15
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @ZEND_ACC_LINKED, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %28
  %36 = load i32, i32* @ZEND_HASH_APPLY_KEEP, align 4
  store i32 %36, i32* %2, align 4
  br label %123

37:                                               ; preds = %28
  br label %121

38:                                               ; preds = %1
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @OBLIGATION_COMPATIBILITY, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %82

44:                                               ; preds = %38
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @zend_do_perform_implementation_check(i32 %47, i32 %50)
  store i64 %51, i64* %6, align 8
  %52 = load i64, i64* %6, align 8
  %53 = load i64, i64* @INHERITANCE_SUCCESS, align 8
  %54 = icmp ne i64 %52, %53
  %55 = zext i1 %54 to i32
  %56 = call i64 @UNEXPECTED(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %81

58:                                               ; preds = %44
  %59 = load i64, i64* %6, align 8
  %60 = load i64, i64* @INHERITANCE_UNRESOLVED, align 8
  %61 = icmp eq i64 %59, %60
  %62 = zext i1 %61 to i32
  %63 = call i64 @EXPECTED(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %58
  %66 = load i32, i32* @ZEND_HASH_APPLY_KEEP, align 4
  store i32 %66, i32* %2, align 4
  br label %123

67:                                               ; preds = %58
  %68 = load i64, i64* %6, align 8
  %69 = load i64, i64* @INHERITANCE_ERROR, align 8
  %70 = icmp eq i64 %68, %69
  %71 = zext i1 %70 to i32
  %72 = call i32 @ZEND_ASSERT(i32 %71)
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = load i64, i64* %6, align 8
  %80 = call i32 @emit_incompatible_method_error(i32 %75, i32 %78, i64 %79)
  br label %81

81:                                               ; preds = %67, %44
  br label %120

82:                                               ; preds = %38
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @OBLIGATION_PROPERTY_COMPATIBILITY, align 8
  %87 = icmp eq i64 %85, %86
  %88 = zext i1 %87 to i32
  %89 = call i32 @ZEND_ASSERT(i32 %88)
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = call i64 @property_types_compatible(i32 %92, i32 %95)
  store i64 %96, i64* %7, align 8
  %97 = load i64, i64* %7, align 8
  %98 = load i64, i64* @INHERITANCE_SUCCESS, align 8
  %99 = icmp ne i64 %97, %98
  br i1 %99, label %100, label %119

100:                                              ; preds = %82
  %101 = load i64, i64* %7, align 8
  %102 = load i64, i64* @INHERITANCE_UNRESOLVED, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %100
  %105 = load i32, i32* @ZEND_HASH_APPLY_KEEP, align 4
  store i32 %105, i32* %2, align 4
  br label %123

106:                                              ; preds = %100
  %107 = load i64, i64* %7, align 8
  %108 = load i64, i64* @INHERITANCE_ERROR, align 8
  %109 = icmp eq i64 %107, %108
  %110 = zext i1 %109 to i32
  %111 = call i32 @ZEND_ASSERT(i32 %110)
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @emit_incompatible_property_error(i32 %114, i32 %117)
  br label %119

119:                                              ; preds = %106, %82
  br label %120

120:                                              ; preds = %119, %81
  br label %121

121:                                              ; preds = %120, %37
  %122 = load i32, i32* @ZEND_HASH_APPLY_REMOVE, align 4
  store i32 %122, i32* %2, align 4
  br label %123

123:                                              ; preds = %121, %104, %65, %35
  %124 = load i32, i32* %2, align 4
  ret i32 %124
}

declare dso_local %struct.TYPE_6__* @Z_PTR_P(i32*) #1

declare dso_local i32 @resolve_delayed_variance_obligations(%struct.TYPE_5__*) #1

declare dso_local i64 @zend_do_perform_implementation_check(i32, i32) #1

declare dso_local i64 @UNEXPECTED(i32) #1

declare dso_local i64 @EXPECTED(i32) #1

declare dso_local i32 @ZEND_ASSERT(i32) #1

declare dso_local i32 @emit_incompatible_method_error(i32, i32, i64) #1

declare dso_local i64 @property_types_compatible(i32, i32) #1

declare dso_local i32 @emit_incompatible_property_error(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
