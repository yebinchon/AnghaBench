; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/postmaster/extr_postmaster.c_do_start_bgworker.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/postmaster/extr_postmaster.c_do_start_bgworker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.TYPE_10__*, %struct.TYPE_9__, i8*, i32, i32 }
%struct.TYPE_10__ = type { i64, i32 }
%struct.TYPE_9__ = type { i32 }

@DEBUG1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"starting background worker process \22%s\22\00", align 1
@LOG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"could not fork worker process: %m\00", align 1
@TopMemoryContext = common dso_local global i32 0, align 4
@MyBgworkerEntry = common dso_local global i32* null, align 8
@PostmasterContext = common dso_local global i32* null, align 8
@BackendList = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*)* @do_start_bgworker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_start_bgworker(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp eq i64 %7, 0
  %9 = zext i1 %8 to i32
  %10 = call i32 @Assert(i32 %9)
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %12 = call i32 @assign_backendlist_entry(%struct.TYPE_8__* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %1
  %15 = call i8* (...) @GetCurrentTimestamp()
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 3
  store i8* %15, i8** %17, align 8
  store i32 0, i32* %2, align 4
  br label %81

18:                                               ; preds = %1
  %19 = load i32, i32* @DEBUG1, align 4
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = call i32 @ereport(i32 %19, i32 %24)
  %26 = call i64 (...) @fork_process()
  store i64 %26, i64* %4, align 8
  switch i64 %26, label %62 [
    i64 -1, label %27
    i64 0, label %46
  ]

27:                                               ; preds = %18
  %28 = load i32, i32* @LOG, align 4
  %29 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %30 = call i32 @ereport(i32 %28, i32 %29)
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @ReleasePostmasterChildSlot(i32 %33)
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 4
  store i32 0, i32* %36, align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %38, align 8
  %40 = call i32 @free(%struct.TYPE_10__* %39)
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %42, align 8
  %43 = call i8* (...) @GetCurrentTimestamp()
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 3
  store i8* %43, i8** %45, align 8
  br label %80

46:                                               ; preds = %18
  %47 = call i32 (...) @InitPostmasterChild()
  %48 = call i32 @ClosePostmasterPorts(i32 0)
  %49 = load i32, i32* @TopMemoryContext, align 4
  %50 = call i64 @MemoryContextAlloc(i32 %49, i32 4)
  %51 = inttoptr i64 %50 to i32*
  store i32* %51, i32** @MyBgworkerEntry, align 8
  %52 = load i32*, i32** @MyBgworkerEntry, align 8
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 2
  %55 = call i32 @memcpy(i32* %52, %struct.TYPE_9__* %54, i32 4)
  %56 = load i32, i32* @TopMemoryContext, align 4
  %57 = call i32 @MemoryContextSwitchTo(i32 %56)
  %58 = load i32*, i32** @PostmasterContext, align 8
  %59 = call i32 @MemoryContextDelete(i32* %58)
  store i32* null, i32** @PostmasterContext, align 8
  %60 = call i32 (...) @StartBackgroundWorker()
  %61 = call i32 @exit(i32 1) #3
  unreachable

62:                                               ; preds = %18
  %63 = load i64, i64* %4, align 8
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  store i64 %68, i64* %72, align 8
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %74 = call i32 @ReportBackgroundWorkerPID(%struct.TYPE_8__* %73)
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 1
  %79 = call i32 @dlist_push_head(i32* @BackendList, i32* %78)
  store i32 1, i32* %2, align 4
  br label %81

80:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %81

81:                                               ; preds = %80, %62, %14
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @assign_backendlist_entry(%struct.TYPE_8__*) #1

declare dso_local i8* @GetCurrentTimestamp(...) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i64 @fork_process(...) #1

declare dso_local i32 @ReleasePostmasterChildSlot(i32) #1

declare dso_local i32 @free(%struct.TYPE_10__*) #1

declare dso_local i32 @InitPostmasterChild(...) #1

declare dso_local i32 @ClosePostmasterPorts(i32) #1

declare dso_local i64 @MemoryContextAlloc(i32, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32 @MemoryContextDelete(i32*) #1

declare dso_local i32 @StartBackgroundWorker(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @ReportBackgroundWorkerPID(%struct.TYPE_8__*) #1

declare dso_local i32 @dlist_push_head(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
