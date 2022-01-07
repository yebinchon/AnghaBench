; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xlog.c_RemoveOldXlogFiles.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xlog.c_RemoveOldXlogFiles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i64 }

@MAXFNAMELEN = common dso_local global i32 0, align 4
@wal_segment_size = common dso_local global i32 0, align 4
@DEBUG2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"attempting to remove WAL segments older than log file %s\00", align 1
@XLOGDIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @RemoveOldXlogFiles to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @RemoveOldXlogFiles(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.dirent*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* @MAXFNAMELEN, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %9, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %10, align 8
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @wal_segment_size, align 4
  %17 = call i32 @XLogFileName(i8* %14, i32 0, i32 %15, i32 %16)
  %18 = load i32, i32* @DEBUG2, align 4
  %19 = call i32 @elog(i32 %18, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i8* %14)
  %20 = load i32, i32* @XLOGDIR, align 4
  %21 = call i32* @AllocateDir(i32 %20)
  store i32* %21, i32** %7, align 8
  br label %22

22:                                               ; preds = %66, %39, %3
  %23 = load i32*, i32** %7, align 8
  %24 = load i32, i32* @XLOGDIR, align 4
  %25 = call %struct.dirent* @ReadDir(i32* %23, i32 %24)
  store %struct.dirent* %25, %struct.dirent** %8, align 8
  %26 = icmp ne %struct.dirent* %25, null
  br i1 %26, label %27, label %67

27:                                               ; preds = %22
  %28 = load %struct.dirent*, %struct.dirent** %8, align 8
  %29 = getelementptr inbounds %struct.dirent, %struct.dirent* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @IsXLogFileName(i64 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %27
  %34 = load %struct.dirent*, %struct.dirent** %8, align 8
  %35 = getelementptr inbounds %struct.dirent, %struct.dirent* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @IsPartialXLogFileName(i64 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %33
  br label %22

40:                                               ; preds = %33, %27
  %41 = load %struct.dirent*, %struct.dirent** %8, align 8
  %42 = getelementptr inbounds %struct.dirent, %struct.dirent* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %43, 8
  %45 = getelementptr inbounds i8, i8* %14, i64 8
  %46 = call i64 @strcmp(i64 %44, i8* %45)
  %47 = icmp sle i64 %46, 0
  br i1 %47, label %48, label %66

48:                                               ; preds = %40
  %49 = load %struct.dirent*, %struct.dirent** %8, align 8
  %50 = getelementptr inbounds %struct.dirent, %struct.dirent* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i64 @XLogArchiveCheckDone(i64 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %48
  %55 = load %struct.dirent*, %struct.dirent** %8, align 8
  %56 = getelementptr inbounds %struct.dirent, %struct.dirent* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @UpdateLastRemovedPtr(i64 %57)
  %59 = load %struct.dirent*, %struct.dirent** %8, align 8
  %60 = getelementptr inbounds %struct.dirent, %struct.dirent* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @RemoveXlogFile(i64 %61, i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %54, %48
  br label %66

66:                                               ; preds = %65, %40
  br label %22

67:                                               ; preds = %22
  %68 = load i32*, i32** %7, align 8
  %69 = call i32 @FreeDir(i32* %68)
  %70 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %70)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @XLogFileName(i8*, i32, i32, i32) #2

declare dso_local i32 @elog(i32, i8*, i8*) #2

declare dso_local i32* @AllocateDir(i32) #2

declare dso_local %struct.dirent* @ReadDir(i32*, i32) #2

declare dso_local i32 @IsXLogFileName(i64) #2

declare dso_local i32 @IsPartialXLogFileName(i64) #2

declare dso_local i64 @strcmp(i64, i8*) #2

declare dso_local i64 @XLogArchiveCheckDone(i64) #2

declare dso_local i32 @UpdateLastRemovedPtr(i64) #2

declare dso_local i32 @RemoveXlogFile(i64, i32, i32) #2

declare dso_local i32 @FreeDir(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
