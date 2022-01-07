; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/postmaster/extr_postmaster.c_StartAutovacuumWorker.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/postmaster/extr_postmaster.c_StartAutovacuumWorker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i64, i32, i32, i32, i32 }

@BACKEND_TYPE_AUTOVAC = common dso_local global i32 0, align 4
@CAC_OK = common dso_local global i64 0, align 8
@MyCancelKey = common dso_local global i32 0, align 4
@LOG = common dso_local global i32 0, align 4
@ERRCODE_INTERNAL_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"could not generate random cancel key\00", align 1
@MyPMChildSlot = common dso_local global i32 0, align 4
@BackendList = common dso_local global i32 0, align 4
@ERRCODE_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@AutoVacPID = common dso_local global i64 0, align 8
@avlauncher_needs_signal = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @StartAutovacuumWorker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @StartAutovacuumWorker() #0 {
  %1 = alloca %struct.TYPE_4__*, align 8
  %2 = load i32, i32* @BACKEND_TYPE_AUTOVAC, align 4
  %3 = call i64 @canAcceptConnections(i32 %2)
  %4 = load i64, i64* @CAC_OK, align 8
  %5 = icmp eq i64 %3, %4
  br i1 %5, label %6, label %59

6:                                                ; preds = %0
  %7 = call i32 @RandomCancelKey(i32* @MyCancelKey)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %6
  %10 = load i32, i32* @LOG, align 4
  %11 = load i32, i32* @ERRCODE_INTERNAL_ERROR, align 4
  %12 = call i32 @errcode(i32 %11)
  %13 = call i32 @errmsg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %14 = call i32 @ereport(i32 %10, i32 %13)
  br label %64

15:                                               ; preds = %6
  %16 = call i64 @malloc(i32 32)
  %17 = inttoptr i64 %16 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %17, %struct.TYPE_4__** %1, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %19 = icmp ne %struct.TYPE_4__* %18, null
  br i1 %19, label %20, label %52

20:                                               ; preds = %15
  %21 = load i32, i32* @MyCancelKey, align 4
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 6
  store i32 %21, i32* %23, align 4
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store i32 0, i32* %25, align 8
  %26 = call i32 (...) @AssignPostmasterChildSlot()
  store i32 %26, i32* @MyPMChildSlot, align 4
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  store i32 0, i32* %30, align 4
  %31 = call i64 (...) @StartAutoVacWorker()
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  store i64 %31, i64* %33, align 8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp sgt i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %20
  %39 = load i32, i32* @BACKEND_TYPE_AUTOVAC, align 4
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 5
  store i32 %39, i32* %41, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 4
  %44 = call i32 @dlist_push_head(i32* @BackendList, i32* %43)
  br label %64

45:                                               ; preds = %20
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @ReleasePostmasterChildSlot(i32 %48)
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %51 = call i32 @free(%struct.TYPE_4__* %50)
  br label %58

52:                                               ; preds = %15
  %53 = load i32, i32* @LOG, align 4
  %54 = load i32, i32* @ERRCODE_OUT_OF_MEMORY, align 4
  %55 = call i32 @errcode(i32 %54)
  %56 = call i32 @errmsg(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %57 = call i32 @ereport(i32 %53, i32 %56)
  br label %58

58:                                               ; preds = %52, %45
  br label %59

59:                                               ; preds = %58, %0
  %60 = load i64, i64* @AutoVacPID, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = call i32 (...) @AutoVacWorkerFailed()
  store i32 1, i32* @avlauncher_needs_signal, align 4
  br label %64

64:                                               ; preds = %9, %38, %62, %59
  ret void
}

declare dso_local i64 @canAcceptConnections(i32) #1

declare dso_local i32 @RandomCancelKey(i32*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @AssignPostmasterChildSlot(...) #1

declare dso_local i64 @StartAutoVacWorker(...) #1

declare dso_local i32 @dlist_push_head(i32*, i32*) #1

declare dso_local i32 @ReleasePostmasterChildSlot(i32) #1

declare dso_local i32 @free(%struct.TYPE_4__*) #1

declare dso_local i32 @AutoVacWorkerFailed(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
