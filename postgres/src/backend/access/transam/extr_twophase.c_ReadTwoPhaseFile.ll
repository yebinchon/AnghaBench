; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_twophase.c_ReadTwoPhaseFile.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_twophase.c_ReadTwoPhaseFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }
%struct.stat = type { i32 }

@MAXPGPATH = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@PG_BINARY = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"could not open file \22%s\22: %m\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"could not stat file \22%s\22: %m\00", align 1
@MaxAllocSize = common dso_local global i32 0, align 4
@ERRCODE_DATA_CORRUPTED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"incorrect size of file \22%s\22: %zu byte\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"incorrect size of file \22%s\22: %zu bytes\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"incorrect alignment of CRC offset for file \22%s\22\00", align 1
@WAIT_EVENT_TWOPHASE_FILE_READ = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"could not read file \22%s\22: %m\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"could not read file \22%s\22: read %d of %zu\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"could not close file \22%s\22: %m\00", align 1
@TWOPHASE_MAGIC = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [41 x i8] c"invalid magic number stored in file \22%s\22\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"invalid size stored in file \22%s\22\00", align 1
@.str.10 = private unnamed_addr constant [65 x i8] c"calculated CRC checksum does not match value stored in file \22%s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i32)* @ReadTwoPhaseFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ReadTwoPhaseFile(i32 %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_2__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.stat, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %17 = load i32, i32* @MAXPGPATH, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %6, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %7, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @TwoPhaseFilePath(i8* %20, i32 %21)
  %23 = load i32, i32* @O_RDONLY, align 4
  %24 = load i32, i32* @PG_BINARY, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @OpenTransientFile(i8* %20, i32 %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %2
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = load i64, i64* @errno, align 8
  %34 = load i64, i64* @ENOENT, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store i8* null, i8** %3, align 8
  store i32 1, i32* %16, align 4
  br label %188

37:                                               ; preds = %32, %29
  %38 = load i32, i32* @ERROR, align 4
  %39 = call i32 (...) @errcode_for_file_access()
  %40 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %20)
  %41 = call i32 @ereport(i32 %38, i32 %40)
  br label %42

42:                                               ; preds = %37, %2
  %43 = load i32, i32* %10, align 4
  %44 = call i64 @fstat(i32 %43, %struct.stat* %11)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  %47 = load i32, i32* @ERROR, align 4
  %48 = call i32 (...) @errcode_for_file_access()
  %49 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %20)
  %50 = call i32 @ereport(i32 %47, i32 %49)
  br label %51

51:                                               ; preds = %46, %42
  %52 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = sext i32 %53 to i64
  %55 = call i32 @MAXALIGN(i32 16)
  %56 = call i32 @MAXALIGN(i32 4)
  %57 = add nsw i32 %55, %56
  %58 = sext i32 %57 to i64
  %59 = add i64 %58, 4
  %60 = icmp ult i64 %54, %59
  br i1 %60, label %66, label %61

61:                                               ; preds = %51
  %62 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @MaxAllocSize, align 4
  %65 = icmp sgt i32 %63, %64
  br i1 %65, label %66, label %76

66:                                               ; preds = %61, %51
  %67 = load i32, i32* @ERROR, align 4
  %68 = load i32, i32* @ERRCODE_DATA_CORRUPTED, align 4
  %69 = call i32 @errcode(i32 %68)
  %70 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @errmsg_plural(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %71, i8* %20, i32 %73)
  %75 = call i32 @ereport(i32 %67, i32 %74)
  br label %76

76:                                               ; preds = %66, %61
  %77 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = sext i32 %78 to i64
  %80 = sub i64 %79, 4
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %12, align 4
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* %12, align 4
  %84 = call i32 @MAXALIGN(i32 %83)
  %85 = icmp ne i32 %82, %84
  br i1 %85, label %86, label %92

86:                                               ; preds = %76
  %87 = load i32, i32* @ERROR, align 4
  %88 = load i32, i32* @ERRCODE_DATA_CORRUPTED, align 4
  %89 = call i32 @errcode(i32 %88)
  %90 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0), i8* %20)
  %91 = call i32 @ereport(i32 %87, i32 %90)
  br label %92

92:                                               ; preds = %86, %76
  %93 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i64 @palloc(i32 %94)
  %96 = inttoptr i64 %95 to i8*
  store i8* %96, i8** %8, align 8
  %97 = load i32, i32* @WAIT_EVENT_TWOPHASE_FILE_READ, align 4
  %98 = call i32 @pgstat_report_wait_start(i32 %97)
  %99 = load i32, i32* %10, align 4
  %100 = load i8*, i8** %8, align 8
  %101 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @read(i32 %99, i8* %100, i32 %102)
  store i32 %103, i32* %15, align 4
  %104 = load i32, i32* %15, align 4
  %105 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %104, %106
  br i1 %107, label %108, label %124

108:                                              ; preds = %92
  %109 = load i32, i32* %15, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %108
  %112 = load i32, i32* @ERROR, align 4
  %113 = call i32 (...) @errcode_for_file_access()
  %114 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i8* %20)
  %115 = call i32 @ereport(i32 %112, i32 %114)
  br label %123

116:                                              ; preds = %108
  %117 = load i32, i32* @ERROR, align 4
  %118 = load i32, i32* %15, align 4
  %119 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i8* %20, i32 %118, i32 %120)
  %122 = call i32 @ereport(i32 %117, i32 %121)
  br label %123

123:                                              ; preds = %116, %111
  br label %124

124:                                              ; preds = %123, %92
  %125 = call i32 (...) @pgstat_report_wait_end()
  %126 = load i32, i32* %10, align 4
  %127 = call i64 @CloseTransientFile(i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %124
  %130 = load i32, i32* @ERROR, align 4
  %131 = call i32 (...) @errcode_for_file_access()
  %132 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i8* %20)
  %133 = call i32 @ereport(i32 %130, i32 %132)
  br label %134

134:                                              ; preds = %129, %124
  %135 = load i8*, i8** %8, align 8
  %136 = bitcast i8* %135 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %136, %struct.TYPE_2__** %9, align 8
  %137 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @TWOPHASE_MAGIC, align 8
  %141 = icmp ne i64 %139, %140
  br i1 %141, label %142, label %148

142:                                              ; preds = %134
  %143 = load i32, i32* @ERROR, align 4
  %144 = load i32, i32* @ERRCODE_DATA_CORRUPTED, align 4
  %145 = call i32 @errcode(i32 %144)
  %146 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0), i8* %20)
  %147 = call i32 @ereport(i32 %143, i32 %146)
  br label %148

148:                                              ; preds = %142, %134
  %149 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = icmp ne i32 %151, %153
  br i1 %154, label %155, label %161

155:                                              ; preds = %148
  %156 = load i32, i32* @ERROR, align 4
  %157 = load i32, i32* @ERRCODE_DATA_CORRUPTED, align 4
  %158 = call i32 @errcode(i32 %157)
  %159 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), i8* %20)
  %160 = call i32 @ereport(i32 %156, i32 %159)
  br label %161

161:                                              ; preds = %155, %148
  %162 = load i32, i32* %13, align 4
  %163 = call i32 @INIT_CRC32C(i32 %162)
  %164 = load i32, i32* %13, align 4
  %165 = load i8*, i8** %8, align 8
  %166 = load i32, i32* %12, align 4
  %167 = call i32 @COMP_CRC32C(i32 %164, i8* %165, i32 %166)
  %168 = load i32, i32* %13, align 4
  %169 = call i32 @FIN_CRC32C(i32 %168)
  %170 = load i8*, i8** %8, align 8
  %171 = load i32, i32* %12, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i8, i8* %170, i64 %172
  %174 = bitcast i8* %173 to i32*
  %175 = load i32, i32* %174, align 4
  store i32 %175, i32* %14, align 4
  %176 = load i32, i32* %13, align 4
  %177 = load i32, i32* %14, align 4
  %178 = call i32 @EQ_CRC32C(i32 %176, i32 %177)
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %186, label %180

180:                                              ; preds = %161
  %181 = load i32, i32* @ERROR, align 4
  %182 = load i32, i32* @ERRCODE_DATA_CORRUPTED, align 4
  %183 = call i32 @errcode(i32 %182)
  %184 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.10, i64 0, i64 0), i8* %20)
  %185 = call i32 @ereport(i32 %181, i32 %184)
  br label %186

186:                                              ; preds = %180, %161
  %187 = load i8*, i8** %8, align 8
  store i8* %187, i8** %3, align 8
  store i32 1, i32* %16, align 4
  br label %188

188:                                              ; preds = %186, %36
  %189 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %189)
  %190 = load i8*, i8** %3, align 8
  ret i8* %190
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @TwoPhaseFilePath(i8*, i32) #2

declare dso_local i32 @OpenTransientFile(i8*, i32) #2

declare dso_local i32 @ereport(i32, i32) #2

declare dso_local i32 @errcode_for_file_access(...) #2

declare dso_local i32 @errmsg(i8*, i8*, ...) #2

declare dso_local i64 @fstat(i32, %struct.stat*) #2

declare dso_local i32 @MAXALIGN(i32) #2

declare dso_local i32 @errcode(i32) #2

declare dso_local i32 @errmsg_plural(i8*, i8*, i32, i8*, i32) #2

declare dso_local i64 @palloc(i32) #2

declare dso_local i32 @pgstat_report_wait_start(i32) #2

declare dso_local i32 @read(i32, i8*, i32) #2

declare dso_local i32 @pgstat_report_wait_end(...) #2

declare dso_local i64 @CloseTransientFile(i32) #2

declare dso_local i32 @INIT_CRC32C(i32) #2

declare dso_local i32 @COMP_CRC32C(i32, i8*, i32) #2

declare dso_local i32 @FIN_CRC32C(i32) #2

declare dso_local i32 @EQ_CRC32C(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
