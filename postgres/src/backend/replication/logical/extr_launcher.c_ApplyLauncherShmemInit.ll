; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_launcher.c_ApplyLauncherShmemInit.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_launcher.c_ApplyLauncherShmemInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_5__* }

@.str = private unnamed_addr constant [34 x i8] c"Logical Replication Launcher Data\00", align 1
@LogicalRepCtx = common dso_local global %struct.TYPE_5__* null, align 8
@max_logical_replication_workers = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ApplyLauncherShmemInit() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = call i32 (...) @ApplyLauncherShmemSize()
  %5 = call i64 @ShmemInitStruct(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %4, i32* %1)
  %6 = inttoptr i64 %5 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %6, %struct.TYPE_5__** @LogicalRepCtx, align 8
  %7 = load i32, i32* %1, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %33, label %9

9:                                                ; preds = %0
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** @LogicalRepCtx, align 8
  %11 = call i32 (...) @ApplyLauncherShmemSize()
  %12 = call i32 @memset(%struct.TYPE_5__* %10, i32 0, i32 %11)
  store i32 0, i32* %2, align 4
  br label %13

13:                                               ; preds = %29, %9
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* @max_logical_replication_workers, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %32

17:                                               ; preds = %13
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** @LogicalRepCtx, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = load i32, i32* %2, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i64 %22
  store %struct.TYPE_5__* %23, %struct.TYPE_5__** %3, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %25 = call i32 @memset(%struct.TYPE_5__* %24, i32 0, i32 16)
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = call i32 @SpinLockInit(i32* %27)
  br label %29

29:                                               ; preds = %17
  %30 = load i32, i32* %2, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %2, align 4
  br label %13

32:                                               ; preds = %13
  br label %33

33:                                               ; preds = %32, %0
  ret void
}

declare dso_local i64 @ShmemInitStruct(i8*, i32, i32*) #1

declare dso_local i32 @ApplyLauncherShmemSize(...) #1

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @SpinLockInit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
