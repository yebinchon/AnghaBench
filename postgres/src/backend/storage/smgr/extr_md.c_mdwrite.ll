; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/smgr/extr_md.c_mdwrite.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/smgr/extr_md.c_mdwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_15__ = type { i32 }

@EXTENSION_FAIL = common dso_local global i32 0, align 4
@EXTENSION_CREATE_RECOVERY = common dso_local global i32 0, align 4
@BLCKSZ = common dso_local global i32 0, align 4
@RELSEG_SIZE = common dso_local global i32 0, align 4
@WAIT_EVENT_DATA_FILE_WRITE = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"could not write block %u in file \22%s\22: %m\00", align 1
@ERRCODE_DISK_FULL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [65 x i8] c"could not write block %u in file \22%s\22: wrote only %d of %d bytes\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Check free disk space.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mdwrite(%struct.TYPE_14__* %0, i32 %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @TRACE_POSTGRESQL_SMGR_MD_WRITE_START(i32 %14, i32 %15, i32 %20, i32 %25, i32 %30, i32 %34)
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* @EXTENSION_FAIL, align 4
  %41 = load i32, i32* @EXTENSION_CREATE_RECOVERY, align 4
  %42 = or i32 %40, %41
  %43 = call %struct.TYPE_15__* @_mdfd_getseg(%struct.TYPE_14__* %36, i32 %37, i32 %38, i32 %39, i32 %42)
  store %struct.TYPE_15__* %43, %struct.TYPE_15__** %13, align 8
  %44 = load i32, i32* @BLCKSZ, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @RELSEG_SIZE, align 4
  %47 = srem i32 %45, %46
  %48 = mul nsw i32 %44, %47
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* @BLCKSZ, align 4
  %51 = load i32, i32* @RELSEG_SIZE, align 4
  %52 = mul nsw i32 %50, %51
  %53 = icmp slt i32 %49, %52
  %54 = zext i1 %53 to i32
  %55 = call i32 @Assert(i32 %54)
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i8*, i8** %9, align 8
  %60 = load i32, i32* @BLCKSZ, align 4
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* @WAIT_EVENT_DATA_FILE_WRITE, align 4
  %63 = call i32 @FileWrite(i32 %58, i8* %59, i32 %60, i32 %61, i32 %62)
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* %8, align 4
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %12, align 4
  %86 = load i32, i32* @BLCKSZ, align 4
  %87 = call i32 @TRACE_POSTGRESQL_SMGR_MD_WRITE_DONE(i32 %64, i32 %65, i32 %70, i32 %75, i32 %80, i32 %84, i32 %85, i32 %86)
  %88 = load i32, i32* %12, align 4
  %89 = load i32, i32* @BLCKSZ, align 4
  %90 = icmp ne i32 %88, %89
  br i1 %90, label %91, label %118

91:                                               ; preds = %5
  %92 = load i32, i32* %12, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %104

94:                                               ; preds = %91
  %95 = load i32, i32* @ERROR, align 4
  %96 = call i32 (...) @errcode_for_file_access()
  %97 = load i32, i32* %8, align 4
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @FilePathName(i32 %100)
  %102 = call i32 (i8*, i32, i32, ...) @errmsg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %97, i32 %101)
  %103 = call i32 @ereport(i32 %95, i32 %102)
  br label %104

104:                                              ; preds = %94, %91
  %105 = load i32, i32* @ERROR, align 4
  %106 = load i32, i32* @ERRCODE_DISK_FULL, align 4
  %107 = call i32 @errcode(i32 %106)
  %108 = load i32, i32* %8, align 4
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @FilePathName(i32 %111)
  %113 = load i32, i32* %12, align 4
  %114 = load i32, i32* @BLCKSZ, align 4
  %115 = call i32 (i8*, i32, i32, ...) @errmsg(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i32 %108, i32 %112, i32 %113, i32 %114)
  %116 = call i32 @errhint(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %117 = call i32 @ereport(i32 %105, i32 %116)
  br label %118

118:                                              ; preds = %104, %5
  %119 = load i32, i32* %10, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %130, label %121

121:                                              ; preds = %118
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %123 = call i32 @SmgrIsTemp(%struct.TYPE_14__* %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %130, label %125

125:                                              ; preds = %121
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %127 = load i32, i32* %7, align 4
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %129 = call i32 @register_dirty_segment(%struct.TYPE_14__* %126, i32 %127, %struct.TYPE_15__* %128)
  br label %130

130:                                              ; preds = %125, %121, %118
  ret void
}

declare dso_local i32 @TRACE_POSTGRESQL_SMGR_MD_WRITE_START(i32, i32, i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_15__* @_mdfd_getseg(%struct.TYPE_14__*, i32, i32, i32, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @FileWrite(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @TRACE_POSTGRESQL_SMGR_MD_WRITE_DONE(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode_for_file_access(...) #1

declare dso_local i32 @errmsg(i8*, i32, i32, ...) #1

declare dso_local i32 @FilePathName(i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errhint(i8*) #1

declare dso_local i32 @SmgrIsTemp(%struct.TYPE_14__*) #1

declare dso_local i32 @register_dirty_segment(%struct.TYPE_14__*, i32, %struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
