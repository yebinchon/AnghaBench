; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_visibilitymap.c_vm_readbuf.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_visibilitymap.c_vm_readbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }

@InvalidBlockNumber = common dso_local global i64 0, align 8
@VISIBILITYMAP_FORKNUM = common dso_local global i32 0, align 4
@InvalidBuffer = common dso_local global i32 0, align 4
@RBM_ZERO_ON_ERROR = common dso_local global i32 0, align 4
@BUFFER_LOCK_EXCLUSIVE = common dso_local global i32 0, align 4
@BLCKSZ = common dso_local global i32 0, align 4
@BUFFER_LOCK_UNLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i64, i32)* @vm_readbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vm_readbuf(%struct.TYPE_8__* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %10 = call i32 @RelationOpenSmgr(%struct.TYPE_8__* %9)
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @InvalidBlockNumber, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %41

18:                                               ; preds = %3
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %22 = load i32, i32* @VISIBILITYMAP_FORKNUM, align 4
  %23 = call i64 @smgrexists(%struct.TYPE_9__* %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %18
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %29 = load i32, i32* @VISIBILITYMAP_FORKNUM, align 4
  %30 = call i64 @smgrnblocks(%struct.TYPE_9__* %28, i32 %29)
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  store i64 %30, i64* %34, align 8
  br label %40

35:                                               ; preds = %18
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  store i64 0, i64* %39, align 8
  br label %40

40:                                               ; preds = %35, %25
  br label %41

41:                                               ; preds = %40, %3
  %42 = load i64, i64* %6, align 8
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp sge i64 %42, %47
  br i1 %48, label %49, label %60

49:                                               ; preds = %41
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %49
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %54 = load i64, i64* %6, align 8
  %55 = add nsw i64 %54, 1
  %56 = call i32 @vm_extend(%struct.TYPE_8__* %53, i64 %55)
  br label %59

57:                                               ; preds = %49
  %58 = load i32, i32* @InvalidBuffer, align 4
  store i32 %58, i32* %4, align 4
  br label %89

59:                                               ; preds = %52
  br label %60

60:                                               ; preds = %59, %41
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %62 = load i32, i32* @VISIBILITYMAP_FORKNUM, align 4
  %63 = load i64, i64* %6, align 8
  %64 = load i32, i32* @RBM_ZERO_ON_ERROR, align 4
  %65 = call i32 @ReadBufferExtended(%struct.TYPE_8__* %61, i32 %62, i64 %63, i32 %64, i32* null)
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @BufferGetPage(i32 %66)
  %68 = call i64 @PageIsNew(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %87

70:                                               ; preds = %60
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* @BUFFER_LOCK_EXCLUSIVE, align 4
  %73 = call i32 @LockBuffer(i32 %71, i32 %72)
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @BufferGetPage(i32 %74)
  %76 = call i64 @PageIsNew(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %70
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @BufferGetPage(i32 %79)
  %81 = load i32, i32* @BLCKSZ, align 4
  %82 = call i32 @PageInit(i32 %80, i32 %81, i32 0)
  br label %83

83:                                               ; preds = %78, %70
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* @BUFFER_LOCK_UNLOCK, align 4
  %86 = call i32 @LockBuffer(i32 %84, i32 %85)
  br label %87

87:                                               ; preds = %83, %60
  %88 = load i32, i32* %8, align 4
  store i32 %88, i32* %4, align 4
  br label %89

89:                                               ; preds = %87, %57
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local i32 @RelationOpenSmgr(%struct.TYPE_8__*) #1

declare dso_local i64 @smgrexists(%struct.TYPE_9__*, i32) #1

declare dso_local i64 @smgrnblocks(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @vm_extend(%struct.TYPE_8__*, i64) #1

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
