; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xlogutils.c_XLogRead.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xlogutils.c_XLogRead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@XLogRead.sendFile = internal global i32 -1, align 4
@XLogRead.sendSegNo = internal global i32 0, align 4
@XLogRead.sendTLI = internal global i64 0, align 8
@XLogRead.sendOff = internal global i32 0, align 4
@wal_segment_size = common dso_local global i32 0, align 4
@MAXPGPATH = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@PG_BINARY = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"requested WAL segment %s has already been removed\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"could not open file \22%s\22: %m\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"could not seek in log segment %s to offset %u: %m\00", align 1
@WAIT_EVENT_WAL_READ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [62 x i8] c"could not read from log segment %s, offset %u, length %lu: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i64, i32, i64)* @XLogRead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @XLogRead(i8* %0, i32 %1, i64 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @wal_segment_size, align 4
  %27 = icmp eq i32 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @Assert(i32 %28)
  %30 = load i8*, i8** %6, align 8
  store i8* %30, i8** %11, align 8
  %31 = load i32, i32* %9, align 4
  store i32 %31, i32* %12, align 4
  %32 = load i64, i64* %10, align 8
  store i64 %32, i64* %13, align 8
  br label %33

33:                                               ; preds = %167, %5
  %34 = load i64, i64* %13, align 8
  %35 = icmp sgt i64 %34, 0
  br i1 %35, label %36, label %182

36:                                               ; preds = %33
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @XLogSegmentOffset(i32 %37, i32 %38)
  store i32 %39, i32* %14, align 4
  %40 = load i32, i32* @XLogRead.sendFile, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %52, label %42

42:                                               ; preds = %36
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* @XLogRead.sendSegNo, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @XLByteInSeg(i32 %43, i32 %44, i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = load i64, i64* @XLogRead.sendTLI, align 8
  %50 = load i64, i64* %8, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %95

52:                                               ; preds = %48, %42, %36
  %53 = load i32, i32* @MAXPGPATH, align 4
  %54 = zext i32 %53 to i64
  %55 = call i8* @llvm.stacksave()
  store i8* %55, i8** %17, align 8
  %56 = alloca i8, i64 %54, align 16
  store i64 %54, i64* %18, align 8
  %57 = load i32, i32* @XLogRead.sendFile, align 4
  %58 = icmp sge i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %52
  %60 = load i32, i32* @XLogRead.sendFile, align 4
  %61 = call i32 @close(i32 %60)
  br label %62

62:                                               ; preds = %59, %52
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* @XLogRead.sendSegNo, align 4
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @XLByteToSeg(i32 %63, i32 %64, i32 %65)
  %67 = load i64, i64* %8, align 8
  %68 = load i32, i32* @XLogRead.sendSegNo, align 4
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @XLogFilePath(i8* %56, i64 %67, i32 %68, i32 %69)
  %71 = load i32, i32* @O_RDONLY, align 4
  %72 = load i32, i32* @PG_BINARY, align 4
  %73 = or i32 %71, %72
  %74 = call i32 @BasicOpenFile(i8* %56, i32 %73)
  store i32 %74, i32* @XLogRead.sendFile, align 4
  %75 = load i32, i32* @XLogRead.sendFile, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %92

77:                                               ; preds = %62
  %78 = load i32, i32* @errno, align 4
  %79 = load i32, i32* @ENOENT, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %86

81:                                               ; preds = %77
  %82 = load i32, i32* @ERROR, align 4
  %83 = call i32 (...) @errcode_for_file_access()
  %84 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i8* %56)
  %85 = call i32 @ereport(i32 %82, i32 %84)
  br label %91

86:                                               ; preds = %77
  %87 = load i32, i32* @ERROR, align 4
  %88 = call i32 (...) @errcode_for_file_access()
  %89 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %56)
  %90 = call i32 @ereport(i32 %87, i32 %89)
  br label %91

91:                                               ; preds = %86, %81
  br label %92

92:                                               ; preds = %91, %62
  store i32 0, i32* @XLogRead.sendOff, align 4
  %93 = load i64, i64* %8, align 8
  store i64 %93, i64* @XLogRead.sendTLI, align 8
  %94 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %94)
  br label %95

95:                                               ; preds = %92, %48
  %96 = load i32, i32* @XLogRead.sendOff, align 4
  %97 = load i32, i32* %14, align 4
  %98 = icmp ne i32 %96, %97
  br i1 %98, label %99, label %124

99:                                               ; preds = %95
  %100 = load i32, i32* @XLogRead.sendFile, align 4
  %101 = load i32, i32* %14, align 4
  %102 = load i32, i32* @SEEK_SET, align 4
  %103 = call i64 @lseek(i32 %100, i32 %101, i32 %102)
  %104 = icmp slt i64 %103, 0
  br i1 %104, label %105, label %122

105:                                              ; preds = %99
  %106 = load i32, i32* @MAXPGPATH, align 4
  %107 = zext i32 %106 to i64
  %108 = call i8* @llvm.stacksave()
  store i8* %108, i8** %19, align 8
  %109 = alloca i8, i64 %107, align 16
  store i64 %107, i64* %20, align 8
  %110 = load i32, i32* @errno, align 4
  store i32 %110, i32* %21, align 4
  %111 = load i64, i64* %8, align 8
  %112 = load i32, i32* @XLogRead.sendSegNo, align 4
  %113 = load i32, i32* %7, align 4
  %114 = call i32 @XLogFilePath(i8* %109, i64 %111, i32 %112, i32 %113)
  %115 = load i32, i32* %21, align 4
  store i32 %115, i32* @errno, align 4
  %116 = load i32, i32* @ERROR, align 4
  %117 = call i32 (...) @errcode_for_file_access()
  %118 = load i32, i32* %14, align 4
  %119 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i8* %109, i32 %118)
  %120 = call i32 @ereport(i32 %116, i32 %119)
  %121 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %121)
  br label %122

122:                                              ; preds = %105, %99
  %123 = load i32, i32* %14, align 4
  store i32 %123, i32* @XLogRead.sendOff, align 4
  br label %124

124:                                              ; preds = %122, %95
  %125 = load i64, i64* %13, align 8
  %126 = load i32, i32* %7, align 4
  %127 = load i32, i32* %14, align 4
  %128 = sub nsw i32 %126, %127
  %129 = sext i32 %128 to i64
  %130 = icmp sgt i64 %125, %129
  br i1 %130, label %131, label %135

131:                                              ; preds = %124
  %132 = load i32, i32* %7, align 4
  %133 = load i32, i32* %14, align 4
  %134 = sub nsw i32 %132, %133
  store i32 %134, i32* %15, align 4
  br label %138

135:                                              ; preds = %124
  %136 = load i64, i64* %13, align 8
  %137 = trunc i64 %136 to i32
  store i32 %137, i32* %15, align 4
  br label %138

138:                                              ; preds = %135, %131
  %139 = load i32, i32* @WAIT_EVENT_WAL_READ, align 4
  %140 = call i32 @pgstat_report_wait_start(i32 %139)
  %141 = load i32, i32* @XLogRead.sendFile, align 4
  %142 = load i8*, i8** %11, align 8
  %143 = load i32, i32* %15, align 4
  %144 = call i32 @read(i32 %141, i8* %142, i32 %143)
  store i32 %144, i32* %16, align 4
  %145 = call i32 (...) @pgstat_report_wait_end()
  %146 = load i32, i32* %16, align 4
  %147 = icmp sle i32 %146, 0
  br i1 %147, label %148, label %167

148:                                              ; preds = %138
  %149 = load i32, i32* @MAXPGPATH, align 4
  %150 = zext i32 %149 to i64
  %151 = call i8* @llvm.stacksave()
  store i8* %151, i8** %22, align 8
  %152 = alloca i8, i64 %150, align 16
  store i64 %150, i64* %23, align 8
  %153 = load i32, i32* @errno, align 4
  store i32 %153, i32* %24, align 4
  %154 = load i64, i64* %8, align 8
  %155 = load i32, i32* @XLogRead.sendSegNo, align 4
  %156 = load i32, i32* %7, align 4
  %157 = call i32 @XLogFilePath(i8* %152, i64 %154, i32 %155, i32 %156)
  %158 = load i32, i32* %24, align 4
  store i32 %158, i32* @errno, align 4
  %159 = load i32, i32* @ERROR, align 4
  %160 = call i32 (...) @errcode_for_file_access()
  %161 = load i32, i32* @XLogRead.sendOff, align 4
  %162 = load i32, i32* %15, align 4
  %163 = sext i32 %162 to i64
  %164 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.3, i64 0, i64 0), i8* %152, i32 %161, i64 %163)
  %165 = call i32 @ereport(i32 %159, i32 %164)
  %166 = load i8*, i8** %22, align 8
  call void @llvm.stackrestore(i8* %166)
  br label %167

167:                                              ; preds = %148, %138
  %168 = load i32, i32* %16, align 4
  %169 = load i32, i32* %12, align 4
  %170 = add nsw i32 %169, %168
  store i32 %170, i32* %12, align 4
  %171 = load i32, i32* %16, align 4
  %172 = load i32, i32* @XLogRead.sendOff, align 4
  %173 = add nsw i32 %172, %171
  store i32 %173, i32* @XLogRead.sendOff, align 4
  %174 = load i32, i32* %16, align 4
  %175 = sext i32 %174 to i64
  %176 = load i64, i64* %13, align 8
  %177 = sub nsw i64 %176, %175
  store i64 %177, i64* %13, align 8
  %178 = load i32, i32* %16, align 4
  %179 = load i8*, i8** %11, align 8
  %180 = sext i32 %178 to i64
  %181 = getelementptr inbounds i8, i8* %179, i64 %180
  store i8* %181, i8** %11, align 8
  br label %33

182:                                              ; preds = %33
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @XLogSegmentOffset(i32, i32) #1

declare dso_local i32 @XLByteInSeg(i32, i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @close(i32) #1

declare dso_local i32 @XLByteToSeg(i32, i32, i32) #1

declare dso_local i32 @XLogFilePath(i8*, i64, i32, i32) #1

declare dso_local i32 @BasicOpenFile(i8*, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode_for_file_access(...) #1

declare dso_local i32 @errmsg(i8*, i8*, ...) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i64 @lseek(i32, i32, i32) #1

declare dso_local i32 @pgstat_report_wait_start(i32) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @pgstat_report_wait_end(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
