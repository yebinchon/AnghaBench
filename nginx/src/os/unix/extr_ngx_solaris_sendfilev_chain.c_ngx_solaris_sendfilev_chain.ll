; ModuleID = '/home/carl/AnghaBench/nginx/src/os/unix/extr_ngx_solaris_sendfilev_chain.c_ngx_solaris_sendfilev_chain.c'
source_filename = "/home/carl/AnghaBench/nginx/src/os/unix/extr_ngx_solaris_sendfilev_chain.c_ngx_solaris_sendfilev_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { %struct.TYPE_27__*, %struct.TYPE_26__* }
%struct.TYPE_27__ = type { i32, i64, i64, i64, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32, %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_25__ = type { i64, i32, i32, i32, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i32, i64 }
%struct.TYPE_23__ = type { i64, i32, i64, i64 }

@NGX_SENDFILEVECS = common dso_local global i32 0, align 4
@NGX_MAX_SIZE_T_VALUE = common dso_local global i64 0, align 8
@ngx_pagesize = common dso_local global i64 0, align 8
@SFV_FD_SELF = common dso_local global i8* null, align 8
@ngx_errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"sendfilev() failed\00", align 1
@NGX_CHAIN_ERROR = common dso_local global %struct.TYPE_26__* null, align 8
@NGX_LOG_DEBUG_EVENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"sendfilev() sent only %uz bytes\00", align 1
@NGX_LOG_ALERT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"sendfilev() reported that \22%s\22 was truncated at %O\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"sendfilev() returned 0 with memory buffers\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"sendfilev: %z %z\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_26__* @ngx_solaris_sendfilev_chain(%struct.TYPE_25__* %0, %struct.TYPE_26__* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_26__*, align 8
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca %struct.TYPE_26__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_27__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_23__*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca %struct.TYPE_24__*, align 8
  %25 = alloca %struct.TYPE_26__*, align 8
  %26 = alloca i32, align 4
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %5, align 8
  store %struct.TYPE_26__* %1, %struct.TYPE_26__** %6, align 8
  store i64 %2, i64* %7, align 8
  %27 = load i32, i32* @NGX_SENDFILEVECS, align 4
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %22, align 8
  %30 = alloca %struct.TYPE_23__, i64 %28, align 16
  store i64 %28, i64* %23, align 8
  %31 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %31, i32 0, i32 4
  %33 = load %struct.TYPE_24__*, %struct.TYPE_24__** %32, align 8
  store %struct.TYPE_24__* %33, %struct.TYPE_24__** %24, align 8
  %34 = load %struct.TYPE_24__*, %struct.TYPE_24__** %24, align 8
  %35 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %3
  %39 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  store %struct.TYPE_26__* %39, %struct.TYPE_26__** %4, align 8
  store i32 1, i32* %26, align 4
  br label %397

40:                                               ; preds = %3
  %41 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %40
  %46 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %47 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %48 = load i64, i64* %7, align 8
  %49 = call %struct.TYPE_26__* @ngx_writev_chain(%struct.TYPE_25__* %46, %struct.TYPE_26__* %47, i64 %48)
  store %struct.TYPE_26__* %49, %struct.TYPE_26__** %4, align 8
  store i32 1, i32* %26, align 4
  br label %397

50:                                               ; preds = %40
  %51 = load i64, i64* %7, align 8
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %50
  %54 = load i64, i64* %7, align 8
  %55 = load i64, i64* @NGX_MAX_SIZE_T_VALUE, align 8
  %56 = load i64, i64* @ngx_pagesize, align 8
  %57 = sub nsw i64 %55, %56
  %58 = icmp sgt i64 %54, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %53, %50
  %60 = load i64, i64* @NGX_MAX_SIZE_T_VALUE, align 8
  %61 = load i64, i64* @ngx_pagesize, align 8
  %62 = sub nsw i64 %60, %61
  store i64 %62, i64* %7, align 8
  br label %63

63:                                               ; preds = %59, %53
  store i64 0, i64* %11, align 8
  br label %64

64:                                               ; preds = %396, %373, %63
  %65 = load i8*, i8** @SFV_FD_SELF, align 8
  %66 = ptrtoint i8* %65 to i32
  store i32 %66, i32* %8, align 4
  store i32* null, i32** %9, align 8
  store i64 0, i64* %14, align 8
  store %struct.TYPE_27__* null, %struct.TYPE_27__** %19, align 8
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %21, align 8
  store i32 0, i32* %17, align 4
  store i64 0, i64* %15, align 8
  %67 = load i64, i64* %11, align 8
  store i64 %67, i64* %12, align 8
  store i32 0, i32* %20, align 4
  %68 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  store %struct.TYPE_26__* %68, %struct.TYPE_26__** %25, align 8
  br label %69

69:                                               ; preds = %290, %64
  %70 = load %struct.TYPE_26__*, %struct.TYPE_26__** %25, align 8
  %71 = icmp ne %struct.TYPE_26__* %70, null
  br i1 %71, label %72, label %76

72:                                               ; preds = %69
  %73 = load i64, i64* %11, align 8
  %74 = load i64, i64* %7, align 8
  %75 = icmp slt i64 %73, %74
  br label %76

76:                                               ; preds = %72, %69
  %77 = phi i1 [ false, %69 ], [ %75, %72 ]
  br i1 %77, label %78, label %294

78:                                               ; preds = %76
  %79 = load %struct.TYPE_26__*, %struct.TYPE_26__** %25, align 8
  %80 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_27__*, %struct.TYPE_27__** %80, align 8
  %82 = call i64 @ngx_buf_special(%struct.TYPE_27__* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %78
  br label %290

85:                                               ; preds = %78
  %86 = load %struct.TYPE_26__*, %struct.TYPE_26__** %25, align 8
  %87 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_27__*, %struct.TYPE_27__** %87, align 8
  %89 = call i64 @ngx_buf_in_memory_only(%struct.TYPE_27__* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %168

91:                                               ; preds = %85
  %92 = load i8*, i8** @SFV_FD_SELF, align 8
  %93 = ptrtoint i8* %92 to i32
  store i32 %93, i32* %8, align 4
  %94 = load %struct.TYPE_26__*, %struct.TYPE_26__** %25, align 8
  %95 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_27__*, %struct.TYPE_27__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = sext i32 %98 to i64
  %100 = load %struct.TYPE_26__*, %struct.TYPE_26__** %25, align 8
  %101 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_27__*, %struct.TYPE_27__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = sub nsw i64 %99, %104
  store i64 %105, i64* %10, align 8
  %106 = load i64, i64* %11, align 8
  %107 = load i64, i64* %10, align 8
  %108 = add nsw i64 %106, %107
  %109 = load i64, i64* %7, align 8
  %110 = icmp sgt i64 %108, %109
  br i1 %110, label %111, label %115

111:                                              ; preds = %91
  %112 = load i64, i64* %7, align 8
  %113 = load i64, i64* %11, align 8
  %114 = sub nsw i64 %112, %113
  store i64 %114, i64* %10, align 8
  br label %115

115:                                              ; preds = %111, %91
  %116 = load i32*, i32** %9, align 8
  %117 = load %struct.TYPE_26__*, %struct.TYPE_26__** %25, align 8
  %118 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_27__*, %struct.TYPE_27__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = inttoptr i64 %121 to i32*
  %123 = icmp eq i32* %116, %122
  br i1 %123, label %124, label %130

124:                                              ; preds = %115
  %125 = load i64, i64* %10, align 8
  %126 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %127 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = add i64 %128, %125
  store i64 %129, i64* %127, align 8
  br label %156

130:                                              ; preds = %115
  %131 = load i32, i32* %20, align 4
  %132 = load i32, i32* @NGX_SENDFILEVECS, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %130
  br label %294

135:                                              ; preds = %130
  %136 = load i32, i32* %20, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %20, align 4
  %138 = sext i32 %136 to i64
  %139 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %30, i64 %138
  store %struct.TYPE_23__* %139, %struct.TYPE_23__** %21, align 8
  %140 = load i8*, i8** @SFV_FD_SELF, align 8
  %141 = ptrtoint i8* %140 to i32
  %142 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %143 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %142, i32 0, i32 1
  store i32 %141, i32* %143, align 8
  %144 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %145 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %144, i32 0, i32 3
  store i64 0, i64* %145, align 8
  %146 = load %struct.TYPE_26__*, %struct.TYPE_26__** %25, align 8
  %147 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %146, i32 0, i32 0
  %148 = load %struct.TYPE_27__*, %struct.TYPE_27__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %152 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %151, i32 0, i32 2
  store i64 %150, i64* %152, align 8
  %153 = load i64, i64* %10, align 8
  %154 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %155 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %154, i32 0, i32 0
  store i64 %153, i64* %155, align 8
  br label %156

156:                                              ; preds = %135, %124
  %157 = load %struct.TYPE_26__*, %struct.TYPE_26__** %25, align 8
  %158 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %157, i32 0, i32 0
  %159 = load %struct.TYPE_27__*, %struct.TYPE_27__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* %10, align 8
  %163 = add i64 %161, %162
  %164 = inttoptr i64 %163 to i32*
  store i32* %164, i32** %9, align 8
  %165 = load i64, i64* %10, align 8
  %166 = load i64, i64* %11, align 8
  %167 = add nsw i64 %166, %165
  store i64 %167, i64* %11, align 8
  br label %289

168:                                              ; preds = %85
  store i32* null, i32** %9, align 8
  %169 = load %struct.TYPE_26__*, %struct.TYPE_26__** %25, align 8
  %170 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %169, i32 0, i32 0
  %171 = load %struct.TYPE_27__*, %struct.TYPE_27__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %171, i32 0, i32 2
  %173 = load i64, i64* %172, align 8
  %174 = load %struct.TYPE_26__*, %struct.TYPE_26__** %25, align 8
  %175 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %174, i32 0, i32 0
  %176 = load %struct.TYPE_27__*, %struct.TYPE_27__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %176, i32 0, i32 3
  %178 = load i64, i64* %177, align 8
  %179 = sub nsw i64 %173, %178
  store i64 %179, i64* %10, align 8
  %180 = load i64, i64* %11, align 8
  %181 = load i64, i64* %10, align 8
  %182 = add nsw i64 %180, %181
  %183 = load i64, i64* %7, align 8
  %184 = icmp sgt i64 %182, %183
  br i1 %184, label %185, label %219

185:                                              ; preds = %168
  %186 = load i64, i64* %7, align 8
  %187 = load i64, i64* %11, align 8
  %188 = sub nsw i64 %186, %187
  store i64 %188, i64* %10, align 8
  %189 = load %struct.TYPE_26__*, %struct.TYPE_26__** %25, align 8
  %190 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %189, i32 0, i32 0
  %191 = load %struct.TYPE_27__*, %struct.TYPE_27__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %191, i32 0, i32 3
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* %10, align 8
  %195 = add nsw i64 %193, %194
  %196 = load i64, i64* @ngx_pagesize, align 8
  %197 = add nsw i64 %195, %196
  %198 = sub nsw i64 %197, 1
  %199 = load i64, i64* @ngx_pagesize, align 8
  %200 = sub nsw i64 %199, 1
  %201 = xor i64 %200, -1
  %202 = and i64 %198, %201
  store i64 %202, i64* %13, align 8
  %203 = load i64, i64* %13, align 8
  %204 = load %struct.TYPE_26__*, %struct.TYPE_26__** %25, align 8
  %205 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %204, i32 0, i32 0
  %206 = load %struct.TYPE_27__*, %struct.TYPE_27__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %206, i32 0, i32 2
  %208 = load i64, i64* %207, align 8
  %209 = icmp sle i64 %203, %208
  br i1 %209, label %210, label %218

210:                                              ; preds = %185
  %211 = load i64, i64* %13, align 8
  %212 = load %struct.TYPE_26__*, %struct.TYPE_26__** %25, align 8
  %213 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %212, i32 0, i32 0
  %214 = load %struct.TYPE_27__*, %struct.TYPE_27__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %214, i32 0, i32 3
  %216 = load i64, i64* %215, align 8
  %217 = sub nsw i64 %211, %216
  store i64 %217, i64* %10, align 8
  br label %218

218:                                              ; preds = %210, %185
  br label %219

219:                                              ; preds = %218, %168
  %220 = load i32, i32* %8, align 4
  %221 = load %struct.TYPE_26__*, %struct.TYPE_26__** %25, align 8
  %222 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %221, i32 0, i32 0
  %223 = load %struct.TYPE_27__*, %struct.TYPE_27__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %223, i32 0, i32 4
  %225 = load %struct.TYPE_22__*, %struct.TYPE_22__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = icmp eq i32 %220, %227
  br i1 %228, label %229, label %243

229:                                              ; preds = %219
  %230 = load i64, i64* %14, align 8
  %231 = load %struct.TYPE_26__*, %struct.TYPE_26__** %25, align 8
  %232 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %231, i32 0, i32 0
  %233 = load %struct.TYPE_27__*, %struct.TYPE_27__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %233, i32 0, i32 3
  %235 = load i64, i64* %234, align 8
  %236 = icmp eq i64 %230, %235
  br i1 %236, label %237, label %243

237:                                              ; preds = %229
  %238 = load i64, i64* %10, align 8
  %239 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %240 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %239, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = add i64 %241, %238
  store i64 %242, i64* %240, align 8
  br label %275

243:                                              ; preds = %229, %219
  %244 = load i32, i32* %20, align 4
  %245 = load i32, i32* @NGX_SENDFILEVECS, align 4
  %246 = icmp eq i32 %244, %245
  br i1 %246, label %247, label %248

247:                                              ; preds = %243
  br label %294

248:                                              ; preds = %243
  %249 = load i32, i32* %20, align 4
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %20, align 4
  %251 = sext i32 %249 to i64
  %252 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %30, i64 %251
  store %struct.TYPE_23__* %252, %struct.TYPE_23__** %21, align 8
  %253 = load %struct.TYPE_26__*, %struct.TYPE_26__** %25, align 8
  %254 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %253, i32 0, i32 0
  %255 = load %struct.TYPE_27__*, %struct.TYPE_27__** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %255, i32 0, i32 4
  %257 = load %struct.TYPE_22__*, %struct.TYPE_22__** %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 4
  store i32 %259, i32* %8, align 4
  %260 = load i32, i32* %8, align 4
  %261 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %262 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %261, i32 0, i32 1
  store i32 %260, i32* %262, align 8
  %263 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %264 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %263, i32 0, i32 3
  store i64 0, i64* %264, align 8
  %265 = load %struct.TYPE_26__*, %struct.TYPE_26__** %25, align 8
  %266 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %265, i32 0, i32 0
  %267 = load %struct.TYPE_27__*, %struct.TYPE_27__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %267, i32 0, i32 3
  %269 = load i64, i64* %268, align 8
  %270 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %271 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %270, i32 0, i32 2
  store i64 %269, i64* %271, align 8
  %272 = load i64, i64* %10, align 8
  %273 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %274 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %273, i32 0, i32 0
  store i64 %272, i64* %274, align 8
  br label %275

275:                                              ; preds = %248, %237
  %276 = load %struct.TYPE_26__*, %struct.TYPE_26__** %25, align 8
  %277 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %276, i32 0, i32 0
  %278 = load %struct.TYPE_27__*, %struct.TYPE_27__** %277, align 8
  store %struct.TYPE_27__* %278, %struct.TYPE_27__** %19, align 8
  %279 = load %struct.TYPE_26__*, %struct.TYPE_26__** %25, align 8
  %280 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %279, i32 0, i32 0
  %281 = load %struct.TYPE_27__*, %struct.TYPE_27__** %280, align 8
  %282 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %281, i32 0, i32 3
  %283 = load i64, i64* %282, align 8
  %284 = load i64, i64* %10, align 8
  %285 = add nsw i64 %283, %284
  store i64 %285, i64* %14, align 8
  %286 = load i64, i64* %10, align 8
  %287 = load i64, i64* %11, align 8
  %288 = add nsw i64 %287, %286
  store i64 %288, i64* %11, align 8
  br label %289

289:                                              ; preds = %275, %156
  br label %290

290:                                              ; preds = %289, %84
  %291 = load %struct.TYPE_26__*, %struct.TYPE_26__** %25, align 8
  %292 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %291, i32 0, i32 1
  %293 = load %struct.TYPE_26__*, %struct.TYPE_26__** %292, align 8
  store %struct.TYPE_26__* %293, %struct.TYPE_26__** %25, align 8
  br label %69

294:                                              ; preds = %247, %134, %76
  %295 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %296 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %295, i32 0, i32 2
  %297 = load i32, i32* %296, align 4
  %298 = load i32, i32* %20, align 4
  %299 = call i32 @sendfilev(i32 %297, %struct.TYPE_23__* %30, i32 %298, i64* %15)
  store i32 %299, i32* %16, align 4
  %300 = load i32, i32* %16, align 4
  %301 = icmp eq i32 %300, -1
  br i1 %301, label %302, label %322

302:                                              ; preds = %294
  %303 = load i32, i32* @ngx_errno, align 4
  store i32 %303, i32* %18, align 4
  %304 = load i32, i32* %18, align 4
  switch i32 %304, label %307 [
    i32 129, label %305
    i32 128, label %306
  ]

305:                                              ; preds = %302
  br label %314

306:                                              ; preds = %302
  store i32 1, i32* %17, align 4
  br label %314

307:                                              ; preds = %302
  %308 = load %struct.TYPE_24__*, %struct.TYPE_24__** %24, align 8
  %309 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %308, i32 0, i32 0
  store i32 1, i32* %309, align 8
  %310 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %311 = load i32, i32* %18, align 4
  %312 = call i32 @ngx_connection_error(%struct.TYPE_25__* %310, i32 %311, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %313 = load %struct.TYPE_26__*, %struct.TYPE_26__** @NGX_CHAIN_ERROR, align 8
  store %struct.TYPE_26__* %313, %struct.TYPE_26__** %4, align 8
  store i32 1, i32* %26, align 4
  br label %397

314:                                              ; preds = %306, %305
  %315 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %316 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %317 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %316, i32 0, i32 1
  %318 = load i32, i32* %317, align 8
  %319 = load i32, i32* %18, align 4
  %320 = load i64, i64* %15, align 8
  %321 = call i32 @ngx_log_debug1(i32 %315, i32 %318, i32 %319, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %320)
  br label %355

322:                                              ; preds = %294
  %323 = load i32, i32* %16, align 4
  %324 = icmp eq i32 %323, 0
  br i1 %324, label %325, label %354

325:                                              ; preds = %322
  %326 = load i64, i64* %15, align 8
  %327 = icmp eq i64 %326, 0
  br i1 %327, label %328, label %354

328:                                              ; preds = %325
  %329 = load %struct.TYPE_27__*, %struct.TYPE_27__** %19, align 8
  %330 = icmp ne %struct.TYPE_27__* %329, null
  br i1 %330, label %331, label %346

331:                                              ; preds = %328
  %332 = load i32, i32* @NGX_LOG_ALERT, align 4
  %333 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %334 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %333, i32 0, i32 1
  %335 = load i32, i32* %334, align 8
  %336 = load %struct.TYPE_27__*, %struct.TYPE_27__** %19, align 8
  %337 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %336, i32 0, i32 4
  %338 = load %struct.TYPE_22__*, %struct.TYPE_22__** %337, align 8
  %339 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %338, i32 0, i32 1
  %340 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %339, i32 0, i32 0
  %341 = load i32, i32* %340, align 4
  %342 = load %struct.TYPE_27__*, %struct.TYPE_27__** %19, align 8
  %343 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %342, i32 0, i32 3
  %344 = load i64, i64* %343, align 8
  %345 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %332, i32 %335, i32 0, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %341, i64 %344)
  br label %352

346:                                              ; preds = %328
  %347 = load i32, i32* @NGX_LOG_ALERT, align 4
  %348 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %349 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %348, i32 0, i32 1
  %350 = load i32, i32* %349, align 8
  %351 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %347, i32 %350, i32 0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  br label %352

352:                                              ; preds = %346, %331
  %353 = load %struct.TYPE_26__*, %struct.TYPE_26__** @NGX_CHAIN_ERROR, align 8
  store %struct.TYPE_26__* %353, %struct.TYPE_26__** %4, align 8
  store i32 1, i32* %26, align 4
  br label %397

354:                                              ; preds = %325, %322
  br label %355

355:                                              ; preds = %354, %314
  %356 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %357 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %358 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %357, i32 0, i32 1
  %359 = load i32, i32* %358, align 8
  %360 = load i32, i32* %16, align 4
  %361 = load i64, i64* %15, align 8
  %362 = call i32 @ngx_log_debug2(i32 %356, i32 %359, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %360, i64 %361)
  %363 = load i64, i64* %15, align 8
  %364 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %365 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %364, i32 0, i32 0
  %366 = load i64, i64* %365, align 8
  %367 = add i64 %366, %363
  store i64 %367, i64* %365, align 8
  %368 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %369 = load i64, i64* %15, align 8
  %370 = call %struct.TYPE_26__* @ngx_chain_update_sent(%struct.TYPE_26__* %368, i64 %369)
  store %struct.TYPE_26__* %370, %struct.TYPE_26__** %6, align 8
  %371 = load i32, i32* %17, align 4
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %373, label %377

373:                                              ; preds = %355
  %374 = load i64, i64* %12, align 8
  %375 = load i64, i64* %15, align 8
  %376 = add i64 %374, %375
  store i64 %376, i64* %11, align 8
  br label %64

377:                                              ; preds = %355
  %378 = load i64, i64* %11, align 8
  %379 = load i64, i64* %12, align 8
  %380 = sub nsw i64 %378, %379
  %381 = load i64, i64* %15, align 8
  %382 = icmp ne i64 %380, %381
  br i1 %382, label %383, label %387

383:                                              ; preds = %377
  %384 = load %struct.TYPE_24__*, %struct.TYPE_24__** %24, align 8
  %385 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %384, i32 0, i32 1
  store i64 0, i64* %385, align 8
  %386 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  store %struct.TYPE_26__* %386, %struct.TYPE_26__** %4, align 8
  store i32 1, i32* %26, align 4
  br label %397

387:                                              ; preds = %377
  %388 = load i64, i64* %11, align 8
  %389 = load i64, i64* %7, align 8
  %390 = icmp sge i64 %388, %389
  br i1 %390, label %394, label %391

391:                                              ; preds = %387
  %392 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %393 = icmp eq %struct.TYPE_26__* %392, null
  br i1 %393, label %394, label %396

394:                                              ; preds = %391, %387
  %395 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  store %struct.TYPE_26__* %395, %struct.TYPE_26__** %4, align 8
  store i32 1, i32* %26, align 4
  br label %397

396:                                              ; preds = %391
  br label %64

397:                                              ; preds = %394, %383, %352, %307, %45, %38
  %398 = load i8*, i8** %22, align 8
  call void @llvm.stackrestore(i8* %398)
  %399 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  ret %struct.TYPE_26__* %399
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_26__* @ngx_writev_chain(%struct.TYPE_25__*, %struct.TYPE_26__*, i64) #2

declare dso_local i64 @ngx_buf_special(%struct.TYPE_27__*) #2

declare dso_local i64 @ngx_buf_in_memory_only(%struct.TYPE_27__*) #2

declare dso_local i32 @sendfilev(i32, %struct.TYPE_23__*, i32, i64*) #2

declare dso_local i32 @ngx_connection_error(%struct.TYPE_25__*, i32, i8*) #2

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i64) #2

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, ...) #2

declare dso_local i32 @ngx_log_debug2(i32, i32, i32, i8*, i32, i64) #2

declare dso_local %struct.TYPE_26__* @ngx_chain_update_sent(%struct.TYPE_26__*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
