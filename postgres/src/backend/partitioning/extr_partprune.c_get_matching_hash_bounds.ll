; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/partitioning/extr_partprune.c_get_matching_hash_bounds.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/partitioning/extr_partprune.c_get_matching_hash_bounds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i64, i32*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32*, i64 }

@PARTITION_MAX_KEYS = common dso_local global i32 0, align 4
@PARTITION_STRATEGY_HASH = common dso_local global i64 0, align 8
@HTEqualStrategyNumber = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_7__* (%struct.TYPE_8__*, i64, i32*, i32, i32*, i32*)* @get_matching_hash_bounds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_7__* @get_matching_hash_bounds(%struct.TYPE_8__* %0, i64 %1, i32* %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_7__*, align 8
  %14 = alloca %struct.TYPE_9__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %23 = call i64 @palloc0(i32 12)
  %24 = inttoptr i64 %23 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %24, %struct.TYPE_7__** %13, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 3
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %26, align 8
  store %struct.TYPE_9__* %27, %struct.TYPE_9__** %14, align 8
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %15, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %16, align 4
  %34 = load i32, i32* @PARTITION_MAX_KEYS, align 4
  %35 = zext i32 %34 to i64
  %36 = call i8* @llvm.stacksave()
  store i8* %36, i8** %17, align 8
  %37 = alloca i32, i64 %35, align 16
  store i64 %35, i64* %18, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  store i32* %40, i32** %22, align 8
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @PARTITION_STRATEGY_HASH, align 8
  %45 = icmp eq i64 %43, %44
  %46 = zext i1 %45 to i32
  %47 = call i32 @Assert(i32 %46)
  %48 = load i32, i32* %10, align 4
  %49 = load i32*, i32** %12, align 8
  %50 = call i32 @bms_num_members(i32* %49)
  %51 = add nsw i32 %48, %50
  %52 = load i32, i32* %16, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %103

54:                                               ; preds = %6
  %55 = load i64, i64* %8, align 8
  %56 = load i64, i64* @HTEqualStrategyNumber, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %61, label %58

58:                                               ; preds = %54
  %59 = load i32, i32* %10, align 4
  %60 = icmp eq i32 %59, 0
  br label %61

61:                                               ; preds = %58, %54
  %62 = phi i1 [ true, %54 ], [ %60, %58 ]
  %63 = zext i1 %62 to i32
  %64 = call i32 @Assert(i32 %63)
  store i32 0, i32* %19, align 4
  br label %65

65:                                               ; preds = %76, %61
  %66 = load i32, i32* %19, align 4
  %67 = load i32, i32* %16, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %79

69:                                               ; preds = %65
  %70 = load i32, i32* %19, align 4
  %71 = load i32*, i32** %12, align 8
  %72 = call i32 @bms_is_member(i32 %70, i32* %71)
  %73 = load i32, i32* %19, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %37, i64 %74
  store i32 %72, i32* %75, align 4
  br label %76

76:                                               ; preds = %69
  %77 = load i32, i32* %19, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %19, align 4
  br label %65

79:                                               ; preds = %65
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %81 = call i32 @get_hash_partition_greatest_modulus(%struct.TYPE_9__* %80)
  store i32 %81, i32* %21, align 4
  %82 = load i32, i32* %16, align 4
  %83 = load i32*, i32** %11, align 8
  %84 = load i32*, i32** %22, align 8
  %85 = load i32*, i32** %9, align 8
  %86 = call i32 @compute_partition_hash_value(i32 %82, i32* %83, i32* %84, i32* %85, i32* %37)
  store i32 %86, i32* %20, align 4
  %87 = load i32*, i32** %15, align 8
  %88 = load i32, i32* %20, align 4
  %89 = load i32, i32* %21, align 4
  %90 = srem i32 %88, %89
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %87, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = icmp sge i32 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %79
  %96 = load i32, i32* %20, align 4
  %97 = load i32, i32* %21, align 4
  %98 = srem i32 %96, %97
  %99 = call i32 @bms_make_singleton(i32 %98)
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 2
  store i32 %99, i32* %101, align 4
  br label %102

102:                                              ; preds = %95, %79
  br label %117

103:                                              ; preds = %6
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = icmp sgt i64 %106, 0
  %108 = zext i1 %107 to i32
  %109 = call i32 @Assert(i32 %108)
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = sub nsw i64 %112, 1
  %114 = call i32 @bms_add_range(i32* null, i32 0, i64 %113)
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 2
  store i32 %114, i32* %116, align 4
  br label %117

117:                                              ; preds = %103, %102
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 1
  store i32 0, i32* %119, align 4
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 0
  store i32 0, i32* %121, align 4
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %123 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %123)
  ret %struct.TYPE_7__* %122
}

declare dso_local i64 @palloc0(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @bms_num_members(i32*) #1

declare dso_local i32 @bms_is_member(i32, i32*) #1

declare dso_local i32 @get_hash_partition_greatest_modulus(%struct.TYPE_9__*) #1

declare dso_local i32 @compute_partition_hash_value(i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @bms_make_singleton(i32) #1

declare dso_local i32 @bms_add_range(i32*, i32, i64) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
