; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_convert_datatype.c_promote_types.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_convert_datatype.c_promote_types.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }

@NPY_NTYPES = common dso_local global i32 0, align 4
@_npy_type_promotion_table = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_9__* (%struct.TYPE_9__*, %struct.TYPE_9__*, i32, i32)* @promote_types to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_9__* @promote_types(%struct.TYPE_9__* %0, %struct.TYPE_9__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %58

18:                                               ; preds = %4
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %10, align 4
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* @NPY_NTYPES, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %54

28:                                               ; preds = %18
  %29 = load i32, i32* %11, align 4
  %30 = call i64 @PyTypeNum_ISBOOL(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %54, label %32

32:                                               ; preds = %28
  %33 = load i32, i32* %11, align 4
  %34 = call i64 @PyTypeNum_ISUNSIGNED(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %54, label %36

36:                                               ; preds = %32
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @type_num_unsigned_to_signed(i32 %37)
  store i32 %38, i32* %10, align 4
  %39 = load i32**, i32*** @_npy_type_promotion_table, align 8
  %40 = load i32, i32* %10, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32*, i32** %39, i64 %41
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %12, align 4
  %49 = icmp sge i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %36
  %51 = load i32, i32* %12, align 4
  %52 = call %struct.TYPE_9__* @PyArray_DescrFromType(i32 %51)
  store %struct.TYPE_9__* %52, %struct.TYPE_9__** %5, align 8
  br label %105

53:                                               ; preds = %36
  br label %54

54:                                               ; preds = %53, %32, %28, %18
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %57 = call %struct.TYPE_9__* @PyArray_PromoteTypes(%struct.TYPE_9__* %55, %struct.TYPE_9__* %56)
  store %struct.TYPE_9__* %57, %struct.TYPE_9__** %5, align 8
  br label %105

58:                                               ; preds = %4
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %101

61:                                               ; preds = %58
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %13, align 4
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %14, align 4
  %68 = load i32, i32* %13, align 4
  %69 = load i32, i32* @NPY_NTYPES, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %97

71:                                               ; preds = %61
  %72 = load i32, i32* %13, align 4
  %73 = call i64 @PyTypeNum_ISBOOL(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %97, label %75

75:                                               ; preds = %71
  %76 = load i32, i32* %13, align 4
  %77 = call i64 @PyTypeNum_ISUNSIGNED(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %97, label %79

79:                                               ; preds = %75
  %80 = load i32, i32* %14, align 4
  %81 = call i32 @type_num_unsigned_to_signed(i32 %80)
  store i32 %81, i32* %14, align 4
  %82 = load i32**, i32*** @_npy_type_promotion_table, align 8
  %83 = load i32, i32* %13, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32*, i32** %82, i64 %84
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %14, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %15, align 4
  %91 = load i32, i32* %15, align 4
  %92 = icmp sge i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %79
  %94 = load i32, i32* %15, align 4
  %95 = call %struct.TYPE_9__* @PyArray_DescrFromType(i32 %94)
  store %struct.TYPE_9__* %95, %struct.TYPE_9__** %5, align 8
  br label %105

96:                                               ; preds = %79
  br label %97

97:                                               ; preds = %96, %75, %71, %61
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %100 = call %struct.TYPE_9__* @PyArray_PromoteTypes(%struct.TYPE_9__* %98, %struct.TYPE_9__* %99)
  store %struct.TYPE_9__* %100, %struct.TYPE_9__** %5, align 8
  br label %105

101:                                              ; preds = %58
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %104 = call %struct.TYPE_9__* @PyArray_PromoteTypes(%struct.TYPE_9__* %102, %struct.TYPE_9__* %103)
  store %struct.TYPE_9__* %104, %struct.TYPE_9__** %5, align 8
  br label %105

105:                                              ; preds = %101, %97, %93, %54, %50
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  ret %struct.TYPE_9__* %106
}

declare dso_local i64 @PyTypeNum_ISBOOL(i32) #1

declare dso_local i64 @PyTypeNum_ISUNSIGNED(i32) #1

declare dso_local i32 @type_num_unsigned_to_signed(i32) #1

declare dso_local %struct.TYPE_9__* @PyArray_DescrFromType(i32) #1

declare dso_local %struct.TYPE_9__* @PyArray_PromoteTypes(%struct.TYPE_9__*, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
