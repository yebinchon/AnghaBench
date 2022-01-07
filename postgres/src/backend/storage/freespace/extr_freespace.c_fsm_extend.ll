; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/freespace/extr_freespace.c_fsm_extend.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/freespace/extr_freespace.c_fsm_extend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { i64 }

@BLCKSZ = common dso_local global i32 0, align 4
@ExclusiveLock = common dso_local global i32 0, align 4
@InvalidBlockNumber = common dso_local global i64 0, align 8
@FSM_FORKNUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, i64)* @fsm_extend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsm_extend(%struct.TYPE_11__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_12__, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = trunc i64 %8 to i32
  %10 = load i32, i32* @BLCKSZ, align 4
  %11 = call i32 @PageInit(i32 %9, i32 %10, i32 0)
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %13 = load i32, i32* @ExclusiveLock, align 4
  %14 = call i32 @LockRelationForExtension(%struct.TYPE_11__* %12, i32 %13)
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %16 = call i32 @RelationOpenSmgr(%struct.TYPE_11__* %15)
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %2
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @InvalidBlockNumber, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %44

31:                                               ; preds = %23, %2
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %33, align 8
  %35 = load i32, i32* @FSM_FORKNUM, align 4
  %36 = call i32 @smgrexists(%struct.TYPE_13__* %34, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %31
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %40, align 8
  %42 = load i32, i32* @FSM_FORKNUM, align 4
  %43 = call i32 @smgrcreate(%struct.TYPE_13__* %41, i32 %42, i32 0)
  br label %44

44:                                               ; preds = %38, %31, %23
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %46, align 8
  %48 = load i32, i32* @FSM_FORKNUM, align 4
  %49 = call i64 @smgrnblocks(%struct.TYPE_13__* %47, i32 %48)
  store i64 %49, i64* %5, align 8
  br label %50

50:                                               ; preds = %54, %44
  %51 = load i64, i64* %5, align 8
  %52 = load i64, i64* %4, align 8
  %53 = icmp slt i64 %51, %52
  br i1 %53, label %54, label %70

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = trunc i64 %56 to i32
  %58 = load i64, i64* %5, align 8
  %59 = call i32 @PageSetChecksumInplace(i32 %57, i64 %58)
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %61, align 8
  %63 = load i32, i32* @FSM_FORKNUM, align 4
  %64 = load i64, i64* %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @smgrextend(%struct.TYPE_13__* %62, i32 %63, i64 %64, i64 %66, i32 0)
  %68 = load i64, i64* %5, align 8
  %69 = add nsw i64 %68, 1
  store i64 %69, i64* %5, align 8
  br label %50

70:                                               ; preds = %50
  %71 = load i64, i64* %5, align 8
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 0
  store i64 %71, i64* %75, align 8
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %77 = load i32, i32* @ExclusiveLock, align 4
  %78 = call i32 @UnlockRelationForExtension(%struct.TYPE_11__* %76, i32 %77)
  ret void
}

declare dso_local i32 @PageInit(i32, i32, i32) #1

declare dso_local i32 @LockRelationForExtension(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @RelationOpenSmgr(%struct.TYPE_11__*) #1

declare dso_local i32 @smgrexists(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @smgrcreate(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i64 @smgrnblocks(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @PageSetChecksumInplace(i32, i64) #1

declare dso_local i32 @smgrextend(%struct.TYPE_13__*, i32, i64, i64, i32) #1

declare dso_local i32 @UnlockRelationForExtension(%struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
