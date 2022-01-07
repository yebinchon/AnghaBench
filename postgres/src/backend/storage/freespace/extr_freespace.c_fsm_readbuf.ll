; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/freespace/extr_freespace.c_fsm_readbuf.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/freespace/extr_freespace.c_fsm_readbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }

@InvalidBlockNumber = common dso_local global i64 0, align 8
@FSM_FORKNUM = common dso_local global i32 0, align 4
@InvalidBuffer = common dso_local global i32 0, align 4
@RBM_ZERO_ON_ERROR = common dso_local global i32 0, align 4
@BUFFER_LOCK_EXCLUSIVE = common dso_local global i32 0, align 4
@BLCKSZ = common dso_local global i32 0, align 4
@BUFFER_LOCK_UNLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32, i32)* @fsm_readbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsm_readbuf(%struct.TYPE_8__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call i64 @fsm_logical_to_physical(i32 %10)
  store i64 %11, i64* %8, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %13 = call i32 @RelationOpenSmgr(%struct.TYPE_8__* %12)
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @InvalidBlockNumber, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %29, label %21

21:                                               ; preds = %3
  %22 = load i64, i64* %8, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp sge i64 %22, %27
  br i1 %28, label %29, label %52

29:                                               ; preds = %21, %3
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %31, align 8
  %33 = load i32, i32* @FSM_FORKNUM, align 4
  %34 = call i64 @smgrexists(%struct.TYPE_9__* %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %29
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %38, align 8
  %40 = load i32, i32* @FSM_FORKNUM, align 4
  %41 = call i64 @smgrnblocks(%struct.TYPE_9__* %39, i32 %40)
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  store i64 %41, i64* %45, align 8
  br label %51

46:                                               ; preds = %29
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  store i64 0, i64* %50, align 8
  br label %51

51:                                               ; preds = %46, %36
  br label %52

52:                                               ; preds = %51, %21
  %53 = load i64, i64* %8, align 8
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp sge i64 %53, %58
  br i1 %59, label %60, label %71

60:                                               ; preds = %52
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %60
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %65 = load i64, i64* %8, align 8
  %66 = add nsw i64 %65, 1
  %67 = call i32 @fsm_extend(%struct.TYPE_8__* %64, i64 %66)
  br label %70

68:                                               ; preds = %60
  %69 = load i32, i32* @InvalidBuffer, align 4
  store i32 %69, i32* %4, align 4
  br label %100

70:                                               ; preds = %63
  br label %71

71:                                               ; preds = %70, %52
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %73 = load i32, i32* @FSM_FORKNUM, align 4
  %74 = load i64, i64* %8, align 8
  %75 = load i32, i32* @RBM_ZERO_ON_ERROR, align 4
  %76 = call i32 @ReadBufferExtended(%struct.TYPE_8__* %72, i32 %73, i64 %74, i32 %75, i32* null)
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @BufferGetPage(i32 %77)
  %79 = call i64 @PageIsNew(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %98

81:                                               ; preds = %71
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* @BUFFER_LOCK_EXCLUSIVE, align 4
  %84 = call i32 @LockBuffer(i32 %82, i32 %83)
  %85 = load i32, i32* %9, align 4
  %86 = call i32 @BufferGetPage(i32 %85)
  %87 = call i64 @PageIsNew(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %81
  %90 = load i32, i32* %9, align 4
  %91 = call i32 @BufferGetPage(i32 %90)
  %92 = load i32, i32* @BLCKSZ, align 4
  %93 = call i32 @PageInit(i32 %91, i32 %92, i32 0)
  br label %94

94:                                               ; preds = %89, %81
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* @BUFFER_LOCK_UNLOCK, align 4
  %97 = call i32 @LockBuffer(i32 %95, i32 %96)
  br label %98

98:                                               ; preds = %94, %71
  %99 = load i32, i32* %9, align 4
  store i32 %99, i32* %4, align 4
  br label %100

100:                                              ; preds = %98, %68
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local i64 @fsm_logical_to_physical(i32) #1

declare dso_local i32 @RelationOpenSmgr(%struct.TYPE_8__*) #1

declare dso_local i64 @smgrexists(%struct.TYPE_9__*, i32) #1

declare dso_local i64 @smgrnblocks(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @fsm_extend(%struct.TYPE_8__*, i64) #1

declare dso_local i32 @ReadBufferExtended(%struct.TYPE_8__*, i32, i64, i32, i32*) #1

declare dso_local i64 @PageIsNew(i32) #1

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local i32 @LockBuffer(i32, i32) #1

declare dso_local i32 @PageInit(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
