; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xlogreader.c_XLogReadRecord.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xlogreader.c_XLogReadRecord.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i64, i32 }
%struct.TYPE_21__ = type { i8*, i32, i32, i32, i8*, i32, i8*, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_22__ = type { i32, i32 }

@InvalidXLogRecPtr = common dso_local global i32 0, align 4
@XLOG_BLCKSZ = common dso_local global i32 0, align 4
@SizeOfXLogRecord = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"invalid record offset at %X/%X\00", align 1
@XLP_FIRST_IS_CONTRECORD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"contrecord is requested by %X/%X\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"invalid record length at %X/%X: wanted %u, got %u\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"record length %u at %X/%X too long\00", align 1
@SizeOfXLogShortPHD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"there is no contrecord flag at %X/%X\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"invalid contrecord length %u at %X/%X\00", align 1
@RM_XLOG_ID = common dso_local global i64 0, align 8
@XLR_INFO_MASK = common dso_local global i32 0, align 4
@XLOG_SWITCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_20__* @XLogReadRecord(%struct.TYPE_21__* %0, i32 %1, i8** %2) #0 {
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca %struct.TYPE_22__*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  store i32 0, i32* %10, align 4
  %21 = load i8**, i8*** %7, align 8
  store i8* null, i8** %21, align 8
  %22 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  store i8 0, i8* %25, align 1
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %27 = call i32 @ResetDecoder(%struct.TYPE_21__* %26)
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @InvalidXLogRecPtr, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %3
  %32 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %6, align 4
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @InvalidXLogRecPtr, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %31
  store i32 1, i32* %10, align 4
  br label %41

41:                                               ; preds = %40, %31
  br label %46

42:                                               ; preds = %3
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @XRecOffIsValid(i32 %43)
  %45 = call i32 @Assert(i32 %44)
  store i32 1, i32* %10, align 4
  br label %46

46:                                               ; preds = %42, %41
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @XLOG_BLCKSZ, align 4
  %53 = srem i32 %51, %52
  %54 = sub nsw i32 %50, %53
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @XLOG_BLCKSZ, align 4
  %57 = srem i32 %55, %56
  store i32 %57, i32* %13, align 4
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %13, align 4
  %61 = load i32, i32* @SizeOfXLogRecord, align 4
  %62 = add nsw i32 %60, %61
  %63 = load i32, i32* @XLOG_BLCKSZ, align 4
  %64 = call i32 @Min(i32 %62, i32 %63)
  %65 = call i32 @ReadPageInternal(%struct.TYPE_21__* %58, i32 %59, i32 %64)
  store i32 %65, i32* %16, align 4
  %66 = load i32, i32* %16, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %46
  br label %460

69:                                               ; preds = %46
  %70 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %70, i32 0, i32 4
  %72 = load i8*, i8** %71, align 8
  %73 = bitcast i8* %72 to %struct.TYPE_22__*
  %74 = call i32 @XLogPageHeaderSize(%struct.TYPE_22__* %73)
  store i32 %74, i32* %14, align 4
  %75 = load i32, i32* %13, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %69
  %78 = load i32, i32* %14, align 4
  %79 = load i32, i32* %6, align 4
  %80 = add nsw i32 %79, %78
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* %14, align 4
  store i32 %81, i32* %13, align 4
  br label %93

82:                                               ; preds = %69
  %83 = load i32, i32* %13, align 4
  %84 = load i32, i32* %14, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %92

86:                                               ; preds = %82
  %87 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %88 = load i32, i32* %6, align 4
  %89 = ashr i32 %88, 32
  %90 = load i32, i32* %6, align 4
  %91 = call i32 (%struct.TYPE_21__*, i8*, i32, i32, ...) @report_invalid_record(%struct.TYPE_21__* %87, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %89, i32 %90)
  br label %460

92:                                               ; preds = %82
  br label %93

93:                                               ; preds = %92, %77
  %94 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %94, i32 0, i32 4
  %96 = load i8*, i8** %95, align 8
  %97 = bitcast i8* %96 to %struct.TYPE_22__*
  %98 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @XLP_FIRST_IS_CONTRECORD, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %113

103:                                              ; preds = %93
  %104 = load i32, i32* %13, align 4
  %105 = load i32, i32* %14, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %113

107:                                              ; preds = %103
  %108 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %109 = load i32, i32* %6, align 4
  %110 = ashr i32 %109, 32
  %111 = load i32, i32* %6, align 4
  %112 = call i32 (%struct.TYPE_21__*, i8*, i32, i32, ...) @report_invalid_record(%struct.TYPE_21__* %108, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %110, i32 %111)
  br label %460

113:                                              ; preds = %103, %93
  %114 = load i32, i32* %14, align 4
  %115 = load i32, i32* %16, align 4
  %116 = icmp sle i32 %114, %115
  %117 = zext i1 %116 to i32
  %118 = call i32 @Assert(i32 %117)
  %119 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %119, i32 0, i32 4
  %121 = load i8*, i8** %120, align 8
  %122 = load i32, i32* %6, align 4
  %123 = load i32, i32* @XLOG_BLCKSZ, align 4
  %124 = srem i32 %122, %123
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8, i8* %121, i64 %125
  %127 = bitcast i8* %126 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %127, %struct.TYPE_20__** %8, align 8
  %128 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  store i32 %130, i32* %12, align 4
  %131 = load i32, i32* %13, align 4
  %132 = load i32, i32* @XLOG_BLCKSZ, align 4
  %133 = load i32, i32* @SizeOfXLogRecord, align 4
  %134 = sub nsw i32 %132, %133
  %135 = icmp sle i32 %131, %134
  br i1 %135, label %136, label %148

136:                                              ; preds = %113
  %137 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %138 = load i32, i32* %6, align 4
  %139 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %143 = load i32, i32* %10, align 4
  %144 = call i32 @ValidXLogRecordHeader(%struct.TYPE_21__* %137, i32 %138, i32 %141, %struct.TYPE_20__* %142, i32 %143)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %147, label %146

146:                                              ; preds = %136
  br label %460

147:                                              ; preds = %136
  store i32 1, i32* %15, align 4
  br label %161

148:                                              ; preds = %113
  %149 = load i32, i32* %12, align 4
  %150 = load i32, i32* @SizeOfXLogRecord, align 4
  %151 = icmp slt i32 %149, %150
  br i1 %151, label %152, label %160

152:                                              ; preds = %148
  %153 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %154 = load i32, i32* %6, align 4
  %155 = ashr i32 %154, 32
  %156 = load i32, i32* %6, align 4
  %157 = load i32, i32* @SizeOfXLogRecord, align 4
  %158 = load i32, i32* %12, align 4
  %159 = call i32 (%struct.TYPE_21__*, i8*, i32, i32, ...) @report_invalid_record(%struct.TYPE_21__* %153, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 %155, i32 %156, i32 %157, i32 %158)
  br label %460

160:                                              ; preds = %148
  store i32 0, i32* %15, align 4
  br label %161

161:                                              ; preds = %160, %147
  %162 = load i32, i32* @XLOG_BLCKSZ, align 4
  %163 = load i32, i32* %6, align 4
  %164 = load i32, i32* @XLOG_BLCKSZ, align 4
  %165 = srem i32 %163, %164
  %166 = sub nsw i32 %162, %165
  store i32 %166, i32* %11, align 4
  %167 = load i32, i32* %12, align 4
  %168 = load i32, i32* %11, align 4
  %169 = icmp sgt i32 %167, %168
  br i1 %169, label %170, label %385

170:                                              ; preds = %161
  %171 = load i32, i32* %12, align 4
  %172 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %172, i32 0, i32 5
  %174 = load i32, i32* %173, align 8
  %175 = icmp sgt i32 %171, %174
  br i1 %175, label %176, label %188

176:                                              ; preds = %170
  %177 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %178 = load i32, i32* %12, align 4
  %179 = call i32 @allocate_recordbuf(%struct.TYPE_21__* %177, i32 %178)
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %188, label %181

181:                                              ; preds = %176
  %182 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %183 = load i32, i32* %12, align 4
  %184 = load i32, i32* %6, align 4
  %185 = ashr i32 %184, 32
  %186 = load i32, i32* %6, align 4
  %187 = call i32 (%struct.TYPE_21__*, i8*, i32, i32, ...) @report_invalid_record(%struct.TYPE_21__* %182, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %183, i32 %185, i32 %186)
  br label %460

188:                                              ; preds = %176, %170
  %189 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %189, i32 0, i32 6
  %191 = load i8*, i8** %190, align 8
  %192 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %192, i32 0, i32 4
  %194 = load i8*, i8** %193, align 8
  %195 = load i32, i32* %6, align 4
  %196 = load i32, i32* @XLOG_BLCKSZ, align 4
  %197 = srem i32 %195, %196
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i8, i8* %194, i64 %198
  %200 = load i32, i32* %11, align 4
  %201 = call i32 @memcpy(i8* %191, i8* %199, i32 %200)
  %202 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %203 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %202, i32 0, i32 6
  %204 = load i8*, i8** %203, align 8
  %205 = load i32, i32* %11, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i8, i8* %204, i64 %206
  store i8* %207, i8** %19, align 8
  %208 = load i32, i32* %11, align 4
  store i32 %208, i32* %20, align 4
  br label %209

209:                                              ; preds = %349, %188
  %210 = load i32, i32* @XLOG_BLCKSZ, align 4
  %211 = load i32, i32* %9, align 4
  %212 = add nsw i32 %211, %210
  store i32 %212, i32* %9, align 4
  %213 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %214 = load i32, i32* %9, align 4
  %215 = load i32, i32* %12, align 4
  %216 = load i32, i32* %20, align 4
  %217 = sub nsw i32 %215, %216
  %218 = load i32, i32* @SizeOfXLogShortPHD, align 4
  %219 = add nsw i32 %217, %218
  %220 = load i32, i32* @XLOG_BLCKSZ, align 4
  %221 = call i32 @Min(i32 %219, i32 %220)
  %222 = call i32 @ReadPageInternal(%struct.TYPE_21__* %213, i32 %214, i32 %221)
  store i32 %222, i32* %16, align 4
  %223 = load i32, i32* %16, align 4
  %224 = icmp slt i32 %223, 0
  br i1 %224, label %225, label %226

225:                                              ; preds = %209
  br label %460

226:                                              ; preds = %209
  %227 = load i32, i32* @SizeOfXLogShortPHD, align 4
  %228 = load i32, i32* %16, align 4
  %229 = icmp sle i32 %227, %228
  %230 = zext i1 %229 to i32
  %231 = call i32 @Assert(i32 %230)
  %232 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %233 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %232, i32 0, i32 4
  %234 = load i8*, i8** %233, align 8
  %235 = bitcast i8* %234 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %235, %struct.TYPE_22__** %18, align 8
  %236 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %237 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = load i32, i32* @XLP_FIRST_IS_CONTRECORD, align 4
  %240 = and i32 %238, %239
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %248, label %242

242:                                              ; preds = %226
  %243 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %244 = load i32, i32* %6, align 4
  %245 = ashr i32 %244, 32
  %246 = load i32, i32* %6, align 4
  %247 = call i32 (%struct.TYPE_21__*, i8*, i32, i32, ...) @report_invalid_record(%struct.TYPE_21__* %243, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %245, i32 %246)
  br label %460

248:                                              ; preds = %226
  %249 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %250 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 4
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %261, label %253

253:                                              ; preds = %248
  %254 = load i32, i32* %12, align 4
  %255 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %256 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 4
  %258 = load i32, i32* %20, align 4
  %259 = add nsw i32 %257, %258
  %260 = icmp ne i32 %254, %259
  br i1 %260, label %261, label %270

261:                                              ; preds = %253, %248
  %262 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %263 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %264 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 4
  %266 = load i32, i32* %6, align 4
  %267 = ashr i32 %266, 32
  %268 = load i32, i32* %6, align 4
  %269 = call i32 (%struct.TYPE_21__*, i8*, i32, i32, ...) @report_invalid_record(%struct.TYPE_21__* %262, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %265, i32 %267, i32 %268)
  br label %460

270:                                              ; preds = %253
  %271 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %272 = call i32 @XLogPageHeaderSize(%struct.TYPE_22__* %271)
  store i32 %272, i32* %14, align 4
  %273 = load i32, i32* %16, align 4
  %274 = load i32, i32* %14, align 4
  %275 = icmp slt i32 %273, %274
  br i1 %275, label %276, label %281

276:                                              ; preds = %270
  %277 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %278 = load i32, i32* %9, align 4
  %279 = load i32, i32* %14, align 4
  %280 = call i32 @ReadPageInternal(%struct.TYPE_21__* %277, i32 %278, i32 %279)
  store i32 %280, i32* %16, align 4
  br label %281

281:                                              ; preds = %276, %270
  %282 = load i32, i32* %14, align 4
  %283 = load i32, i32* %16, align 4
  %284 = icmp sle i32 %282, %283
  %285 = zext i1 %284 to i32
  %286 = call i32 @Assert(i32 %285)
  %287 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %288 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %287, i32 0, i32 4
  %289 = load i8*, i8** %288, align 8
  %290 = load i32, i32* %14, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds i8, i8* %289, i64 %291
  store i8* %292, i8** %17, align 8
  %293 = load i32, i32* @XLOG_BLCKSZ, align 4
  %294 = load i32, i32* %14, align 4
  %295 = sub nsw i32 %293, %294
  store i32 %295, i32* %11, align 4
  %296 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %297 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %296, i32 0, i32 1
  %298 = load i32, i32* %297, align 4
  %299 = load i32, i32* %11, align 4
  %300 = icmp slt i32 %298, %299
  br i1 %300, label %301, label %305

301:                                              ; preds = %281
  %302 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %303 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %302, i32 0, i32 1
  %304 = load i32, i32* %303, align 4
  store i32 %304, i32* %11, align 4
  br label %305

305:                                              ; preds = %301, %281
  %306 = load i32, i32* %16, align 4
  %307 = load i32, i32* %14, align 4
  %308 = load i32, i32* %11, align 4
  %309 = add nsw i32 %307, %308
  %310 = icmp slt i32 %306, %309
  br i1 %310, label %311, label %318

311:                                              ; preds = %305
  %312 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %313 = load i32, i32* %9, align 4
  %314 = load i32, i32* %14, align 4
  %315 = load i32, i32* %11, align 4
  %316 = add nsw i32 %314, %315
  %317 = call i32 @ReadPageInternal(%struct.TYPE_21__* %312, i32 %313, i32 %316)
  store i32 %317, i32* %16, align 4
  br label %318

318:                                              ; preds = %311, %305
  %319 = load i8*, i8** %19, align 8
  %320 = load i8*, i8** %17, align 8
  %321 = load i32, i32* %11, align 4
  %322 = call i32 @memcpy(i8* %319, i8* %320, i32 %321)
  %323 = load i32, i32* %11, align 4
  %324 = load i8*, i8** %19, align 8
  %325 = sext i32 %323 to i64
  %326 = getelementptr inbounds i8, i8* %324, i64 %325
  store i8* %326, i8** %19, align 8
  %327 = load i32, i32* %11, align 4
  %328 = load i32, i32* %20, align 4
  %329 = add nsw i32 %328, %327
  store i32 %329, i32* %20, align 4
  %330 = load i32, i32* %15, align 4
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %348, label %332

332:                                              ; preds = %318
  %333 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %334 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %333, i32 0, i32 6
  %335 = load i8*, i8** %334, align 8
  %336 = bitcast i8* %335 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %336, %struct.TYPE_20__** %8, align 8
  %337 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %338 = load i32, i32* %6, align 4
  %339 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %340 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %339, i32 0, i32 2
  %341 = load i32, i32* %340, align 4
  %342 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %343 = load i32, i32* %10, align 4
  %344 = call i32 @ValidXLogRecordHeader(%struct.TYPE_21__* %337, i32 %338, i32 %341, %struct.TYPE_20__* %342, i32 %343)
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %347, label %346

346:                                              ; preds = %332
  br label %460

347:                                              ; preds = %332
  store i32 1, i32* %15, align 4
  br label %348

348:                                              ; preds = %347, %318
  br label %349

349:                                              ; preds = %348
  %350 = load i32, i32* %20, align 4
  %351 = load i32, i32* %12, align 4
  %352 = icmp slt i32 %350, %351
  br i1 %352, label %209, label %353

353:                                              ; preds = %349
  %354 = load i32, i32* %15, align 4
  %355 = call i32 @Assert(i32 %354)
  %356 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %357 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %356, i32 0, i32 6
  %358 = load i8*, i8** %357, align 8
  %359 = bitcast i8* %358 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %359, %struct.TYPE_20__** %8, align 8
  %360 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %361 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %362 = load i32, i32* %6, align 4
  %363 = call i32 @ValidXLogRecord(%struct.TYPE_21__* %360, %struct.TYPE_20__* %361, i32 %362)
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %366, label %365

365:                                              ; preds = %353
  br label %460

366:                                              ; preds = %353
  %367 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %368 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %367, i32 0, i32 4
  %369 = load i8*, i8** %368, align 8
  %370 = bitcast i8* %369 to %struct.TYPE_22__*
  %371 = call i32 @XLogPageHeaderSize(%struct.TYPE_22__* %370)
  store i32 %371, i32* %14, align 4
  %372 = load i32, i32* %6, align 4
  %373 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %374 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %373, i32 0, i32 2
  store i32 %372, i32* %374, align 4
  %375 = load i32, i32* %9, align 4
  %376 = load i32, i32* %14, align 4
  %377 = add nsw i32 %375, %376
  %378 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %379 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %378, i32 0, i32 1
  %380 = load i32, i32* %379, align 4
  %381 = call i32 @MAXALIGN(i32 %380)
  %382 = add nsw i32 %377, %381
  %383 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %384 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %383, i32 0, i32 1
  store i32 %382, i32* %384, align 8
  br label %414

385:                                              ; preds = %161
  %386 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %387 = load i32, i32* %9, align 4
  %388 = load i32, i32* %13, align 4
  %389 = load i32, i32* %12, align 4
  %390 = add nsw i32 %388, %389
  %391 = load i32, i32* @XLOG_BLCKSZ, align 4
  %392 = call i32 @Min(i32 %390, i32 %391)
  %393 = call i32 @ReadPageInternal(%struct.TYPE_21__* %386, i32 %387, i32 %392)
  store i32 %393, i32* %16, align 4
  %394 = load i32, i32* %16, align 4
  %395 = icmp slt i32 %394, 0
  br i1 %395, label %396, label %397

396:                                              ; preds = %385
  br label %460

397:                                              ; preds = %385
  %398 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %399 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %400 = load i32, i32* %6, align 4
  %401 = call i32 @ValidXLogRecord(%struct.TYPE_21__* %398, %struct.TYPE_20__* %399, i32 %400)
  %402 = icmp ne i32 %401, 0
  br i1 %402, label %404, label %403

403:                                              ; preds = %397
  br label %460

404:                                              ; preds = %397
  %405 = load i32, i32* %6, align 4
  %406 = load i32, i32* %12, align 4
  %407 = call i32 @MAXALIGN(i32 %406)
  %408 = add nsw i32 %405, %407
  %409 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %410 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %409, i32 0, i32 1
  store i32 %408, i32* %410, align 8
  %411 = load i32, i32* %6, align 4
  %412 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %413 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %412, i32 0, i32 2
  store i32 %411, i32* %413, align 4
  br label %414

414:                                              ; preds = %404, %366
  %415 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %416 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %415, i32 0, i32 1
  %417 = load i64, i64* %416, align 8
  %418 = load i64, i64* @RM_XLOG_ID, align 8
  %419 = icmp eq i64 %417, %418
  br i1 %419, label %420, label %451

420:                                              ; preds = %414
  %421 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %422 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %421, i32 0, i32 2
  %423 = load i32, i32* %422, align 8
  %424 = load i32, i32* @XLR_INFO_MASK, align 4
  %425 = xor i32 %424, -1
  %426 = and i32 %423, %425
  %427 = load i32, i32* @XLOG_SWITCH, align 4
  %428 = icmp eq i32 %426, %427
  br i1 %428, label %429, label %451

429:                                              ; preds = %420
  %430 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %431 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %430, i32 0, i32 7
  %432 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %431, i32 0, i32 0
  %433 = load i32, i32* %432, align 8
  %434 = sub nsw i32 %433, 1
  %435 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %436 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %435, i32 0, i32 1
  %437 = load i32, i32* %436, align 8
  %438 = add nsw i32 %437, %434
  store i32 %438, i32* %436, align 8
  %439 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %440 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %439, i32 0, i32 1
  %441 = load i32, i32* %440, align 8
  %442 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %443 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %442, i32 0, i32 7
  %444 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %443, i32 0, i32 0
  %445 = load i32, i32* %444, align 8
  %446 = call i32 @XLogSegmentOffset(i32 %441, i32 %445)
  %447 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %448 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %447, i32 0, i32 1
  %449 = load i32, i32* %448, align 8
  %450 = sub nsw i32 %449, %446
  store i32 %450, i32* %448, align 8
  br label %451

451:                                              ; preds = %429, %420, %414
  %452 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %453 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %454 = load i8**, i8*** %7, align 8
  %455 = call i64 @DecodeXLogRecord(%struct.TYPE_21__* %452, %struct.TYPE_20__* %453, i8** %454)
  %456 = icmp ne i64 %455, 0
  br i1 %456, label %457, label %459

457:                                              ; preds = %451
  %458 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  store %struct.TYPE_20__* %458, %struct.TYPE_20__** %4, align 8
  br label %476

459:                                              ; preds = %451
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %4, align 8
  br label %476

460:                                              ; preds = %403, %396, %365, %346, %261, %242, %225, %181, %152, %146, %107, %86, %68
  %461 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %462 = call i32 @XLogReaderInvalReadState(%struct.TYPE_21__* %461)
  %463 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %464 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %463, i32 0, i32 0
  %465 = load i8*, i8** %464, align 8
  %466 = getelementptr inbounds i8, i8* %465, i64 0
  %467 = load i8, i8* %466, align 1
  %468 = sext i8 %467 to i32
  %469 = icmp ne i32 %468, 0
  br i1 %469, label %470, label %475

470:                                              ; preds = %460
  %471 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %472 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %471, i32 0, i32 0
  %473 = load i8*, i8** %472, align 8
  %474 = load i8**, i8*** %7, align 8
  store i8* %473, i8** %474, align 8
  br label %475

475:                                              ; preds = %470, %460
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %4, align 8
  br label %476

476:                                              ; preds = %475, %459, %457
  %477 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  ret %struct.TYPE_20__* %477
}

declare dso_local i32 @ResetDecoder(%struct.TYPE_21__*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @XRecOffIsValid(i32) #1

declare dso_local i32 @ReadPageInternal(%struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @Min(i32, i32) #1

declare dso_local i32 @XLogPageHeaderSize(%struct.TYPE_22__*) #1

declare dso_local i32 @report_invalid_record(%struct.TYPE_21__*, i8*, i32, i32, ...) #1

declare dso_local i32 @ValidXLogRecordHeader(%struct.TYPE_21__*, i32, i32, %struct.TYPE_20__*, i32) #1

declare dso_local i32 @allocate_recordbuf(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @ValidXLogRecord(%struct.TYPE_21__*, %struct.TYPE_20__*, i32) #1

declare dso_local i32 @MAXALIGN(i32) #1

declare dso_local i32 @XLogSegmentOffset(i32, i32) #1

declare dso_local i64 @DecodeXLogRecord(%struct.TYPE_21__*, %struct.TYPE_20__*, i8**) #1

declare dso_local i32 @XLogReaderInvalReadState(%struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
