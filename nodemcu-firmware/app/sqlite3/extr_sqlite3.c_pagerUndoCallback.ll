; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_pagerUndoCallback.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_pagerUndoCallback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32 (%struct.TYPE_11__*)*, i32 }
%struct.TYPE_11__ = type { i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @pagerUndoCallback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pagerUndoCallback(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* @SQLITE_OK, align 4
  store i32 %9, i32* %5, align 4
  %10 = load i8*, i8** %3, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %11, %struct.TYPE_12__** %6, align 8
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %13 = call i32 @pagerUseWal(%struct.TYPE_12__* %12)
  %14 = call i32 @assert(i32 %13)
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call %struct.TYPE_11__* @sqlite3PagerLookup(%struct.TYPE_12__* %15, i32 %16)
  store %struct.TYPE_11__* %17, %struct.TYPE_11__** %7, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %19 = icmp ne %struct.TYPE_11__* %18, null
  br i1 %19, label %20, label %56

20:                                               ; preds = %2
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %22 = call i32 @sqlite3PcachePageRefcount(%struct.TYPE_11__* %21)
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %26 = call i32 @sqlite3PcacheDrop(%struct.TYPE_11__* %25)
  br label %55

27:                                               ; preds = %20
  store i32 0, i32* %8, align 4
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @sqlite3WalFindFrame(i32 %30, i32 %33, i32* %8)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @SQLITE_OK, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %27
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @readDbPage(%struct.TYPE_11__* %39, i32 %40)
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %38, %27
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @SQLITE_OK, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %42
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 1
  %49 = load i32 (%struct.TYPE_11__*)*, i32 (%struct.TYPE_11__*)** %48, align 8
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %51 = call i32 %49(%struct.TYPE_11__* %50)
  br label %52

52:                                               ; preds = %46, %42
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %54 = call i32 @sqlite3PagerUnrefNotNull(%struct.TYPE_11__* %53)
  br label %55

55:                                               ; preds = %52, %24
  br label %56

56:                                               ; preds = %55, %2
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @sqlite3BackupRestart(i32 %59)
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @pagerUseWal(%struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_11__* @sqlite3PagerLookup(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @sqlite3PcachePageRefcount(%struct.TYPE_11__*) #1

declare dso_local i32 @sqlite3PcacheDrop(%struct.TYPE_11__*) #1

declare dso_local i32 @sqlite3WalFindFrame(i32, i32, i32*) #1

declare dso_local i32 @readDbPage(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @sqlite3PagerUnrefNotNull(%struct.TYPE_11__*) #1

declare dso_local i32 @sqlite3BackupRestart(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
