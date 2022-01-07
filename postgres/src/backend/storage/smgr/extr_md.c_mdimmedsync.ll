; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/smgr/extr_md.c_mdimmedsync.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/smgr/extr_md.c_mdimmedsync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, %struct.TYPE_6__** }
%struct.TYPE_6__ = type { i32 }

@WAIT_EVENT_DATA_FILE_IMMEDIATE_SYNC = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"could not fsync file \22%s\22: %m\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mdimmedsync(%struct.TYPE_5__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %8 = load i64, i64* %4, align 8
  %9 = call i32 @mdnblocks(%struct.TYPE_5__* %7, i64 %8)
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = load i64, i64* %4, align 8
  %14 = getelementptr inbounds i32, i32* %12, i64 %13
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %5, align 4
  br label %16

16:                                               ; preds = %46, %2
  %17 = load i32, i32* %5, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %49

19:                                               ; preds = %16
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %21, align 8
  %23 = load i64, i64* %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %22, i64 %23
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sub nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i64 %28
  store %struct.TYPE_6__* %29, %struct.TYPE_6__** %6, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @WAIT_EVENT_DATA_FILE_IMMEDIATE_SYNC, align 4
  %34 = call i64 @FileSync(i32 %32, i32 %33)
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %19
  %37 = load i32, i32* @ERROR, align 4
  %38 = call i32 @data_sync_elevel(i32 %37)
  %39 = call i32 (...) @errcode_for_file_access()
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @FilePathName(i32 %42)
  %44 = call i32 @errmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = call i32 @ereport(i32 %38, i32 %44)
  br label %46

46:                                               ; preds = %36, %19
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %5, align 4
  br label %16

49:                                               ; preds = %16
  ret void
}

declare dso_local i32 @mdnblocks(%struct.TYPE_5__*, i64) #1

declare dso_local i64 @FileSync(i32, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @data_sync_elevel(i32) #1

declare dso_local i32 @errcode_for_file_access(...) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @FilePathName(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
