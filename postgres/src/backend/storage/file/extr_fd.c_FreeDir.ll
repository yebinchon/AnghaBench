; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/file/extr_fd.c_FreeDir.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/file/extr_fd.c_FreeDir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }

@LOG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"FreeDir: Allocated %d\00", align 1
@numAllocatedDescs = common dso_local global i32 0, align 4
@allocatedDescs = common dso_local global %struct.TYPE_6__* null, align 8
@AllocateDescDir = common dso_local global i64 0, align 8
@WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"dir passed to FreeDir was not obtained from AllocateDir\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FreeDir(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = icmp eq i32* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %45

9:                                                ; preds = %1
  %10 = load i32, i32* @LOG, align 4
  %11 = load i32, i32* @numAllocatedDescs, align 4
  %12 = call i32 (i32, i8*, ...) @elog(i32 %10, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = call i32 @DO_DB(i32 %12)
  %14 = load i32, i32* @numAllocatedDescs, align 4
  store i32 %14, i32* %4, align 4
  br label %15

15:                                               ; preds = %39, %9
  %16 = load i32, i32* %4, align 4
  %17 = add nsw i32 %16, -1
  store i32 %17, i32* %4, align 4
  %18 = icmp sge i32 %17, 0
  br i1 %18, label %19, label %40

19:                                               ; preds = %15
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** @allocatedDescs, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i64 %22
  store %struct.TYPE_6__* %23, %struct.TYPE_6__** %5, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @AllocateDescDir, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %39

29:                                               ; preds = %19
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32*, i32** %3, align 8
  %35 = icmp eq i32* %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %38 = call i32 @FreeDesc(%struct.TYPE_6__* %37)
  store i32 %38, i32* %2, align 4
  br label %45

39:                                               ; preds = %29, %19
  br label %15

40:                                               ; preds = %15
  %41 = load i32, i32* @WARNING, align 4
  %42 = call i32 (i32, i8*, ...) @elog(i32 %41, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32*, i32** %3, align 8
  %44 = call i32 @closedir(i32* %43)
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %40, %36, %8
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @DO_DB(i32) #1

declare dso_local i32 @elog(i32, i8*, ...) #1

declare dso_local i32 @FreeDesc(%struct.TYPE_6__*) #1

declare dso_local i32 @closedir(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
