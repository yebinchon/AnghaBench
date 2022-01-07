; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xlogreader.c_DecodeXLogRecord.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xlogreader.c_DecodeXLogRecord.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64, i64, i32, i64, i8*, i8*, %struct.TYPE_10__*, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i8*, i64, i8*, i64, i64 }
%struct.TYPE_8__ = type { i64 }

@InvalidRepOriginId = common dso_local global i64 0, align 8
@SizeOfXLogRecord = common dso_local global i64 0, align 8
@XLR_BLOCK_ID_DATA_SHORT = common dso_local global i64 0, align 8
@XLR_BLOCK_ID_DATA_LONG = common dso_local global i64 0, align 8
@XLR_BLOCK_ID_ORIGIN = common dso_local global i64 0, align 8
@XLR_MAX_BLOCK_ID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"out-of-order block_id %u at %X/%X\00", align 1
@BKPBLOCK_FORK_MASK = common dso_local global i64 0, align 8
@BKPBLOCK_HAS_IMAGE = common dso_local global i64 0, align 8
@BKPBLOCK_HAS_DATA = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [53 x i8] c"BKPBLOCK_HAS_DATA set, but no data included at %X/%X\00", align 1
@.str.2 = private unnamed_addr constant [58 x i8] c"BKPBLOCK_HAS_DATA not set, but data length is %u at %X/%X\00", align 1
@BKPIMAGE_APPLY = common dso_local global i32 0, align 4
@BKPIMAGE_IS_COMPRESSED = common dso_local global i32 0, align 4
@BKPIMAGE_HAS_HOLE = common dso_local global i32 0, align 4
@BLCKSZ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [83 x i8] c"BKPIMAGE_HAS_HOLE set, but hole offset %u length %u block image length %u at %X/%X\00", align 1
@.str.4 = private unnamed_addr constant [65 x i8] c"BKPIMAGE_HAS_HOLE not set, but hole offset %u length %u at %X/%X\00", align 1
@.str.5 = private unnamed_addr constant [63 x i8] c"BKPIMAGE_IS_COMPRESSED set, but block image length %u at %X/%X\00", align 1
@.str.6 = private unnamed_addr constant [96 x i8] c"neither BKPIMAGE_HAS_HOLE nor BKPIMAGE_IS_COMPRESSED set, but block image length is %u at %X/%X\00", align 1
@BKPBLOCK_SAME_REL = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [51 x i8] c"BKPBLOCK_SAME_REL set but no previous rel at %X/%X\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"invalid block_id %u at %X/%X\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"record with invalid length at %X/%X\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DecodeXLogRecord(%struct.TYPE_9__* %0, %struct.TYPE_8__* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_10__*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %6, align 8
  store i8** %2, i8*** %7, align 8
  store i64* null, i64** %11, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %19 = call i32 @ResetDecoder(%struct.TYPE_9__* %18)
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 8
  store %struct.TYPE_8__* %20, %struct.TYPE_8__** %22, align 8
  %23 = load i64, i64* @InvalidRepOriginId, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %27 = bitcast %struct.TYPE_8__* %26 to i8*
  store i8* %27, i8** %8, align 8
  %28 = load i64, i64* @SizeOfXLogRecord, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 %28
  store i8* %30, i8** %8, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @SizeOfXLogRecord, align 8
  %35 = sub nsw i64 %33, %34
  store i64 %35, i64* %9, align 8
  store i64 0, i64* %10, align 8
  br label %36

36:                                               ; preds = %609, %3
  %37 = load i64, i64* %9, align 8
  %38 = load i64, i64* %10, align 8
  %39 = icmp sgt i64 %37, %38
  br i1 %39, label %40, label %610

40:                                               ; preds = %36
  br label %41

41:                                               ; preds = %40
  %42 = load i64, i64* %9, align 8
  %43 = icmp ult i64 %42, 8
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  br label %783

45:                                               ; preds = %41
  %46 = bitcast i64* %12 to i8*
  %47 = load i8*, i8** %8, align 8
  %48 = call i32 @memcpy(i8* %46, i8* %47, i64 8)
  %49 = load i8*, i8** %8, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 8
  store i8* %50, i8** %8, align 8
  %51 = load i64, i64* %9, align 8
  %52 = sub i64 %51, 8
  store i64 %52, i64* %9, align 8
  br label %53

53:                                               ; preds = %45
  %54 = load i64, i64* %12, align 8
  %55 = load i64, i64* @XLR_BLOCK_ID_DATA_SHORT, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %77

57:                                               ; preds = %53
  br label %58

58:                                               ; preds = %57
  %59 = load i64, i64* %9, align 8
  %60 = icmp ult i64 %59, 8
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  br label %783

62:                                               ; preds = %58
  %63 = bitcast i64* %13 to i8*
  %64 = load i8*, i8** %8, align 8
  %65 = call i32 @memcpy(i8* %63, i8* %64, i64 8)
  %66 = load i8*, i8** %8, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 8
  store i8* %67, i8** %8, align 8
  %68 = load i64, i64* %9, align 8
  %69 = sub i64 %68, 8
  store i64 %69, i64* %9, align 8
  br label %70

70:                                               ; preds = %62
  %71 = load i64, i64* %13, align 8
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 1
  store i64 %71, i64* %73, align 8
  %74 = load i64, i64* %13, align 8
  %75 = load i64, i64* %10, align 8
  %76 = add nsw i64 %75, %74
  store i64 %76, i64* %10, align 8
  br label %610

77:                                               ; preds = %53
  %78 = load i64, i64* %12, align 8
  %79 = load i64, i64* @XLR_BLOCK_ID_DATA_LONG, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %101

81:                                               ; preds = %77
  br label %82

82:                                               ; preds = %81
  %83 = load i64, i64* %9, align 8
  %84 = icmp ult i64 %83, 8
  br i1 %84, label %85, label %86

85:                                               ; preds = %82
  br label %783

86:                                               ; preds = %82
  %87 = bitcast i64* %14 to i8*
  %88 = load i8*, i8** %8, align 8
  %89 = call i32 @memcpy(i8* %87, i8* %88, i64 8)
  %90 = load i8*, i8** %8, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 8
  store i8* %91, i8** %8, align 8
  %92 = load i64, i64* %9, align 8
  %93 = sub i64 %92, 8
  store i64 %93, i64* %9, align 8
  br label %94

94:                                               ; preds = %86
  %95 = load i64, i64* %14, align 8
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 1
  store i64 %95, i64* %97, align 8
  %98 = load i64, i64* %14, align 8
  %99 = load i64, i64* %10, align 8
  %100 = add nsw i64 %99, %98
  store i64 %100, i64* %10, align 8
  br label %610

101:                                              ; preds = %77
  %102 = load i64, i64* %12, align 8
  %103 = load i64, i64* @XLR_BLOCK_ID_ORIGIN, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %121

105:                                              ; preds = %101
  br label %106

106:                                              ; preds = %105
  %107 = load i64, i64* %9, align 8
  %108 = icmp ult i64 %107, 4
  br i1 %108, label %109, label %110

109:                                              ; preds = %106
  br label %783

110:                                              ; preds = %106
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 0
  %113 = bitcast i64* %112 to i8*
  %114 = load i8*, i8** %8, align 8
  %115 = call i32 @memcpy(i8* %113, i8* %114, i64 4)
  %116 = load i8*, i8** %8, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 4
  store i8* %117, i8** %8, align 8
  %118 = load i64, i64* %9, align 8
  %119 = sub i64 %118, 4
  store i64 %119, i64* %9, align 8
  br label %120

120:                                              ; preds = %110
  br label %607

121:                                              ; preds = %101
  %122 = load i64, i64* %12, align 8
  %123 = load i64, i64* @XLR_MAX_BLOCK_ID, align 8
  %124 = icmp sle i64 %122, %123
  br i1 %124, label %125, label %593

125:                                              ; preds = %121
  %126 = load i64, i64* %12, align 8
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = icmp sle i64 %126, %129
  br i1 %130, label %131, label %144

131:                                              ; preds = %125
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %133 = load i64, i64* %12, align 8
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 8
  %137 = ashr i32 %136, 32
  %138 = sext i32 %137 to i64
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 8
  %142 = sext i32 %141 to i64
  %143 = call i32 (%struct.TYPE_9__*, i8*, i64, i64, ...) @report_invalid_record(%struct.TYPE_9__* %132, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %133, i64 %138, i64 %142)
  br label %795

144:                                              ; preds = %125
  %145 = load i64, i64* %12, align 8
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 2
  store i64 %145, i64* %147, align 8
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 7
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %149, align 8
  %151 = load i64, i64* %12, align 8
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i64 %151
  store %struct.TYPE_10__* %152, %struct.TYPE_10__** %15, align 8
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 0
  store i32 1, i32* %154, align 8
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 1
  store i32 0, i32* %156, align 4
  br label %157

157:                                              ; preds = %144
  %158 = load i64, i64* %9, align 8
  %159 = icmp ult i64 %158, 8
  br i1 %159, label %160, label %161

160:                                              ; preds = %157
  br label %783

161:                                              ; preds = %157
  %162 = bitcast i64* %16 to i8*
  %163 = load i8*, i8** %8, align 8
  %164 = call i32 @memcpy(i8* %162, i8* %163, i64 8)
  %165 = load i8*, i8** %8, align 8
  %166 = getelementptr inbounds i8, i8* %165, i64 8
  store i8* %166, i8** %8, align 8
  %167 = load i64, i64* %9, align 8
  %168 = sub i64 %167, 8
  store i64 %168, i64* %9, align 8
  br label %169

169:                                              ; preds = %161
  %170 = load i64, i64* %16, align 8
  %171 = load i64, i64* @BKPBLOCK_FORK_MASK, align 8
  %172 = and i64 %170, %171
  %173 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 15
  store i64 %172, i64* %174, align 8
  %175 = load i64, i64* %16, align 8
  %176 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i32 0, i32 14
  store i64 %175, i64* %177, align 8
  %178 = load i64, i64* %16, align 8
  %179 = load i64, i64* @BKPBLOCK_HAS_IMAGE, align 8
  %180 = and i64 %178, %179
  %181 = icmp ne i64 %180, 0
  %182 = zext i1 %181 to i32
  %183 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %183, i32 0, i32 2
  store i32 %182, i32* %184, align 8
  %185 = load i64, i64* %16, align 8
  %186 = load i64, i64* @BKPBLOCK_HAS_DATA, align 8
  %187 = and i64 %185, %186
  %188 = icmp ne i64 %187, 0
  %189 = zext i1 %188 to i32
  %190 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %191 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %190, i32 0, i32 3
  store i32 %189, i32* %191, align 4
  br label %192

192:                                              ; preds = %169
  %193 = load i64, i64* %9, align 8
  %194 = icmp ult i64 %193, 4
  br i1 %194, label %195, label %196

195:                                              ; preds = %192
  br label %783

196:                                              ; preds = %192
  %197 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %198 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %197, i32 0, i32 4
  %199 = bitcast i64* %198 to i8*
  %200 = load i8*, i8** %8, align 8
  %201 = call i32 @memcpy(i8* %199, i8* %200, i64 4)
  %202 = load i8*, i8** %8, align 8
  %203 = getelementptr inbounds i8, i8* %202, i64 4
  store i8* %203, i8** %8, align 8
  %204 = load i64, i64* %9, align 8
  %205 = sub i64 %204, 4
  store i64 %205, i64* %9, align 8
  br label %206

206:                                              ; preds = %196
  %207 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %208 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %207, i32 0, i32 3
  %209 = load i32, i32* %208, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %228

211:                                              ; preds = %206
  %212 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %213 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %212, i32 0, i32 4
  %214 = load i64, i64* %213, align 8
  %215 = icmp eq i64 %214, 0
  br i1 %215, label %216, label %228

216:                                              ; preds = %211
  %217 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %218 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %219 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %218, i32 0, i32 3
  %220 = load i32, i32* %219, align 8
  %221 = ashr i32 %220, 32
  %222 = sext i32 %221 to i64
  %223 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %224 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %223, i32 0, i32 3
  %225 = load i32, i32* %224, align 8
  %226 = sext i32 %225 to i64
  %227 = call i32 (%struct.TYPE_9__*, i8*, i64, i64, ...) @report_invalid_record(%struct.TYPE_9__* %217, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i64 %222, i64 %226)
  br label %795

228:                                              ; preds = %211, %206
  %229 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %230 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %229, i32 0, i32 3
  %231 = load i32, i32* %230, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %255, label %233

233:                                              ; preds = %228
  %234 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %235 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %234, i32 0, i32 4
  %236 = load i64, i64* %235, align 8
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %255

238:                                              ; preds = %233
  %239 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %240 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %241 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %240, i32 0, i32 4
  %242 = load i64, i64* %241, align 8
  %243 = trunc i64 %242 to i32
  %244 = zext i32 %243 to i64
  %245 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %246 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %245, i32 0, i32 3
  %247 = load i32, i32* %246, align 8
  %248 = ashr i32 %247, 32
  %249 = sext i32 %248 to i64
  %250 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %251 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %250, i32 0, i32 3
  %252 = load i32, i32* %251, align 8
  %253 = sext i32 %252 to i64
  %254 = call i32 (%struct.TYPE_9__*, i8*, i64, i64, ...) @report_invalid_record(%struct.TYPE_9__* %239, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i64 %244, i64 %249, i64 %253)
  br label %795

255:                                              ; preds = %233, %228
  %256 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %257 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %256, i32 0, i32 4
  %258 = load i64, i64* %257, align 8
  %259 = load i64, i64* %10, align 8
  %260 = add nsw i64 %259, %258
  store i64 %260, i64* %10, align 8
  %261 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %262 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %261, i32 0, i32 2
  %263 = load i32, i32* %262, align 8
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %534

265:                                              ; preds = %255
  br label %266

266:                                              ; preds = %265
  %267 = load i64, i64* %9, align 8
  %268 = icmp ult i64 %267, 4
  br i1 %268, label %269, label %270

269:                                              ; preds = %266
  br label %783

270:                                              ; preds = %266
  %271 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %272 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %271, i32 0, i32 5
  %273 = bitcast i64* %272 to i8*
  %274 = load i8*, i8** %8, align 8
  %275 = call i32 @memcpy(i8* %273, i8* %274, i64 4)
  %276 = load i8*, i8** %8, align 8
  %277 = getelementptr inbounds i8, i8* %276, i64 4
  store i8* %277, i8** %8, align 8
  %278 = load i64, i64* %9, align 8
  %279 = sub i64 %278, 4
  store i64 %279, i64* %9, align 8
  br label %280

280:                                              ; preds = %270
  br label %281

281:                                              ; preds = %280
  %282 = load i64, i64* %9, align 8
  %283 = icmp ult i64 %282, 4
  br i1 %283, label %284, label %285

284:                                              ; preds = %281
  br label %783

285:                                              ; preds = %281
  %286 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %287 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %286, i32 0, i32 6
  %288 = bitcast i64* %287 to i8*
  %289 = load i8*, i8** %8, align 8
  %290 = call i32 @memcpy(i8* %288, i8* %289, i64 4)
  %291 = load i8*, i8** %8, align 8
  %292 = getelementptr inbounds i8, i8* %291, i64 4
  store i8* %292, i8** %8, align 8
  %293 = load i64, i64* %9, align 8
  %294 = sub i64 %293, 4
  store i64 %294, i64* %9, align 8
  br label %295

295:                                              ; preds = %285
  br label %296

296:                                              ; preds = %295
  %297 = load i64, i64* %9, align 8
  %298 = icmp ult i64 %297, 8
  br i1 %298, label %299, label %300

299:                                              ; preds = %296
  br label %783

300:                                              ; preds = %296
  %301 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %302 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %301, i32 0, i32 7
  %303 = bitcast i64* %302 to i8*
  %304 = load i8*, i8** %8, align 8
  %305 = call i32 @memcpy(i8* %303, i8* %304, i64 8)
  %306 = load i8*, i8** %8, align 8
  %307 = getelementptr inbounds i8, i8* %306, i64 8
  store i8* %307, i8** %8, align 8
  %308 = load i64, i64* %9, align 8
  %309 = sub i64 %308, 8
  store i64 %309, i64* %9, align 8
  br label %310

310:                                              ; preds = %300
  %311 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %312 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %311, i32 0, i32 7
  %313 = load i64, i64* %312, align 8
  %314 = load i32, i32* @BKPIMAGE_APPLY, align 4
  %315 = sext i32 %314 to i64
  %316 = and i64 %313, %315
  %317 = icmp ne i64 %316, 0
  %318 = zext i1 %317 to i32
  %319 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %320 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %319, i32 0, i32 1
  store i32 %318, i32* %320, align 4
  %321 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %322 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %321, i32 0, i32 7
  %323 = load i64, i64* %322, align 8
  %324 = load i32, i32* @BKPIMAGE_IS_COMPRESSED, align 4
  %325 = sext i32 %324 to i64
  %326 = and i64 %323, %325
  %327 = icmp ne i64 %326, 0
  br i1 %327, label %328, label %356

328:                                              ; preds = %310
  %329 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %330 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %329, i32 0, i32 7
  %331 = load i64, i64* %330, align 8
  %332 = load i32, i32* @BKPIMAGE_HAS_HOLE, align 4
  %333 = sext i32 %332 to i64
  %334 = and i64 %331, %333
  %335 = icmp ne i64 %334, 0
  br i1 %335, label %336, label %352

336:                                              ; preds = %328
  br label %337

337:                                              ; preds = %336
  %338 = load i64, i64* %9, align 8
  %339 = icmp ult i64 %338, 4
  br i1 %339, label %340, label %341

340:                                              ; preds = %337
  br label %783

341:                                              ; preds = %337
  %342 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %343 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %342, i32 0, i32 8
  %344 = bitcast i64* %343 to i8*
  %345 = load i8*, i8** %8, align 8
  %346 = call i32 @memcpy(i8* %344, i8* %345, i64 4)
  %347 = load i8*, i8** %8, align 8
  %348 = getelementptr inbounds i8, i8* %347, i64 4
  store i8* %348, i8** %8, align 8
  %349 = load i64, i64* %9, align 8
  %350 = sub i64 %349, 4
  store i64 %350, i64* %9, align 8
  br label %351

351:                                              ; preds = %341
  br label %355

352:                                              ; preds = %328
  %353 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %354 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %353, i32 0, i32 8
  store i64 0, i64* %354, align 8
  br label %355

355:                                              ; preds = %352, %351
  br label %365

356:                                              ; preds = %310
  %357 = load i32, i32* @BLCKSZ, align 4
  %358 = sext i32 %357 to i64
  %359 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %360 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %359, i32 0, i32 5
  %361 = load i64, i64* %360, align 8
  %362 = sub nsw i64 %358, %361
  %363 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %364 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %363, i32 0, i32 8
  store i64 %362, i64* %364, align 8
  br label %365

365:                                              ; preds = %356, %355
  %366 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %367 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %366, i32 0, i32 5
  %368 = load i64, i64* %367, align 8
  %369 = load i64, i64* %10, align 8
  %370 = add nsw i64 %369, %368
  store i64 %370, i64* %10, align 8
  %371 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %372 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %371, i32 0, i32 7
  %373 = load i64, i64* %372, align 8
  %374 = load i32, i32* @BKPIMAGE_HAS_HOLE, align 4
  %375 = sext i32 %374 to i64
  %376 = and i64 %373, %375
  %377 = icmp ne i64 %376, 0
  br i1 %377, label %378, label %421

378:                                              ; preds = %365
  %379 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %380 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %379, i32 0, i32 6
  %381 = load i64, i64* %380, align 8
  %382 = icmp eq i64 %381, 0
  br i1 %382, label %395, label %383

383:                                              ; preds = %378
  %384 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %385 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %384, i32 0, i32 8
  %386 = load i64, i64* %385, align 8
  %387 = icmp eq i64 %386, 0
  br i1 %387, label %395, label %388

388:                                              ; preds = %383
  %389 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %390 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %389, i32 0, i32 5
  %391 = load i64, i64* %390, align 8
  %392 = load i32, i32* @BLCKSZ, align 4
  %393 = sext i32 %392 to i64
  %394 = icmp eq i64 %391, %393
  br i1 %394, label %395, label %421

395:                                              ; preds = %388, %383, %378
  %396 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %397 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %398 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %397, i32 0, i32 6
  %399 = load i64, i64* %398, align 8
  %400 = trunc i64 %399 to i32
  %401 = zext i32 %400 to i64
  %402 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %403 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %402, i32 0, i32 8
  %404 = load i64, i64* %403, align 8
  %405 = trunc i64 %404 to i32
  %406 = zext i32 %405 to i64
  %407 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %408 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %407, i32 0, i32 5
  %409 = load i64, i64* %408, align 8
  %410 = trunc i64 %409 to i32
  %411 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %412 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %411, i32 0, i32 3
  %413 = load i32, i32* %412, align 8
  %414 = ashr i32 %413, 32
  %415 = sext i32 %414 to i64
  %416 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %417 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %416, i32 0, i32 3
  %418 = load i32, i32* %417, align 8
  %419 = sext i32 %418 to i64
  %420 = call i32 (%struct.TYPE_9__*, i8*, i64, i64, ...) @report_invalid_record(%struct.TYPE_9__* %396, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.3, i64 0, i64 0), i64 %401, i64 %406, i32 %410, i64 %415, i64 %419)
  br label %795

421:                                              ; preds = %388, %365
  %422 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %423 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %422, i32 0, i32 7
  %424 = load i64, i64* %423, align 8
  %425 = load i32, i32* @BKPIMAGE_HAS_HOLE, align 4
  %426 = sext i32 %425 to i64
  %427 = and i64 %424, %426
  %428 = icmp ne i64 %427, 0
  br i1 %428, label %461, label %429

429:                                              ; preds = %421
  %430 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %431 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %430, i32 0, i32 6
  %432 = load i64, i64* %431, align 8
  %433 = icmp ne i64 %432, 0
  br i1 %433, label %439, label %434

434:                                              ; preds = %429
  %435 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %436 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %435, i32 0, i32 8
  %437 = load i64, i64* %436, align 8
  %438 = icmp ne i64 %437, 0
  br i1 %438, label %439, label %461

439:                                              ; preds = %434, %429
  %440 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %441 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %442 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %441, i32 0, i32 6
  %443 = load i64, i64* %442, align 8
  %444 = trunc i64 %443 to i32
  %445 = zext i32 %444 to i64
  %446 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %447 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %446, i32 0, i32 8
  %448 = load i64, i64* %447, align 8
  %449 = trunc i64 %448 to i32
  %450 = zext i32 %449 to i64
  %451 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %452 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %451, i32 0, i32 3
  %453 = load i32, i32* %452, align 8
  %454 = ashr i32 %453, 32
  %455 = sext i32 %454 to i64
  %456 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %457 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %456, i32 0, i32 3
  %458 = load i32, i32* %457, align 8
  %459 = sext i32 %458 to i64
  %460 = call i32 (%struct.TYPE_9__*, i8*, i64, i64, ...) @report_invalid_record(%struct.TYPE_9__* %440, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.4, i64 0, i64 0), i64 %445, i64 %450, i64 %455, i64 %459)
  br label %795

461:                                              ; preds = %434, %421
  %462 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %463 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %462, i32 0, i32 7
  %464 = load i64, i64* %463, align 8
  %465 = load i32, i32* @BKPIMAGE_IS_COMPRESSED, align 4
  %466 = sext i32 %465 to i64
  %467 = and i64 %464, %466
  %468 = icmp ne i64 %467, 0
  br i1 %468, label %469, label %493

469:                                              ; preds = %461
  %470 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %471 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %470, i32 0, i32 5
  %472 = load i64, i64* %471, align 8
  %473 = load i32, i32* @BLCKSZ, align 4
  %474 = sext i32 %473 to i64
  %475 = icmp eq i64 %472, %474
  br i1 %475, label %476, label %493

476:                                              ; preds = %469
  %477 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %478 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %479 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %478, i32 0, i32 5
  %480 = load i64, i64* %479, align 8
  %481 = trunc i64 %480 to i32
  %482 = zext i32 %481 to i64
  %483 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %484 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %483, i32 0, i32 3
  %485 = load i32, i32* %484, align 8
  %486 = ashr i32 %485, 32
  %487 = sext i32 %486 to i64
  %488 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %489 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %488, i32 0, i32 3
  %490 = load i32, i32* %489, align 8
  %491 = sext i32 %490 to i64
  %492 = call i32 (%struct.TYPE_9__*, i8*, i64, i64, ...) @report_invalid_record(%struct.TYPE_9__* %477, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.5, i64 0, i64 0), i64 %482, i64 %487, i64 %491)
  br label %795

493:                                              ; preds = %469, %461
  %494 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %495 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %494, i32 0, i32 7
  %496 = load i64, i64* %495, align 8
  %497 = load i32, i32* @BKPIMAGE_HAS_HOLE, align 4
  %498 = sext i32 %497 to i64
  %499 = and i64 %496, %498
  %500 = icmp ne i64 %499, 0
  br i1 %500, label %533, label %501

501:                                              ; preds = %493
  %502 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %503 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %502, i32 0, i32 7
  %504 = load i64, i64* %503, align 8
  %505 = load i32, i32* @BKPIMAGE_IS_COMPRESSED, align 4
  %506 = sext i32 %505 to i64
  %507 = and i64 %504, %506
  %508 = icmp ne i64 %507, 0
  br i1 %508, label %533, label %509

509:                                              ; preds = %501
  %510 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %511 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %510, i32 0, i32 5
  %512 = load i64, i64* %511, align 8
  %513 = load i32, i32* @BLCKSZ, align 4
  %514 = sext i32 %513 to i64
  %515 = icmp ne i64 %512, %514
  br i1 %515, label %516, label %533

516:                                              ; preds = %509
  %517 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %518 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %519 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %518, i32 0, i32 4
  %520 = load i64, i64* %519, align 8
  %521 = trunc i64 %520 to i32
  %522 = zext i32 %521 to i64
  %523 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %524 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %523, i32 0, i32 3
  %525 = load i32, i32* %524, align 8
  %526 = ashr i32 %525, 32
  %527 = sext i32 %526 to i64
  %528 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %529 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %528, i32 0, i32 3
  %530 = load i32, i32* %529, align 8
  %531 = sext i32 %530 to i64
  %532 = call i32 (%struct.TYPE_9__*, i8*, i64, i64, ...) @report_invalid_record(%struct.TYPE_9__* %517, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.6, i64 0, i64 0), i64 %522, i64 %527, i64 %531)
  br label %795

533:                                              ; preds = %509, %501, %493
  br label %534

534:                                              ; preds = %533, %255
  %535 = load i64, i64* %16, align 8
  %536 = load i64, i64* @BKPBLOCK_SAME_REL, align 8
  %537 = and i64 %535, %536
  %538 = icmp ne i64 %537, 0
  br i1 %538, label %557, label %539

539:                                              ; preds = %534
  br label %540

540:                                              ; preds = %539
  %541 = load i64, i64* %9, align 8
  %542 = icmp ult i64 %541, 8
  br i1 %542, label %543, label %544

543:                                              ; preds = %540
  br label %783

544:                                              ; preds = %540
  %545 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %546 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %545, i32 0, i32 9
  %547 = bitcast i64* %546 to i8*
  %548 = load i8*, i8** %8, align 8
  %549 = call i32 @memcpy(i8* %547, i8* %548, i64 8)
  %550 = load i8*, i8** %8, align 8
  %551 = getelementptr inbounds i8, i8* %550, i64 8
  store i8* %551, i8** %8, align 8
  %552 = load i64, i64* %9, align 8
  %553 = sub i64 %552, 8
  store i64 %553, i64* %9, align 8
  br label %554

554:                                              ; preds = %544
  %555 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %556 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %555, i32 0, i32 9
  store i64* %556, i64** %11, align 8
  br label %577

557:                                              ; preds = %534
  %558 = load i64*, i64** %11, align 8
  %559 = icmp eq i64* %558, null
  br i1 %559, label %560, label %572

560:                                              ; preds = %557
  %561 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %562 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %563 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %562, i32 0, i32 3
  %564 = load i32, i32* %563, align 8
  %565 = ashr i32 %564, 32
  %566 = sext i32 %565 to i64
  %567 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %568 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %567, i32 0, i32 3
  %569 = load i32, i32* %568, align 8
  %570 = sext i32 %569 to i64
  %571 = call i32 (%struct.TYPE_9__*, i8*, i64, i64, ...) @report_invalid_record(%struct.TYPE_9__* %561, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.7, i64 0, i64 0), i64 %566, i64 %570)
  br label %795

572:                                              ; preds = %557
  %573 = load i64*, i64** %11, align 8
  %574 = load i64, i64* %573, align 8
  %575 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %576 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %575, i32 0, i32 9
  store i64 %574, i64* %576, align 8
  br label %577

577:                                              ; preds = %572, %554
  br label %578

578:                                              ; preds = %577
  %579 = load i64, i64* %9, align 8
  %580 = icmp ult i64 %579, 4
  br i1 %580, label %581, label %582

581:                                              ; preds = %578
  br label %783

582:                                              ; preds = %578
  %583 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %584 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %583, i32 0, i32 10
  %585 = bitcast i64* %584 to i8*
  %586 = load i8*, i8** %8, align 8
  %587 = call i32 @memcpy(i8* %585, i8* %586, i64 4)
  %588 = load i8*, i8** %8, align 8
  %589 = getelementptr inbounds i8, i8* %588, i64 4
  store i8* %589, i8** %8, align 8
  %590 = load i64, i64* %9, align 8
  %591 = sub i64 %590, 4
  store i64 %591, i64* %9, align 8
  br label %592

592:                                              ; preds = %582
  br label %606

593:                                              ; preds = %121
  %594 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %595 = load i64, i64* %12, align 8
  %596 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %597 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %596, i32 0, i32 3
  %598 = load i32, i32* %597, align 8
  %599 = ashr i32 %598, 32
  %600 = sext i32 %599 to i64
  %601 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %602 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %601, i32 0, i32 3
  %603 = load i32, i32* %602, align 8
  %604 = sext i32 %603 to i64
  %605 = call i32 (%struct.TYPE_9__*, i8*, i64, i64, ...) @report_invalid_record(%struct.TYPE_9__* %594, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i64 %595, i64 %600, i64 %604)
  br label %795

606:                                              ; preds = %592
  br label %607

607:                                              ; preds = %606, %120
  br label %608

608:                                              ; preds = %607
  br label %609

609:                                              ; preds = %608
  br label %36

610:                                              ; preds = %94, %70, %36
  %611 = load i64, i64* %9, align 8
  %612 = load i64, i64* %10, align 8
  %613 = icmp ne i64 %611, %612
  br i1 %613, label %614, label %615

614:                                              ; preds = %610
  br label %783

615:                                              ; preds = %610
  store i64 0, i64* %12, align 8
  br label %616

616:                                              ; preds = %720, %615
  %617 = load i64, i64* %12, align 8
  %618 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %619 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %618, i32 0, i32 2
  %620 = load i64, i64* %619, align 8
  %621 = icmp sle i64 %617, %620
  br i1 %621, label %622, label %723

622:                                              ; preds = %616
  %623 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %624 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %623, i32 0, i32 7
  %625 = load %struct.TYPE_10__*, %struct.TYPE_10__** %624, align 8
  %626 = load i64, i64* %12, align 8
  %627 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %625, i64 %626
  store %struct.TYPE_10__* %627, %struct.TYPE_10__** %17, align 8
  %628 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %629 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %628, i32 0, i32 0
  %630 = load i32, i32* %629, align 8
  %631 = icmp ne i32 %630, 0
  br i1 %631, label %633, label %632

632:                                              ; preds = %622
  br label %720

633:                                              ; preds = %622
  %634 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %635 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %634, i32 0, i32 2
  %636 = load i32, i32* %635, align 8
  %637 = icmp ne i32 %636, 0
  br i1 %637, label %644, label %638

638:                                              ; preds = %633
  %639 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %640 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %639, i32 0, i32 1
  %641 = load i32, i32* %640, align 4
  %642 = icmp ne i32 %641, 0
  %643 = xor i1 %642, true
  br label %644

644:                                              ; preds = %638, %633
  %645 = phi i1 [ true, %633 ], [ %643, %638 ]
  %646 = zext i1 %645 to i32
  %647 = call i32 @Assert(i32 %646)
  %648 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %649 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %648, i32 0, i32 2
  %650 = load i32, i32* %649, align 8
  %651 = icmp ne i32 %650, 0
  br i1 %651, label %652, label %661

652:                                              ; preds = %644
  %653 = load i8*, i8** %8, align 8
  %654 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %655 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %654, i32 0, i32 11
  store i8* %653, i8** %655, align 8
  %656 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %657 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %656, i32 0, i32 5
  %658 = load i64, i64* %657, align 8
  %659 = load i8*, i8** %8, align 8
  %660 = getelementptr inbounds i8, i8* %659, i64 %658
  store i8* %660, i8** %8, align 8
  br label %661

661:                                              ; preds = %652, %644
  %662 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %663 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %662, i32 0, i32 3
  %664 = load i32, i32* %663, align 4
  %665 = icmp ne i32 %664, 0
  br i1 %665, label %666, label %719

666:                                              ; preds = %661
  %667 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %668 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %667, i32 0, i32 13
  %669 = load i8*, i8** %668, align 8
  %670 = icmp ne i8* %669, null
  br i1 %670, label %671, label %679

671:                                              ; preds = %666
  %672 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %673 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %672, i32 0, i32 4
  %674 = load i64, i64* %673, align 8
  %675 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %676 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %675, i32 0, i32 12
  %677 = load i64, i64* %676, align 8
  %678 = icmp sgt i64 %674, %677
  br i1 %678, label %679, label %705

679:                                              ; preds = %671, %666
  %680 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %681 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %680, i32 0, i32 13
  %682 = load i8*, i8** %681, align 8
  %683 = icmp ne i8* %682, null
  br i1 %683, label %684, label %689

684:                                              ; preds = %679
  %685 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %686 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %685, i32 0, i32 13
  %687 = load i8*, i8** %686, align 8
  %688 = call i32 @pfree(i8* %687)
  br label %689

689:                                              ; preds = %684, %679
  %690 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %691 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %690, i32 0, i32 4
  %692 = load i64, i64* %691, align 8
  %693 = load i32, i32* @BLCKSZ, align 4
  %694 = call i32 @Max(i64 %692, i32 %693)
  %695 = call i8* @MAXALIGN(i32 %694)
  %696 = ptrtoint i8* %695 to i64
  %697 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %698 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %697, i32 0, i32 12
  store i64 %696, i64* %698, align 8
  %699 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %700 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %699, i32 0, i32 12
  %701 = load i64, i64* %700, align 8
  %702 = call i8* @palloc(i64 %701)
  %703 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %704 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %703, i32 0, i32 13
  store i8* %702, i8** %704, align 8
  br label %705

705:                                              ; preds = %689, %671
  %706 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %707 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %706, i32 0, i32 13
  %708 = load i8*, i8** %707, align 8
  %709 = load i8*, i8** %8, align 8
  %710 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %711 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %710, i32 0, i32 4
  %712 = load i64, i64* %711, align 8
  %713 = call i32 @memcpy(i8* %708, i8* %709, i64 %712)
  %714 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %715 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %714, i32 0, i32 4
  %716 = load i64, i64* %715, align 8
  %717 = load i8*, i8** %8, align 8
  %718 = getelementptr inbounds i8, i8* %717, i64 %716
  store i8* %718, i8** %8, align 8
  br label %719

719:                                              ; preds = %705, %661
  br label %720

720:                                              ; preds = %719, %632
  %721 = load i64, i64* %12, align 8
  %722 = add nsw i64 %721, 1
  store i64 %722, i64* %12, align 8
  br label %616

723:                                              ; preds = %616
  %724 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %725 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %724, i32 0, i32 1
  %726 = load i64, i64* %725, align 8
  %727 = icmp sgt i64 %726, 0
  br i1 %727, label %728, label %782

728:                                              ; preds = %723
  %729 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %730 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %729, i32 0, i32 6
  %731 = load i8*, i8** %730, align 8
  %732 = icmp ne i8* %731, null
  br i1 %732, label %733, label %741

733:                                              ; preds = %728
  %734 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %735 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %734, i32 0, i32 1
  %736 = load i64, i64* %735, align 8
  %737 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %738 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %737, i32 0, i32 4
  %739 = load i64, i64* %738, align 8
  %740 = icmp sgt i64 %736, %739
  br i1 %740, label %741, label %768

741:                                              ; preds = %733, %728
  %742 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %743 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %742, i32 0, i32 6
  %744 = load i8*, i8** %743, align 8
  %745 = icmp ne i8* %744, null
  br i1 %745, label %746, label %751

746:                                              ; preds = %741
  %747 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %748 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %747, i32 0, i32 6
  %749 = load i8*, i8** %748, align 8
  %750 = call i32 @pfree(i8* %749)
  br label %751

751:                                              ; preds = %746, %741
  %752 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %753 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %752, i32 0, i32 1
  %754 = load i64, i64* %753, align 8
  %755 = load i32, i32* @BLCKSZ, align 4
  %756 = sdiv i32 %755, 2
  %757 = call i32 @Max(i64 %754, i32 %756)
  %758 = call i8* @MAXALIGN(i32 %757)
  %759 = ptrtoint i8* %758 to i64
  %760 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %761 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %760, i32 0, i32 4
  store i64 %759, i64* %761, align 8
  %762 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %763 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %762, i32 0, i32 4
  %764 = load i64, i64* %763, align 8
  %765 = call i8* @palloc(i64 %764)
  %766 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %767 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %766, i32 0, i32 6
  store i8* %765, i8** %767, align 8
  br label %768

768:                                              ; preds = %751, %733
  %769 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %770 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %769, i32 0, i32 6
  %771 = load i8*, i8** %770, align 8
  %772 = load i8*, i8** %8, align 8
  %773 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %774 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %773, i32 0, i32 1
  %775 = load i64, i64* %774, align 8
  %776 = call i32 @memcpy(i8* %771, i8* %772, i64 %775)
  %777 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %778 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %777, i32 0, i32 1
  %779 = load i64, i64* %778, align 8
  %780 = load i8*, i8** %8, align 8
  %781 = getelementptr inbounds i8, i8* %780, i64 %779
  store i8* %781, i8** %8, align 8
  br label %782

782:                                              ; preds = %768, %723
  store i32 1, i32* %4, align 4
  br label %800

783:                                              ; preds = %614, %581, %543, %340, %299, %284, %269, %195, %160, %109, %85, %61, %44
  %784 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %785 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %786 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %785, i32 0, i32 3
  %787 = load i32, i32* %786, align 8
  %788 = ashr i32 %787, 32
  %789 = sext i32 %788 to i64
  %790 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %791 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %790, i32 0, i32 3
  %792 = load i32, i32* %791, align 8
  %793 = sext i32 %792 to i64
  %794 = call i32 (%struct.TYPE_9__*, i8*, i64, i64, ...) @report_invalid_record(%struct.TYPE_9__* %784, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0), i64 %789, i64 %793)
  br label %795

795:                                              ; preds = %783, %593, %560, %516, %476, %439, %395, %238, %216, %131
  %796 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %797 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %796, i32 0, i32 5
  %798 = load i8*, i8** %797, align 8
  %799 = load i8**, i8*** %7, align 8
  store i8* %798, i8** %799, align 8
  store i32 0, i32* %4, align 4
  br label %800

800:                                              ; preds = %795, %782
  %801 = load i32, i32* %4, align 4
  ret i32 %801
}

declare dso_local i32 @ResetDecoder(%struct.TYPE_9__*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @report_invalid_record(%struct.TYPE_9__*, i8*, i64, i64, ...) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @pfree(i8*) #1

declare dso_local i8* @MAXALIGN(i32) #1

declare dso_local i32 @Max(i64, i32) #1

declare dso_local i8* @palloc(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
