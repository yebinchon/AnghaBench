; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/sync/extr_sync.c_SyncPostCheckpoint.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/sync/extr_sync.c_SyncPostCheckpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 (%struct.TYPE_7__*, i8*)* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_5__ = type { i64, %struct.TYPE_7__ }

@UNLINKS_PER_ABSORB = common dso_local global i32 0, align 4
@pendingUnlinks = common dso_local global i64 0, align 8
@NIL = common dso_local global i64 0, align 8
@MAXPGPATH = common dso_local global i32 0, align 4
@checkpoint_cycle_ctr = common dso_local global i64 0, align 8
@syncsw = common dso_local global %struct.TYPE_6__* null, align 8
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"could not remove file \22%s\22: %m\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SyncPostCheckpoint() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = load i32, i32* @UNLINKS_PER_ABSORB, align 4
  store i32 %6, i32* %1, align 4
  br label %7

7:                                                ; preds = %63, %0
  %8 = load i64, i64* @pendingUnlinks, align 8
  %9 = load i64, i64* @NIL, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %64

11:                                               ; preds = %7
  %12 = load i64, i64* @pendingUnlinks, align 8
  %13 = call i64 @linitial(i64 %12)
  %14 = inttoptr i64 %13 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %14, %struct.TYPE_5__** %2, align 8
  %15 = load i32, i32* @MAXPGPATH, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %3, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %4, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @checkpoint_cycle_ctr, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %11
  store i32 3, i32* %5, align 4
  br label %60

25:                                               ; preds = %11
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** @syncsw, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i64 (%struct.TYPE_7__*, i8*)*, i64 (%struct.TYPE_7__*, i8*)** %32, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = call i64 %33(%struct.TYPE_7__* %35, i8* %18)
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %25
  %39 = load i64, i64* @errno, align 8
  %40 = load i64, i64* @ENOENT, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %38
  %43 = load i32, i32* @WARNING, align 4
  %44 = call i32 (...) @errcode_for_file_access()
  %45 = call i32 @errmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %18)
  %46 = call i32 @ereport(i32 %43, i32 %45)
  br label %47

47:                                               ; preds = %42, %38
  br label %48

48:                                               ; preds = %47, %25
  %49 = load i64, i64* @pendingUnlinks, align 8
  %50 = call i64 @list_delete_first(i64 %49)
  store i64 %50, i64* @pendingUnlinks, align 8
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %52 = call i32 @pfree(%struct.TYPE_5__* %51)
  %53 = load i32, i32* %1, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %1, align 4
  %55 = icmp sle i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %48
  %57 = call i32 (...) @AbsorbSyncRequests()
  %58 = load i32, i32* @UNLINKS_PER_ABSORB, align 4
  store i32 %58, i32* %1, align 4
  br label %59

59:                                               ; preds = %56, %48
  store i32 0, i32* %5, align 4
  br label %60

60:                                               ; preds = %59, %24
  %61 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %61)
  %62 = load i32, i32* %5, align 4
  switch i32 %62, label %65 [
    i32 0, label %63
    i32 3, label %64
  ]

63:                                               ; preds = %60
  br label %7

64:                                               ; preds = %60, %7
  ret void

65:                                               ; preds = %60
  unreachable
}

declare dso_local i64 @linitial(i64) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode_for_file_access(...) #1

declare dso_local i32 @errmsg(i8*, i8*) #1

declare dso_local i64 @list_delete_first(i64) #1

declare dso_local i32 @pfree(%struct.TYPE_5__*) #1

declare dso_local i32 @AbsorbSyncRequests(...) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
