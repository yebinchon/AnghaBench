; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_zend_inference.c_join_class_entries.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_zend_inference.c_join_class_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_6__* }

@ZEND_ACC_LINKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_6__* (%struct.TYPE_6__*, %struct.TYPE_6__*, i32*)* @join_class_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_6__* @join_class_entries(%struct.TYPE_6__* %0, %struct.TYPE_6__* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %12 = icmp eq %struct.TYPE_6__* %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  store %struct.TYPE_6__* %14, %struct.TYPE_6__** %4, align 8
  br label %107

15:                                               ; preds = %3
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %17 = icmp ne %struct.TYPE_6__* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %20 = icmp ne %struct.TYPE_6__* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %18, %15
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %4, align 8
  br label %107

22:                                               ; preds = %18
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %24 = call i64 @get_class_entry_rank(%struct.TYPE_6__* %23)
  store i64 %24, i64* %8, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %26 = call i64 @get_class_entry_rank(%struct.TYPE_6__* %25)
  store i64 %26, i64* %9, align 8
  br label %27

27:                                               ; preds = %67, %22
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* %9, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %68

31:                                               ; preds = %27
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* %9, align 8
  %34 = icmp sgt i64 %32, %33
  br i1 %34, label %35, label %51

35:                                               ; preds = %31
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @ZEND_ACC_LINKED, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %35
  br label %47

43:                                               ; preds = %35
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  br label %47

47:                                               ; preds = %43, %42
  %48 = phi %struct.TYPE_6__* [ null, %42 ], [ %46, %43 ]
  store %struct.TYPE_6__* %48, %struct.TYPE_6__** %5, align 8
  %49 = load i64, i64* %8, align 8
  %50 = add nsw i64 %49, -1
  store i64 %50, i64* %8, align 8
  br label %67

51:                                               ; preds = %31
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @ZEND_ACC_LINKED, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %51
  br label %63

59:                                               ; preds = %51
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  br label %63

63:                                               ; preds = %59, %58
  %64 = phi %struct.TYPE_6__* [ null, %58 ], [ %62, %59 ]
  store %struct.TYPE_6__* %64, %struct.TYPE_6__** %6, align 8
  %65 = load i64, i64* %9, align 8
  %66 = add nsw i64 %65, -1
  store i64 %66, i64* %9, align 8
  br label %67

67:                                               ; preds = %63, %47
  br label %27

68:                                               ; preds = %27
  br label %69

69:                                               ; preds = %98, %68
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %72 = icmp ne %struct.TYPE_6__* %70, %71
  br i1 %72, label %73, label %100

73:                                               ; preds = %69
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @ZEND_ACC_LINKED, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %73
  br label %85

81:                                               ; preds = %73
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  br label %85

85:                                               ; preds = %81, %80
  %86 = phi %struct.TYPE_6__* [ null, %80 ], [ %84, %81 ]
  store %struct.TYPE_6__* %86, %struct.TYPE_6__** %5, align 8
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @ZEND_ACC_LINKED, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %85
  br label %98

94:                                               ; preds = %85
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %96, align 8
  br label %98

98:                                               ; preds = %94, %93
  %99 = phi %struct.TYPE_6__* [ null, %93 ], [ %97, %94 ]
  store %struct.TYPE_6__* %99, %struct.TYPE_6__** %6, align 8
  br label %69

100:                                              ; preds = %69
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %102 = icmp ne %struct.TYPE_6__* %101, null
  br i1 %102, label %103, label %105

103:                                              ; preds = %100
  %104 = load i32*, i32** %7, align 8
  store i32 1, i32* %104, align 4
  br label %105

105:                                              ; preds = %103, %100
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  store %struct.TYPE_6__* %106, %struct.TYPE_6__** %4, align 8
  br label %107

107:                                              ; preds = %105, %21, %13
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  ret %struct.TYPE_6__* %108
}

declare dso_local i64 @get_class_entry_rank(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
