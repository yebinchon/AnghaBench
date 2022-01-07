; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/buffer/extr_buf_init.c_InitBufferPool.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/buffer/extr_buf_init.c_InitBufferPool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i64, i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"Buffer Descriptors\00", align 1
@NBuffers = common dso_local global i32 0, align 4
@BufferDescriptors = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"Buffer Blocks\00", align 1
@BLCKSZ = common dso_local global i64 0, align 8
@BufferBlocks = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"Buffer IO Locks\00", align 1
@BufferIOLWLockArray = common dso_local global i32* null, align 8
@LWTRANCHE_BUFFER_IO_IN_PROGRESS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"buffer_io\00", align 1
@LWTRANCHE_BUFFER_CONTENT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"buffer_content\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"Checkpoint BufferIds\00", align 1
@CkptBufferIds = common dso_local global i32* null, align 8
@FREENEXT_END_OF_LIST = common dso_local global i32 0, align 4
@BackendWritebackContext = common dso_local global i32 0, align 4
@backend_flush_after = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @InitBufferPool() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = load i32, i32* @NBuffers, align 4
  %8 = sext i32 %7 to i64
  %9 = mul i64 %8, 4
  %10 = trunc i64 %9 to i32
  %11 = call i64 @ShmemInitStruct(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %10, i32* %2)
  %12 = inttoptr i64 %11 to i32*
  store i32* %12, i32** @BufferDescriptors, align 8
  %13 = load i32, i32* @NBuffers, align 4
  %14 = load i64, i64* @BLCKSZ, align 8
  %15 = trunc i64 %14 to i32
  %16 = mul nsw i32 %13, %15
  %17 = call i64 @ShmemInitStruct(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %16, i32* %1)
  %18 = inttoptr i64 %17 to i8*
  store i8* %18, i8** @BufferBlocks, align 8
  %19 = load i32, i32* @NBuffers, align 4
  %20 = mul nsw i32 %19, 4
  %21 = call i64 @ShmemInitStruct(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %20, i32* %3)
  %22 = inttoptr i64 %21 to i32*
  store i32* %22, i32** @BufferIOLWLockArray, align 8
  %23 = load i32, i32* @LWTRANCHE_BUFFER_IO_IN_PROGRESS, align 4
  %24 = call i32 @LWLockRegisterTranche(i32 %23, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %25 = load i32, i32* @LWTRANCHE_BUFFER_CONTENT, align 4
  %26 = call i32 @LWLockRegisterTranche(i32 %25, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %27 = load i32, i32* @NBuffers, align 4
  %28 = sext i32 %27 to i64
  %29 = mul i64 %28, 4
  %30 = trunc i64 %29 to i32
  %31 = call i64 @ShmemInitStruct(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %30, i32* %4)
  %32 = inttoptr i64 %31 to i32*
  store i32* %32, i32** @CkptBufferIds, align 8
  %33 = load i32, i32* %2, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %44, label %35

35:                                               ; preds = %0
  %36 = load i32, i32* %1, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* %3, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %60

44:                                               ; preds = %41, %38, %35, %0
  %45 = load i32, i32* %2, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %44
  %48 = load i32, i32* %1, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %47
  %51 = load i32, i32* %3, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i32, i32* %4, align 4
  %55 = icmp ne i32 %54, 0
  br label %56

56:                                               ; preds = %53, %50, %47, %44
  %57 = phi i1 [ false, %50 ], [ false, %47 ], [ false, %44 ], [ %55, %53 ]
  %58 = zext i1 %57 to i32
  %59 = call i32 @Assert(i32 %58)
  br label %101

60:                                               ; preds = %41
  store i32 0, i32* %5, align 4
  br label %61

61:                                               ; preds = %92, %60
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @NBuffers, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %95

65:                                               ; preds = %61
  %66 = load i32, i32* %5, align 4
  %67 = call %struct.TYPE_5__* @GetBufferDescriptor(i32 %66)
  store %struct.TYPE_5__* %67, %struct.TYPE_5__** %6, align 8
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @CLEAR_BUFFERTAG(i32 %70)
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 3
  %74 = call i32 @pg_atomic_init_u32(i32* %73, i32 0)
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 2
  store i64 0, i64* %76, align 8
  %77 = load i32, i32* %5, align 4
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  %80 = load i32, i32* %5, align 4
  %81 = add nsw i32 %80, 1
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %85 = call i32 @BufferDescriptorGetContentLock(%struct.TYPE_5__* %84)
  %86 = load i32, i32* @LWTRANCHE_BUFFER_CONTENT, align 4
  %87 = call i32 @LWLockInitialize(i32 %85, i32 %86)
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %89 = call i32 @BufferDescriptorGetIOLock(%struct.TYPE_5__* %88)
  %90 = load i32, i32* @LWTRANCHE_BUFFER_IO_IN_PROGRESS, align 4
  %91 = call i32 @LWLockInitialize(i32 %89, i32 %90)
  br label %92

92:                                               ; preds = %65
  %93 = load i32, i32* %5, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %5, align 4
  br label %61

95:                                               ; preds = %61
  %96 = load i32, i32* @FREENEXT_END_OF_LIST, align 4
  %97 = load i32, i32* @NBuffers, align 4
  %98 = sub nsw i32 %97, 1
  %99 = call %struct.TYPE_5__* @GetBufferDescriptor(i32 %98)
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 1
  store i32 %96, i32* %100, align 4
  br label %101

101:                                              ; preds = %95, %56
  %102 = load i32, i32* %2, align 4
  %103 = icmp ne i32 %102, 0
  %104 = xor i1 %103, true
  %105 = zext i1 %104 to i32
  %106 = call i32 @StrategyInitialize(i32 %105)
  %107 = call i32 @WritebackContextInit(i32* @BackendWritebackContext, i32* @backend_flush_after)
  ret void
}

declare dso_local i64 @ShmemInitStruct(i8*, i32, i32*) #1

declare dso_local i32 @LWLockRegisterTranche(i32, i8*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local %struct.TYPE_5__* @GetBufferDescriptor(i32) #1

declare dso_local i32 @CLEAR_BUFFERTAG(i32) #1

declare dso_local i32 @pg_atomic_init_u32(i32*, i32) #1

declare dso_local i32 @LWLockInitialize(i32, i32) #1

declare dso_local i32 @BufferDescriptorGetContentLock(%struct.TYPE_5__*) #1

declare dso_local i32 @BufferDescriptorGetIOLock(%struct.TYPE_5__*) #1

declare dso_local i32 @StrategyInitialize(i32) #1

declare dso_local i32 @WritebackContextInit(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
