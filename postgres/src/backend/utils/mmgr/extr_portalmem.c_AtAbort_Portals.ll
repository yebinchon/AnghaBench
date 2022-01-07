; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/mmgr/extr_portalmem.c_AtAbort_Portals.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/mmgr/extr_portalmem.c_AtAbort_Portals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i64, i32, i32*, i32 (%struct.TYPE_8__*)*, i64 }

@PortalHashTable = common dso_local global i32 0, align 4
@PORTAL_ACTIVE = common dso_local global i64 0, align 8
@shmem_exit_inprogress = common dso_local global i64 0, align 8
@InvalidSubTransactionId = common dso_local global i64 0, align 8
@PORTAL_READY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AtAbort_Portals() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = load i32, i32* @PortalHashTable, align 4
  %5 = call i32 @hash_seq_init(i32* %1, i32 %4)
  br label %6

6:                                                ; preds = %76, %37, %31, %0
  %7 = call i64 @hash_seq_search(i32* %1)
  %8 = inttoptr i64 %7 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %8, %struct.TYPE_7__** %2, align 8
  %9 = icmp ne %struct.TYPE_7__* %8, null
  br i1 %9, label %10, label %77

10:                                               ; preds = %6
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  store %struct.TYPE_8__* %13, %struct.TYPE_8__** %3, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @PORTAL_ACTIVE, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %10
  %20 = load i64, i64* @shmem_exit_inprogress, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %24 = call i32 @MarkPortalFailed(%struct.TYPE_8__* %23)
  br label %25

25:                                               ; preds = %22, %19, %10
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @InvalidSubTransactionId, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %6

32:                                               ; preds = %25
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 5
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %6

38:                                               ; preds = %32
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @PORTAL_READY, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %46 = call i32 @MarkPortalFailed(%struct.TYPE_8__* %45)
  br label %47

47:                                               ; preds = %44, %38
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 4
  %50 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %49, align 8
  %51 = call i64 @PointerIsValid(i32 (%struct.TYPE_8__*)* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %47
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 4
  %56 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %55, align 8
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %58 = call i32 %56(%struct.TYPE_8__* %57)
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 4
  store i32 (%struct.TYPE_8__*)* null, i32 (%struct.TYPE_8__*)** %60, align 8
  br label %61

61:                                               ; preds = %53, %47
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %63 = call i32 @PortalReleaseCachedPlan(%struct.TYPE_8__* %62)
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 3
  store i32* null, i32** %65, align 8
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @PORTAL_ACTIVE, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %61
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @MemoryContextDeleteChildren(i32 %74)
  br label %76

76:                                               ; preds = %71, %61
  br label %6

77:                                               ; preds = %6
  ret void
}

declare dso_local i32 @hash_seq_init(i32*, i32) #1

declare dso_local i64 @hash_seq_search(i32*) #1

declare dso_local i32 @MarkPortalFailed(%struct.TYPE_8__*) #1

declare dso_local i64 @PointerIsValid(i32 (%struct.TYPE_8__*)*) #1

declare dso_local i32 @PortalReleaseCachedPlan(%struct.TYPE_8__*) #1

declare dso_local i32 @MemoryContextDeleteChildren(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
