; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_formatting.c_NUM_processor.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_formatting.c_NUM_processor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i64, i8*, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_23__ = type { i32, i32, i32, i32, i32, i64, i32 }
%struct.TYPE_22__ = type { i32, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, %struct.TYPE_23__*, i64, i64, i64 }

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"\22EEEE\22 not supported for input\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"\22RN\22 not supported for input\00", align 1
@NUM_F_FILLMODE = common dso_local global i32 0, align 4
@NUM_F_ROMAN = common dso_local global i32 0, align 4
@NUM_F_BRACKET = common dso_local global i32 0, align 4
@NUM_F_MINUS = common dso_local global i32 0, align 4
@NUM_F_PLUS = common dso_local global i32 0, align 4
@NUM_LSIGN_PRE = common dso_local global i64 0, align 8
@NUM_LSIGN_POST = common dso_local global i64 0, align 8
@NODE_TYPE_END = common dso_local global i64 0, align 8
@OVERLOAD_TEST = common dso_local global i64 0, align 8
@NODE_TYPE_ACTION = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"%15s\00", align 1
@TH_LOWER = common dso_local global i32 0, align 4
@TH_UPPER = common dso_local global i32 0, align 4
@DEBUG_elog_output = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_24__*, %struct.TYPE_23__*, i8*, i8*, i32, i32, i32, i32, i32)* @NUM_processor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @NUM_processor(%struct.TYPE_24__* %0, %struct.TYPE_23__* %1, i8* %2, i8* %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_24__*, align 8
  %12 = alloca %struct.TYPE_23__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_24__*, align 8
  %21 = alloca %struct.TYPE_22__, align 8
  %22 = alloca %struct.TYPE_22__*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i8*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %11, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %12, align 8
  store i8* %2, i8** %13, align 8
  store i8* %3, i8** %14, align 8
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store %struct.TYPE_22__* %21, %struct.TYPE_22__** %22, align 8
  %26 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %27 = call i32 @MemSet(%struct.TYPE_22__* %26, i32 0, i32 120)
  %28 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %29 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %30 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %29, i32 0, i32 14
  store %struct.TYPE_23__* %28, %struct.TYPE_23__** %30, align 8
  %31 = load i32, i32* %18, align 4
  %32 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %33 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load i8*, i8** %14, align 8
  %35 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %36 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %35, i32 0, i32 1
  store i8* %34, i8** %36, align 8
  %37 = load i8*, i8** %13, align 8
  %38 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %39 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %38, i32 0, i32 2
  store i8* %37, i8** %39, align 8
  %40 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %41 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %40, i32 0, i32 3
  store i8* null, i8** %41, align 8
  %42 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %43 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %42, i32 0, i32 4
  store i32 0, i32* %43, align 8
  %44 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %45 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %44, i32 0, i32 17
  store i64 0, i64* %45, align 8
  %46 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %47 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %46, i32 0, i32 5
  store i32 0, i32* %47, align 4
  %48 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %49 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %48, i32 0, i32 14
  %50 = load %struct.TYPE_23__*, %struct.TYPE_23__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %50, i32 0, i32 5
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %9
  %55 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %56 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %55, i32 0, i32 14
  %57 = load %struct.TYPE_23__*, %struct.TYPE_23__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %57, i32 0, i32 5
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %59, -1
  store i64 %60, i64* %58, align 8
  br label %61

61:                                               ; preds = %54, %9
  %62 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %63 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %62, i32 0, i32 14
  %64 = load %struct.TYPE_23__*, %struct.TYPE_23__** %63, align 8
  %65 = call i64 @IS_EEEE(%struct.TYPE_23__* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %82

67:                                               ; preds = %61
  %68 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %69 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %78, label %72

72:                                               ; preds = %67
  %73 = load i32, i32* @ERROR, align 4
  %74 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %75 = call i32 @errcode(i32 %74)
  %76 = call i32 @errmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %77 = call i32 @ereport(i32 %73, i32 %76)
  br label %78

78:                                               ; preds = %72, %67
  %79 = load i8*, i8** %13, align 8
  %80 = load i8*, i8** %14, align 8
  %81 = call i8* @strcpy(i8* %79, i8* %80)
  store i8* %81, i8** %10, align 8
  br label %1058

82:                                               ; preds = %61
  %83 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %84 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %83, i32 0, i32 14
  %85 = load %struct.TYPE_23__*, %struct.TYPE_23__** %84, align 8
  %86 = call i64 @IS_ROMAN(%struct.TYPE_23__* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %150

88:                                               ; preds = %82
  %89 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %90 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %99, label %93

93:                                               ; preds = %88
  %94 = load i32, i32* @ERROR, align 4
  %95 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %96 = call i32 @errcode(i32 %95)
  %97 = call i32 @errmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %98 = call i32 @ereport(i32 %94, i32 %97)
  br label %99

99:                                               ; preds = %93, %88
  %100 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %101 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %100, i32 0, i32 7
  store i32 0, i32* %101, align 4
  %102 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %103 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %102, i32 0, i32 6
  store i32 0, i32* %103, align 8
  %104 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %105 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %104, i32 0, i32 14
  %106 = load %struct.TYPE_23__*, %struct.TYPE_23__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %106, i32 0, i32 3
  store i32 0, i32* %107, align 4
  %108 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %109 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %108, i32 0, i32 14
  %110 = load %struct.TYPE_23__*, %struct.TYPE_23__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %110, i32 0, i32 2
  store i32 0, i32* %111, align 8
  %112 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %113 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %112, i32 0, i32 14
  %114 = load %struct.TYPE_23__*, %struct.TYPE_23__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %114, i32 0, i32 1
  store i32 0, i32* %115, align 4
  %116 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %117 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %116, i32 0, i32 14
  %118 = load %struct.TYPE_23__*, %struct.TYPE_23__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %118, i32 0, i32 0
  store i32 0, i32* %119, align 8
  %120 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %121 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %120, i32 0, i32 14
  %122 = load %struct.TYPE_23__*, %struct.TYPE_23__** %121, align 8
  %123 = call i64 @IS_FILLMODE(%struct.TYPE_23__* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %137

125:                                              ; preds = %99
  %126 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %127 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %126, i32 0, i32 14
  %128 = load %struct.TYPE_23__*, %struct.TYPE_23__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %128, i32 0, i32 6
  store i32 0, i32* %129, align 8
  %130 = load i32, i32* @NUM_F_FILLMODE, align 4
  %131 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %132 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %131, i32 0, i32 14
  %133 = load %struct.TYPE_23__*, %struct.TYPE_23__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %133, i32 0, i32 6
  %135 = load i32, i32* %134, align 8
  %136 = or i32 %135, %130
  store i32 %136, i32* %134, align 8
  br label %142

137:                                              ; preds = %99
  %138 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %139 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %138, i32 0, i32 14
  %140 = load %struct.TYPE_23__*, %struct.TYPE_23__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %140, i32 0, i32 6
  store i32 0, i32* %141, align 8
  br label %142

142:                                              ; preds = %137, %125
  %143 = load i32, i32* @NUM_F_ROMAN, align 4
  %144 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %145 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %144, i32 0, i32 14
  %146 = load %struct.TYPE_23__*, %struct.TYPE_23__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %146, i32 0, i32 6
  %148 = load i32, i32* %147, align 8
  %149 = or i32 %148, %143
  store i32 %149, i32* %147, align 8
  br label %150

150:                                              ; preds = %142, %82
  %151 = load i32, i32* %18, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %303

153:                                              ; preds = %150
  %154 = load i32, i32* %17, align 4
  %155 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %156 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %155, i32 0, i32 7
  store i32 %154, i32* %156, align 4
  %157 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %158 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %157, i32 0, i32 14
  %159 = load %struct.TYPE_23__*, %struct.TYPE_23__** %158, align 8
  %160 = call i64 @IS_PLUS(%struct.TYPE_23__* %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %168, label %162

162:                                              ; preds = %153
  %163 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %164 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %163, i32 0, i32 14
  %165 = load %struct.TYPE_23__*, %struct.TYPE_23__** %164, align 8
  %166 = call i32 @IS_MINUS(%struct.TYPE_23__* %165)
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %187

168:                                              ; preds = %162, %153
  %169 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %170 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %169, i32 0, i32 14
  %171 = load %struct.TYPE_23__*, %struct.TYPE_23__** %170, align 8
  %172 = call i64 @IS_PLUS(%struct.TYPE_23__* %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %183

174:                                              ; preds = %168
  %175 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %176 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %175, i32 0, i32 14
  %177 = load %struct.TYPE_23__*, %struct.TYPE_23__** %176, align 8
  %178 = call i32 @IS_MINUS(%struct.TYPE_23__* %177)
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %183

180:                                              ; preds = %174
  %181 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %182 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %181, i32 0, i32 8
  store i32 0, i32* %182, align 8
  br label %186

183:                                              ; preds = %174, %168
  %184 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %185 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %184, i32 0, i32 8
  store i32 1, i32* %185, align 8
  br label %186

186:                                              ; preds = %183, %180
  br label %302

187:                                              ; preds = %162
  %188 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %189 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %188, i32 0, i32 7
  %190 = load i32, i32* %189, align 4
  %191 = icmp ne i32 %190, 45
  br i1 %191, label %192, label %229

192:                                              ; preds = %187
  %193 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %194 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %193, i32 0, i32 14
  %195 = load %struct.TYPE_23__*, %struct.TYPE_23__** %194, align 8
  %196 = call i64 @IS_BRACKET(%struct.TYPE_23__* %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %213

198:                                              ; preds = %192
  %199 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %200 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %199, i32 0, i32 14
  %201 = load %struct.TYPE_23__*, %struct.TYPE_23__** %200, align 8
  %202 = call i64 @IS_FILLMODE(%struct.TYPE_23__* %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %213

204:                                              ; preds = %198
  %205 = load i32, i32* @NUM_F_BRACKET, align 4
  %206 = xor i32 %205, -1
  %207 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %208 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %207, i32 0, i32 14
  %209 = load %struct.TYPE_23__*, %struct.TYPE_23__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %209, i32 0, i32 6
  %211 = load i32, i32* %210, align 8
  %212 = and i32 %211, %206
  store i32 %212, i32* %210, align 8
  br label %213

213:                                              ; preds = %204, %198, %192
  %214 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %215 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %214, i32 0, i32 14
  %216 = load %struct.TYPE_23__*, %struct.TYPE_23__** %215, align 8
  %217 = call i32 @IS_MINUS(%struct.TYPE_23__* %216)
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %228

219:                                              ; preds = %213
  %220 = load i32, i32* @NUM_F_MINUS, align 4
  %221 = xor i32 %220, -1
  %222 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %223 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %222, i32 0, i32 14
  %224 = load %struct.TYPE_23__*, %struct.TYPE_23__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %224, i32 0, i32 6
  %226 = load i32, i32* %225, align 8
  %227 = and i32 %226, %221
  store i32 %227, i32* %225, align 8
  br label %228

228:                                              ; preds = %219, %213
  br label %250

229:                                              ; preds = %187
  %230 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %231 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %230, i32 0, i32 7
  %232 = load i32, i32* %231, align 4
  %233 = icmp ne i32 %232, 43
  br i1 %233, label %234, label %249

234:                                              ; preds = %229
  %235 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %236 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %235, i32 0, i32 14
  %237 = load %struct.TYPE_23__*, %struct.TYPE_23__** %236, align 8
  %238 = call i64 @IS_PLUS(%struct.TYPE_23__* %237)
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %249

240:                                              ; preds = %234
  %241 = load i32, i32* @NUM_F_PLUS, align 4
  %242 = xor i32 %241, -1
  %243 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %244 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %243, i32 0, i32 14
  %245 = load %struct.TYPE_23__*, %struct.TYPE_23__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %245, i32 0, i32 6
  %247 = load i32, i32* %246, align 8
  %248 = and i32 %247, %242
  store i32 %248, i32* %246, align 8
  br label %249

249:                                              ; preds = %240, %234, %229
  br label %250

250:                                              ; preds = %249, %228
  %251 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %252 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %251, i32 0, i32 7
  %253 = load i32, i32* %252, align 4
  %254 = icmp eq i32 %253, 43
  br i1 %254, label %255, label %270

255:                                              ; preds = %250
  %256 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %257 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %256, i32 0, i32 14
  %258 = load %struct.TYPE_23__*, %struct.TYPE_23__** %257, align 8
  %259 = call i64 @IS_FILLMODE(%struct.TYPE_23__* %258)
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %270

261:                                              ; preds = %255
  %262 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %263 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %262, i32 0, i32 14
  %264 = load %struct.TYPE_23__*, %struct.TYPE_23__** %263, align 8
  %265 = call i32 @IS_LSIGN(%struct.TYPE_23__* %264)
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %267, label %270

267:                                              ; preds = %261
  %268 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %269 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %268, i32 0, i32 8
  store i32 1, i32* %269, align 8
  br label %273

270:                                              ; preds = %261, %255, %250
  %271 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %272 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %271, i32 0, i32 8
  store i32 0, i32* %272, align 8
  br label %273

273:                                              ; preds = %270, %267
  %274 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %275 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %274, i32 0, i32 14
  %276 = load %struct.TYPE_23__*, %struct.TYPE_23__** %275, align 8
  %277 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  %279 = sext i32 %278 to i64
  %280 = load i64, i64* @NUM_LSIGN_PRE, align 8
  %281 = icmp eq i64 %279, %280
  br i1 %281, label %282, label %301

282:                                              ; preds = %273
  %283 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %284 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %283, i32 0, i32 14
  %285 = load %struct.TYPE_23__*, %struct.TYPE_23__** %284, align 8
  %286 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %285, i32 0, i32 3
  %287 = load i32, i32* %286, align 4
  %288 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %289 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %288, i32 0, i32 14
  %290 = load %struct.TYPE_23__*, %struct.TYPE_23__** %289, align 8
  %291 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %290, i32 0, i32 1
  %292 = load i32, i32* %291, align 4
  %293 = icmp eq i32 %287, %292
  br i1 %293, label %294, label %301

294:                                              ; preds = %282
  %295 = load i64, i64* @NUM_LSIGN_POST, align 8
  %296 = trunc i64 %295 to i32
  %297 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %298 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %297, i32 0, i32 14
  %299 = load %struct.TYPE_23__*, %struct.TYPE_23__** %298, align 8
  %300 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %299, i32 0, i32 0
  store i32 %296, i32* %300, align 8
  br label %301

301:                                              ; preds = %294, %282, %273
  br label %302

302:                                              ; preds = %301, %186
  br label %306

303:                                              ; preds = %150
  %304 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %305 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %304, i32 0, i32 7
  store i32 0, i32* %305, align 4
  br label %306

306:                                              ; preds = %303, %302
  %307 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %308 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %307, i32 0, i32 14
  %309 = load %struct.TYPE_23__*, %struct.TYPE_23__** %308, align 8
  %310 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %309, i32 0, i32 2
  %311 = load i32, i32* %310, align 8
  %312 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %313 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %312, i32 0, i32 14
  %314 = load %struct.TYPE_23__*, %struct.TYPE_23__** %313, align 8
  %315 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %314, i32 0, i32 3
  %316 = load i32, i32* %315, align 4
  %317 = add nsw i32 %311, %316
  %318 = sub nsw i32 %317, 1
  %319 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %320 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %319, i32 0, i32 9
  store i32 %318, i32* %320, align 4
  %321 = load i32, i32* %18, align 4
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %401

323:                                              ; preds = %306
  %324 = load i32, i32* %16, align 4
  %325 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %326 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %325, i32 0, i32 6
  store i32 %324, i32* %326, align 8
  %327 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %328 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %327, i32 0, i32 14
  %329 = load %struct.TYPE_23__*, %struct.TYPE_23__** %328, align 8
  %330 = call i64 @IS_FILLMODE(%struct.TYPE_23__* %329)
  %331 = icmp ne i64 %330, 0
  br i1 %331, label %332, label %385

332:                                              ; preds = %323
  %333 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %334 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %333, i32 0, i32 14
  %335 = load %struct.TYPE_23__*, %struct.TYPE_23__** %334, align 8
  %336 = call i64 @IS_DECIMAL(%struct.TYPE_23__* %335)
  %337 = icmp ne i64 %336, 0
  br i1 %337, label %338, label %385

338:                                              ; preds = %332
  %339 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %340 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %339, i32 0, i32 1
  %341 = load i8*, i8** %340, align 8
  %342 = call i8* @get_last_relevant_decnum(i8* %341)
  %343 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %344 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %343, i32 0, i32 3
  store i8* %342, i8** %344, align 8
  %345 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %346 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %345, i32 0, i32 3
  %347 = load i8*, i8** %346, align 8
  %348 = icmp ne i8* %347, null
  br i1 %348, label %349, label %384

349:                                              ; preds = %338
  %350 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %351 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %350, i32 0, i32 14
  %352 = load %struct.TYPE_23__*, %struct.TYPE_23__** %351, align 8
  %353 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %352, i32 0, i32 4
  %354 = load i32, i32* %353, align 8
  %355 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %356 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %355, i32 0, i32 6
  %357 = load i32, i32* %356, align 8
  %358 = icmp sgt i32 %354, %357
  br i1 %358, label %359, label %384

359:                                              ; preds = %349
  %360 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %361 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %360, i32 0, i32 1
  %362 = load i8*, i8** %361, align 8
  %363 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %364 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %363, i32 0, i32 14
  %365 = load %struct.TYPE_23__*, %struct.TYPE_23__** %364, align 8
  %366 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %365, i32 0, i32 4
  %367 = load i32, i32* %366, align 8
  %368 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %369 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %368, i32 0, i32 6
  %370 = load i32, i32* %369, align 8
  %371 = sub nsw i32 %367, %370
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds i8, i8* %362, i64 %372
  store i8* %373, i8** %25, align 8
  %374 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %375 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %374, i32 0, i32 3
  %376 = load i8*, i8** %375, align 8
  %377 = load i8*, i8** %25, align 8
  %378 = icmp ult i8* %376, %377
  br i1 %378, label %379, label %383

379:                                              ; preds = %359
  %380 = load i8*, i8** %25, align 8
  %381 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %382 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %381, i32 0, i32 3
  store i8* %380, i8** %382, align 8
  br label %383

383:                                              ; preds = %379, %359
  br label %384

384:                                              ; preds = %383, %349, %338
  br label %385

385:                                              ; preds = %384, %332, %323
  %386 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %387 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %386, i32 0, i32 8
  %388 = load i32, i32* %387, align 8
  %389 = icmp eq i32 %388, 0
  br i1 %389, label %390, label %400

390:                                              ; preds = %385
  %391 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %392 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %391, i32 0, i32 6
  %393 = load i32, i32* %392, align 8
  %394 = icmp eq i32 %393, 0
  br i1 %394, label %395, label %400

395:                                              ; preds = %390
  %396 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %397 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %396, i32 0, i32 9
  %398 = load i32, i32* %397, align 4
  %399 = add nsw i32 %398, 1
  store i32 %399, i32* %397, align 4
  br label %400

400:                                              ; preds = %395, %390, %385
  br label %411

401:                                              ; preds = %306
  %402 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %403 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %402, i32 0, i32 6
  store i32 0, i32* %403, align 8
  %404 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %405 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %404, i32 0, i32 1
  %406 = load i8*, i8** %405, align 8
  store i8 32, i8* %406, align 1
  %407 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %408 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %407, i32 0, i32 1
  %409 = load i8*, i8** %408, align 8
  %410 = getelementptr inbounds i8, i8* %409, i64 1
  store i8 0, i8* %410, align 1
  br label %411

411:                                              ; preds = %401, %400
  %412 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %413 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %412, i32 0, i32 15
  store i64 0, i64* %413, align 8
  %414 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %415 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %414, i32 0, i32 16
  store i64 0, i64* %415, align 8
  %416 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %417 = call i32 @NUM_prepare_locale(%struct.TYPE_22__* %416)
  %418 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %419 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %418, i32 0, i32 0
  %420 = load i32, i32* %419, align 8
  %421 = icmp ne i32 %420, 0
  br i1 %421, label %422, label %428

422:                                              ; preds = %411
  %423 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %424 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %423, i32 0, i32 1
  %425 = load i8*, i8** %424, align 8
  %426 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %427 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %426, i32 0, i32 10
  store i8* %425, i8** %427, align 8
  br label %435

428:                                              ; preds = %411
  %429 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %430 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %429, i32 0, i32 1
  %431 = load i8*, i8** %430, align 8
  %432 = getelementptr inbounds i8, i8* %431, i64 1
  %433 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %434 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %433, i32 0, i32 10
  store i8* %432, i8** %434, align 8
  br label %435

435:                                              ; preds = %428, %422
  %436 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  store %struct.TYPE_24__* %436, %struct.TYPE_24__** %20, align 8
  %437 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %438 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %437, i32 0, i32 2
  %439 = load i8*, i8** %438, align 8
  %440 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %441 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %440, i32 0, i32 11
  store i8* %439, i8** %441, align 8
  br label %442

442:                                              ; preds = %1015, %435
  %443 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %444 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %443, i32 0, i32 0
  %445 = load i64, i64* %444, align 8
  %446 = load i64, i64* @NODE_TYPE_END, align 8
  %447 = icmp ne i64 %445, %446
  br i1 %447, label %448, label %1018

448:                                              ; preds = %442
  %449 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %450 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %449, i32 0, i32 0
  %451 = load i32, i32* %450, align 8
  %452 = icmp ne i32 %451, 0
  br i1 %452, label %458, label %453

453:                                              ; preds = %448
  %454 = load i64, i64* @OVERLOAD_TEST, align 8
  %455 = icmp ne i64 %454, 0
  br i1 %455, label %456, label %457

456:                                              ; preds = %453
  br label %1018

457:                                              ; preds = %453
  br label %458

458:                                              ; preds = %457, %448
  %459 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %460 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %459, i32 0, i32 0
  %461 = load i64, i64* %460, align 8
  %462 = load i64, i64* @NODE_TYPE_ACTION, align 8
  %463 = icmp eq i64 %461, %462
  br i1 %463, label %464, label %977

464:                                              ; preds = %458
  %465 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %466 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %465, i32 0, i32 2
  %467 = load %struct.TYPE_21__*, %struct.TYPE_21__** %466, align 8
  %468 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %467, i32 0, i32 0
  %469 = load i32, i32* %468, align 4
  switch i32 %469, label %975 [
    i32 140, label %470
    i32 141, label %470
    i32 137, label %470
    i32 138, label %470
    i32 139, label %492
    i32 136, label %542
    i32 135, label %630
    i32 132, label %659
    i32 129, label %702
    i32 128, label %747
    i32 130, label %796
    i32 134, label %845
    i32 133, label %889
    i32 131, label %933
  ]

470:                                              ; preds = %464, %464, %464, %464
  %471 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %472 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %471, i32 0, i32 0
  %473 = load i32, i32* %472, align 8
  %474 = icmp ne i32 %473, 0
  br i1 %474, label %475, label %483

475:                                              ; preds = %470
  %476 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %477 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %478 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %477, i32 0, i32 2
  %479 = load %struct.TYPE_21__*, %struct.TYPE_21__** %478, align 8
  %480 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %479, i32 0, i32 0
  %481 = load i32, i32* %480, align 4
  %482 = call i32 @NUM_numpart_to_char(%struct.TYPE_22__* %476, i32 %481)
  br label %1015

483:                                              ; preds = %470
  %484 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %485 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %486 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %485, i32 0, i32 2
  %487 = load %struct.TYPE_21__*, %struct.TYPE_21__** %486, align 8
  %488 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %487, i32 0, i32 0
  %489 = load i32, i32* %488, align 4
  %490 = load i32, i32* %15, align 4
  %491 = call i32 @NUM_numpart_from_char(%struct.TYPE_22__* %484, i32 %489, i32 %490)
  br label %976

492:                                              ; preds = %464
  %493 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %494 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %493, i32 0, i32 0
  %495 = load i32, i32* %494, align 8
  %496 = icmp ne i32 %495, 0
  br i1 %496, label %497, label %519

497:                                              ; preds = %492
  %498 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %499 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %498, i32 0, i32 15
  %500 = load i64, i64* %499, align 8
  %501 = icmp ne i64 %500, 0
  br i1 %501, label %514, label %502

502:                                              ; preds = %497
  %503 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %504 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %503, i32 0, i32 14
  %505 = load %struct.TYPE_23__*, %struct.TYPE_23__** %504, align 8
  %506 = call i64 @IS_FILLMODE(%struct.TYPE_23__* %505)
  %507 = icmp ne i64 %506, 0
  br i1 %507, label %508, label %509

508:                                              ; preds = %502
  br label %1015

509:                                              ; preds = %502
  %510 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %511 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %510, i32 0, i32 11
  %512 = load i8*, i8** %511, align 8
  store i8 32, i8* %512, align 1
  br label %513

513:                                              ; preds = %509
  br label %518

514:                                              ; preds = %497
  %515 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %516 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %515, i32 0, i32 11
  %517 = load i8*, i8** %516, align 8
  store i8 44, i8* %517, align 1
  br label %518

518:                                              ; preds = %514, %513
  br label %541

519:                                              ; preds = %492
  %520 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %521 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %520, i32 0, i32 15
  %522 = load i64, i64* %521, align 8
  %523 = icmp ne i64 %522, 0
  br i1 %523, label %532, label %524

524:                                              ; preds = %519
  %525 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %526 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %525, i32 0, i32 14
  %527 = load %struct.TYPE_23__*, %struct.TYPE_23__** %526, align 8
  %528 = call i64 @IS_FILLMODE(%struct.TYPE_23__* %527)
  %529 = icmp ne i64 %528, 0
  br i1 %529, label %530, label %531

530:                                              ; preds = %524
  br label %1015

531:                                              ; preds = %524
  br label %532

532:                                              ; preds = %531, %519
  %533 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %534 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %533, i32 0, i32 11
  %535 = load i8*, i8** %534, align 8
  %536 = load i8, i8* %535, align 1
  %537 = sext i8 %536 to i32
  %538 = icmp ne i32 %537, 44
  br i1 %538, label %539, label %540

539:                                              ; preds = %532
  br label %1015

540:                                              ; preds = %532
  br label %541

541:                                              ; preds = %540, %518
  br label %976

542:                                              ; preds = %464
  %543 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %544 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %543, i32 0, i32 12
  %545 = load i8*, i8** %544, align 8
  store i8* %545, i8** %23, align 8
  %546 = load i8*, i8** %23, align 8
  %547 = call i32 @strlen(i8* %546)
  store i32 %547, i32* %24, align 4
  %548 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %549 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %548, i32 0, i32 0
  %550 = load i32, i32* %549, align 8
  %551 = icmp ne i32 %550, 0
  br i1 %551, label %552, label %594

552:                                              ; preds = %542
  %553 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %554 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %553, i32 0, i32 15
  %555 = load i64, i64* %554, align 8
  %556 = icmp ne i64 %555, 0
  br i1 %556, label %580, label %557

557:                                              ; preds = %552
  %558 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %559 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %558, i32 0, i32 14
  %560 = load %struct.TYPE_23__*, %struct.TYPE_23__** %559, align 8
  %561 = call i64 @IS_FILLMODE(%struct.TYPE_23__* %560)
  %562 = icmp ne i64 %561, 0
  br i1 %562, label %563, label %564

563:                                              ; preds = %557
  br label %1015

564:                                              ; preds = %557
  %565 = load i8*, i8** %23, align 8
  %566 = call i32 @pg_mbstrlen(i8* %565)
  store i32 %566, i32* %24, align 4
  %567 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %568 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %567, i32 0, i32 11
  %569 = load i8*, i8** %568, align 8
  %570 = load i32, i32* %24, align 4
  %571 = call i32 @memset(i8* %569, i8 signext 32, i32 %570)
  %572 = load i32, i32* %24, align 4
  %573 = sub nsw i32 %572, 1
  %574 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %575 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %574, i32 0, i32 11
  %576 = load i8*, i8** %575, align 8
  %577 = sext i32 %573 to i64
  %578 = getelementptr inbounds i8, i8* %576, i64 %577
  store i8* %578, i8** %575, align 8
  br label %579

579:                                              ; preds = %564
  br label %593

580:                                              ; preds = %552
  %581 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %582 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %581, i32 0, i32 11
  %583 = load i8*, i8** %582, align 8
  %584 = load i8*, i8** %23, align 8
  %585 = call i8* @strcpy(i8* %583, i8* %584)
  %586 = load i32, i32* %24, align 4
  %587 = sub nsw i32 %586, 1
  %588 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %589 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %588, i32 0, i32 11
  %590 = load i8*, i8** %589, align 8
  %591 = sext i32 %587 to i64
  %592 = getelementptr inbounds i8, i8* %590, i64 %591
  store i8* %592, i8** %589, align 8
  br label %593

593:                                              ; preds = %580, %579
  br label %629

594:                                              ; preds = %542
  %595 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %596 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %595, i32 0, i32 15
  %597 = load i64, i64* %596, align 8
  %598 = icmp ne i64 %597, 0
  br i1 %598, label %607, label %599

599:                                              ; preds = %594
  %600 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %601 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %600, i32 0, i32 14
  %602 = load %struct.TYPE_23__*, %struct.TYPE_23__** %601, align 8
  %603 = call i64 @IS_FILLMODE(%struct.TYPE_23__* %602)
  %604 = icmp ne i64 %603, 0
  br i1 %604, label %605, label %606

605:                                              ; preds = %599
  br label %1015

606:                                              ; preds = %599
  br label %607

607:                                              ; preds = %606, %594
  %608 = load i32, i32* %24, align 4
  %609 = call i32 @AMOUNT_TEST(i32 %608)
  %610 = icmp ne i32 %609, 0
  br i1 %610, label %611, label %627

611:                                              ; preds = %607
  %612 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %613 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %612, i32 0, i32 11
  %614 = load i8*, i8** %613, align 8
  %615 = load i8*, i8** %23, align 8
  %616 = load i32, i32* %24, align 4
  %617 = call i32 @strncmp(i8* %614, i8* %615, i32 %616)
  %618 = icmp eq i32 %617, 0
  br i1 %618, label %619, label %627

619:                                              ; preds = %611
  %620 = load i32, i32* %24, align 4
  %621 = sub nsw i32 %620, 1
  %622 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %623 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %622, i32 0, i32 11
  %624 = load i8*, i8** %623, align 8
  %625 = sext i32 %621 to i64
  %626 = getelementptr inbounds i8, i8* %624, i64 %625
  store i8* %626, i8** %623, align 8
  br label %628

627:                                              ; preds = %611, %607
  br label %1015

628:                                              ; preds = %619
  br label %629

629:                                              ; preds = %628, %593
  br label %976

630:                                              ; preds = %464
  %631 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %632 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %631, i32 0, i32 13
  %633 = load i8*, i8** %632, align 8
  store i8* %633, i8** %23, align 8
  %634 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %635 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %634, i32 0, i32 0
  %636 = load i32, i32* %635, align 8
  %637 = icmp ne i32 %636, 0
  br i1 %637, label %638, label %652

638:                                              ; preds = %630
  %639 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %640 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %639, i32 0, i32 11
  %641 = load i8*, i8** %640, align 8
  %642 = load i8*, i8** %23, align 8
  %643 = call i8* @strcpy(i8* %641, i8* %642)
  %644 = load i8*, i8** %23, align 8
  %645 = call i32 @strlen(i8* %644)
  %646 = sub nsw i32 %645, 1
  %647 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %648 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %647, i32 0, i32 11
  %649 = load i8*, i8** %648, align 8
  %650 = sext i32 %646 to i64
  %651 = getelementptr inbounds i8, i8* %649, i64 %650
  store i8* %651, i8** %648, align 8
  br label %658

652:                                              ; preds = %630
  %653 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %654 = load i8*, i8** %23, align 8
  %655 = call i32 @pg_mbstrlen(i8* %654)
  %656 = load i32, i32* %15, align 4
  %657 = call i32 @NUM_eat_non_data_chars(%struct.TYPE_22__* %653, i32 %655, i32 %656)
  br label %1015

658:                                              ; preds = %638
  br label %976

659:                                              ; preds = %464
  %660 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %661 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %660, i32 0, i32 14
  %662 = load %struct.TYPE_23__*, %struct.TYPE_23__** %661, align 8
  %663 = call i64 @IS_FILLMODE(%struct.TYPE_23__* %662)
  %664 = icmp ne i64 %663, 0
  br i1 %664, label %665, label %683

665:                                              ; preds = %659
  %666 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %667 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %666, i32 0, i32 11
  %668 = load i8*, i8** %667, align 8
  %669 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %670 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %669, i32 0, i32 10
  %671 = load i8*, i8** %670, align 8
  %672 = call i8* @strcpy(i8* %668, i8* %671)
  %673 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %674 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %673, i32 0, i32 11
  %675 = load i8*, i8** %674, align 8
  %676 = call i32 @strlen(i8* %675)
  %677 = sub nsw i32 %676, 1
  %678 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %679 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %678, i32 0, i32 11
  %680 = load i8*, i8** %679, align 8
  %681 = sext i32 %677 to i64
  %682 = getelementptr inbounds i8, i8* %680, i64 %681
  store i8* %682, i8** %679, align 8
  br label %701

683:                                              ; preds = %659
  %684 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %685 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %684, i32 0, i32 11
  %686 = load i8*, i8** %685, align 8
  %687 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %688 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %687, i32 0, i32 10
  %689 = load i8*, i8** %688, align 8
  %690 = call i32 @sprintf(i8* %686, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %689)
  %691 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %692 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %691, i32 0, i32 11
  %693 = load i8*, i8** %692, align 8
  %694 = call i32 @strlen(i8* %693)
  %695 = sub nsw i32 %694, 1
  %696 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %697 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %696, i32 0, i32 11
  %698 = load i8*, i8** %697, align 8
  %699 = sext i32 %695 to i64
  %700 = getelementptr inbounds i8, i8* %698, i64 %699
  store i8* %700, i8** %697, align 8
  br label %701

701:                                              ; preds = %683, %665
  br label %976

702:                                              ; preds = %464
  %703 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %704 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %703, i32 0, i32 14
  %705 = load %struct.TYPE_23__*, %struct.TYPE_23__** %704, align 8
  %706 = call i64 @IS_FILLMODE(%struct.TYPE_23__* %705)
  %707 = icmp ne i64 %706, 0
  br i1 %707, label %708, label %727

708:                                              ; preds = %702
  %709 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %710 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %709, i32 0, i32 11
  %711 = load i8*, i8** %710, align 8
  %712 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %713 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %712, i32 0, i32 10
  %714 = load i8*, i8** %713, align 8
  %715 = call i8* @asc_tolower_z(i8* %714)
  %716 = call i8* @strcpy(i8* %711, i8* %715)
  %717 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %718 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %717, i32 0, i32 11
  %719 = load i8*, i8** %718, align 8
  %720 = call i32 @strlen(i8* %719)
  %721 = sub nsw i32 %720, 1
  %722 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %723 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %722, i32 0, i32 11
  %724 = load i8*, i8** %723, align 8
  %725 = sext i32 %721 to i64
  %726 = getelementptr inbounds i8, i8* %724, i64 %725
  store i8* %726, i8** %723, align 8
  br label %746

727:                                              ; preds = %702
  %728 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %729 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %728, i32 0, i32 11
  %730 = load i8*, i8** %729, align 8
  %731 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %732 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %731, i32 0, i32 10
  %733 = load i8*, i8** %732, align 8
  %734 = call i8* @asc_tolower_z(i8* %733)
  %735 = call i32 @sprintf(i8* %730, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %734)
  %736 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %737 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %736, i32 0, i32 11
  %738 = load i8*, i8** %737, align 8
  %739 = call i32 @strlen(i8* %738)
  %740 = sub nsw i32 %739, 1
  %741 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %742 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %741, i32 0, i32 11
  %743 = load i8*, i8** %742, align 8
  %744 = sext i32 %740 to i64
  %745 = getelementptr inbounds i8, i8* %743, i64 %744
  store i8* %745, i8** %742, align 8
  br label %746

746:                                              ; preds = %727, %708
  br label %976

747:                                              ; preds = %464
  %748 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %749 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %748, i32 0, i32 14
  %750 = load %struct.TYPE_23__*, %struct.TYPE_23__** %749, align 8
  %751 = call i64 @IS_ROMAN(%struct.TYPE_23__* %750)
  %752 = icmp ne i64 %751, 0
  br i1 %752, label %771, label %753

753:                                              ; preds = %747
  %754 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %755 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %754, i32 0, i32 1
  %756 = load i8*, i8** %755, align 8
  %757 = load i8, i8* %756, align 1
  %758 = sext i8 %757 to i32
  %759 = icmp eq i32 %758, 35
  br i1 %759, label %771, label %760

760:                                              ; preds = %753
  %761 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %762 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %761, i32 0, i32 7
  %763 = load i32, i32* %762, align 4
  %764 = icmp eq i32 %763, 45
  br i1 %764, label %771, label %765

765:                                              ; preds = %760
  %766 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %767 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %766, i32 0, i32 14
  %768 = load %struct.TYPE_23__*, %struct.TYPE_23__** %767, align 8
  %769 = call i64 @IS_DECIMAL(%struct.TYPE_23__* %768)
  %770 = icmp ne i64 %769, 0
  br i1 %770, label %771, label %772

771:                                              ; preds = %765, %760, %753, %747
  br label %1015

772:                                              ; preds = %765
  %773 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %774 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %773, i32 0, i32 0
  %775 = load i32, i32* %774, align 8
  %776 = icmp ne i32 %775, 0
  br i1 %776, label %777, label %791

777:                                              ; preds = %772
  %778 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %779 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %778, i32 0, i32 11
  %780 = load i8*, i8** %779, align 8
  %781 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %782 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %781, i32 0, i32 1
  %783 = load i8*, i8** %782, align 8
  %784 = load i32, i32* @TH_LOWER, align 4
  %785 = call i8* @get_th(i8* %783, i32 %784)
  %786 = call i8* @strcpy(i8* %780, i8* %785)
  %787 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %788 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %787, i32 0, i32 11
  %789 = load i8*, i8** %788, align 8
  %790 = getelementptr inbounds i8, i8* %789, i64 1
  store i8* %790, i8** %788, align 8
  br label %795

791:                                              ; preds = %772
  %792 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %793 = load i32, i32* %15, align 4
  %794 = call i32 @NUM_eat_non_data_chars(%struct.TYPE_22__* %792, i32 2, i32 %793)
  br label %1015

795:                                              ; preds = %777
  br label %976

796:                                              ; preds = %464
  %797 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %798 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %797, i32 0, i32 14
  %799 = load %struct.TYPE_23__*, %struct.TYPE_23__** %798, align 8
  %800 = call i64 @IS_ROMAN(%struct.TYPE_23__* %799)
  %801 = icmp ne i64 %800, 0
  br i1 %801, label %820, label %802

802:                                              ; preds = %796
  %803 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %804 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %803, i32 0, i32 1
  %805 = load i8*, i8** %804, align 8
  %806 = load i8, i8* %805, align 1
  %807 = sext i8 %806 to i32
  %808 = icmp eq i32 %807, 35
  br i1 %808, label %820, label %809

809:                                              ; preds = %802
  %810 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %811 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %810, i32 0, i32 7
  %812 = load i32, i32* %811, align 4
  %813 = icmp eq i32 %812, 45
  br i1 %813, label %820, label %814

814:                                              ; preds = %809
  %815 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %816 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %815, i32 0, i32 14
  %817 = load %struct.TYPE_23__*, %struct.TYPE_23__** %816, align 8
  %818 = call i64 @IS_DECIMAL(%struct.TYPE_23__* %817)
  %819 = icmp ne i64 %818, 0
  br i1 %819, label %820, label %821

820:                                              ; preds = %814, %809, %802, %796
  br label %1015

821:                                              ; preds = %814
  %822 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %823 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %822, i32 0, i32 0
  %824 = load i32, i32* %823, align 8
  %825 = icmp ne i32 %824, 0
  br i1 %825, label %826, label %840

826:                                              ; preds = %821
  %827 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %828 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %827, i32 0, i32 11
  %829 = load i8*, i8** %828, align 8
  %830 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %831 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %830, i32 0, i32 1
  %832 = load i8*, i8** %831, align 8
  %833 = load i32, i32* @TH_UPPER, align 4
  %834 = call i8* @get_th(i8* %832, i32 %833)
  %835 = call i8* @strcpy(i8* %829, i8* %834)
  %836 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %837 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %836, i32 0, i32 11
  %838 = load i8*, i8** %837, align 8
  %839 = getelementptr inbounds i8, i8* %838, i64 1
  store i8* %839, i8** %837, align 8
  br label %844

840:                                              ; preds = %821
  %841 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %842 = load i32, i32* %15, align 4
  %843 = call i32 @NUM_eat_non_data_chars(%struct.TYPE_22__* %841, i32 2, i32 %842)
  br label %1015

844:                                              ; preds = %826
  br label %976

845:                                              ; preds = %464
  %846 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %847 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %846, i32 0, i32 0
  %848 = load i32, i32* %847, align 8
  %849 = icmp ne i32 %848, 0
  br i1 %849, label %850, label %872

850:                                              ; preds = %845
  %851 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %852 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %851, i32 0, i32 7
  %853 = load i32, i32* %852, align 4
  %854 = icmp eq i32 %853, 45
  br i1 %854, label %855, label %859

855:                                              ; preds = %850
  %856 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %857 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %856, i32 0, i32 11
  %858 = load i8*, i8** %857, align 8
  store i8 45, i8* %858, align 1
  br label %871

859:                                              ; preds = %850
  %860 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %861 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %860, i32 0, i32 14
  %862 = load %struct.TYPE_23__*, %struct.TYPE_23__** %861, align 8
  %863 = call i64 @IS_FILLMODE(%struct.TYPE_23__* %862)
  %864 = icmp ne i64 %863, 0
  br i1 %864, label %865, label %866

865:                                              ; preds = %859
  br label %1015

866:                                              ; preds = %859
  %867 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %868 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %867, i32 0, i32 11
  %869 = load i8*, i8** %868, align 8
  store i8 32, i8* %869, align 1
  br label %870

870:                                              ; preds = %866
  br label %871

871:                                              ; preds = %870, %855
  br label %888

872:                                              ; preds = %845
  %873 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %874 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %873, i32 0, i32 11
  %875 = load i8*, i8** %874, align 8
  %876 = load i8, i8* %875, align 1
  %877 = sext i8 %876 to i32
  %878 = icmp eq i32 %877, 45
  br i1 %878, label %879, label %883

879:                                              ; preds = %872
  %880 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %881 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %880, i32 0, i32 1
  %882 = load i8*, i8** %881, align 8
  store i8 45, i8* %882, align 1
  br label %887

883:                                              ; preds = %872
  %884 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %885 = load i32, i32* %15, align 4
  %886 = call i32 @NUM_eat_non_data_chars(%struct.TYPE_22__* %884, i32 1, i32 %885)
  br label %1015

887:                                              ; preds = %879
  br label %888

888:                                              ; preds = %887, %871
  br label %976

889:                                              ; preds = %464
  %890 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %891 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %890, i32 0, i32 0
  %892 = load i32, i32* %891, align 8
  %893 = icmp ne i32 %892, 0
  br i1 %893, label %894, label %916

894:                                              ; preds = %889
  %895 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %896 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %895, i32 0, i32 7
  %897 = load i32, i32* %896, align 4
  %898 = icmp eq i32 %897, 43
  br i1 %898, label %899, label %903

899:                                              ; preds = %894
  %900 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %901 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %900, i32 0, i32 11
  %902 = load i8*, i8** %901, align 8
  store i8 43, i8* %902, align 1
  br label %915

903:                                              ; preds = %894
  %904 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %905 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %904, i32 0, i32 14
  %906 = load %struct.TYPE_23__*, %struct.TYPE_23__** %905, align 8
  %907 = call i64 @IS_FILLMODE(%struct.TYPE_23__* %906)
  %908 = icmp ne i64 %907, 0
  br i1 %908, label %909, label %910

909:                                              ; preds = %903
  br label %1015

910:                                              ; preds = %903
  %911 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %912 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %911, i32 0, i32 11
  %913 = load i8*, i8** %912, align 8
  store i8 32, i8* %913, align 1
  br label %914

914:                                              ; preds = %910
  br label %915

915:                                              ; preds = %914, %899
  br label %932

916:                                              ; preds = %889
  %917 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %918 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %917, i32 0, i32 11
  %919 = load i8*, i8** %918, align 8
  %920 = load i8, i8* %919, align 1
  %921 = sext i8 %920 to i32
  %922 = icmp eq i32 %921, 43
  br i1 %922, label %923, label %927

923:                                              ; preds = %916
  %924 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %925 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %924, i32 0, i32 1
  %926 = load i8*, i8** %925, align 8
  store i8 43, i8* %926, align 1
  br label %931

927:                                              ; preds = %916
  %928 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %929 = load i32, i32* %15, align 4
  %930 = call i32 @NUM_eat_non_data_chars(%struct.TYPE_22__* %928, i32 1, i32 %929)
  br label %1015

931:                                              ; preds = %923
  br label %932

932:                                              ; preds = %931, %915
  br label %976

933:                                              ; preds = %464
  %934 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %935 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %934, i32 0, i32 0
  %936 = load i32, i32* %935, align 8
  %937 = icmp ne i32 %936, 0
  br i1 %937, label %938, label %946

938:                                              ; preds = %933
  %939 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %940 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %939, i32 0, i32 7
  %941 = load i32, i32* %940, align 4
  %942 = trunc i32 %941 to i8
  %943 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %944 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %943, i32 0, i32 11
  %945 = load i8*, i8** %944, align 8
  store i8 %942, i8* %945, align 1
  br label %974

946:                                              ; preds = %933
  %947 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %948 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %947, i32 0, i32 11
  %949 = load i8*, i8** %948, align 8
  %950 = load i8, i8* %949, align 1
  %951 = sext i8 %950 to i32
  %952 = icmp eq i32 %951, 45
  br i1 %952, label %953, label %957

953:                                              ; preds = %946
  %954 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %955 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %954, i32 0, i32 1
  %956 = load i8*, i8** %955, align 8
  store i8 45, i8* %956, align 1
  br label %973

957:                                              ; preds = %946
  %958 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %959 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %958, i32 0, i32 11
  %960 = load i8*, i8** %959, align 8
  %961 = load i8, i8* %960, align 1
  %962 = sext i8 %961 to i32
  %963 = icmp eq i32 %962, 43
  br i1 %963, label %964, label %968

964:                                              ; preds = %957
  %965 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %966 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %965, i32 0, i32 1
  %967 = load i8*, i8** %966, align 8
  store i8 43, i8* %967, align 1
  br label %972

968:                                              ; preds = %957
  %969 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %970 = load i32, i32* %15, align 4
  %971 = call i32 @NUM_eat_non_data_chars(%struct.TYPE_22__* %969, i32 1, i32 %970)
  br label %1015

972:                                              ; preds = %964
  br label %973

973:                                              ; preds = %972, %953
  br label %974

974:                                              ; preds = %973, %938
  br label %976

975:                                              ; preds = %464
  br label %1015

976:                                              ; preds = %974, %932, %888, %844, %795, %746, %701, %658, %629, %541, %483
  br label %1010

977:                                              ; preds = %458
  %978 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %979 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %978, i32 0, i32 0
  %980 = load i32, i32* %979, align 8
  %981 = icmp ne i32 %980, 0
  br i1 %981, label %982, label %999

982:                                              ; preds = %977
  %983 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %984 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %983, i32 0, i32 11
  %985 = load i8*, i8** %984, align 8
  %986 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %987 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %986, i32 0, i32 1
  %988 = load i8*, i8** %987, align 8
  %989 = call i8* @strcpy(i8* %985, i8* %988)
  %990 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %991 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %990, i32 0, i32 11
  %992 = load i8*, i8** %991, align 8
  %993 = call i32 @strlen(i8* %992)
  %994 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %995 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %994, i32 0, i32 11
  %996 = load i8*, i8** %995, align 8
  %997 = sext i32 %993 to i64
  %998 = getelementptr inbounds i8, i8* %996, i64 %997
  store i8* %998, i8** %995, align 8
  br label %1009

999:                                              ; preds = %977
  %1000 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %1001 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %1000, i32 0, i32 11
  %1002 = load i8*, i8** %1001, align 8
  %1003 = call i32 @pg_mblen(i8* %1002)
  %1004 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %1005 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %1004, i32 0, i32 11
  %1006 = load i8*, i8** %1005, align 8
  %1007 = sext i32 %1003 to i64
  %1008 = getelementptr inbounds i8, i8* %1006, i64 %1007
  store i8* %1008, i8** %1005, align 8
  br label %1009

1009:                                             ; preds = %999, %982
  br label %1015

1010:                                             ; preds = %976
  %1011 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %1012 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %1011, i32 0, i32 11
  %1013 = load i8*, i8** %1012, align 8
  %1014 = getelementptr inbounds i8, i8* %1013, i32 1
  store i8* %1014, i8** %1012, align 8
  br label %1015

1015:                                             ; preds = %1010, %1009, %975, %968, %927, %909, %883, %865, %840, %820, %791, %771, %652, %627, %605, %563, %539, %530, %508, %475
  %1016 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %1017 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %1016, i32 1
  store %struct.TYPE_24__* %1017, %struct.TYPE_24__** %20, align 8
  br label %442

1018:                                             ; preds = %456, %442
  %1019 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %1020 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %1019, i32 0, i32 0
  %1021 = load i32, i32* %1020, align 8
  %1022 = icmp ne i32 %1021, 0
  br i1 %1022, label %1023, label %1030

1023:                                             ; preds = %1018
  %1024 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %1025 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %1024, i32 0, i32 11
  %1026 = load i8*, i8** %1025, align 8
  store i8 0, i8* %1026, align 1
  %1027 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %1028 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %1027, i32 0, i32 2
  %1029 = load i8*, i8** %1028, align 8
  store i8* %1029, i8** %10, align 8
  br label %1058

1030:                                             ; preds = %1018
  %1031 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %1032 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %1031, i32 0, i32 10
  %1033 = load i8*, i8** %1032, align 8
  %1034 = getelementptr inbounds i8, i8* %1033, i64 -1
  %1035 = load i8, i8* %1034, align 1
  %1036 = sext i8 %1035 to i32
  %1037 = icmp eq i32 %1036, 46
  br i1 %1037, label %1038, label %1043

1038:                                             ; preds = %1030
  %1039 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %1040 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %1039, i32 0, i32 10
  %1041 = load i8*, i8** %1040, align 8
  %1042 = getelementptr inbounds i8, i8* %1041, i64 -1
  store i8 0, i8* %1042, align 1
  br label %1047

1043:                                             ; preds = %1030
  %1044 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %1045 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %1044, i32 0, i32 10
  %1046 = load i8*, i8** %1045, align 8
  store i8 0, i8* %1046, align 1
  br label %1047

1047:                                             ; preds = %1043, %1038
  %1048 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %1049 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %1048, i32 0, i32 4
  %1050 = load i32, i32* %1049, align 8
  %1051 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %1052 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %1051, i32 0, i32 14
  %1053 = load %struct.TYPE_23__*, %struct.TYPE_23__** %1052, align 8
  %1054 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %1053, i32 0, i32 2
  store i32 %1050, i32* %1054, align 8
  %1055 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %1056 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %1055, i32 0, i32 1
  %1057 = load i8*, i8** %1056, align 8
  store i8* %1057, i8** %10, align 8
  br label %1058

1058:                                             ; preds = %1047, %1023, %78
  %1059 = load i8*, i8** %10, align 8
  ret i8* %1059
}

declare dso_local i32 @MemSet(%struct.TYPE_22__*, i32, i32) #1

declare dso_local i64 @IS_EEEE(%struct.TYPE_23__*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i8* @strcpy(i8*, i8*) #1

declare dso_local i64 @IS_ROMAN(%struct.TYPE_23__*) #1

declare dso_local i64 @IS_FILLMODE(%struct.TYPE_23__*) #1

declare dso_local i64 @IS_PLUS(%struct.TYPE_23__*) #1

declare dso_local i32 @IS_MINUS(%struct.TYPE_23__*) #1

declare dso_local i64 @IS_BRACKET(%struct.TYPE_23__*) #1

declare dso_local i32 @IS_LSIGN(%struct.TYPE_23__*) #1

declare dso_local i64 @IS_DECIMAL(%struct.TYPE_23__*) #1

declare dso_local i8* @get_last_relevant_decnum(i8*) #1

declare dso_local i32 @NUM_prepare_locale(%struct.TYPE_22__*) #1

declare dso_local i32 @NUM_numpart_to_char(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @NUM_numpart_from_char(%struct.TYPE_22__*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @pg_mbstrlen(i8*) #1

declare dso_local i32 @memset(i8*, i8 signext, i32) #1

declare dso_local i32 @AMOUNT_TEST(i32) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @NUM_eat_non_data_chars(%struct.TYPE_22__*, i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i8* @asc_tolower_z(i8*) #1

declare dso_local i8* @get_th(i8*, i32) #1

declare dso_local i32 @pg_mblen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
