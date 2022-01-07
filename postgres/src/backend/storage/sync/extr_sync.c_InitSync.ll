; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/sync/extr_sync.c_InitSync.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/sync/extr_sync.c_InitSync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

@IsUnderPostmaster = common dso_local global i32 0, align 4
@TopMemoryContext = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Pending ops context\00", align 1
@ALLOCSET_DEFAULT_SIZES = common dso_local global i32 0, align 4
@pendingOpsCxt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Pending Ops Table\00", align 1
@HASH_ELEM = common dso_local global i32 0, align 4
@HASH_BLOBS = common dso_local global i32 0, align 4
@HASH_CONTEXT = common dso_local global i32 0, align 4
@pendingOps = common dso_local global i32 0, align 4
@NIL = common dso_local global i32 0, align 4
@pendingUnlinks = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @InitSync() #0 {
  %1 = alloca %struct.TYPE_4__, align 4
  %2 = load i32, i32* @IsUnderPostmaster, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %10

4:                                                ; preds = %0
  %5 = call i64 (...) @AmStartupProcess()
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %4
  %8 = call i64 (...) @AmCheckpointerProcess()
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %28

10:                                               ; preds = %7, %4, %0
  %11 = load i32, i32* @TopMemoryContext, align 4
  %12 = load i32, i32* @ALLOCSET_DEFAULT_SIZES, align 4
  %13 = call i32 @AllocSetContextCreate(i32 %11, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %12)
  store i32 %13, i32* @pendingOpsCxt, align 4
  %14 = load i32, i32* @pendingOpsCxt, align 4
  %15 = call i32 @MemoryContextAllowInCriticalSection(i32 %14, i32 1)
  %16 = call i32 @MemSet(%struct.TYPE_4__* %1, i32 0, i32 12)
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  store i32 4, i32* %17, align 4
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  store i32 4, i32* %18, align 4
  %19 = load i32, i32* @pendingOpsCxt, align 4
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 2
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* @HASH_ELEM, align 4
  %22 = load i32, i32* @HASH_BLOBS, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @HASH_CONTEXT, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @hash_create(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i64 100, %struct.TYPE_4__* %1, i32 %25)
  store i32 %26, i32* @pendingOps, align 4
  %27 = load i32, i32* @NIL, align 4
  store i32 %27, i32* @pendingUnlinks, align 4
  br label %28

28:                                               ; preds = %10, %7
  ret void
}

declare dso_local i64 @AmStartupProcess(...) #1

declare dso_local i64 @AmCheckpointerProcess(...) #1

declare dso_local i32 @AllocSetContextCreate(i32, i8*, i32) #1

declare dso_local i32 @MemoryContextAllowInCriticalSection(i32, i32) #1

declare dso_local i32 @MemSet(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @hash_create(i8*, i64, %struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
