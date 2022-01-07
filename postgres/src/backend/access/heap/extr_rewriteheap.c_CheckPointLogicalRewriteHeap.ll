; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_rewriteheap.c_CheckPointLogicalRewriteHeap.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_rewriteheap.c_CheckPointLogicalRewriteHeap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i8* }
%struct.stat = type { i32 }

@MAXPGPATH = common dso_local global i32 0, align 4
@InvalidXLogRecPtr = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"pg_logical/mappings\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"pg_logical/mappings/%s\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"map-\00", align 1
@LOGICAL_REWRITE_FORMAT = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [30 x i8] c"could not parse filename \22%s\22\00", align 1
@DEBUG1 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [35 x i8] c"removing logical rewrite file \22%s\22\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"could not remove file \22%s\22: %m\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@PG_BINARY = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [29 x i8] c"could not open file \22%s\22: %m\00", align 1
@WAIT_EVENT_LOGICAL_REWRITE_CHECKPOINT_SYNC = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [30 x i8] c"could not fsync file \22%s\22: %m\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"could not close file \22%s\22: %m\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CheckPointLogicalRewriteHeap() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.dirent*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.stat, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = load i32, i32* @MAXPGPATH, align 4
  %17 = add nsw i32 %16, 20
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %5, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %6, align 8
  %21 = call i64 (...) @GetRedoRecPtr()
  store i64 %21, i64* %2, align 8
  %22 = call i64 (...) @ReplicationSlotsComputeLogicalRestartLSN()
  store i64 %22, i64* %1, align 8
  %23 = load i64, i64* %1, align 8
  %24 = load i64, i64* @InvalidXLogRecPtr, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %0
  %27 = load i64, i64* %2, align 8
  %28 = load i64, i64* %1, align 8
  %29 = icmp slt i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i64, i64* %2, align 8
  store i64 %31, i64* %1, align 8
  br label %32

32:                                               ; preds = %30, %26, %0
  %33 = call i32* @AllocateDir(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32* %33, i32** %3, align 8
  br label %34

34:                                               ; preds = %144, %71, %64, %50, %32
  %35 = load i32*, i32** %3, align 8
  %36 = call %struct.dirent* @ReadDir(i32* %35, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store %struct.dirent* %36, %struct.dirent** %4, align 8
  %37 = icmp ne %struct.dirent* %36, null
  br i1 %37, label %38, label %145

38:                                               ; preds = %34
  %39 = load %struct.dirent*, %struct.dirent** %4, align 8
  %40 = getelementptr inbounds %struct.dirent, %struct.dirent* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = call i64 @strcmp(i8* %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %38
  %45 = load %struct.dirent*, %struct.dirent** %4, align 8
  %46 = getelementptr inbounds %struct.dirent, %struct.dirent* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = call i64 @strcmp(i8* %47, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %44, %38
  br label %34

51:                                               ; preds = %44
  %52 = trunc i64 %18 to i32
  %53 = load %struct.dirent*, %struct.dirent** %4, align 8
  %54 = getelementptr inbounds %struct.dirent, %struct.dirent* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @snprintf(i8* %20, i32 %52, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8* %55)
  %57 = call i64 @lstat(i8* %20, %struct.stat* %7)
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %51
  %60 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @S_ISREG(i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %59
  br label %34

65:                                               ; preds = %59, %51
  %66 = load %struct.dirent*, %struct.dirent** %4, align 8
  %67 = getelementptr inbounds %struct.dirent, %struct.dirent* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = call i64 @strncmp(i8* %68, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 4)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  br label %34

72:                                               ; preds = %65
  %73 = load %struct.dirent*, %struct.dirent** %4, align 8
  %74 = getelementptr inbounds %struct.dirent, %struct.dirent* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = load i32, i32* @LOGICAL_REWRITE_FORMAT, align 4
  %77 = call i32 @sscanf(i8* %75, i32 %76, i32* %8, i32* %9, i32* %13, i32* %14, i32* %11, i32* %12)
  %78 = icmp ne i32 %77, 6
  br i1 %78, label %79, label %85

79:                                               ; preds = %72
  %80 = load i32, i32* @ERROR, align 4
  %81 = load %struct.dirent*, %struct.dirent** %4, align 8
  %82 = getelementptr inbounds %struct.dirent, %struct.dirent* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 @elog(i32 %80, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i8* %83)
  br label %85

85:                                               ; preds = %79, %72
  %86 = load i32, i32* %13, align 4
  %87 = shl i32 %86, 32
  %88 = load i32, i32* %14, align 4
  %89 = or i32 %87, %88
  %90 = sext i32 %89 to i64
  store i64 %90, i64* %10, align 8
  %91 = load i64, i64* %10, align 8
  %92 = load i64, i64* %1, align 8
  %93 = icmp slt i64 %91, %92
  br i1 %93, label %98, label %94

94:                                               ; preds = %85
  %95 = load i64, i64* %1, align 8
  %96 = load i64, i64* @InvalidXLogRecPtr, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %109

98:                                               ; preds = %94, %85
  %99 = load i32, i32* @DEBUG1, align 4
  %100 = call i32 @elog(i32 %99, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i8* %20)
  %101 = call i64 @unlink(i8* %20)
  %102 = icmp slt i64 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %98
  %104 = load i32, i32* @ERROR, align 4
  %105 = call i32 (...) @errcode_for_file_access()
  %106 = call i32 @errmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i8* %20)
  %107 = call i32 @ereport(i32 %104, i32 %106)
  br label %108

108:                                              ; preds = %103, %98
  br label %144

109:                                              ; preds = %94
  %110 = load i32, i32* @O_RDWR, align 4
  %111 = load i32, i32* @PG_BINARY, align 4
  %112 = or i32 %110, %111
  %113 = call i32 @OpenTransientFile(i8* %20, i32 %112)
  store i32 %113, i32* %15, align 4
  %114 = load i32, i32* %15, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %109
  %117 = load i32, i32* @ERROR, align 4
  %118 = call i32 (...) @errcode_for_file_access()
  %119 = call i32 @errmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i8* %20)
  %120 = call i32 @ereport(i32 %117, i32 %119)
  br label %121

121:                                              ; preds = %116, %109
  %122 = load i32, i32* @WAIT_EVENT_LOGICAL_REWRITE_CHECKPOINT_SYNC, align 4
  %123 = call i32 @pgstat_report_wait_start(i32 %122)
  %124 = load i32, i32* %15, align 4
  %125 = call i64 @pg_fsync(i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %121
  %128 = load i32, i32* @ERROR, align 4
  %129 = call i32 @data_sync_elevel(i32 %128)
  %130 = call i32 (...) @errcode_for_file_access()
  %131 = call i32 @errmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), i8* %20)
  %132 = call i32 @ereport(i32 %129, i32 %131)
  br label %133

133:                                              ; preds = %127, %121
  %134 = call i32 (...) @pgstat_report_wait_end()
  %135 = load i32, i32* %15, align 4
  %136 = call i64 @CloseTransientFile(i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %133
  %139 = load i32, i32* @ERROR, align 4
  %140 = call i32 (...) @errcode_for_file_access()
  %141 = call i32 @errmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0), i8* %20)
  %142 = call i32 @ereport(i32 %139, i32 %141)
  br label %143

143:                                              ; preds = %138, %133
  br label %144

144:                                              ; preds = %143, %108
  br label %34

145:                                              ; preds = %34
  %146 = load i32*, i32** %3, align 8
  %147 = call i32 @FreeDir(i32* %146)
  %148 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %148)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @GetRedoRecPtr(...) #2

declare dso_local i64 @ReplicationSlotsComputeLogicalRestartLSN(...) #2

declare dso_local i32* @AllocateDir(i8*) #2

declare dso_local %struct.dirent* @ReadDir(i32*, i8*) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i64 @lstat(i8*, %struct.stat*) #2

declare dso_local i32 @S_ISREG(i32) #2

declare dso_local i64 @strncmp(i8*, i8*, i32) #2

declare dso_local i32 @sscanf(i8*, i32, i32*, i32*, i32*, i32*, i32*, i32*) #2

declare dso_local i32 @elog(i32, i8*, i8*) #2

declare dso_local i64 @unlink(i8*) #2

declare dso_local i32 @ereport(i32, i32) #2

declare dso_local i32 @errcode_for_file_access(...) #2

declare dso_local i32 @errmsg(i8*, i8*) #2

declare dso_local i32 @OpenTransientFile(i8*, i32) #2

declare dso_local i32 @pgstat_report_wait_start(i32) #2

declare dso_local i64 @pg_fsync(i32) #2

declare dso_local i32 @data_sync_elevel(i32) #2

declare dso_local i32 @pgstat_report_wait_end(...) #2

declare dso_local i64 @CloseTransientFile(i32) #2

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
