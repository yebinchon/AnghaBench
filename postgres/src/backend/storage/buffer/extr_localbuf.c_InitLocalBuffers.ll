; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/buffer/extr_localbuf.c_InitLocalBuffers.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/buffer/extr_localbuf.c_InitLocalBuffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }

@num_temp_buffers = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_TRANSACTION_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"cannot access temporary tables during a parallel operation\00", align 1
@LocalBufferDescriptors = common dso_local global %struct.TYPE_8__* null, align 8
@LocalBufferBlockPointers = common dso_local global i32* null, align 8
@LocalRefCount = common dso_local global i32* null, align 8
@FATAL = common dso_local global i32 0, align 4
@ERRCODE_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@nextFreeLocalBuf = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"Local Buffer Lookup Table\00", align 1
@HASH_ELEM = common dso_local global i32 0, align 4
@HASH_BLOBS = common dso_local global i32 0, align 4
@LocalBufHash = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"could not initialize local buffer hash table\00", align 1
@NLocBuffer = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @InitLocalBuffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @InitLocalBuffers() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_7__, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = load i32, i32* @num_temp_buffers, align 4
  store i32 %5, i32* %1, align 4
  %6 = call i64 (...) @IsParallelWorker()
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %0
  %9 = load i32, i32* @ERROR, align 4
  %10 = load i32, i32* @ERRCODE_INVALID_TRANSACTION_STATE, align 4
  %11 = call i32 @errcode(i32 %10)
  %12 = call i32 @errmsg(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  %13 = call i32 @ereport(i32 %9, i32 %12)
  br label %14

14:                                               ; preds = %8, %0
  %15 = load i32, i32* %1, align 4
  %16 = call i64 @calloc(i32 %15, i32 4)
  %17 = inttoptr i64 %16 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %17, %struct.TYPE_8__** @LocalBufferDescriptors, align 8
  %18 = load i32, i32* %1, align 4
  %19 = call i64 @calloc(i32 %18, i32 4)
  %20 = inttoptr i64 %19 to i32*
  store i32* %20, i32** @LocalBufferBlockPointers, align 8
  %21 = load i32, i32* %1, align 4
  %22 = call i64 @calloc(i32 %21, i32 4)
  %23 = inttoptr i64 %22 to i32*
  store i32* %23, i32** @LocalRefCount, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** @LocalBufferDescriptors, align 8
  %25 = icmp ne %struct.TYPE_8__* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %14
  %27 = load i32*, i32** @LocalBufferBlockPointers, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i32*, i32** @LocalRefCount, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %38, label %32

32:                                               ; preds = %29, %26, %14
  %33 = load i32, i32* @FATAL, align 4
  %34 = load i32, i32* @ERRCODE_OUT_OF_MEMORY, align 4
  %35 = call i32 @errcode(i32 %34)
  %36 = call i32 @errmsg(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %37 = call i32 @ereport(i32 %33, i32 %36)
  br label %38

38:                                               ; preds = %32, %29
  store i64 0, i64* @nextFreeLocalBuf, align 8
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %51, %38
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* %1, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %54

43:                                               ; preds = %39
  %44 = load i32, i32* %3, align 4
  %45 = call %struct.TYPE_8__* @GetLocalBufferDescriptor(i32 %44)
  store %struct.TYPE_8__* %45, %struct.TYPE_8__** %4, align 8
  %46 = load i32, i32* %3, align 4
  %47 = sub nsw i32 0, %46
  %48 = sub nsw i32 %47, 2
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  br label %51

51:                                               ; preds = %43
  %52 = load i32, i32* %3, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %3, align 4
  br label %39

54:                                               ; preds = %39
  %55 = call i32 @MemSet(%struct.TYPE_7__* %2, i32 0, i32 8)
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 0
  store i32 4, i32* %56, align 4
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 1
  store i32 4, i32* %57, align 4
  %58 = load i32, i32* %1, align 4
  %59 = load i32, i32* @HASH_ELEM, align 4
  %60 = load i32, i32* @HASH_BLOBS, align 4
  %61 = or i32 %59, %60
  %62 = call i32 @hash_create(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %58, %struct.TYPE_7__* %2, i32 %61)
  store i32 %62, i32* @LocalBufHash, align 4
  %63 = load i32, i32* @LocalBufHash, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %54
  %66 = load i32, i32* @ERROR, align 4
  %67 = call i32 @elog(i32 %66, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  br label %68

68:                                               ; preds = %65, %54
  %69 = load i32, i32* %1, align 4
  store i32 %69, i32* @NLocBuffer, align 4
  ret void
}

declare dso_local i64 @IsParallelWorker(...) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local %struct.TYPE_8__* @GetLocalBufferDescriptor(i32) #1

declare dso_local i32 @MemSet(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @hash_create(i8*, i32, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @elog(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
