; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/lib/extr_dshash.c_dshash_dump.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/lib/extr_dshash.c_dshash_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32, i32*, %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i64, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@DSHASH_MAGIC = common dso_local global i64 0, align 8
@DSHASH_NUM_PARTITIONS = common dso_local global i64 0, align 8
@LW_SHARED = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"hash table size = %zu\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"  partition %zu\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"    active buckets (key count = %zu)\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"      bucket %zu (key count = %zu)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dshash_dump(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 3
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @DSHASH_MAGIC, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @Assert(i32 %18)
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i32 @Assert(i32 %25)
  store i64 0, i64* %3, align 8
  br label %27

27:                                               ; preds = %45, %1
  %28 = load i64, i64* %3, align 8
  %29 = load i64, i64* @DSHASH_NUM_PARTITIONS, align 8
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %31, label %48

31:                                               ; preds = %27
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %33 = load i64, i64* %3, align 8
  %34 = call i32 @PARTITION_LOCK(%struct.TYPE_11__* %32, i64 %33)
  %35 = call i32 @LWLockHeldByMe(i32 %34)
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = call i32 @Assert(i32 %38)
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %41 = load i64, i64* %3, align 8
  %42 = call i32 @PARTITION_LOCK(%struct.TYPE_11__* %40, i64 %41)
  %43 = load i32, i32* @LW_SHARED, align 4
  %44 = call i32 @LWLockAcquire(i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %31
  %46 = load i64, i64* %3, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %3, align 8
  br label %27

48:                                               ; preds = %27
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %50 = call i32 @ensure_valid_bucket_pointers(%struct.TYPE_11__* %49)
  %51 = load i32, i32* @stderr, align 4
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = shl i64 1, %54
  %56 = call i32 (i32, i8*, i64, ...) @fprintf(i32 %51, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %55)
  store i64 0, i64* %3, align 8
  br label %57

57:                                               ; preds = %125, %48
  %58 = load i64, i64* %3, align 8
  %59 = load i64, i64* @DSHASH_NUM_PARTITIONS, align 8
  %60 = icmp ult i64 %58, %59
  br i1 %60, label %61, label %128

61:                                               ; preds = %57
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 3
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %65, align 8
  %67 = load i64, i64* %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i64 %67
  store %struct.TYPE_12__* %68, %struct.TYPE_12__** %5, align 8
  %69 = load i64, i64* %3, align 8
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = call i64 @BUCKET_INDEX_FOR_PARTITION(i64 %69, i64 %72)
  store i64 %73, i64* %6, align 8
  %74 = load i64, i64* %3, align 8
  %75 = add i64 %74, 1
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = call i64 @BUCKET_INDEX_FOR_PARTITION(i64 %75, i64 %78)
  store i64 %79, i64* %7, align 8
  %80 = load i32, i32* @stderr, align 4
  %81 = load i64, i64* %3, align 8
  %82 = call i32 (i32, i8*, i64, ...) @fprintf(i32 %80, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i64 %81)
  %83 = load i32, i32* @stderr, align 4
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = sext i32 %86 to i64
  %88 = call i32 (i32, i8*, i64, ...) @fprintf(i32 %83, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i64 %87)
  %89 = load i64, i64* %6, align 8
  store i64 %89, i64* %4, align 8
  br label %90

90:                                               ; preds = %121, %61
  %91 = load i64, i64* %4, align 8
  %92 = load i64, i64* %7, align 8
  %93 = icmp ult i64 %91, %92
  br i1 %93, label %94, label %124

94:                                               ; preds = %90
  store i64 0, i64* %8, align 8
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 2
  %97 = load i32*, i32** %96, align 8
  %98 = load i64, i64* %4, align 8
  %99 = getelementptr inbounds i32, i32* %97, i64 %98
  %100 = load i32, i32* %99, align 4
  store i32 %100, i32* %9, align 4
  br label %101

101:                                              ; preds = %105, %94
  %102 = load i32, i32* %9, align 4
  %103 = call i64 @DsaPointerIsValid(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %116

105:                                              ; preds = %101
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* %9, align 4
  %110 = call %struct.TYPE_10__* @dsa_get_address(i32 %108, i32 %109)
  store %struct.TYPE_10__* %110, %struct.TYPE_10__** %10, align 8
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  store i32 %113, i32* %9, align 4
  %114 = load i64, i64* %8, align 8
  %115 = add i64 %114, 1
  store i64 %115, i64* %8, align 8
  br label %101

116:                                              ; preds = %101
  %117 = load i32, i32* @stderr, align 4
  %118 = load i64, i64* %4, align 8
  %119 = load i64, i64* %8, align 8
  %120 = call i32 (i32, i8*, i64, ...) @fprintf(i32 %117, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i64 %118, i64 %119)
  br label %121

121:                                              ; preds = %116
  %122 = load i64, i64* %4, align 8
  %123 = add i64 %122, 1
  store i64 %123, i64* %4, align 8
  br label %90

124:                                              ; preds = %90
  br label %125

125:                                              ; preds = %124
  %126 = load i64, i64* %3, align 8
  %127 = add i64 %126, 1
  store i64 %127, i64* %3, align 8
  br label %57

128:                                              ; preds = %57
  store i64 0, i64* %3, align 8
  br label %129

129:                                              ; preds = %138, %128
  %130 = load i64, i64* %3, align 8
  %131 = load i64, i64* @DSHASH_NUM_PARTITIONS, align 8
  %132 = icmp ult i64 %130, %131
  br i1 %132, label %133, label %141

133:                                              ; preds = %129
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %135 = load i64, i64* %3, align 8
  %136 = call i32 @PARTITION_LOCK(%struct.TYPE_11__* %134, i64 %135)
  %137 = call i32 @LWLockRelease(i32 %136)
  br label %138

138:                                              ; preds = %133
  %139 = load i64, i64* %3, align 8
  %140 = add i64 %139, 1
  store i64 %140, i64* %3, align 8
  br label %129

141:                                              ; preds = %129
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @LWLockHeldByMe(i32) #1

declare dso_local i32 @PARTITION_LOCK(%struct.TYPE_11__*, i64) #1

declare dso_local i32 @LWLockAcquire(i32, i32) #1

declare dso_local i32 @ensure_valid_bucket_pointers(%struct.TYPE_11__*) #1

declare dso_local i32 @fprintf(i32, i8*, i64, ...) #1

declare dso_local i64 @BUCKET_INDEX_FOR_PARTITION(i64, i64) #1

declare dso_local i64 @DsaPointerIsValid(i32) #1

declare dso_local %struct.TYPE_10__* @dsa_get_address(i32, i32) #1

declare dso_local i32 @LWLockRelease(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
