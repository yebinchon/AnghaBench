; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_storage.c_smgrDoPendingDeletes.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_storage.c_smgrDoPendingDeletes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, i32, %struct.TYPE_11__* }

@pendingDeletes = common dso_local global %struct.TYPE_11__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @smgrDoPendingDeletes(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca %struct.TYPE_11__, align 8
  %12 = alloca %struct.TYPE_11__, align 8
  store i32 %0, i32* %2, align 4
  %13 = call i32 (...) @GetCurrentTransactionNestLevel()
  store i32 %13, i32* %3, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %10, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %5, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pendingDeletes, align 8
  store %struct.TYPE_11__* %14, %struct.TYPE_11__** %4, align 8
  br label %15

15:                                               ; preds = %87, %1
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %17 = icmp ne %struct.TYPE_11__* %16, null
  br i1 %17, label %18, label %89

18:                                               ; preds = %15
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 4
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  store %struct.TYPE_11__* %21, %struct.TYPE_11__** %6, align 8
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %3, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %18
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_11__* %28, %struct.TYPE_11__** %5, align 8
  br label %86

29:                                               ; preds = %18
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %31 = icmp ne %struct.TYPE_11__* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 4
  store %struct.TYPE_11__* %33, %struct.TYPE_11__** %35, align 8
  br label %38

36:                                               ; preds = %29
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_11__* %37, %struct.TYPE_11__** @pendingDeletes, align 8
  br label %38

38:                                               ; preds = %36, %32
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %2, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %83

44:                                               ; preds = %38
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  call void @smgropen(%struct.TYPE_11__* sret %12, i32 %47, i32 %50)
  %51 = bitcast %struct.TYPE_11__* %11 to i8*
  %52 = bitcast %struct.TYPE_11__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %51, i8* align 8 %52, i64 24, i1 false)
  %53 = load i32, i32* %9, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %44
  store i32 8, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = mul i64 24, %57
  %59 = trunc i64 %58 to i32
  %60 = call %struct.TYPE_11__* @palloc(i32 %59)
  store %struct.TYPE_11__* %60, %struct.TYPE_11__** %10, align 8
  br label %75

61:                                               ; preds = %44
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp sle i32 %62, %63
  br i1 %64, label %65, label %74

65:                                               ; preds = %61
  %66 = load i32, i32* %9, align 4
  %67 = mul nsw i32 %66, 2
  store i32 %67, i32* %9, align 4
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = mul i64 24, %70
  %72 = trunc i64 %71 to i32
  %73 = call %struct.TYPE_11__* @repalloc(%struct.TYPE_11__* %68, i32 %72)
  store %struct.TYPE_11__* %73, %struct.TYPE_11__** %10, align 8
  br label %74

74:                                               ; preds = %65, %61
  br label %75

75:                                               ; preds = %74, %55
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %77 = load i32, i32* %7, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %7, align 4
  %79 = sext i32 %77 to i64
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i64 %79
  %81 = bitcast %struct.TYPE_11__* %80 to i8*
  %82 = bitcast %struct.TYPE_11__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %81, i8* align 8 %82, i64 24, i1 false)
  br label %83

83:                                               ; preds = %75, %38
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %85 = call i32 @pfree(%struct.TYPE_11__* %84)
  br label %86

86:                                               ; preds = %83, %27
  br label %87

87:                                               ; preds = %86
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_11__* %88, %struct.TYPE_11__** %4, align 8
  br label %15

89:                                               ; preds = %15
  %90 = load i32, i32* %7, align 4
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %92, label %112

92:                                               ; preds = %89
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %94 = load i32, i32* %7, align 4
  %95 = call i32 @smgrdounlinkall(%struct.TYPE_11__* %93, i32 %94, i32 0)
  store i32 0, i32* %8, align 4
  br label %96

96:                                               ; preds = %106, %92
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* %7, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %109

100:                                              ; preds = %96
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %102 = load i32, i32* %8, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i64 %103
  %105 = call i32 @smgrclose(%struct.TYPE_11__* byval(%struct.TYPE_11__) align 8 %104)
  br label %106

106:                                              ; preds = %100
  %107 = load i32, i32* %8, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %8, align 4
  br label %96

109:                                              ; preds = %96
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %111 = call i32 @pfree(%struct.TYPE_11__* %110)
  br label %112

112:                                              ; preds = %109, %89
  ret void
}

declare dso_local i32 @GetCurrentTransactionNestLevel(...) #1

declare dso_local void @smgropen(%struct.TYPE_11__* sret, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.TYPE_11__* @palloc(i32) #1

declare dso_local %struct.TYPE_11__* @repalloc(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @pfree(%struct.TYPE_11__*) #1

declare dso_local i32 @smgrdounlinkall(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @smgrclose(%struct.TYPE_11__* byval(%struct.TYPE_11__) align 8) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
