; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/buffer/extr_localbuf.c_DropRelFileNodeLocalBuffers.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/buffer/extr_localbuf.c_DropRelFileNodeLocalBuffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64, i32 }

@NLocBuffer = common dso_local global i32 0, align 4
@BM_TAG_VALID = common dso_local global i32 0, align 4
@LocalRefCount = common dso_local global i64* null, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"block %u of %s is still referenced (local %u)\00", align 1
@MyBackendId = common dso_local global i32 0, align 4
@LocalBufHash = common dso_local global i32 0, align 4
@HASH_REMOVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"local buffer hash table corrupted\00", align 1
@BUF_FLAG_MASK = common dso_local global i32 0, align 4
@BUF_USAGECOUNT_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DropRelFileNodeLocalBuffers(i32 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %106, %3
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @NLocBuffer, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %109

15:                                               ; preds = %11
  %16 = load i32, i32* %7, align 4
  %17 = call %struct.TYPE_4__* @GetLocalBufferDescriptor(i32 %16)
  store %struct.TYPE_4__* %17, %struct.TYPE_4__** %8, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = call i32 @pg_atomic_read_u32(i32* %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* @BM_TAG_VALID, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %105

25:                                               ; preds = %15
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = call i64 @RelFileNodeEquals(i32 %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %105

33:                                               ; preds = %25
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %5, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %105

40:                                               ; preds = %33
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %6, align 8
  %46 = icmp sge i64 %44, %45
  br i1 %46, label %47, label %105

47:                                               ; preds = %40
  %48 = load i64*, i64** @LocalRefCount, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %48, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %76

54:                                               ; preds = %47
  %55 = load i32, i32* @ERROR, align 4
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @MyBackendId, align 4
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @relpathbackend(i32 %63, i32 %64, i64 %68)
  %70 = load i64*, i64** @LocalRefCount, align 8
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i64, i64* %70, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = call i32 (i32, i8*, ...) @elog(i32 %55, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %59, i32 %69, i64 %74)
  br label %76

76:                                               ; preds = %54, %47
  %77 = load i32, i32* @LocalBufHash, align 4
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = bitcast %struct.TYPE_5__* %79 to i8*
  %81 = load i32, i32* @HASH_REMOVE, align 4
  %82 = call i64 @hash_search(i32 %77, i8* %80, i32 %81, i32* null)
  %83 = inttoptr i64 %82 to i32*
  store i32* %83, i32** %9, align 8
  %84 = load i32*, i32** %9, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %89, label %86

86:                                               ; preds = %76
  %87 = load i32, i32* @ERROR, align 4
  %88 = call i32 (i32, i8*, ...) @elog(i32 %87, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %89

89:                                               ; preds = %86, %76
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  %92 = call i32 @CLEAR_BUFFERTAG(%struct.TYPE_5__* byval(%struct.TYPE_5__) align 8 %91)
  %93 = load i32, i32* @BUF_FLAG_MASK, align 4
  %94 = xor i32 %93, -1
  %95 = load i32, i32* %10, align 4
  %96 = and i32 %95, %94
  store i32 %96, i32* %10, align 4
  %97 = load i32, i32* @BUF_USAGECOUNT_MASK, align 4
  %98 = xor i32 %97, -1
  %99 = load i32, i32* %10, align 4
  %100 = and i32 %99, %98
  store i32 %100, i32* %10, align 4
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i32, i32* %10, align 4
  %104 = call i32 @pg_atomic_unlocked_write_u32(i32* %102, i32 %103)
  br label %105

105:                                              ; preds = %89, %40, %33, %25, %15
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %7, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %7, align 4
  br label %11

109:                                              ; preds = %11
  ret void
}

declare dso_local %struct.TYPE_4__* @GetLocalBufferDescriptor(i32) #1

declare dso_local i32 @pg_atomic_read_u32(i32*) #1

declare dso_local i64 @RelFileNodeEquals(i32, i32) #1

declare dso_local i32 @elog(i32, i8*, ...) #1

declare dso_local i32 @relpathbackend(i32, i32, i64) #1

declare dso_local i64 @hash_search(i32, i8*, i32, i32*) #1

declare dso_local i32 @CLEAR_BUFFERTAG(%struct.TYPE_5__* byval(%struct.TYPE_5__) align 8) #1

declare dso_local i32 @pg_atomic_unlocked_write_u32(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
