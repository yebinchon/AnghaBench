; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/ipc/extr_shmem.c_ShmemInitStruct.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/ipc/extr_shmem.c_ShmemInitStruct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32* }
%struct.TYPE_4__ = type { i64, i8* }

@ShmemIndexLock = common dso_local global i32 0, align 4
@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@ShmemIndex = common dso_local global i32 0, align 4
@ShmemSegHdr = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [11 x i8] c"ShmemIndex\00", align 1
@IsUnderPostmaster = common dso_local global i64 0, align 8
@HASH_ENTER_NULL = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"could not create ShmemIndex entry for data structure \22%s\22\00", align 1
@.str.2 = private unnamed_addr constant [81 x i8] c"ShmemIndex entry size is wrong for data structure \22%s\22: expected %zu, actual %zu\00", align 1
@HASH_REMOVE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [71 x i8] c"not enough shared memory for data structure \22%s\22 (%zu bytes requested)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ShmemInitStruct(i8* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i32, i32* @ShmemIndexLock, align 4
  %12 = load i32, i32* @LW_EXCLUSIVE, align 4
  %13 = call i32 @LWLockAcquire(i32 %11, i32 %12)
  %14 = load i32, i32* @ShmemIndex, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %55, label %16

16:                                               ; preds = %3
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ShmemSegHdr, align 8
  store %struct.TYPE_5__* %17, %struct.TYPE_5__** %10, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = call i64 @strcmp(i8* %18, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %20 = icmp eq i64 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 @Assert(i32 %21)
  %23 = load i64, i64* @IsUnderPostmaster, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %16
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  %30 = zext i1 %29 to i32
  %31 = call i32 @Assert(i32 %30)
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = bitcast i32* %34 to i8*
  store i8* %35, i8** %9, align 8
  %36 = load i32*, i32** %7, align 8
  store i32 1, i32* %36, align 4
  br label %51

37:                                               ; preds = %16
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = icmp eq i32* %40, null
  %42 = zext i1 %41 to i32
  %43 = call i32 @Assert(i32 %42)
  %44 = load i64, i64* %6, align 8
  %45 = call i8* @ShmemAlloc(i64 %44)
  store i8* %45, i8** %9, align 8
  %46 = load i8*, i8** %9, align 8
  %47 = bitcast i8* %46 to i32*
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  store i32* %47, i32** %49, align 8
  %50 = load i32*, i32** %7, align 8
  store i32 0, i32* %50, align 4
  br label %51

51:                                               ; preds = %37, %25
  %52 = load i32, i32* @ShmemIndexLock, align 4
  %53 = call i32 @LWLockRelease(i32 %52)
  %54 = load i8*, i8** %9, align 8
  store i8* %54, i8** %4, align 8
  br label %138

55:                                               ; preds = %3
  %56 = load i32, i32* @ShmemIndex, align 4
  %57 = load i8*, i8** %5, align 8
  %58 = load i32, i32* @HASH_ENTER_NULL, align 4
  %59 = load i32*, i32** %7, align 8
  %60 = call i64 @hash_search(i32 %56, i8* %57, i32 %58, i32* %59)
  %61 = inttoptr i64 %60 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %61, %struct.TYPE_4__** %8, align 8
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %63 = icmp ne %struct.TYPE_4__* %62, null
  br i1 %63, label %73, label %64

64:                                               ; preds = %55
  %65 = load i32, i32* @ShmemIndexLock, align 4
  %66 = call i32 @LWLockRelease(i32 %65)
  %67 = load i32, i32* @ERROR, align 4
  %68 = load i32, i32* @ERRCODE_OUT_OF_MEMORY, align 4
  %69 = call i32 @errcode(i32 %68)
  %70 = load i8*, i8** %5, align 8
  %71 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i8* %70)
  %72 = call i32 @ereport(i32 %67, i32 %71)
  br label %73

73:                                               ; preds = %64, %55
  %74 = load i32*, i32** %7, align 8
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %98

77:                                               ; preds = %73
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* %6, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %94

83:                                               ; preds = %77
  %84 = load i32, i32* @ShmemIndexLock, align 4
  %85 = call i32 @LWLockRelease(i32 %84)
  %86 = load i32, i32* @ERROR, align 4
  %87 = load i8*, i8** %5, align 8
  %88 = load i64, i64* %6, align 8
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.2, i64 0, i64 0), i8* %87, i64 %88, i64 %91)
  %93 = call i32 @ereport(i32 %86, i32 %92)
  br label %94

94:                                               ; preds = %83, %77
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  %97 = load i8*, i8** %96, align 8
  store i8* %97, i8** %9, align 8
  br label %124

98:                                               ; preds = %73
  %99 = load i64, i64* %6, align 8
  %100 = call i8* @ShmemAllocNoError(i64 %99)
  store i8* %100, i8** %9, align 8
  %101 = load i8*, i8** %9, align 8
  %102 = icmp eq i8* %101, null
  br i1 %102, label %103, label %117

103:                                              ; preds = %98
  %104 = load i32, i32* @ShmemIndex, align 4
  %105 = load i8*, i8** %5, align 8
  %106 = load i32, i32* @HASH_REMOVE, align 4
  %107 = call i64 @hash_search(i32 %104, i8* %105, i32 %106, i32* null)
  %108 = load i32, i32* @ShmemIndexLock, align 4
  %109 = call i32 @LWLockRelease(i32 %108)
  %110 = load i32, i32* @ERROR, align 4
  %111 = load i32, i32* @ERRCODE_OUT_OF_MEMORY, align 4
  %112 = call i32 @errcode(i32 %111)
  %113 = load i8*, i8** %5, align 8
  %114 = load i64, i64* %6, align 8
  %115 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.3, i64 0, i64 0), i8* %113, i64 %114)
  %116 = call i32 @ereport(i32 %110, i32 %115)
  br label %117

117:                                              ; preds = %103, %98
  %118 = load i64, i64* %6, align 8
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  store i64 %118, i64* %120, align 8
  %121 = load i8*, i8** %9, align 8
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 1
  store i8* %121, i8** %123, align 8
  br label %124

124:                                              ; preds = %117, %94
  %125 = load i32, i32* @ShmemIndexLock, align 4
  %126 = call i32 @LWLockRelease(i32 %125)
  %127 = load i8*, i8** %9, align 8
  %128 = call i32 @ShmemAddrIsValid(i8* %127)
  %129 = call i32 @Assert(i32 %128)
  %130 = load i8*, i8** %9, align 8
  %131 = load i8*, i8** %9, align 8
  %132 = call i64 @CACHELINEALIGN(i8* %131)
  %133 = inttoptr i64 %132 to i8*
  %134 = icmp eq i8* %130, %133
  %135 = zext i1 %134 to i32
  %136 = call i32 @Assert(i32 %135)
  %137 = load i8*, i8** %9, align 8
  store i8* %137, i8** %4, align 8
  br label %138

138:                                              ; preds = %124, %51
  %139 = load i8*, i8** %4, align 8
  ret i8* %139
}

declare dso_local i32 @LWLockAcquire(i32, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @ShmemAlloc(i64) #1

declare dso_local i32 @LWLockRelease(i32) #1

declare dso_local i64 @hash_search(i32, i8*, i32, i32*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*, ...) #1

declare dso_local i8* @ShmemAllocNoError(i64) #1

declare dso_local i32 @ShmemAddrIsValid(i8*) #1

declare dso_local i64 @CACHELINEALIGN(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
