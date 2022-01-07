; ModuleID = '/home/carl/AnghaBench/memcached/extr_memcached.c_process_mdelete_command.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_memcached.c_process_mdelete_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i64 }
%struct.TYPE_27__ = type { i8*, i32, %struct.TYPE_24__*, i32, i32 }
%struct.TYPE_24__ = type { %struct.TYPE_23__, i32 }
%struct.TYPE_23__ = type { i32, i32, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_25__ = type { i64, i8* }
%struct.TYPE_26__ = type { i32, i32, i32 }
%struct._meta_flags = type { i64, i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"CLIENT_ERROR bad command line format\00", align 1
@KEY_TOKEN = common dso_local global i64 0, align 8
@KEY_MAX_LENGTH = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@MFLAG_MAX_OPT_LENGTH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"CLIENT_ERROR options flags too long\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"CLIENT_ERROR invalid or duplicate flag\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"CLIENT_ERROR incorrect number of tokens supplied\00", align 1
@MFLAG_MAX_OPAQUE_LENGTH = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [35 x i8] c"CLIENT_ERROR opaque token too long\00", align 1
@DONT_UPDATE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"EX \00", align 1
@DISABLE_NOREPLY = common dso_local global i32 0, align 4
@ITEM_STALE = common dso_local global i32 0, align 4
@ITEM_TOKEN_SENT = common dso_local global i32 0, align 4
@settings = common dso_local global %struct.TYPE_28__ zeroinitializer, align 8
@.str.7 = private unnamed_addr constant [4 x i8] c"DE \00", align 1
@ALLOW_NOREPLY = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [4 x i8] c"NF \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_27__*, %struct.TYPE_25__*, i64)* @process_mdelete_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_mdelete_command(%struct.TYPE_27__* %0, %struct.TYPE_25__* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_27__*, align 8
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_26__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct._meta_flags, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %4, align 8
  store %struct.TYPE_25__* %1, %struct.TYPE_25__** %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %9, align 4
  store i64 0, i64* %10, align 8
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %13, align 8
  %22 = bitcast %struct._meta_flags* %18 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %22, i8 0, i64 16, i1 false)
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8** %19, align 8
  %23 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %24 = icmp ne %struct.TYPE_27__* %23, null
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %28 = load i64, i64* @KEY_TOKEN, align 8
  %29 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @KEY_MAX_LENGTH, align 8
  %33 = icmp ugt i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %3
  %35 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %36 = call i32 @out_string(%struct.TYPE_27__* %35, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %428

37:                                               ; preds = %3
  %38 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %39 = load i64, i64* @KEY_TOKEN, align 8
  %40 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  store i8* %42, i8** %7, align 8
  %43 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %44 = load i64, i64* @KEY_TOKEN, align 8
  %45 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %8, align 8
  store i32 3, i32* %12, align 4
  %48 = load i64, i64* %6, align 8
  %49 = icmp eq i64 %48, 3
  br i1 %49, label %50, label %51

50:                                               ; preds = %37
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %14, align 8
  store i32 0, i32* %15, align 4
  br label %67

51:                                               ; preds = %37
  %52 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %53 = load i64, i64* @KEY_TOKEN, align 8
  %54 = add i64 %53, 1
  %55 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %55, i32 0, i32 1
  %57 = load i8*, i8** %56, align 8
  store i8* %57, i8** %14, align 8
  %58 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %59 = load i64, i64* @KEY_TOKEN, align 8
  %60 = add i64 %59, 1
  %61 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %15, align 4
  %65 = load i32, i32* %12, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %12, align 4
  br label %67

67:                                               ; preds = %51, %50
  %68 = load i32, i32* %15, align 4
  %69 = load i32, i32* @MFLAG_MAX_OPT_LENGTH, align 4
  %70 = icmp sgt i32 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %73 = call i32 @out_string(%struct.TYPE_27__* %72, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %428

74:                                               ; preds = %67
  %75 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 3
  store i8* %78, i8** %11, align 8
  %79 = load i8*, i8** %11, align 8
  %80 = load i8*, i8** %14, align 8
  %81 = load i32, i32* %15, align 4
  %82 = call i32 @memcpy(i8* %79, i8* %80, i32 %81)
  %83 = load i32, i32* %15, align 4
  %84 = load i8*, i8** %11, align 8
  %85 = sext i32 %83 to i64
  %86 = getelementptr inbounds i8, i8* %84, i64 %85
  store i8* %86, i8** %11, align 8
  %87 = load i8*, i8** %14, align 8
  %88 = load i32, i32* %15, align 4
  %89 = call i32 @_meta_flag_preparse(i8* %87, i32 %88, %struct._meta_flags* %18)
  store i32 %89, i32* %20, align 4
  %90 = load i32, i32* %20, align 4
  %91 = load i32, i32* %12, align 4
  %92 = add nsw i32 %90, %91
  %93 = sext i32 %92 to i64
  %94 = load i64, i64* %6, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %106

96:                                               ; preds = %74
  %97 = load i32, i32* %20, align 4
  %98 = icmp eq i32 %97, -1
  br i1 %98, label %99, label %102

99:                                               ; preds = %96
  %100 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %101 = call i32 @out_errstring(%struct.TYPE_27__* %100, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  br label %105

102:                                              ; preds = %96
  %103 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %104 = call i32 @out_errstring(%struct.TYPE_27__* %103, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0))
  br label %105

105:                                              ; preds = %102, %99
  br label %428

106:                                              ; preds = %74
  %107 = load i64, i64* @KEY_TOKEN, align 8
  %108 = add i64 %107, 2
  %109 = trunc i64 %108 to i32
  store i32 %109, i32* %12, align 4
  %110 = getelementptr inbounds %struct._meta_flags, %struct._meta_flags* %18, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %112, i32 0, i32 4
  store i32 %111, i32* %113, align 4
  %114 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %115 = icmp ne %struct.TYPE_27__* %114, null
  %116 = zext i1 %115 to i32
  %117 = call i32 @assert(i32 %116)
  store i32 0, i32* %21, align 4
  store i32 0, i32* %16, align 4
  br label %118

118:                                              ; preds = %210, %106
  %119 = load i32, i32* %16, align 4
  %120 = load i32, i32* %15, align 4
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %122, label %213

122:                                              ; preds = %118
  %123 = load i8*, i8** %14, align 8
  %124 = load i32, i32* %16, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8, i8* %123, i64 %125
  %127 = load i8, i8* %126, align 1
  %128 = sext i8 %127 to i32
  switch i32 %128, label %209 [
    i32 67, label %129
    i32 84, label %142
    i32 79, label %155
    i32 107, label %195
  ]

129:                                              ; preds = %122
  %130 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %131 = load i32, i32* %12, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %133, i32 0, i32 1
  %135 = load i8*, i8** %134, align 8
  %136 = call i32 @safe_strtoull(i8* %135, i64* %10)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %139, label %138

138:                                              ; preds = %129
  br label %424

139:                                              ; preds = %129
  %140 = load i32, i32* %12, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %12, align 4
  br label %209

142:                                              ; preds = %122
  %143 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %144 = load i32, i32* %12, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %146, i32 0, i32 1
  %148 = load i8*, i8** %147, align 8
  %149 = call i32 @safe_strtoul(i8* %148, i32* %9)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %152, label %151

151:                                              ; preds = %142
  br label %424

152:                                              ; preds = %142
  store i32 1, i32* %21, align 4
  %153 = load i32, i32* %12, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %12, align 4
  br label %209

155:                                              ; preds = %122
  %156 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %157 = load i32, i32* %12, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %156, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load i32, i32* @MFLAG_MAX_OPAQUE_LENGTH, align 4
  %163 = sext i32 %162 to i64
  %164 = icmp ugt i64 %161, %163
  br i1 %164, label %165, label %166

165:                                              ; preds = %155
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i8** %19, align 8
  br label %424

166:                                              ; preds = %155
  %167 = load i8*, i8** %11, align 8
  store i8 32, i8* %167, align 1
  %168 = load i8*, i8** %11, align 8
  %169 = getelementptr inbounds i8, i8* %168, i64 1
  %170 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %171 = load i32, i32* %12, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %170, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %173, i32 0, i32 1
  %175 = load i8*, i8** %174, align 8
  %176 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %177 = load i32, i32* %12, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %176, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = trunc i64 %181 to i32
  %183 = call i32 @memcpy(i8* %169, i8* %175, i32 %182)
  %184 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %185 = load i32, i32* %12, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %184, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = add i64 %189, 1
  %191 = load i8*, i8** %11, align 8
  %192 = getelementptr inbounds i8, i8* %191, i64 %190
  store i8* %192, i8** %11, align 8
  %193 = load i32, i32* %12, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %12, align 4
  br label %209

195:                                              ; preds = %122
  %196 = load i8*, i8** %11, align 8
  store i8 32, i8* %196, align 1
  %197 = load i8*, i8** %11, align 8
  %198 = getelementptr inbounds i8, i8* %197, i64 1
  %199 = load i8*, i8** %7, align 8
  %200 = load i64, i64* %8, align 8
  %201 = trunc i64 %200 to i32
  %202 = call i32 @memcpy(i8* %198, i8* %199, i32 %201)
  %203 = load i64, i64* %8, align 8
  %204 = add i64 %203, 1
  %205 = load i8*, i8** %11, align 8
  %206 = getelementptr inbounds i8, i8* %205, i64 %204
  store i8* %206, i8** %11, align 8
  %207 = load i32, i32* %12, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %12, align 4
  br label %209

209:                                              ; preds = %122, %195, %166, %152, %139
  br label %210

210:                                              ; preds = %209
  %211 = load i32, i32* %16, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %16, align 4
  br label %118

213:                                              ; preds = %118
  %214 = load i8*, i8** %7, align 8
  %215 = load i64, i64* %8, align 8
  %216 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %217 = load i32, i32* @DONT_UPDATE, align 4
  %218 = call %struct.TYPE_26__* @item_get_locked(i8* %214, i64 %215, %struct.TYPE_27__* %216, i32 %217, i32* %17)
  store %struct.TYPE_26__* %218, %struct.TYPE_26__** %13, align 8
  %219 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %220 = icmp ne %struct.TYPE_26__* %219, null
  br i1 %220, label %221, label %378

221:                                              ; preds = %213
  %222 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %223 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %222, i32 0, i32 3
  %224 = load i32, i32* %223, align 8
  %225 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %226 = call i32 @ITEM_key(%struct.TYPE_26__* %225)
  %227 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %228 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %227, i32 0, i32 2
  %229 = load i32, i32* %228, align 4
  %230 = call i32 @MEMCACHED_COMMAND_DELETE(i32 %224, i32 %226, i32 %229)
  %231 = load i64, i64* %10, align 8
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %275

233:                                              ; preds = %221
  %234 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %235 = call i64 @ITEM_get_cas(%struct.TYPE_26__* %234)
  %236 = load i64, i64* %10, align 8
  %237 = icmp ne i64 %235, %236
  br i1 %237, label %238, label %275

238:                                              ; preds = %233
  %239 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %240 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %239, i32 0, i32 2
  %241 = load %struct.TYPE_24__*, %struct.TYPE_24__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %242, i32 0, i32 0
  %244 = call i32 @pthread_mutex_lock(i32* %243)
  %245 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %246 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %245, i32 0, i32 2
  %247 = load %struct.TYPE_24__*, %struct.TYPE_24__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %249, align 4
  %252 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %253 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %252, i32 0, i32 2
  %254 = load %struct.TYPE_24__*, %struct.TYPE_24__** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %255, i32 0, i32 0
  %257 = call i32 @pthread_mutex_unlock(i32* %256)
  %258 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %259 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %258, i32 0, i32 0
  %260 = load i8*, i8** %259, align 8
  %261 = call i32 @memcpy(i8* %260, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 3)
  %262 = load i8*, i8** %11, align 8
  %263 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %264 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %263, i32 0, i32 0
  %265 = load i8*, i8** %264, align 8
  %266 = ptrtoint i8* %262 to i64
  %267 = ptrtoint i8* %265 to i64
  %268 = sub i64 %266, %267
  %269 = trunc i64 %268 to i32
  %270 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %271 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %270, i32 0, i32 1
  store i32 %269, i32* %271, align 8
  %272 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %273 = load i32, i32* @DISABLE_NOREPLY, align 4
  %274 = call i32 @out_mstring(%struct.TYPE_27__* %272, i32 %273)
  br label %415

275:                                              ; preds = %233, %221
  %276 = getelementptr inbounds %struct._meta_flags, %struct._meta_flags* %18, i32 0, i32 0
  %277 = load i64, i64* %276, align 8
  %278 = icmp ne i64 %277, 0
  br i1 %278, label %279, label %325

279:                                              ; preds = %275
  %280 = load i32, i32* %21, align 4
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %287

282:                                              ; preds = %279
  %283 = load i32, i32* %9, align 4
  %284 = call i32 @realtime(i32 %283)
  %285 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %286 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %285, i32 0, i32 1
  store i32 %284, i32* %286, align 4
  br label %287

287:                                              ; preds = %282, %279
  %288 = load i32, i32* @ITEM_STALE, align 4
  %289 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %290 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 4
  %292 = or i32 %291, %288
  store i32 %292, i32* %290, align 4
  %293 = load i32, i32* @ITEM_TOKEN_SENT, align 4
  %294 = xor i32 %293, -1
  %295 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %296 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 4
  %298 = and i32 %297, %294
  store i32 %298, i32* %296, align 4
  %299 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %300 = load i64, i64* getelementptr inbounds (%struct.TYPE_28__, %struct.TYPE_28__* @settings, i32 0, i32 0), align 8
  %301 = icmp ne i64 %300, 0
  br i1 %301, label %302, label %304

302:                                              ; preds = %287
  %303 = call i32 (...) @get_cas_id()
  br label %305

304:                                              ; preds = %287
  br label %305

305:                                              ; preds = %304, %302
  %306 = phi i32 [ %303, %302 ], [ 0, %304 ]
  %307 = call i32 @ITEM_set_cas(%struct.TYPE_26__* %299, i32 %306)
  %308 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %309 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %308, i32 0, i32 0
  %310 = load i8*, i8** %309, align 8
  %311 = call i32 @memcpy(i8* %310, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 3)
  %312 = load i8*, i8** %11, align 8
  %313 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %314 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %313, i32 0, i32 0
  %315 = load i8*, i8** %314, align 8
  %316 = ptrtoint i8* %312 to i64
  %317 = ptrtoint i8* %315 to i64
  %318 = sub i64 %316, %317
  %319 = trunc i64 %318 to i32
  %320 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %321 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %320, i32 0, i32 1
  store i32 %319, i32* %321, align 8
  %322 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %323 = load i32, i32* @ALLOW_NOREPLY, align 4
  %324 = call i32 @out_mstring(%struct.TYPE_27__* %322, i32 %323)
  br label %377

325:                                              ; preds = %275
  %326 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %327 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %326, i32 0, i32 2
  %328 = load %struct.TYPE_24__*, %struct.TYPE_24__** %327, align 8
  %329 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %328, i32 0, i32 0
  %330 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %329, i32 0, i32 0
  %331 = call i32 @pthread_mutex_lock(i32* %330)
  %332 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %333 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %332, i32 0, i32 2
  %334 = load %struct.TYPE_24__*, %struct.TYPE_24__** %333, align 8
  %335 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %334, i32 0, i32 0
  %336 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %335, i32 0, i32 2
  %337 = load %struct.TYPE_22__*, %struct.TYPE_22__** %336, align 8
  %338 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %339 = call i64 @ITEM_clsid(%struct.TYPE_26__* %338)
  %340 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %337, i64 %339
  %341 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %340, i32 0, i32 0
  %342 = load i32, i32* %341, align 4
  %343 = add nsw i32 %342, 1
  store i32 %343, i32* %341, align 4
  %344 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %345 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %344, i32 0, i32 2
  %346 = load %struct.TYPE_24__*, %struct.TYPE_24__** %345, align 8
  %347 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %346, i32 0, i32 0
  %348 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %347, i32 0, i32 0
  %349 = call i32 @pthread_mutex_unlock(i32* %348)
  %350 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %351 = load i32, i32* %17, align 4
  %352 = call i32 @do_item_unlink(%struct.TYPE_26__* %350, i32 %351)
  %353 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %354 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %353, i32 0, i32 2
  %355 = load %struct.TYPE_24__*, %struct.TYPE_24__** %354, align 8
  %356 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %355, i32 0, i32 1
  %357 = load i32, i32* %356, align 8
  %358 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %359 = call i32 @STORAGE_delete(i32 %357, %struct.TYPE_26__* %358)
  %360 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %361 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %360, i32 0, i32 0
  %362 = load i8*, i8** %361, align 8
  %363 = call i32 @memcpy(i8* %362, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 3)
  %364 = load i8*, i8** %11, align 8
  %365 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %366 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %365, i32 0, i32 0
  %367 = load i8*, i8** %366, align 8
  %368 = ptrtoint i8* %364 to i64
  %369 = ptrtoint i8* %367 to i64
  %370 = sub i64 %368, %369
  %371 = trunc i64 %370 to i32
  %372 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %373 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %372, i32 0, i32 1
  store i32 %371, i32* %373, align 8
  %374 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %375 = load i32, i32* @ALLOW_NOREPLY, align 4
  %376 = call i32 @out_mstring(%struct.TYPE_27__* %374, i32 %375)
  br label %377

377:                                              ; preds = %325, %305
  br label %415

378:                                              ; preds = %213
  %379 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %380 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %379, i32 0, i32 2
  %381 = load %struct.TYPE_24__*, %struct.TYPE_24__** %380, align 8
  %382 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %381, i32 0, i32 0
  %383 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %382, i32 0, i32 0
  %384 = call i32 @pthread_mutex_lock(i32* %383)
  %385 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %386 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %385, i32 0, i32 2
  %387 = load %struct.TYPE_24__*, %struct.TYPE_24__** %386, align 8
  %388 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %387, i32 0, i32 0
  %389 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %388, i32 0, i32 1
  %390 = load i32, i32* %389, align 4
  %391 = add nsw i32 %390, 1
  store i32 %391, i32* %389, align 4
  %392 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %393 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %392, i32 0, i32 2
  %394 = load %struct.TYPE_24__*, %struct.TYPE_24__** %393, align 8
  %395 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %394, i32 0, i32 0
  %396 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %395, i32 0, i32 0
  %397 = call i32 @pthread_mutex_unlock(i32* %396)
  %398 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %399 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %398, i32 0, i32 0
  %400 = load i8*, i8** %399, align 8
  %401 = call i32 @memcpy(i8* %400, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i32 3)
  %402 = load i8*, i8** %11, align 8
  %403 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %404 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %403, i32 0, i32 0
  %405 = load i8*, i8** %404, align 8
  %406 = ptrtoint i8* %402 to i64
  %407 = ptrtoint i8* %405 to i64
  %408 = sub i64 %406, %407
  %409 = trunc i64 %408 to i32
  %410 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %411 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %410, i32 0, i32 1
  store i32 %409, i32* %411, align 8
  %412 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %413 = load i32, i32* @ALLOW_NOREPLY, align 4
  %414 = call i32 @out_mstring(%struct.TYPE_27__* %412, i32 %413)
  br label %415

415:                                              ; preds = %378, %377, %238
  %416 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %417 = icmp ne %struct.TYPE_26__* %416, null
  br i1 %417, label %418, label %421

418:                                              ; preds = %415
  %419 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %420 = call i32 @do_item_remove(%struct.TYPE_26__* %419)
  br label %421

421:                                              ; preds = %418, %415
  %422 = load i32, i32* %17, align 4
  %423 = call i32 @item_unlock(i32 %422)
  br label %428

424:                                              ; preds = %165, %151, %138
  %425 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %426 = load i8*, i8** %19, align 8
  %427 = call i32 @out_errstring(%struct.TYPE_27__* %425, i8* %426)
  br label %428

428:                                              ; preds = %424, %421, %105, %71, %34
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @out_string(%struct.TYPE_27__*, i8*) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @_meta_flag_preparse(i8*, i32, %struct._meta_flags*) #2

declare dso_local i32 @out_errstring(%struct.TYPE_27__*, i8*) #2

declare dso_local i32 @safe_strtoull(i8*, i64*) #2

declare dso_local i32 @safe_strtoul(i8*, i32*) #2

declare dso_local %struct.TYPE_26__* @item_get_locked(i8*, i64, %struct.TYPE_27__*, i32, i32*) #2

declare dso_local i32 @MEMCACHED_COMMAND_DELETE(i32, i32, i32) #2

declare dso_local i32 @ITEM_key(%struct.TYPE_26__*) #2

declare dso_local i64 @ITEM_get_cas(%struct.TYPE_26__*) #2

declare dso_local i32 @pthread_mutex_lock(i32*) #2

declare dso_local i32 @pthread_mutex_unlock(i32*) #2

declare dso_local i32 @out_mstring(%struct.TYPE_27__*, i32) #2

declare dso_local i32 @realtime(i32) #2

declare dso_local i32 @ITEM_set_cas(%struct.TYPE_26__*, i32) #2

declare dso_local i32 @get_cas_id(...) #2

declare dso_local i64 @ITEM_clsid(%struct.TYPE_26__*) #2

declare dso_local i32 @do_item_unlink(%struct.TYPE_26__*, i32) #2

declare dso_local i32 @STORAGE_delete(i32, %struct.TYPE_26__*) #2

declare dso_local i32 @do_item_remove(%struct.TYPE_26__*) #2

declare dso_local i32 @item_unlock(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
