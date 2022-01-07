; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xlog.c_CheckXLogRemoved.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xlog.c_CheckXLogRemoved.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }

@errno = common dso_local global i32 0, align 4
@XLogCtl = common dso_local global %struct.TYPE_2__* null, align 8
@MAXFNAMELEN = common dso_local global i32 0, align 4
@wal_segment_size = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"requested WAL segment %s has already been removed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CheckXLogRemoved(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* @errno, align 4
  store i32 %9, i32* %5, align 4
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @XLogCtl, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = call i32 @SpinLockAcquire(i32* %11)
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @XLogCtl, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %6, align 8
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @XLogCtl, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = call i32 @SpinLockRelease(i32* %17)
  %19 = load i64, i64* %3, align 8
  %20 = load i64, i64* %6, align 8
  %21 = icmp sle i64 %19, %20
  br i1 %21, label %22, label %37

22:                                               ; preds = %2
  %23 = load i32, i32* @MAXFNAMELEN, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %7, align 8
  %26 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %8, align 8
  %27 = load i32, i32* %4, align 4
  %28 = load i64, i64* %3, align 8
  %29 = load i32, i32* @wal_segment_size, align 4
  %30 = call i32 @XLogFileName(i8* %26, i32 %27, i64 %28, i32 %29)
  %31 = load i32, i32* %5, align 4
  store i32 %31, i32* @errno, align 4
  %32 = load i32, i32* @ERROR, align 4
  %33 = call i32 (...) @errcode_for_file_access()
  %34 = call i32 @errmsg(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i8* %26)
  %35 = call i32 @ereport(i32 %32, i32 %34)
  %36 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %36)
  br label %37

37:                                               ; preds = %22, %2
  %38 = load i32, i32* %5, align 4
  store i32 %38, i32* @errno, align 4
  ret void
}

declare dso_local i32 @SpinLockAcquire(i32*) #1

declare dso_local i32 @SpinLockRelease(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @XLogFileName(i8*, i32, i64, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode_for_file_access(...) #1

declare dso_local i32 @errmsg(i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
