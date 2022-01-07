; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/init/extr_miscinit.c_AddToDataDirLockFile.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/init/extr_miscinit.c_AddToDataDirLockFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BLCKSZ = common dso_local global i32 0, align 4
@DIRECTORY_LOCK_FILE = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@PG_BINARY = common dso_local global i32 0, align 4
@LOG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"could not open file \22%s\22: %m\00", align 1
@WAIT_EVENT_LOCK_FILE_ADDTODATADIR_READ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"could not read from file \22%s\22: %m\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@errno = common dso_local global i64 0, align 8
@WAIT_EVENT_LOCK_FILE_ADDTODATADIR_WRITE = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [33 x i8] c"could not write to file \22%s\22: %m\00", align 1
@WAIT_EVENT_LOCK_FILE_ADDTODATADIR_SYNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AddToDataDirLockFile(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %15 = load i32, i32* @BLCKSZ, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %10, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %11, align 8
  %19 = load i32, i32* @BLCKSZ, align 4
  %20 = zext i32 %19 to i64
  %21 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %12, align 8
  %22 = load i32, i32* @DIRECTORY_LOCK_FILE, align 4
  %23 = load i32, i32* @O_RDWR, align 4
  %24 = load i32, i32* @PG_BINARY, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @open(i32 %22, i32 %25, i32 0)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %2
  %30 = load i32, i32* @LOG, align 4
  %31 = call i32 (...) @errcode_for_file_access()
  %32 = load i32, i32* @DIRECTORY_LOCK_FILE, align 4
  %33 = call i32 @errmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = call i32 @ereport(i32 %30, i32 %33)
  store i32 1, i32* %13, align 4
  br label %184

35:                                               ; preds = %2
  %36 = load i32, i32* @WAIT_EVENT_LOCK_FILE_ADDTODATADIR_READ, align 4
  %37 = call i32 @pgstat_report_wait_start(i32 %36)
  %38 = load i32, i32* %5, align 4
  %39 = sub i64 %16, 1
  %40 = trunc i64 %39 to i32
  %41 = call i32 @read(i32 %38, i8* %18, i32 %40)
  store i32 %41, i32* %6, align 4
  %42 = call i32 (...) @pgstat_report_wait_end()
  %43 = load i32, i32* %6, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %35
  %46 = load i32, i32* @LOG, align 4
  %47 = call i32 (...) @errcode_for_file_access()
  %48 = load i32, i32* @DIRECTORY_LOCK_FILE, align 4
  %49 = call i32 @errmsg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = call i32 @ereport(i32 %46, i32 %49)
  %51 = load i32, i32* %5, align 4
  %52 = call i64 @close(i32 %51)
  store i32 1, i32* %13, align 4
  br label %184

53:                                               ; preds = %35
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %18, i64 %55
  store i8 0, i8* %56, align 1
  store i8* %18, i8** %8, align 8
  store i32 1, i32* %7, align 4
  br label %57

57:                                               ; preds = %70, %53
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %3, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %73

61:                                               ; preds = %57
  %62 = load i8*, i8** %8, align 8
  %63 = call i8* @strchr(i8* %62, i8 signext 10)
  store i8* %63, i8** %14, align 8
  %64 = load i8*, i8** %14, align 8
  %65 = icmp eq i8* %64, null
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  br label %73

67:                                               ; preds = %61
  %68 = load i8*, i8** %14, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 1
  store i8* %69, i8** %8, align 8
  br label %70

70:                                               ; preds = %67
  %71 = load i32, i32* %7, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %7, align 4
  br label %57

73:                                               ; preds = %66, %57
  %74 = load i8*, i8** %8, align 8
  %75 = ptrtoint i8* %74 to i64
  %76 = ptrtoint i8* %18 to i64
  %77 = sub i64 %75, %76
  %78 = trunc i64 %77 to i32
  %79 = call i32 @memcpy(i8* %21, i8* %18, i32 %78)
  %80 = load i8*, i8** %8, align 8
  %81 = ptrtoint i8* %80 to i64
  %82 = ptrtoint i8* %18 to i64
  %83 = sub i64 %81, %82
  %84 = getelementptr inbounds i8, i8* %21, i64 %83
  store i8* %84, i8** %9, align 8
  br label %85

85:                                               ; preds = %97, %73
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* %3, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %100

89:                                               ; preds = %85
  %90 = load i8*, i8** %9, align 8
  %91 = getelementptr inbounds i8, i8* %21, i64 %20
  %92 = icmp ult i8* %90, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %89
  %94 = load i8*, i8** %9, align 8
  %95 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %95, i8** %9, align 8
  store i8 10, i8* %94, align 1
  br label %96

96:                                               ; preds = %93, %89
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %7, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %7, align 4
  br label %85

100:                                              ; preds = %85
  %101 = load i8*, i8** %9, align 8
  %102 = getelementptr inbounds i8, i8* %21, i64 %20
  %103 = load i8*, i8** %9, align 8
  %104 = ptrtoint i8* %102 to i64
  %105 = ptrtoint i8* %103 to i64
  %106 = sub i64 %104, %105
  %107 = trunc i64 %106 to i32
  %108 = load i8*, i8** %4, align 8
  %109 = call i32 @snprintf(i8* %101, i32 %107, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %108)
  %110 = load i8*, i8** %9, align 8
  %111 = call i32 @strlen(i8* %110)
  %112 = load i8*, i8** %9, align 8
  %113 = sext i32 %111 to i64
  %114 = getelementptr inbounds i8, i8* %112, i64 %113
  store i8* %114, i8** %9, align 8
  %115 = load i8*, i8** %8, align 8
  %116 = call i8* @strchr(i8* %115, i8 signext 10)
  store i8* %116, i8** %8, align 8
  %117 = icmp ne i8* %116, null
  br i1 %117, label %118, label %130

118:                                              ; preds = %100
  %119 = load i8*, i8** %8, align 8
  %120 = getelementptr inbounds i8, i8* %119, i32 1
  store i8* %120, i8** %8, align 8
  %121 = load i8*, i8** %9, align 8
  %122 = getelementptr inbounds i8, i8* %21, i64 %20
  %123 = load i8*, i8** %9, align 8
  %124 = ptrtoint i8* %122 to i64
  %125 = ptrtoint i8* %123 to i64
  %126 = sub i64 %124, %125
  %127 = trunc i64 %126 to i32
  %128 = load i8*, i8** %8, align 8
  %129 = call i32 @snprintf(i8* %121, i32 %127, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %128)
  br label %130

130:                                              ; preds = %118, %100
  %131 = call i32 @strlen(i8* %21)
  store i32 %131, i32* %6, align 4
  store i64 0, i64* @errno, align 8
  %132 = load i32, i32* @WAIT_EVENT_LOCK_FILE_ADDTODATADIR_WRITE, align 4
  %133 = call i32 @pgstat_report_wait_start(i32 %132)
  %134 = load i32, i32* %5, align 4
  %135 = load i32, i32* @SEEK_SET, align 4
  %136 = call i64 @lseek(i32 %134, i32 0, i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %145, label %138

138:                                              ; preds = %130
  %139 = load i32, i32* %5, align 4
  %140 = load i32, i32* %6, align 4
  %141 = call i64 @write(i32 %139, i8* %21, i32 %140)
  %142 = trunc i64 %141 to i32
  %143 = load i32, i32* %6, align 4
  %144 = icmp ne i32 %142, %143
  br i1 %144, label %145, label %159

145:                                              ; preds = %138, %130
  %146 = call i32 (...) @pgstat_report_wait_end()
  %147 = load i64, i64* @errno, align 8
  %148 = icmp eq i64 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %145
  %150 = load i64, i64* @ENOSPC, align 8
  store i64 %150, i64* @errno, align 8
  br label %151

151:                                              ; preds = %149, %145
  %152 = load i32, i32* @LOG, align 4
  %153 = call i32 (...) @errcode_for_file_access()
  %154 = load i32, i32* @DIRECTORY_LOCK_FILE, align 4
  %155 = call i32 @errmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %154)
  %156 = call i32 @ereport(i32 %152, i32 %155)
  %157 = load i32, i32* %5, align 4
  %158 = call i64 @close(i32 %157)
  store i32 1, i32* %13, align 4
  br label %184

159:                                              ; preds = %138
  %160 = call i32 (...) @pgstat_report_wait_end()
  %161 = load i32, i32* @WAIT_EVENT_LOCK_FILE_ADDTODATADIR_SYNC, align 4
  %162 = call i32 @pgstat_report_wait_start(i32 %161)
  %163 = load i32, i32* %5, align 4
  %164 = call i64 @pg_fsync(i32 %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %172

166:                                              ; preds = %159
  %167 = load i32, i32* @LOG, align 4
  %168 = call i32 (...) @errcode_for_file_access()
  %169 = load i32, i32* @DIRECTORY_LOCK_FILE, align 4
  %170 = call i32 @errmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %169)
  %171 = call i32 @ereport(i32 %167, i32 %170)
  br label %172

172:                                              ; preds = %166, %159
  %173 = call i32 (...) @pgstat_report_wait_end()
  %174 = load i32, i32* %5, align 4
  %175 = call i64 @close(i32 %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %183

177:                                              ; preds = %172
  %178 = load i32, i32* @LOG, align 4
  %179 = call i32 (...) @errcode_for_file_access()
  %180 = load i32, i32* @DIRECTORY_LOCK_FILE, align 4
  %181 = call i32 @errmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %180)
  %182 = call i32 @ereport(i32 %178, i32 %181)
  br label %183

183:                                              ; preds = %177, %172
  store i32 0, i32* %13, align 4
  br label %184

184:                                              ; preds = %183, %151, %45, %29
  %185 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %185)
  %186 = load i32, i32* %13, align 4
  switch i32 %186, label %188 [
    i32 0, label %187
    i32 1, label %187
  ]

187:                                              ; preds = %184, %184
  ret void

188:                                              ; preds = %184
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @open(i32, i32, i32) #2

declare dso_local i32 @ereport(i32, i32) #2

declare dso_local i32 @errcode_for_file_access(...) #2

declare dso_local i32 @errmsg(i8*, i32) #2

declare dso_local i32 @pgstat_report_wait_start(i32) #2

declare dso_local i32 @read(i32, i8*, i32) #2

declare dso_local i32 @pgstat_report_wait_end(...) #2

declare dso_local i64 @close(i32) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i64 @lseek(i32, i32, i32) #2

declare dso_local i64 @write(i32, i8*, i32) #2

declare dso_local i64 @pg_fsync(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
