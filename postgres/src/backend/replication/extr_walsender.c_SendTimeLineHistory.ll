; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/extr_walsender.c_SendTimeLineHistory.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/extr_walsender.c_SendTimeLineHistory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i8* }

@MAXFNAMELEN = common dso_local global i32 0, align 4
@MAXPGPATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"filename\00", align 1
@TEXTOID = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"content\00", align 1
@BYTEAOID = common dso_local global i64 0, align 8
@O_RDONLY = common dso_local global i32 0, align 4
@PG_BINARY = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"could not open file \22%s\22: %m\00", align 1
@SEEK_END = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"could not seek to end of file \22%s\22: %m\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [45 x i8] c"could not seek to beginning of file \22%s\22: %m\00", align 1
@WAIT_EVENT_WALSENDER_TIMELINE_HISTORY_READ = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"could not read file \22%s\22: %m\00", align 1
@ERRCODE_DATA_CORRUPTED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [41 x i8] c"could not read file \22%s\22: read %d of %zu\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"could not close file \22%s\22: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*)* @SendTimeLineHistory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SendTimeLineHistory(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_5__, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %13 = load i32, i32* @MAXFNAMELEN, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %4, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %5, align 8
  %17 = load i32, i32* @MAXPGPATH, align 4
  %18 = zext i32 %17 to i64
  %19 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %6, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @TLHistoryFileName(i8* %16, i32 %22)
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @TLHistoryFilePath(i8* %19, i32 %26)
  %28 = call i32 @pq_beginmessage(i32* %3, i8 signext 84)
  %29 = call i32 @pq_sendint16(i32* %3, i32 2)
  %30 = call i32 @pq_sendstring(i32* %3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %31 = call i32 @pq_sendint32(i32* %3, i64 0)
  %32 = call i32 @pq_sendint16(i32* %3, i32 0)
  %33 = load i64, i64* @TEXTOID, align 8
  %34 = call i32 @pq_sendint32(i32* %3, i64 %33)
  %35 = call i32 @pq_sendint16(i32* %3, i32 -1)
  %36 = call i32 @pq_sendint32(i32* %3, i64 0)
  %37 = call i32 @pq_sendint16(i32* %3, i32 0)
  %38 = call i32 @pq_sendstring(i32* %3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %39 = call i32 @pq_sendint32(i32* %3, i64 0)
  %40 = call i32 @pq_sendint16(i32* %3, i32 0)
  %41 = load i64, i64* @BYTEAOID, align 8
  %42 = call i32 @pq_sendint32(i32* %3, i64 %41)
  %43 = call i32 @pq_sendint16(i32* %3, i32 -1)
  %44 = call i32 @pq_sendint32(i32* %3, i64 0)
  %45 = call i32 @pq_sendint16(i32* %3, i32 0)
  %46 = call i32 @pq_endmessage(i32* %3)
  %47 = call i32 @pq_beginmessage(i32* %3, i8 signext 68)
  %48 = call i32 @pq_sendint16(i32* %3, i32 2)
  %49 = call i32 @strlen(i8* %16)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = call i32 @pq_sendint32(i32* %3, i64 %51)
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @pq_sendbytes(i32* %3, i8* %16, i32 %53)
  %55 = load i32, i32* @O_RDONLY, align 4
  %56 = load i32, i32* @PG_BINARY, align 4
  %57 = or i32 %55, %56
  %58 = call i32 @OpenTransientFile(i8* %19, i32 %57)
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %1
  %62 = load i32, i32* @ERROR, align 4
  %63 = call i32 (...) @errcode_for_file_access()
  %64 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %19)
  %65 = call i32 @ereport(i32 %62, i32 %64)
  br label %66

66:                                               ; preds = %61, %1
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @SEEK_END, align 4
  %69 = call i64 @lseek(i32 %67, i32 0, i32 %68)
  store i64 %69, i64* %8, align 8
  %70 = load i64, i64* %8, align 8
  %71 = icmp slt i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %66
  %73 = load i32, i32* @ERROR, align 4
  %74 = call i32 (...) @errcode_for_file_access()
  %75 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i8* %19)
  %76 = call i32 @ereport(i32 %73, i32 %75)
  br label %77

77:                                               ; preds = %72, %66
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* @SEEK_SET, align 4
  %80 = call i64 @lseek(i32 %78, i32 0, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %77
  %83 = load i32, i32* @ERROR, align 4
  %84 = call i32 (...) @errcode_for_file_access()
  %85 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i8* %19)
  %86 = call i32 @ereport(i32 %83, i32 %85)
  br label %87

87:                                               ; preds = %82, %77
  %88 = load i64, i64* %8, align 8
  %89 = call i32 @pq_sendint32(i32* %3, i64 %88)
  %90 = load i64, i64* %8, align 8
  store i64 %90, i64* %9, align 8
  br label %91

91:                                               ; preds = %122, %87
  %92 = load i64, i64* %9, align 8
  %93 = icmp sgt i64 %92, 0
  br i1 %93, label %94, label %131

94:                                               ; preds = %91
  %95 = load i32, i32* @WAIT_EVENT_WALSENDER_TIMELINE_HISTORY_READ, align 4
  %96 = call i32 @pgstat_report_wait_start(i32 %95)
  %97 = load i32, i32* %7, align 4
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %99 = load i8*, i8** %98, align 8
  %100 = call i32 @read(i32 %97, i8* %99, i32 8)
  store i32 %100, i32* %12, align 4
  %101 = call i32 (...) @pgstat_report_wait_end()
  %102 = load i32, i32* %12, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %94
  %105 = load i32, i32* @ERROR, align 4
  %106 = call i32 (...) @errcode_for_file_access()
  %107 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i8* %19)
  %108 = call i32 @ereport(i32 %105, i32 %107)
  br label %122

109:                                              ; preds = %94
  %110 = load i32, i32* %12, align 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %121

112:                                              ; preds = %109
  %113 = load i32, i32* @ERROR, align 4
  %114 = load i32, i32* @ERRCODE_DATA_CORRUPTED, align 4
  %115 = call i32 @errcode(i32 %114)
  %116 = load i32, i32* %12, align 4
  %117 = load i64, i64* %9, align 8
  %118 = trunc i64 %117 to i32
  %119 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i8* %19, i32 %116, i32 %118)
  %120 = call i32 @ereport(i32 %113, i32 %119)
  br label %121

121:                                              ; preds = %112, %109
  br label %122

122:                                              ; preds = %121, %104
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %124 = load i8*, i8** %123, align 8
  %125 = load i32, i32* %12, align 4
  %126 = call i32 @pq_sendbytes(i32* %3, i8* %124, i32 %125)
  %127 = load i32, i32* %12, align 4
  %128 = sext i32 %127 to i64
  %129 = load i64, i64* %9, align 8
  %130 = sub nsw i64 %129, %128
  store i64 %130, i64* %9, align 8
  br label %91

131:                                              ; preds = %91
  %132 = load i32, i32* %7, align 4
  %133 = call i64 @CloseTransientFile(i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %140

135:                                              ; preds = %131
  %136 = load i32, i32* @ERROR, align 4
  %137 = call i32 (...) @errcode_for_file_access()
  %138 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i8* %19)
  %139 = call i32 @ereport(i32 %136, i32 %138)
  br label %140

140:                                              ; preds = %135, %131
  %141 = call i32 @pq_endmessage(i32* %3)
  %142 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %142)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @TLHistoryFileName(i8*, i32) #2

declare dso_local i32 @TLHistoryFilePath(i8*, i32) #2

declare dso_local i32 @pq_beginmessage(i32*, i8 signext) #2

declare dso_local i32 @pq_sendint16(i32*, i32) #2

declare dso_local i32 @pq_sendstring(i32*, i8*) #2

declare dso_local i32 @pq_sendint32(i32*, i64) #2

declare dso_local i32 @pq_endmessage(i32*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @pq_sendbytes(i32*, i8*, i32) #2

declare dso_local i32 @OpenTransientFile(i8*, i32) #2

declare dso_local i32 @ereport(i32, i32) #2

declare dso_local i32 @errcode_for_file_access(...) #2

declare dso_local i32 @errmsg(i8*, i8*, ...) #2

declare dso_local i64 @lseek(i32, i32, i32) #2

declare dso_local i32 @pgstat_report_wait_start(i32) #2

declare dso_local i32 @read(i32, i8*, i32) #2

declare dso_local i32 @pgstat_report_wait_end(...) #2

declare dso_local i32 @errcode(i32) #2

declare dso_local i64 @CloseTransientFile(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
