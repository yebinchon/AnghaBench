; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/smgr/extr_md.c_mdextend.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/smgr/extr_md.c_mdextend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i32 }

@InvalidBlockNumber = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_PROGRAM_LIMIT_EXCEEDED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"cannot extend file \22%s\22 beyond %u blocks\00", align 1
@EXTENSION_CREATE = common dso_local global i32 0, align 4
@BLCKSZ = common dso_local global i32 0, align 4
@RELSEG_SIZE = common dso_local global i64 0, align 8
@WAIT_EVENT_DATA_FILE_EXTEND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"could not extend file \22%s\22: %m\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Check free disk space.\00", align 1
@ERRCODE_DISK_FULL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [66 x i8] c"could not extend file \22%s\22: wrote only %d of %d bytes at block %u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mdextend(%struct.TYPE_12__* %0, i32 %1, i64 %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load i64, i64* %8, align 8
  %15 = load i64, i64* @InvalidBlockNumber, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %29

17:                                               ; preds = %5
  %18 = load i32, i32* @ERROR, align 4
  %19 = load i32, i32* @ERRCODE_PROGRAM_LIMIT_EXCEEDED, align 4
  %20 = call i32 @errcode(i32 %19)
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @relpath(i32 %23, i32 %24)
  %26 = load i64, i64* @InvalidBlockNumber, align 8
  %27 = call i32 (i8*, i32, ...) @errmsg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %25, i64 %26)
  %28 = call i32 @ereport(i32 %18, i32 %27)
  br label %29

29:                                               ; preds = %17, %5
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load i64, i64* %8, align 8
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* @EXTENSION_CREATE, align 4
  %35 = call %struct.TYPE_13__* @_mdfd_getseg(%struct.TYPE_12__* %30, i32 %31, i64 %32, i32 %33, i32 %34)
  store %struct.TYPE_13__* %35, %struct.TYPE_13__** %13, align 8
  %36 = load i32, i32* @BLCKSZ, align 4
  %37 = sext i32 %36 to i64
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* @RELSEG_SIZE, align 8
  %40 = srem i64 %38, %39
  %41 = mul nsw i64 %37, %40
  store i64 %41, i64* %11, align 8
  %42 = load i64, i64* %11, align 8
  %43 = load i32, i32* @BLCKSZ, align 4
  %44 = sext i32 %43 to i64
  %45 = load i64, i64* @RELSEG_SIZE, align 8
  %46 = mul nsw i64 %44, %45
  %47 = icmp slt i64 %42, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 @Assert(i32 %48)
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i8*, i8** %9, align 8
  %54 = load i32, i32* @BLCKSZ, align 4
  %55 = load i64, i64* %11, align 8
  %56 = load i32, i32* @WAIT_EVENT_DATA_FILE_EXTEND, align 4
  %57 = call i32 @FileWrite(i32 %52, i8* %53, i32 %54, i64 %55, i32 %56)
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* @BLCKSZ, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %87

60:                                               ; preds = %29
  %61 = load i32, i32* %12, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %60
  %64 = load i32, i32* @ERROR, align 4
  %65 = call i32 (...) @errcode_for_file_access()
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @FilePathName(i32 %68)
  %70 = call i32 (i8*, i32, ...) @errmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %69)
  %71 = call i32 @errhint(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %72 = call i32 @ereport(i32 %64, i32 %71)
  br label %73

73:                                               ; preds = %63, %60
  %74 = load i32, i32* @ERROR, align 4
  %75 = load i32, i32* @ERRCODE_DISK_FULL, align 4
  %76 = call i32 @errcode(i32 %75)
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @FilePathName(i32 %79)
  %81 = load i32, i32* %12, align 4
  %82 = load i32, i32* @BLCKSZ, align 4
  %83 = load i64, i64* %8, align 8
  %84 = call i32 (i8*, i32, ...) @errmsg(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.3, i64 0, i64 0), i32 %80, i32 %81, i32 %82, i64 %83)
  %85 = call i32 @errhint(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %86 = call i32 @ereport(i32 %74, i32 %85)
  br label %87

87:                                               ; preds = %73, %29
  %88 = load i32, i32* %10, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %99, label %90

90:                                               ; preds = %87
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %92 = call i32 @SmgrIsTemp(%struct.TYPE_12__* %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %99, label %94

94:                                               ; preds = %90
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %96 = load i32, i32* %7, align 4
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %98 = call i32 @register_dirty_segment(%struct.TYPE_12__* %95, i32 %96, %struct.TYPE_13__* %97)
  br label %99

99:                                               ; preds = %94, %90, %87
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %101 = load i32, i32* %7, align 4
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %103 = call i64 @_mdnblocks(%struct.TYPE_12__* %100, i32 %101, %struct.TYPE_13__* %102)
  %104 = load i64, i64* @RELSEG_SIZE, align 8
  %105 = icmp sle i64 %103, %104
  %106 = zext i1 %105 to i32
  %107 = call i32 @Assert(i32 %106)
  ret void
}

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32, ...) #1

declare dso_local i32 @relpath(i32, i32) #1

declare dso_local %struct.TYPE_13__* @_mdfd_getseg(%struct.TYPE_12__*, i32, i64, i32, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @FileWrite(i32, i8*, i32, i64, i32) #1

declare dso_local i32 @errcode_for_file_access(...) #1

declare dso_local i32 @FilePathName(i32) #1

declare dso_local i32 @errhint(i8*) #1

declare dso_local i32 @SmgrIsTemp(%struct.TYPE_12__*) #1

declare dso_local i32 @register_dirty_segment(%struct.TYPE_12__*, i32, %struct.TYPE_13__*) #1

declare dso_local i64 @_mdnblocks(%struct.TYPE_12__*, i32, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
