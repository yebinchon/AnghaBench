; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/sort/extr_tuplesort.c_comparetup_index_hash.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/sort/extr_tuplesort.c_comparetup_index_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, %struct.TYPE_8__*, %struct.TYPE_7__*)* @comparetup_index_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @comparetup_index_hash(%struct.TYPE_8__* %0, %struct.TYPE_8__* %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %7, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i32 @Assert(i32 %21)
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @DatumGetUInt32(i32 %25)
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @_hash_hashkey2bucket(i32 %26, i32 %29, i32 %32, i32 %35)
  store i64 %36, i64* %8, align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = call i32 @Assert(i32 %42)
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @DatumGetUInt32(i32 %46)
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @_hash_hashkey2bucket(i32 %47, i32 %50, i32 %53, i32 %56)
  store i64 %57, i64* %9, align 8
  %58 = load i64, i64* %8, align 8
  %59 = load i64, i64* %9, align 8
  %60 = icmp sgt i64 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %110

62:                                               ; preds = %3
  %63 = load i64, i64* %8, align 8
  %64 = load i64, i64* %9, align 8
  %65 = icmp slt i64 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  store i32 -1, i32* %4, align 4
  br label %110

67:                                               ; preds = %62
  br label %68

68:                                               ; preds = %67
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = inttoptr i64 %71 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %72, %struct.TYPE_9__** %10, align 8
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = inttoptr i64 %75 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %76, %struct.TYPE_9__** %11, align 8
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = call i64 @ItemPointerGetBlockNumber(i32* %78)
  store i64 %79, i64* %12, align 8
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  %82 = call i64 @ItemPointerGetBlockNumber(i32* %81)
  store i64 %82, i64* %13, align 8
  %83 = load i64, i64* %12, align 8
  %84 = load i64, i64* %13, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %92

86:                                               ; preds = %68
  %87 = load i64, i64* %12, align 8
  %88 = load i64, i64* %13, align 8
  %89 = icmp slt i64 %87, %88
  %90 = zext i1 %89 to i64
  %91 = select i1 %89, i32 -1, i32 1
  store i32 %91, i32* %4, align 4
  br label %110

92:                                               ; preds = %68
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = call i64 @ItemPointerGetOffsetNumber(i32* %94)
  store i64 %95, i64* %14, align 8
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  %98 = call i64 @ItemPointerGetOffsetNumber(i32* %97)
  store i64 %98, i64* %15, align 8
  %99 = load i64, i64* %14, align 8
  %100 = load i64, i64* %15, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %102, label %108

102:                                              ; preds = %92
  %103 = load i64, i64* %14, align 8
  %104 = load i64, i64* %15, align 8
  %105 = icmp slt i64 %103, %104
  %106 = zext i1 %105 to i64
  %107 = select i1 %105, i32 -1, i32 1
  store i32 %107, i32* %4, align 4
  br label %110

108:                                              ; preds = %92
  %109 = call i32 @Assert(i32 0)
  store i32 0, i32* %4, align 4
  br label %110

110:                                              ; preds = %108, %102, %86, %66, %61
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @_hash_hashkey2bucket(i32, i32, i32, i32) #1

declare dso_local i32 @DatumGetUInt32(i32) #1

declare dso_local i64 @ItemPointerGetBlockNumber(i32*) #1

declare dso_local i64 @ItemPointerGetOffsetNumber(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
