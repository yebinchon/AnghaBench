; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xlog.c_RemoveNonParentXlogFiles.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xlog.c_RemoveNonParentXlogFiles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i64 }

@MAXFNAMELEN = common dso_local global i32 0, align 4
@wal_segment_size = common dso_local global i32 0, align 4
@DEBUG2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"attempting to remove WAL segments newer than log file %s\00", align 1
@XLOGDIR = common dso_local global i32 0, align 4
@InvalidXLogRecPtr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @RemoveNonParentXlogFiles to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @RemoveNonParentXlogFiles(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.dirent*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* @MAXFNAMELEN, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %7, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %8, align 8
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* @wal_segment_size, align 4
  %17 = call i32 @XLByteToPrevSeg(i32 %14, i32 %15, i32 %16)
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @wal_segment_size, align 4
  %21 = call i32 @XLogFileName(i8* %13, i32 %18, i32 %19, i32 %20)
  %22 = load i32, i32* @DEBUG2, align 4
  %23 = call i32 @elog(i32 %22, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i8* %13)
  %24 = load i32, i32* @XLOGDIR, align 4
  %25 = call i32* @AllocateDir(i32 %24)
  store i32* %25, i32** %5, align 8
  br label %26

26:                                               ; preds = %66, %37, %2
  %27 = load i32*, i32** %5, align 8
  %28 = load i32, i32* @XLOGDIR, align 4
  %29 = call %struct.dirent* @ReadDir(i32* %27, i32 %28)
  store %struct.dirent* %29, %struct.dirent** %6, align 8
  %30 = icmp ne %struct.dirent* %29, null
  br i1 %30, label %31, label %67

31:                                               ; preds = %26
  %32 = load %struct.dirent*, %struct.dirent** %6, align 8
  %33 = getelementptr inbounds %struct.dirent, %struct.dirent* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @IsXLogFileName(i64 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %31
  br label %26

38:                                               ; preds = %31
  %39 = load %struct.dirent*, %struct.dirent** %6, align 8
  %40 = getelementptr inbounds %struct.dirent, %struct.dirent* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i64 @strncmp(i64 %41, i8* %13, i32 8)
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %66

44:                                               ; preds = %38
  %45 = load %struct.dirent*, %struct.dirent** %6, align 8
  %46 = getelementptr inbounds %struct.dirent, %struct.dirent* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, 8
  %49 = getelementptr inbounds i8, i8* %13, i64 8
  %50 = call i64 @strcmp(i64 %48, i8* %49)
  %51 = icmp sgt i64 %50, 0
  br i1 %51, label %52, label %66

52:                                               ; preds = %44
  %53 = load %struct.dirent*, %struct.dirent** %6, align 8
  %54 = getelementptr inbounds %struct.dirent, %struct.dirent* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @XLogArchiveIsReady(i64 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %65, label %58

58:                                               ; preds = %52
  %59 = load %struct.dirent*, %struct.dirent** %6, align 8
  %60 = getelementptr inbounds %struct.dirent, %struct.dirent* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i32, i32* @InvalidXLogRecPtr, align 4
  %63 = load i32, i32* %3, align 4
  %64 = call i32 @RemoveXlogFile(i64 %61, i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %58, %52
  br label %66

66:                                               ; preds = %65, %44, %38
  br label %26

67:                                               ; preds = %26
  %68 = load i32*, i32** %5, align 8
  %69 = call i32 @FreeDir(i32* %68)
  %70 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %70)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @XLByteToPrevSeg(i32, i32, i32) #2

declare dso_local i32 @XLogFileName(i8*, i32, i32, i32) #2

declare dso_local i32 @elog(i32, i8*, i8*) #2

declare dso_local i32* @AllocateDir(i32) #2

declare dso_local %struct.dirent* @ReadDir(i32*, i32) #2

declare dso_local i32 @IsXLogFileName(i64) #2

declare dso_local i64 @strncmp(i64, i8*, i32) #2

declare dso_local i64 @strcmp(i64, i8*) #2

declare dso_local i32 @XLogArchiveIsReady(i64) #2

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
