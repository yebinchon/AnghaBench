; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_waldump/extr_pg_waldump.c_XLogDumpXLogRead.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_waldump/extr_pg_waldump.c_XLogDumpXLogRead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@XLogDumpXLogRead.sendFile = internal global i32 -1, align 4
@XLogDumpXLogRead.sendSegNo = internal global i32 0, align 4
@XLogDumpXLogRead.sendOff = internal global i64 0, align 8
@WalSegSz = common dso_local global i64 0, align 8
@MAXFNAMELEN = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"could not find file \22%s\22: %s\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@MAXPGPATH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"could not seek in log file %s to offset %u: %s\00", align 1
@.str.2 = private unnamed_addr constant [58 x i8] c"could not read from log file %s, offset %u, length %d: %s\00", align 1
@.str.3 = private unnamed_addr constant [59 x i8] c"could not read from log file %s, offset %u: read %d of %zu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, i8*, i64)* @XLogDumpXLogRead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @XLogDumpXLogRead(i8* %0, i32 %1, i32 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i8*, align 8
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %28 = load i8*, i8** %9, align 8
  store i8* %28, i8** %11, align 8
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %12, align 4
  %30 = load i64, i64* %10, align 8
  store i64 %30, i64* %13, align 8
  br label %31

31:                                               ; preds = %176, %5
  %32 = load i64, i64* %13, align 8
  %33 = icmp sgt i64 %32, 0
  br i1 %33, label %34, label %192

34:                                               ; preds = %31
  %35 = load i32, i32* %12, align 4
  %36 = load i64, i64* @WalSegSz, align 8
  %37 = call i64 @XLogSegmentOffset(i32 %35, i64 %36)
  store i64 %37, i64* %14, align 8
  %38 = load i32, i32* @XLogDumpXLogRead.sendFile, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %34
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* @XLogDumpXLogRead.sendSegNo, align 4
  %43 = load i64, i64* @WalSegSz, align 8
  %44 = call i32 @XLByteInSeg(i32 %41, i32 %42, i64 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %95, label %46

46:                                               ; preds = %40, %34
  %47 = load i32, i32* @MAXFNAMELEN, align 4
  %48 = zext i32 %47 to i64
  %49 = call i8* @llvm.stacksave()
  store i8* %49, i8** %17, align 8
  %50 = alloca i8, i64 %48, align 16
  store i64 %48, i64* %18, align 8
  %51 = load i32, i32* @XLogDumpXLogRead.sendFile, align 4
  %52 = icmp sge i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %46
  %54 = load i32, i32* @XLogDumpXLogRead.sendFile, align 4
  %55 = call i32 @close(i32 %54)
  br label %56

56:                                               ; preds = %53, %46
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* @XLogDumpXLogRead.sendSegNo, align 4
  %59 = load i64, i64* @WalSegSz, align 8
  %60 = call i32 @XLByteToSeg(i32 %57, i32 %58, i64 %59)
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @XLogDumpXLogRead.sendSegNo, align 4
  %63 = load i64, i64* @WalSegSz, align 8
  %64 = call i32 @XLogFileName(i8* %50, i32 %61, i32 %62, i64 %63)
  store i32 0, i32* %19, align 4
  br label %65

65:                                               ; preds = %83, %56
  %66 = load i32, i32* %19, align 4
  %67 = icmp slt i32 %66, 10
  br i1 %67, label %68, label %86

68:                                               ; preds = %65
  %69 = load i8*, i8** %6, align 8
  %70 = call i32 @open_file_in_directory(i8* %69, i8* %50)
  store i32 %70, i32* @XLogDumpXLogRead.sendFile, align 4
  %71 = load i32, i32* @XLogDumpXLogRead.sendFile, align 4
  %72 = icmp sge i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  br label %86

74:                                               ; preds = %68
  %75 = load i32, i32* @errno, align 4
  %76 = load i32, i32* @ENOENT, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %74
  %79 = load i32, i32* @errno, align 4
  store i32 %79, i32* %20, align 4
  %80 = call i32 @pg_usleep(i32 500000)
  %81 = load i32, i32* %20, align 4
  store i32 %81, i32* @errno, align 4
  br label %83

82:                                               ; preds = %74
  br label %86

83:                                               ; preds = %78
  %84 = load i32, i32* %19, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %19, align 4
  br label %65

86:                                               ; preds = %82, %73, %65
  %87 = load i32, i32* @XLogDumpXLogRead.sendFile, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %86
  %90 = load i32, i32* @errno, align 4
  %91 = call i64 @strerror(i32 %90)
  %92 = call i32 (i8*, i8*, i64, ...) @fatal_error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %50, i64 %91)
  br label %93

93:                                               ; preds = %89, %86
  store i64 0, i64* @XLogDumpXLogRead.sendOff, align 8
  %94 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %94)
  br label %95

95:                                               ; preds = %93, %40
  %96 = load i64, i64* @XLogDumpXLogRead.sendOff, align 8
  %97 = load i64, i64* %14, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %123

99:                                               ; preds = %95
  %100 = load i32, i32* @XLogDumpXLogRead.sendFile, align 4
  %101 = load i64, i64* %14, align 8
  %102 = trunc i64 %101 to i32
  %103 = load i32, i32* @SEEK_SET, align 4
  %104 = call i64 @lseek(i32 %100, i32 %102, i32 %103)
  %105 = icmp slt i64 %104, 0
  br i1 %105, label %106, label %121

106:                                              ; preds = %99
  %107 = load i32, i32* @errno, align 4
  store i32 %107, i32* %21, align 4
  %108 = load i32, i32* @MAXPGPATH, align 4
  %109 = zext i32 %108 to i64
  %110 = call i8* @llvm.stacksave()
  store i8* %110, i8** %22, align 8
  %111 = alloca i8, i64 %109, align 16
  store i64 %109, i64* %23, align 8
  %112 = load i32, i32* %7, align 4
  %113 = load i32, i32* @XLogDumpXLogRead.sendSegNo, align 4
  %114 = load i64, i64* @WalSegSz, align 8
  %115 = call i32 @XLogFileName(i8* %111, i32 %112, i32 %113, i64 %114)
  %116 = load i64, i64* %14, align 8
  %117 = load i32, i32* %21, align 4
  %118 = call i64 @strerror(i32 %117)
  %119 = call i32 (i8*, i8*, i64, ...) @fatal_error(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i8* %111, i64 %116, i64 %118)
  %120 = load i8*, i8** %22, align 8
  call void @llvm.stackrestore(i8* %120)
  br label %121

121:                                              ; preds = %106, %99
  %122 = load i64, i64* %14, align 8
  store i64 %122, i64* @XLogDumpXLogRead.sendOff, align 8
  br label %123

123:                                              ; preds = %121, %95
  %124 = load i64, i64* %13, align 8
  %125 = load i64, i64* @WalSegSz, align 8
  %126 = load i64, i64* %14, align 8
  %127 = sub nsw i64 %125, %126
  %128 = icmp sgt i64 %124, %127
  br i1 %128, label %129, label %134

129:                                              ; preds = %123
  %130 = load i64, i64* @WalSegSz, align 8
  %131 = load i64, i64* %14, align 8
  %132 = sub nsw i64 %130, %131
  %133 = trunc i64 %132 to i32
  store i32 %133, i32* %15, align 4
  br label %137

134:                                              ; preds = %123
  %135 = load i64, i64* %13, align 8
  %136 = trunc i64 %135 to i32
  store i32 %136, i32* %15, align 4
  br label %137

137:                                              ; preds = %134, %129
  %138 = load i32, i32* @XLogDumpXLogRead.sendFile, align 4
  %139 = load i8*, i8** %11, align 8
  %140 = load i32, i32* %15, align 4
  %141 = call i32 @read(i32 %138, i8* %139, i32 %140)
  store i32 %141, i32* %16, align 4
  %142 = load i32, i32* %16, align 4
  %143 = icmp sle i32 %142, 0
  br i1 %143, label %144, label %176

144:                                              ; preds = %137
  %145 = load i32, i32* @errno, align 4
  store i32 %145, i32* %24, align 4
  %146 = load i32, i32* @MAXPGPATH, align 4
  %147 = zext i32 %146 to i64
  %148 = call i8* @llvm.stacksave()
  store i8* %148, i8** %25, align 8
  %149 = alloca i8, i64 %147, align 16
  store i64 %147, i64* %26, align 8
  %150 = load i32, i32* @errno, align 4
  store i32 %150, i32* %27, align 4
  %151 = load i32, i32* %7, align 4
  %152 = load i32, i32* @XLogDumpXLogRead.sendSegNo, align 4
  %153 = load i64, i64* @WalSegSz, align 8
  %154 = call i32 @XLogFileName(i8* %149, i32 %151, i32 %152, i64 %153)
  %155 = load i32, i32* %27, align 4
  store i32 %155, i32* @errno, align 4
  %156 = load i32, i32* %16, align 4
  %157 = icmp slt i32 %156, 0
  br i1 %157, label %158, label %164

158:                                              ; preds = %144
  %159 = load i64, i64* @XLogDumpXLogRead.sendOff, align 8
  %160 = load i32, i32* %15, align 4
  %161 = load i32, i32* %24, align 4
  %162 = call i64 @strerror(i32 %161)
  %163 = call i32 (i8*, i8*, i64, ...) @fatal_error(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i8* %149, i64 %159, i32 %160, i64 %162)
  br label %174

164:                                              ; preds = %144
  %165 = load i32, i32* %16, align 4
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %173

167:                                              ; preds = %164
  %168 = load i64, i64* @XLogDumpXLogRead.sendOff, align 8
  %169 = load i32, i32* %16, align 4
  %170 = load i32, i32* %15, align 4
  %171 = sext i32 %170 to i64
  %172 = call i32 (i8*, i8*, i64, ...) @fatal_error(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i64 0, i64 0), i8* %149, i64 %168, i32 %169, i64 %171)
  br label %173

173:                                              ; preds = %167, %164
  br label %174

174:                                              ; preds = %173, %158
  %175 = load i8*, i8** %25, align 8
  call void @llvm.stackrestore(i8* %175)
  br label %176

176:                                              ; preds = %174, %137
  %177 = load i32, i32* %16, align 4
  %178 = load i32, i32* %12, align 4
  %179 = add nsw i32 %178, %177
  store i32 %179, i32* %12, align 4
  %180 = load i32, i32* %16, align 4
  %181 = sext i32 %180 to i64
  %182 = load i64, i64* @XLogDumpXLogRead.sendOff, align 8
  %183 = add nsw i64 %182, %181
  store i64 %183, i64* @XLogDumpXLogRead.sendOff, align 8
  %184 = load i32, i32* %16, align 4
  %185 = sext i32 %184 to i64
  %186 = load i64, i64* %13, align 8
  %187 = sub nsw i64 %186, %185
  store i64 %187, i64* %13, align 8
  %188 = load i32, i32* %16, align 4
  %189 = load i8*, i8** %11, align 8
  %190 = sext i32 %188 to i64
  %191 = getelementptr inbounds i8, i8* %189, i64 %190
  store i8* %191, i8** %11, align 8
  br label %31

192:                                              ; preds = %31
  ret void
}

declare dso_local i64 @XLogSegmentOffset(i32, i64) #1

declare dso_local i32 @XLByteInSeg(i32, i32, i64) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @close(i32) #1

declare dso_local i32 @XLByteToSeg(i32, i32, i64) #1

declare dso_local i32 @XLogFileName(i8*, i32, i32, i64) #1

declare dso_local i32 @open_file_in_directory(i8*, i8*) #1

declare dso_local i32 @pg_usleep(i32) #1

declare dso_local i32 @fatal_error(i8*, i8*, i64, ...) #1

declare dso_local i64 @strerror(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i64 @lseek(i32, i32, i32) #1

declare dso_local i32 @read(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
