; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_waldump/extr_pg_waldump.c_XLogDumpDisplayRecord.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_waldump/extr_pg_waldump.c_XLogDumpDisplayRecord.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i8*, i8* (i32)*, i32 (%struct.TYPE_27__*, %struct.TYPE_25__*)* }
%struct.TYPE_27__ = type { i8* }
%struct.TYPE_25__ = type { i32, i32, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i32, i32, i32, i32 }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_29__ = type { i32, i32, i32 }

@RmgrDescTable = common dso_local global %struct.TYPE_28__* null, align 8
@.str = private unnamed_addr constant [75 x i8] c"rmgr: %-11s len (rec/tot): %6u/%6u, tx: %10u, lsn: %X/%08X, prev %X/%08X, \00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"desc: UNKNOWN (%x) \00", align 1
@XLR_INFO_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"desc: %s \00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@MAIN_FORKNUM = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [42 x i8] c", blkref #%u: rel %u/%u/%u fork %s blk %u\00", align 1
@forkNames = common dso_local global i8** null, align 8
@.str.5 = private unnamed_addr constant [34 x i8] c", blkref #%u: rel %u/%u/%u blk %u\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c" FPW\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c" FPW for WAL verification\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"\09blkref #%u: rel %u/%u/%u fork %s blk %u\00", align 1
@BKPIMAGE_IS_COMPRESSED = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [62 x i8] c" (FPW%s); hole: offset: %u, length: %u, compression saved: %u\00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [22 x i8] c" for WAL verification\00", align 1
@BLCKSZ = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [39 x i8] c" (FPW%s); hole: offset: %u, length: %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_26__*, %struct.TYPE_25__*)* @XLogDumpDisplayRecord to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @XLogDumpDisplayRecord(%struct.TYPE_26__* %0, %struct.TYPE_25__* %1) #0 {
  %3 = alloca %struct.TYPE_26__*, align 8
  %4 = alloca %struct.TYPE_25__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_28__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_29__, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_27__, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %3, align 8
  store %struct.TYPE_25__* %1, %struct.TYPE_25__** %4, align 8
  %16 = load %struct.TYPE_28__*, %struct.TYPE_28__** @RmgrDescTable, align 8
  %17 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %18 = call i64 @XLogRecGetRmid(%struct.TYPE_25__* %17)
  %19 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %16, i64 %18
  store %struct.TYPE_28__* %19, %struct.TYPE_28__** %6, align 8
  %20 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %21 = call i32 @XLogRecGetInfo(%struct.TYPE_25__* %20)
  store i32 %21, i32* %13, align 4
  %22 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %23 = call i32 @XLogRecGetPrev(%struct.TYPE_25__* %22)
  store i32 %23, i32* %14, align 4
  %24 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %25 = call i32 @XLogDumpRecordLen(%struct.TYPE_25__* %24, i32* %7, i32* %8)
  %26 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %31 = call i32 @XLogRecGetTotalLen(%struct.TYPE_25__* %30)
  %32 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %33 = call i32 @XLogRecGetXid(%struct.TYPE_25__* %32)
  %34 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = ashr i32 %36, 32
  %38 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %14, align 4
  %42 = ashr i32 %41, 32
  %43 = load i32, i32* %14, align 4
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i8* %28, i32 %29, i32 %31, i32 %33, i32 %37, i32 %40, i32 %42, i32 %43)
  %45 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %45, i32 0, i32 1
  %47 = load i8* (i32)*, i8* (i32)** %46, align 8
  %48 = load i32, i32* %13, align 4
  %49 = call i8* %47(i32 %48)
  store i8* %49, i8** %5, align 8
  %50 = load i8*, i8** %5, align 8
  %51 = icmp eq i8* %50, null
  br i1 %51, label %52, label %58

52:                                               ; preds = %2
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* @XLR_INFO_MASK, align 4
  %55 = xor i32 %54, -1
  %56 = and i32 %53, %55
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  br label %61

58:                                               ; preds = %2
  %59 = load i8*, i8** %5, align 8
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %59)
  br label %61

61:                                               ; preds = %58, %52
  %62 = call i32 @initStringInfo(%struct.TYPE_27__* %15)
  %63 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %63, i32 0, i32 2
  %65 = load i32 (%struct.TYPE_27__*, %struct.TYPE_25__*)*, i32 (%struct.TYPE_27__*, %struct.TYPE_25__*)** %64, align 8
  %66 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %67 = call i32 %65(%struct.TYPE_27__* %15, %struct.TYPE_25__* %66)
  %68 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %15, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %69)
  %71 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %15, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 @pfree(i8* %72)
  %74 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %143, label %78

78:                                               ; preds = %61
  store i32 0, i32* %12, align 4
  br label %79

79:                                               ; preds = %138, %78
  %80 = load i32, i32* %12, align 4
  %81 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = icmp sle i32 %80, %83
  br i1 %84, label %85, label %141

85:                                               ; preds = %79
  %86 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %87 = load i32, i32* %12, align 4
  %88 = call i32 @XLogRecHasBlockRef(%struct.TYPE_25__* %86, i32 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %85
  br label %138

91:                                               ; preds = %85
  %92 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %93 = load i32, i32* %12, align 4
  %94 = call i32 @XLogRecGetBlockTag(%struct.TYPE_25__* %92, i32 %93, %struct.TYPE_29__* %9, i64* %10, i32* %11)
  %95 = load i64, i64* %10, align 8
  %96 = load i64, i64* @MAIN_FORKNUM, align 8
  %97 = icmp ne i64 %95, %96
  br i1 %97, label %98, label %112

98:                                               ; preds = %91
  %99 = load i32, i32* %12, align 4
  %100 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %9, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %9, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %9, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = load i8**, i8*** @forkNames, align 8
  %107 = load i64, i64* %10, align 8
  %108 = getelementptr inbounds i8*, i8** %106, i64 %107
  %109 = load i8*, i8** %108, align 8
  %110 = load i32, i32* %11, align 4
  %111 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 %99, i32 %101, i32 %103, i32 %105, i8* %109, i32 %110)
  br label %122

112:                                              ; preds = %91
  %113 = load i32, i32* %12, align 4
  %114 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %9, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %9, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %9, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %11, align 4
  %121 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %113, i32 %115, i32 %117, i32 %119, i32 %120)
  br label %122

122:                                              ; preds = %112, %98
  %123 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %124 = load i32, i32* %12, align 4
  %125 = call i64 @XLogRecHasBlockImage(%struct.TYPE_25__* %123, i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %137

127:                                              ; preds = %122
  %128 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %129 = load i32, i32* %12, align 4
  %130 = call i64 @XLogRecBlockImageApply(%struct.TYPE_25__* %128, i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %127
  %133 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  br label %136

134:                                              ; preds = %127
  %135 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  br label %136

136:                                              ; preds = %134, %132
  br label %137

137:                                              ; preds = %136, %122
  br label %138

138:                                              ; preds = %137, %90
  %139 = load i32, i32* %12, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %12, align 4
  br label %79

141:                                              ; preds = %79
  %142 = call i32 @putchar(i8 signext 10)
  br label %264

143:                                              ; preds = %61
  %144 = call i32 @putchar(i8 signext 10)
  store i32 0, i32* %12, align 4
  br label %145

145:                                              ; preds = %260, %143
  %146 = load i32, i32* %12, align 4
  %147 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = icmp sle i32 %146, %149
  br i1 %150, label %151, label %263

151:                                              ; preds = %145
  %152 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %153 = load i32, i32* %12, align 4
  %154 = call i32 @XLogRecHasBlockRef(%struct.TYPE_25__* %152, i32 %153)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %157, label %156

156:                                              ; preds = %151
  br label %260

157:                                              ; preds = %151
  %158 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %159 = load i32, i32* %12, align 4
  %160 = call i32 @XLogRecGetBlockTag(%struct.TYPE_25__* %158, i32 %159, %struct.TYPE_29__* %9, i64* %10, i32* %11)
  %161 = load i32, i32* %12, align 4
  %162 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %9, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %9, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %9, i32 0, i32 2
  %167 = load i32, i32* %166, align 4
  %168 = load i8**, i8*** @forkNames, align 8
  %169 = load i64, i64* %10, align 8
  %170 = getelementptr inbounds i8*, i8** %168, i64 %169
  %171 = load i8*, i8** %170, align 8
  %172 = load i32, i32* %11, align 4
  %173 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0), i32 %161, i32 %163, i32 %165, i32 %167, i8* %171, i32 %172)
  %174 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %175 = load i32, i32* %12, align 4
  %176 = call i64 @XLogRecHasBlockImage(%struct.TYPE_25__* %174, i32 %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %258

178:                                              ; preds = %157
  %179 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %179, i32 0, i32 2
  %181 = load %struct.TYPE_24__*, %struct.TYPE_24__** %180, align 8
  %182 = load i32, i32* %12, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %181, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* @BKPIMAGE_IS_COMPRESSED, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %233

190:                                              ; preds = %178
  %191 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %192 = load i32, i32* %12, align 4
  %193 = call i64 @XLogRecBlockImageApply(%struct.TYPE_25__* %191, i32 %192)
  %194 = icmp ne i64 %193, 0
  %195 = zext i1 %194 to i64
  %196 = select i1 %194, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0)
  %197 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %198 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %197, i32 0, i32 2
  %199 = load %struct.TYPE_24__*, %struct.TYPE_24__** %198, align 8
  %200 = load i32, i32* %12, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %199, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %206 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %205, i32 0, i32 2
  %207 = load %struct.TYPE_24__*, %struct.TYPE_24__** %206, align 8
  %208 = load i32, i32* %12, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %207, i64 %209
  %211 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 4
  %213 = load i32, i32* @BLCKSZ, align 4
  %214 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %215 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %214, i32 0, i32 2
  %216 = load %struct.TYPE_24__*, %struct.TYPE_24__** %215, align 8
  %217 = load i32, i32* %12, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %216, i64 %218
  %220 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 4
  %222 = sub nsw i32 %213, %221
  %223 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %224 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %223, i32 0, i32 2
  %225 = load %struct.TYPE_24__*, %struct.TYPE_24__** %224, align 8
  %226 = load i32, i32* %12, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %225, i64 %227
  %229 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %228, i32 0, i32 3
  %230 = load i32, i32* %229, align 4
  %231 = sub nsw i32 %222, %230
  %232 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.9, i64 0, i64 0), i8* %196, i32 %204, i32 %212, i32 %231)
  br label %257

233:                                              ; preds = %178
  %234 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %235 = load i32, i32* %12, align 4
  %236 = call i64 @XLogRecBlockImageApply(%struct.TYPE_25__* %234, i32 %235)
  %237 = icmp ne i64 %236, 0
  %238 = zext i1 %237 to i64
  %239 = select i1 %237, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0)
  %240 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %241 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %240, i32 0, i32 2
  %242 = load %struct.TYPE_24__*, %struct.TYPE_24__** %241, align 8
  %243 = load i32, i32* %12, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %242, i64 %244
  %246 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %249 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %248, i32 0, i32 2
  %250 = load %struct.TYPE_24__*, %struct.TYPE_24__** %249, align 8
  %251 = load i32, i32* %12, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %250, i64 %252
  %254 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %253, i32 0, i32 2
  %255 = load i32, i32* %254, align 4
  %256 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.12, i64 0, i64 0), i8* %239, i32 %247, i32 %255)
  br label %257

257:                                              ; preds = %233, %190
  br label %258

258:                                              ; preds = %257, %157
  %259 = call i32 @putchar(i8 signext 10)
  br label %260

260:                                              ; preds = %258, %156
  %261 = load i32, i32* %12, align 4
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %12, align 4
  br label %145

263:                                              ; preds = %145
  br label %264

264:                                              ; preds = %263, %141
  ret void
}

declare dso_local i64 @XLogRecGetRmid(%struct.TYPE_25__*) #1

declare dso_local i32 @XLogRecGetInfo(%struct.TYPE_25__*) #1

declare dso_local i32 @XLogRecGetPrev(%struct.TYPE_25__*) #1

declare dso_local i32 @XLogDumpRecordLen(%struct.TYPE_25__*, i32*, i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @XLogRecGetTotalLen(%struct.TYPE_25__*) #1

declare dso_local i32 @XLogRecGetXid(%struct.TYPE_25__*) #1

declare dso_local i32 @initStringInfo(%struct.TYPE_27__*) #1

declare dso_local i32 @pfree(i8*) #1

declare dso_local i32 @XLogRecHasBlockRef(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @XLogRecGetBlockTag(%struct.TYPE_25__*, i32, %struct.TYPE_29__*, i64*, i32*) #1

declare dso_local i64 @XLogRecHasBlockImage(%struct.TYPE_25__*, i32) #1

declare dso_local i64 @XLogRecBlockImageApply(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @putchar(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
