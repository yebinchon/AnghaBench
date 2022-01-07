; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/smgr/extr_md.c_mdread.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/smgr/extr_md.c_mdread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i32 }

@EXTENSION_FAIL = common dso_local global i32 0, align 4
@EXTENSION_CREATE_RECOVERY = common dso_local global i32 0, align 4
@BLCKSZ = common dso_local global i32 0, align 4
@RELSEG_SIZE = common dso_local global i32 0, align 4
@WAIT_EVENT_DATA_FILE_READ = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"could not read block %u in file \22%s\22: %m\00", align 1
@zero_damaged_pages = common dso_local global i64 0, align 8
@InRecovery = common dso_local global i64 0, align 8
@ERRCODE_DATA_CORRUPTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [63 x i8] c"could not read block %u in file \22%s\22: read only %d of %d bytes\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mdread(%struct.TYPE_10__* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @TRACE_POSTGRESQL_SMGR_MD_READ_START(i32 %12, i32 %13, i32 %18, i32 %23, i32 %28, i32 %32)
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @EXTENSION_FAIL, align 4
  %38 = load i32, i32* @EXTENSION_CREATE_RECOVERY, align 4
  %39 = or i32 %37, %38
  %40 = call %struct.TYPE_11__* @_mdfd_getseg(%struct.TYPE_10__* %34, i32 %35, i32 %36, i32 0, i32 %39)
  store %struct.TYPE_11__* %40, %struct.TYPE_11__** %11, align 8
  %41 = load i32, i32* @BLCKSZ, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @RELSEG_SIZE, align 4
  %44 = srem i32 %42, %43
  %45 = mul nsw i32 %41, %44
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @BLCKSZ, align 4
  %48 = load i32, i32* @RELSEG_SIZE, align 4
  %49 = mul nsw i32 %47, %48
  %50 = icmp slt i32 %46, %49
  %51 = zext i1 %50 to i32
  %52 = call i32 @Assert(i32 %51)
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i8*, i8** %8, align 8
  %57 = load i32, i32* @BLCKSZ, align 4
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* @WAIT_EVENT_DATA_FILE_READ, align 4
  %60 = call i32 @FileRead(i32 %55, i8* %56, i32 %57, i32 %58, i32 %59)
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* %7, align 4
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* @BLCKSZ, align 4
  %84 = call i32 @TRACE_POSTGRESQL_SMGR_MD_READ_DONE(i32 %61, i32 %62, i32 %67, i32 %72, i32 %77, i32 %81, i32 %82, i32 %83)
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* @BLCKSZ, align 4
  %87 = icmp ne i32 %85, %86
  br i1 %87, label %88, label %125

88:                                               ; preds = %4
  %89 = load i32, i32* %10, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %101

91:                                               ; preds = %88
  %92 = load i32, i32* @ERROR, align 4
  %93 = call i32 (...) @errcode_for_file_access()
  %94 = load i32, i32* %7, align 4
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @FilePathName(i32 %97)
  %99 = call i32 (i8*, i32, i32, ...) @errmsg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %94, i32 %98)
  %100 = call i32 @ereport(i32 %92, i32 %99)
  br label %101

101:                                              ; preds = %91, %88
  %102 = load i64, i64* @zero_damaged_pages, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %107, label %104

104:                                              ; preds = %101
  %105 = load i64, i64* @InRecovery, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %104, %101
  %108 = load i8*, i8** %8, align 8
  %109 = load i32, i32* @BLCKSZ, align 4
  %110 = call i32 @MemSet(i8* %108, i32 0, i32 %109)
  br label %124

111:                                              ; preds = %104
  %112 = load i32, i32* @ERROR, align 4
  %113 = load i32, i32* @ERRCODE_DATA_CORRUPTED, align 4
  %114 = call i32 @errcode(i32 %113)
  %115 = load i32, i32* %7, align 4
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @FilePathName(i32 %118)
  %120 = load i32, i32* %10, align 4
  %121 = load i32, i32* @BLCKSZ, align 4
  %122 = call i32 (i8*, i32, i32, ...) @errmsg(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i32 %115, i32 %119, i32 %120, i32 %121)
  %123 = call i32 @ereport(i32 %112, i32 %122)
  br label %124

124:                                              ; preds = %111, %107
  br label %125

125:                                              ; preds = %124, %4
  ret void
}

declare dso_local i32 @TRACE_POSTGRESQL_SMGR_MD_READ_START(i32, i32, i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_11__* @_mdfd_getseg(%struct.TYPE_10__*, i32, i32, i32, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @FileRead(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @TRACE_POSTGRESQL_SMGR_MD_READ_DONE(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode_for_file_access(...) #1

declare dso_local i32 @errmsg(i8*, i32, i32, ...) #1

declare dso_local i32 @FilePathName(i32) #1

declare dso_local i32 @MemSet(i8*, i32, i32) #1

declare dso_local i32 @errcode(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
