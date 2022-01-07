; ModuleID = '/home/carl/AnghaBench/php-src/ext/spl/extr_spl_heap.c_spl_ptr_heap_delete_top.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/spl/extr_spl_heap.c_spl_ptr_heap_delete_top.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64 (i8*, i8*, i8*)*, i32, i32 (i8*)* }

@FAILURE = common dso_local global i32 0, align 4
@exception = common dso_local global i32 0, align 4
@SPL_HEAP_CORRUPTED = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i8*, i8*)* @spl_ptr_heap_delete_top to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spl_ptr_heap_delete_top(%struct.TYPE_5__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sub nsw i32 %14, 1
  %16 = sdiv i32 %15, 2
  store i32 %16, i32* %10, align 4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* @FAILURE, align 4
  store i32 %22, i32* %4, align 4
  br label %118

23:                                               ; preds = %3
  %24 = load i8*, i8** %6, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %30 = call i8* @spl_heap_elem(%struct.TYPE_5__* %29, i32 0)
  %31 = call i32 @spl_heap_elem_copy(%struct.TYPE_5__* %27, i8* %28, i8* %30)
  br label %39

32:                                               ; preds = %23
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 3
  %35 = load i32 (i8*)*, i32 (i8*)** %34, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %37 = call i8* @spl_heap_elem(%struct.TYPE_5__* %36, i32 0)
  %38 = call i32 %35(i8* %37)
  br label %39

39:                                               ; preds = %32, %26
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %42, align 8
  %45 = call i8* @spl_heap_elem(%struct.TYPE_5__* %40, i32 %44)
  store i8* %45, i8** %11, align 8
  store i32 0, i32* %8, align 4
  br label %46

46:                                               ; preds = %98, %39
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %100

50:                                               ; preds = %46
  %51 = load i32, i32* %8, align 4
  %52 = mul nsw i32 %51, 2
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %54, %57
  br i1 %58, label %59, label %76

59:                                               ; preds = %50
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  %62 = load i64 (i8*, i8*, i8*)*, i64 (i8*, i8*, i8*)** %61, align 8
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %64 = load i32, i32* %9, align 4
  %65 = add nsw i32 %64, 1
  %66 = call i8* @spl_heap_elem(%struct.TYPE_5__* %63, i32 %65)
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %68 = load i32, i32* %9, align 4
  %69 = call i8* @spl_heap_elem(%struct.TYPE_5__* %67, i32 %68)
  %70 = load i8*, i8** %7, align 8
  %71 = call i64 %62(i8* %66, i8* %69, i8* %70)
  %72 = icmp sgt i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %59
  %74 = load i32, i32* %9, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %9, align 4
  br label %76

76:                                               ; preds = %73, %59, %50
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  %79 = load i64 (i8*, i8*, i8*)*, i64 (i8*, i8*, i8*)** %78, align 8
  %80 = load i8*, i8** %11, align 8
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %82 = load i32, i32* %9, align 4
  %83 = call i8* @spl_heap_elem(%struct.TYPE_5__* %81, i32 %82)
  %84 = load i8*, i8** %7, align 8
  %85 = call i64 %79(i8* %80, i8* %83, i8* %84)
  %86 = icmp slt i64 %85, 0
  br i1 %86, label %87, label %96

87:                                               ; preds = %76
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %90 = load i32, i32* %8, align 4
  %91 = call i8* @spl_heap_elem(%struct.TYPE_5__* %89, i32 %90)
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %93 = load i32, i32* %9, align 4
  %94 = call i8* @spl_heap_elem(%struct.TYPE_5__* %92, i32 %93)
  %95 = call i32 @spl_heap_elem_copy(%struct.TYPE_5__* %88, i8* %91, i8* %94)
  br label %97

96:                                               ; preds = %76
  br label %100

97:                                               ; preds = %87
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %9, align 4
  store i32 %99, i32* %8, align 4
  br label %46

100:                                              ; preds = %96, %46
  %101 = load i32, i32* @exception, align 4
  %102 = call i64 @EG(i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %100
  %105 = load i32, i32* @SPL_HEAP_CORRUPTED, align 4
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = or i32 %108, %105
  store i32 %109, i32* %107, align 8
  br label %110

110:                                              ; preds = %104, %100
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %113 = load i32, i32* %8, align 4
  %114 = call i8* @spl_heap_elem(%struct.TYPE_5__* %112, i32 %113)
  %115 = load i8*, i8** %11, align 8
  %116 = call i32 @spl_heap_elem_copy(%struct.TYPE_5__* %111, i8* %114, i8* %115)
  %117 = load i32, i32* @SUCCESS, align 4
  store i32 %117, i32* %4, align 4
  br label %118

118:                                              ; preds = %110, %21
  %119 = load i32, i32* %4, align 4
  ret i32 %119
}

declare dso_local i32 @spl_heap_elem_copy(%struct.TYPE_5__*, i8*, i8*) #1

declare dso_local i8* @spl_heap_elem(%struct.TYPE_5__*, i32) #1

declare dso_local i64 @EG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
