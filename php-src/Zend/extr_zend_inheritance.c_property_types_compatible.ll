; ModuleID = '/home/carl/AnghaBench/php-src/Zend/extr_zend_inheritance.c_property_types_compatible.c'
source_filename = "/home/carl/AnghaBench/php-src/Zend/extr_zend_inheritance.c_property_types_compatible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@INHERITANCE_SUCCESS = common dso_local global i64 0, align 8
@INHERITANCE_ERROR = common dso_local global i64 0, align 8
@INHERITANCE_UNRESOLVED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @property_types_compatible(%struct.TYPE_4__* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @ZEND_TYPE_PURE_MASK(i32 %10)
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @ZEND_TYPE_PURE_MASK(i32 %14)
  %16 = icmp eq i64 %11, %15
  br i1 %16, label %17, label %29

17:                                               ; preds = %2
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @ZEND_TYPE_NAME(i32 %20)
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @ZEND_TYPE_NAME(i32 %24)
  %26 = icmp eq i64 %21, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %17
  %28 = load i64, i64* @INHERITANCE_SUCCESS, align 8
  store i64 %28, i64* %3, align 8
  br label %100

29:                                               ; preds = %17, %2
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @ZEND_TYPE_IS_SET(i32 %32)
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @ZEND_TYPE_IS_SET(i32 %36)
  %38 = icmp ne i64 %33, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %29
  %40 = load i64, i64* @INHERITANCE_ERROR, align 8
  store i64 %40, i64* %3, align 8
  br label %100

41:                                               ; preds = %29
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @zend_perform_covariant_type_check(i32 %44, i32 %47, i32 %50, i32 %53)
  store i64 %54, i64* %6, align 8
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @zend_perform_covariant_type_check(i32 %57, i32 %60, i32 %63, i32 %66)
  store i64 %67, i64* %7, align 8
  %68 = load i64, i64* %6, align 8
  %69 = load i64, i64* @INHERITANCE_SUCCESS, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %41
  %72 = load i64, i64* %7, align 8
  %73 = load i64, i64* @INHERITANCE_SUCCESS, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %71
  %76 = load i64, i64* @INHERITANCE_SUCCESS, align 8
  store i64 %76, i64* %3, align 8
  br label %100

77:                                               ; preds = %71, %41
  %78 = load i64, i64* %6, align 8
  %79 = load i64, i64* @INHERITANCE_ERROR, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %85, label %81

81:                                               ; preds = %77
  %82 = load i64, i64* %7, align 8
  %83 = load i64, i64* @INHERITANCE_ERROR, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %81, %77
  %86 = load i64, i64* @INHERITANCE_ERROR, align 8
  store i64 %86, i64* %3, align 8
  br label %100

87:                                               ; preds = %81
  %88 = load i64, i64* %6, align 8
  %89 = load i64, i64* @INHERITANCE_UNRESOLVED, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %87
  %92 = load i64, i64* %7, align 8
  %93 = load i64, i64* @INHERITANCE_UNRESOLVED, align 8
  %94 = icmp eq i64 %92, %93
  br label %95

95:                                               ; preds = %91, %87
  %96 = phi i1 [ false, %87 ], [ %94, %91 ]
  %97 = zext i1 %96 to i32
  %98 = call i32 @ZEND_ASSERT(i32 %97)
  %99 = load i64, i64* @INHERITANCE_UNRESOLVED, align 8
  store i64 %99, i64* %3, align 8
  br label %100

100:                                              ; preds = %95, %85, %75, %39, %27
  %101 = load i64, i64* %3, align 8
  ret i64 %101
}

declare dso_local i64 @ZEND_TYPE_PURE_MASK(i32) #1

declare dso_local i64 @ZEND_TYPE_NAME(i32) #1

declare dso_local i64 @ZEND_TYPE_IS_SET(i32) #1

declare dso_local i64 @zend_perform_covariant_type_check(i32, i32, i32, i32) #1

declare dso_local i32 @ZEND_ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
