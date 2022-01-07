; ModuleID = '/home/carl/AnghaBench/memcached/extr_memcached.c_process_mget_command.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_memcached.c_process_mget_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_38__ = type { i8*, i32, %struct.TYPE_35__*, i32, i32, %struct.TYPE_37__*, i32 }
%struct.TYPE_35__ = type { %struct.TYPE_34__ }
%struct.TYPE_34__ = type { i32, i32, i32, i32, i32, i32*, %struct.TYPE_33__*, i32 }
%struct.TYPE_33__ = type { i32 }
%struct.TYPE_37__ = type { i32, i32, i32, i32, i32, i64 }
%struct.TYPE_36__ = type { i64, i8* }
%struct._meta_flags = type { i32, i64, i32, i64, i32, i32 }

@KEY_TOKEN = common dso_local global i64 0, align 8
@KEY_MAX_LENGTH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"CLIENT_ERROR bad command line format\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"sftv\00", align 1
@MFLAG_MAX_OPT_LENGTH = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [40 x i8] c"CLIENT_ERROR options flags are too long\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"CLIENT_ERROR invalid or duplicate flag\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"CLIENT_ERROR incorrect number of tokens supplied\00", align 1
@DONT_UPDATE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@ITEM_TOKEN_SENT = common dso_local global i32 0, align 4
@ITEM_STALE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [47 x i8] c"CLIENT_ERROR bad tokens in command line format\00", align 1
@current_time = common dso_local global i32 0, align 4
@ITEM_FETCHED = common dso_local global i32 0, align 4
@MFLAG_MAX_OPAQUE_LENGTH = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [35 x i8] c"CLIENT_ERROR opaque token too long\00", align 1
@ITEM_CHUNKED = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"EN\0D\0A\00", align 1
@conn_write = common dso_local global i32 0, align 4
@conn_new_cmd = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [3 x i8] c"EN\00", align 1
@ITEM_HDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_38__*, %struct.TYPE_36__*, i64)* @process_mget_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_mget_command(%struct.TYPE_38__* %0, %struct.TYPE_36__* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_38__*, align 8
  %5 = alloca %struct.TYPE_36__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_37__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct._meta_flags, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.TYPE_38__* %0, %struct.TYPE_38__** %4, align 8
  store %struct.TYPE_36__* %1, %struct.TYPE_36__** %5, align 8
  store i64 %2, i64* %6, align 8
  store i8* null, i8** %11, align 8
  %25 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %12, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %28 = bitcast %struct._meta_flags* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %28, i8 0, i64 40, i1 false)
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %29 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %30 = icmp ne %struct.TYPE_38__* %29, null
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %34 = load i64, i64* @KEY_TOKEN, align 8
  %35 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @KEY_MAX_LENGTH, align 8
  %39 = icmp ugt i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %3
  %41 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %42 = call i32 @out_errstring(%struct.TYPE_38__* %41, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %661

43:                                               ; preds = %3
  %44 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %45 = load i64, i64* @KEY_TOKEN, align 8
  %46 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %46, i32 0, i32 1
  %48 = load i8*, i8** %47, align 8
  store i8* %48, i8** %7, align 8
  %49 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %50 = load i64, i64* @KEY_TOKEN, align 8
  %51 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %8, align 8
  store i32 3, i32* %15, align 4
  %54 = load i64, i64* %6, align 8
  %55 = icmp eq i64 %54, 3
  br i1 %55, label %56, label %57

56:                                               ; preds = %43
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %10, align 8
  store i64 4, i64* %13, align 8
  br label %72

57:                                               ; preds = %43
  %58 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %59 = load i64, i64* @KEY_TOKEN, align 8
  %60 = add i64 %59, 1
  %61 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %61, i32 0, i32 1
  %63 = load i8*, i8** %62, align 8
  store i8* %63, i8** %10, align 8
  %64 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %65 = load i64, i64* @KEY_TOKEN, align 8
  %66 = add i64 %65, 1
  %67 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  store i64 %69, i64* %13, align 8
  %70 = load i32, i32* %15, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %15, align 4
  br label %72

72:                                               ; preds = %57, %56
  %73 = load i64, i64* %13, align 8
  %74 = load i64, i64* @MFLAG_MAX_OPT_LENGTH, align 8
  %75 = icmp ugt i64 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %72
  %77 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %78 = call i32 @out_errstring(%struct.TYPE_38__* %77, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  br label %661

79:                                               ; preds = %72
  %80 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 6
  store i8* %83, i8** %11, align 8
  %84 = load i8*, i8** %11, align 8
  %85 = load i8*, i8** %10, align 8
  %86 = load i64, i64* %13, align 8
  %87 = trunc i64 %86 to i32
  %88 = call i32 @memcpy(i8* %84, i8* %85, i32 %87)
  %89 = load i8*, i8** %11, align 8
  %90 = load i64, i64* %13, align 8
  %91 = getelementptr inbounds i8, i8* %89, i64 %90
  store i8* %91, i8** %12, align 8
  %92 = load i8*, i8** %11, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 -1
  store i8* %93, i8** %11, align 8
  %94 = load i8*, i8** %10, align 8
  %95 = load i64, i64* %13, align 8
  %96 = call i32 @_meta_flag_preparse(i8* %94, i64 %95, %struct._meta_flags* %16)
  store i32 %96, i32* %23, align 4
  %97 = load i32, i32* %23, align 4
  %98 = load i32, i32* %15, align 4
  %99 = add nsw i32 %97, %98
  %100 = sext i32 %99 to i64
  %101 = load i64, i64* %6, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %103, label %113

103:                                              ; preds = %79
  %104 = load i32, i32* %23, align 4
  %105 = icmp eq i32 %104, -1
  br i1 %105, label %106, label %109

106:                                              ; preds = %103
  %107 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %108 = call i32 @out_errstring(%struct.TYPE_38__* %107, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  br label %112

109:                                              ; preds = %103
  %110 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %111 = call i32 @out_errstring(%struct.TYPE_38__* %110, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0))
  br label %112

112:                                              ; preds = %109, %106
  br label %661

113:                                              ; preds = %79
  %114 = load i64, i64* @KEY_TOKEN, align 8
  %115 = add i64 %114, 2
  %116 = trunc i64 %115 to i32
  store i32 %116, i32* %15, align 4
  %117 = getelementptr inbounds %struct._meta_flags, %struct._meta_flags* %16, i32 0, i32 4
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %119, i32 0, i32 6
  store i32 %118, i32* %120, align 8
  %121 = getelementptr inbounds %struct._meta_flags, %struct._meta_flags* %16, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %134, label %124

124:                                              ; preds = %113
  %125 = load i8*, i8** %7, align 8
  %126 = load i64, i64* %8, align 8
  %127 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %128 = getelementptr inbounds %struct._meta_flags, %struct._meta_flags* %16, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = icmp ne i32 %129, 0
  %131 = xor i1 %130, true
  %132 = zext i1 %131 to i32
  %133 = call %struct.TYPE_37__* @limited_get(i8* %125, i64 %126, %struct.TYPE_38__* %127, i32 0, i32 0, i32 %132)
  store %struct.TYPE_37__* %133, %struct.TYPE_37__** %9, align 8
  br label %140

134:                                              ; preds = %113
  %135 = load i8*, i8** %7, align 8
  %136 = load i64, i64* %8, align 8
  %137 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %138 = load i32, i32* @DONT_UPDATE, align 4
  %139 = call %struct.TYPE_37__* @limited_get_locked(i8* %135, i64 %136, %struct.TYPE_38__* %137, i32 %138, i32* %17)
  store %struct.TYPE_37__* %139, %struct.TYPE_37__** %9, align 8
  br label %140

140:                                              ; preds = %134, %124
  %141 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %142 = icmp eq %struct.TYPE_37__* %141, null
  br i1 %142, label %143, label %162

143:                                              ; preds = %140
  %144 = getelementptr inbounds %struct._meta_flags, %struct._meta_flags* %16, i32 0, i32 3
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %162

147:                                              ; preds = %143
  %148 = load i8*, i8** %7, align 8
  %149 = load i64, i64* %8, align 8
  %150 = call i8* @realtime(i32 0)
  %151 = call %struct.TYPE_37__* @item_alloc(i8* %148, i64 %149, i32 0, i8* %150, i32 2)
  store %struct.TYPE_37__* %151, %struct.TYPE_37__** %9, align 8
  %152 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %153 = icmp ne %struct.TYPE_37__* %152, null
  br i1 %153, label %154, label %161

154:                                              ; preds = %147
  %155 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %156 = call i8* @ITEM_data(%struct.TYPE_37__* %155)
  %157 = call i32 @memcpy(i8* %156, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 2)
  %158 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %159 = load i32, i32* %17, align 4
  %160 = call i32 @do_item_link(%struct.TYPE_37__* %158, i32 %159)
  store i32 1, i32* %19, align 4
  br label %161

161:                                              ; preds = %154, %147
  br label %162

162:                                              ; preds = %161, %143, %140
  %163 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %164 = icmp ne %struct.TYPE_37__* %163, null
  br i1 %164, label %165, label %507

165:                                              ; preds = %162
  store i32 0, i32* %24, align 4
  %166 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %167 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* @ITEM_TOKEN_SENT, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %165
  %173 = load i8*, i8** %11, align 8
  store i8 90, i8* %173, align 1
  %174 = load i8*, i8** %11, align 8
  %175 = getelementptr inbounds i8, i8* %174, i32 -1
  store i8* %175, i8** %11, align 8
  br label %176

176:                                              ; preds = %172, %165
  %177 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %178 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* @ITEM_STALE, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %195

183:                                              ; preds = %176
  %184 = load i8*, i8** %11, align 8
  store i8 88, i8* %184, align 1
  %185 = load i8*, i8** %11, align 8
  %186 = getelementptr inbounds i8, i8* %185, i32 -1
  store i8* %186, i8** %11, align 8
  %187 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %188 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = load i32, i32* @ITEM_TOKEN_SENT, align 4
  %191 = and i32 %189, %190
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %194

193:                                              ; preds = %183
  store i32 1, i32* %20, align 4
  br label %194

194:                                              ; preds = %193, %183
  br label %195

195:                                              ; preds = %194, %176
  store i32 0, i32* %14, align 4
  br label %196

196:                                              ; preds = %430, %195
  %197 = load i32, i32* %14, align 4
  %198 = zext i32 %197 to i64
  %199 = load i64, i64* %13, align 8
  %200 = icmp ult i64 %198, %199
  br i1 %200, label %201, label %433

201:                                              ; preds = %196
  %202 = load i8*, i8** %10, align 8
  %203 = load i32, i32* %14, align 4
  %204 = zext i32 %203 to i64
  %205 = getelementptr inbounds i8, i8* %202, i64 %204
  %206 = load i8, i8* %205, align 1
  %207 = sext i8 %206 to i32
  switch i32 %207, label %429 [
    i32 84, label %208
    i32 78, label %226
    i32 82, label %248
    i32 115, label %286
    i32 116, label %295
    i32 99, label %318
    i32 118, label %325
    i32 102, label %327
    i32 108, label %346
    i32 104, label %356
    i32 79, label %373
    i32 107, label %412
  ]

208:                                              ; preds = %201
  store i32 1, i32* %21, align 4
  %209 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %210 = load i32, i32* %15, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %209, i64 %211
  %213 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %212, i32 0, i32 1
  %214 = load i8*, i8** %213, align 8
  %215 = call i32 @safe_strtol(i8* %214, i32* %24)
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %218, label %217

217:                                              ; preds = %208
  store i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0), i8** %22, align 8
  br label %647

218:                                              ; preds = %208
  %219 = load i32, i32* %24, align 4
  %220 = call i8* @realtime(i32 %219)
  %221 = ptrtoint i8* %220 to i32
  %222 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %223 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %222, i32 0, i32 1
  store i32 %221, i32* %223, align 4
  %224 = load i32, i32* %15, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %15, align 4
  br label %429

226:                                              ; preds = %201
  %227 = load i32, i32* %19, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %245

229:                                              ; preds = %226
  %230 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %231 = load i32, i32* %15, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %230, i64 %232
  %234 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %233, i32 0, i32 1
  %235 = load i8*, i8** %234, align 8
  %236 = call i32 @safe_strtol(i8* %235, i32* %24)
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %239, label %238

238:                                              ; preds = %229
  store i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0), i8** %22, align 8
  br label %647

239:                                              ; preds = %229
  %240 = load i32, i32* %24, align 4
  %241 = call i8* @realtime(i32 %240)
  %242 = ptrtoint i8* %241 to i32
  %243 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %244 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %243, i32 0, i32 1
  store i32 %242, i32* %244, align 4
  store i32 1, i32* %20, align 4
  br label %245

245:                                              ; preds = %239, %226
  %246 = load i32, i32* %15, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %15, align 4
  br label %429

248:                                              ; preds = %201
  %249 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %250 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = load i32, i32* @ITEM_TOKEN_SENT, align 4
  %253 = and i32 %251, %252
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %255, label %283

255:                                              ; preds = %248
  %256 = load i32, i32* %19, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %283, label %258

258:                                              ; preds = %255
  %259 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %260 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %283

263:                                              ; preds = %258
  %264 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %265 = load i32, i32* %15, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %264, i64 %266
  %268 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %267, i32 0, i32 1
  %269 = load i8*, i8** %268, align 8
  %270 = call i32 @safe_strtol(i8* %269, i32* %24)
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %273, label %272

272:                                              ; preds = %263
  store i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0), i8** %22, align 8
  br label %647

273:                                              ; preds = %263
  %274 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %275 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %274, i32 0, i32 1
  %276 = load i32, i32* %275, align 4
  %277 = load i32, i32* @current_time, align 4
  %278 = sub nsw i32 %276, %277
  %279 = load i32, i32* %24, align 4
  %280 = icmp slt i32 %278, %279
  br i1 %280, label %281, label %282

281:                                              ; preds = %273
  store i32 1, i32* %20, align 4
  br label %282

282:                                              ; preds = %281, %273
  br label %283

283:                                              ; preds = %282, %258, %255, %248
  %284 = load i32, i32* %15, align 4
  %285 = add nsw i32 %284, 1
  store i32 %285, i32* %15, align 4
  br label %429

286:                                              ; preds = %201
  %287 = load i8*, i8** %12, align 8
  store i8 32, i8* %287, align 1
  %288 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %289 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %288, i32 0, i32 2
  %290 = load i32, i32* %289, align 8
  %291 = sub nsw i32 %290, 2
  %292 = load i8*, i8** %12, align 8
  %293 = getelementptr inbounds i8, i8* %292, i64 1
  %294 = call i8* @itoa_u32(i32 %291, i8* %293)
  store i8* %294, i8** %12, align 8
  br label %429

295:                                              ; preds = %201
  %296 = load i8*, i8** %12, align 8
  store i8 32, i8* %296, align 1
  %297 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %298 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %297, i32 0, i32 1
  %299 = load i32, i32* %298, align 4
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %301, label %308

301:                                              ; preds = %295
  %302 = load i8*, i8** %12, align 8
  %303 = getelementptr inbounds i8, i8* %302, i64 1
  store i8 45, i8* %303, align 1
  %304 = load i8*, i8** %12, align 8
  %305 = getelementptr inbounds i8, i8* %304, i64 2
  store i8 49, i8* %305, align 1
  %306 = load i8*, i8** %12, align 8
  %307 = getelementptr inbounds i8, i8* %306, i64 3
  store i8* %307, i8** %12, align 8
  br label %317

308:                                              ; preds = %295
  %309 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %310 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %309, i32 0, i32 1
  %311 = load i32, i32* %310, align 4
  %312 = load i32, i32* @current_time, align 4
  %313 = sub nsw i32 %311, %312
  %314 = load i8*, i8** %12, align 8
  %315 = getelementptr inbounds i8, i8* %314, i64 1
  %316 = call i8* @itoa_u32(i32 %313, i8* %315)
  store i8* %316, i8** %12, align 8
  br label %317

317:                                              ; preds = %308, %301
  br label %429

318:                                              ; preds = %201
  %319 = load i8*, i8** %12, align 8
  store i8 32, i8* %319, align 1
  %320 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %321 = call i32 @ITEM_get_cas(%struct.TYPE_37__* %320)
  %322 = load i8*, i8** %12, align 8
  %323 = getelementptr inbounds i8, i8* %322, i64 1
  %324 = call i8* @itoa_u64(i32 %321, i8* %323)
  store i8* %324, i8** %12, align 8
  br label %429

325:                                              ; preds = %201
  %326 = getelementptr inbounds %struct._meta_flags, %struct._meta_flags* %16, i32 0, i32 0
  store i32 1, i32* %326, align 8
  br label %429

327:                                              ; preds = %201
  %328 = load i8*, i8** %12, align 8
  store i8 32, i8* %328, align 1
  %329 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %330 = call i32 @FLAGS_SIZE(%struct.TYPE_37__* %329)
  %331 = icmp eq i32 %330, 0
  br i1 %331, label %332, label %337

332:                                              ; preds = %327
  %333 = load i8*, i8** %12, align 8
  %334 = getelementptr inbounds i8, i8* %333, i64 1
  store i8 48, i8* %334, align 1
  %335 = load i8*, i8** %12, align 8
  %336 = getelementptr inbounds i8, i8* %335, i64 2
  store i8* %336, i8** %12, align 8
  br label %345

337:                                              ; preds = %327
  %338 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %339 = call i64 @ITEM_suffix(%struct.TYPE_37__* %338)
  %340 = inttoptr i64 %339 to i32*
  %341 = load i32, i32* %340, align 4
  %342 = load i8*, i8** %12, align 8
  %343 = getelementptr inbounds i8, i8* %342, i64 1
  %344 = call i8* @itoa_u32(i32 %341, i8* %343)
  store i8* %344, i8** %12, align 8
  br label %345

345:                                              ; preds = %337, %332
  br label %429

346:                                              ; preds = %201
  %347 = load i8*, i8** %12, align 8
  store i8 32, i8* %347, align 1
  %348 = load i32, i32* @current_time, align 4
  %349 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %350 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %349, i32 0, i32 3
  %351 = load i32, i32* %350, align 4
  %352 = sub nsw i32 %348, %351
  %353 = load i8*, i8** %12, align 8
  %354 = getelementptr inbounds i8, i8* %353, i64 1
  %355 = call i8* @itoa_u32(i32 %352, i8* %354)
  store i8* %355, i8** %12, align 8
  br label %429

356:                                              ; preds = %201
  %357 = load i8*, i8** %12, align 8
  store i8 32, i8* %357, align 1
  %358 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %359 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %358, i32 0, i32 0
  %360 = load i32, i32* %359, align 8
  %361 = load i32, i32* @ITEM_FETCHED, align 4
  %362 = and i32 %360, %361
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %364, label %367

364:                                              ; preds = %356
  %365 = load i8*, i8** %12, align 8
  %366 = getelementptr inbounds i8, i8* %365, i64 1
  store i8 49, i8* %366, align 1
  br label %370

367:                                              ; preds = %356
  %368 = load i8*, i8** %12, align 8
  %369 = getelementptr inbounds i8, i8* %368, i64 1
  store i8 48, i8* %369, align 1
  br label %370

370:                                              ; preds = %367, %364
  %371 = load i8*, i8** %12, align 8
  %372 = getelementptr inbounds i8, i8* %371, i64 2
  store i8* %372, i8** %12, align 8
  br label %429

373:                                              ; preds = %201
  %374 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %375 = load i32, i32* %15, align 4
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %374, i64 %376
  %378 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %377, i32 0, i32 0
  %379 = load i64, i64* %378, align 8
  %380 = load i64, i64* @MFLAG_MAX_OPAQUE_LENGTH, align 8
  %381 = icmp ugt i64 %379, %380
  br i1 %381, label %382, label %383

382:                                              ; preds = %373
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i8** %22, align 8
  br label %647

383:                                              ; preds = %373
  %384 = load i8*, i8** %12, align 8
  store i8 32, i8* %384, align 1
  %385 = load i8*, i8** %12, align 8
  %386 = getelementptr inbounds i8, i8* %385, i64 1
  %387 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %388 = load i32, i32* %15, align 4
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %387, i64 %389
  %391 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %390, i32 0, i32 1
  %392 = load i8*, i8** %391, align 8
  %393 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %394 = load i32, i32* %15, align 4
  %395 = sext i32 %394 to i64
  %396 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %393, i64 %395
  %397 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %396, i32 0, i32 0
  %398 = load i64, i64* %397, align 8
  %399 = trunc i64 %398 to i32
  %400 = call i32 @memcpy(i8* %386, i8* %392, i32 %399)
  %401 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %402 = load i32, i32* %15, align 4
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %401, i64 %403
  %405 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %404, i32 0, i32 0
  %406 = load i64, i64* %405, align 8
  %407 = add i64 %406, 1
  %408 = load i8*, i8** %12, align 8
  %409 = getelementptr inbounds i8, i8* %408, i64 %407
  store i8* %409, i8** %12, align 8
  %410 = load i32, i32* %15, align 4
  %411 = add nsw i32 %410, 1
  store i32 %411, i32* %15, align 4
  br label %429

412:                                              ; preds = %201
  %413 = load i8*, i8** %12, align 8
  store i8 32, i8* %413, align 1
  %414 = load i8*, i8** %12, align 8
  %415 = getelementptr inbounds i8, i8* %414, i64 1
  %416 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %417 = call i8* @ITEM_key(%struct.TYPE_37__* %416)
  %418 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %419 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %418, i32 0, i32 4
  %420 = load i32, i32* %419, align 8
  %421 = call i32 @memcpy(i8* %415, i8* %417, i32 %420)
  %422 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %423 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %422, i32 0, i32 4
  %424 = load i32, i32* %423, align 8
  %425 = add nsw i32 %424, 1
  %426 = load i8*, i8** %12, align 8
  %427 = sext i32 %425 to i64
  %428 = getelementptr inbounds i8, i8* %426, i64 %427
  store i8* %428, i8** %12, align 8
  br label %429

429:                                              ; preds = %201, %412, %383, %370, %346, %345, %325, %318, %317, %286, %283, %245, %218
  br label %430

430:                                              ; preds = %429
  %431 = load i32, i32* %14, align 4
  %432 = add i32 %431, 1
  store i32 %432, i32* %14, align 4
  br label %196

433:                                              ; preds = %196
  %434 = load i32, i32* %20, align 4
  %435 = icmp ne i32 %434, 0
  br i1 %435, label %436, label %445

436:                                              ; preds = %433
  %437 = load i8*, i8** %11, align 8
  store i8 87, i8* %437, align 1
  %438 = load i8*, i8** %11, align 8
  %439 = getelementptr inbounds i8, i8* %438, i32 -1
  store i8* %439, i8** %11, align 8
  %440 = load i32, i32* @ITEM_TOKEN_SENT, align 4
  %441 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %442 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %441, i32 0, i32 0
  %443 = load i32, i32* %442, align 8
  %444 = or i32 %443, %440
  store i32 %444, i32* %442, align 8
  br label %445

445:                                              ; preds = %436, %433
  %446 = load i8*, i8** %12, align 8
  store i8 13, i8* %446, align 1
  %447 = load i8*, i8** %12, align 8
  %448 = getelementptr inbounds i8, i8* %447, i64 1
  store i8 10, i8* %448, align 1
  %449 = load i8*, i8** %12, align 8
  %450 = getelementptr inbounds i8, i8* %449, i64 2
  store i8 0, i8* %450, align 1
  %451 = load i8*, i8** %12, align 8
  %452 = getelementptr inbounds i8, i8* %451, i64 2
  store i8* %452, i8** %12, align 8
  %453 = load i8*, i8** %11, align 8
  store i8 32, i8* %453, align 1
  %454 = load i8*, i8** %11, align 8
  %455 = getelementptr inbounds i8, i8* %454, i64 -1
  store i8 65, i8* %455, align 1
  %456 = load i8*, i8** %11, align 8
  %457 = getelementptr inbounds i8, i8* %456, i64 -2
  store i8 86, i8* %457, align 1
  %458 = load i8*, i8** %11, align 8
  %459 = getelementptr inbounds i8, i8* %458, i64 -2
  store i8* %459, i8** %11, align 8
  %460 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %461 = load i8*, i8** %11, align 8
  %462 = load i8*, i8** %12, align 8
  %463 = load i8*, i8** %11, align 8
  %464 = ptrtoint i8* %462 to i64
  %465 = ptrtoint i8* %463 to i64
  %466 = sub i64 %464, %465
  %467 = trunc i64 %466 to i32
  %468 = call i32 @add_iov(%struct.TYPE_38__* %460, i8* %461, i32 %467)
  %469 = getelementptr inbounds %struct._meta_flags, %struct._meta_flags* %16, i32 0, i32 0
  %470 = load i32, i32* %469, align 8
  %471 = icmp ne i32 %470, 0
  br i1 %471, label %472, label %495

472:                                              ; preds = %445
  %473 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %474 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %473, i32 0, i32 0
  %475 = load i32, i32* %474, align 8
  %476 = load i32, i32* @ITEM_CHUNKED, align 4
  %477 = and i32 %475, %476
  %478 = icmp eq i32 %477, 0
  br i1 %478, label %479, label %487

479:                                              ; preds = %472
  %480 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %481 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %482 = call i8* @ITEM_data(%struct.TYPE_37__* %481)
  %483 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %484 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %483, i32 0, i32 2
  %485 = load i32, i32* %484, align 8
  %486 = call i32 @add_iov(%struct.TYPE_38__* %480, i8* %482, i32 %485)
  br label %494

487:                                              ; preds = %472
  %488 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %489 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %490 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %491 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %490, i32 0, i32 2
  %492 = load i32, i32* %491, align 8
  %493 = call i32 @add_chunked_item_iovs(%struct.TYPE_38__* %488, %struct.TYPE_37__* %489, i32 %492)
  br label %494

494:                                              ; preds = %487, %479
  br label %495

495:                                              ; preds = %494, %445
  %496 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %497 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %496, i32 0, i32 6
  %498 = load i32, i32* %497, align 8
  %499 = icmp ne i32 %498, 0
  br i1 %499, label %503, label %500

500:                                              ; preds = %495
  %501 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %502 = call i32 @add_iov(%struct.TYPE_38__* %501, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 4)
  br label %503

503:                                              ; preds = %500, %495
  %504 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %505 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %506 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %505, i32 0, i32 5
  store %struct.TYPE_37__* %504, %struct.TYPE_37__** %506, align 8
  br label %508

507:                                              ; preds = %162
  store i32 1, i32* %18, align 4
  br label %508

508:                                              ; preds = %507, %503
  %509 = getelementptr inbounds %struct._meta_flags, %struct._meta_flags* %16, i32 0, i32 1
  %510 = load i64, i64* %509, align 8
  %511 = icmp ne i64 %510, 0
  br i1 %511, label %512, label %527

512:                                              ; preds = %508
  %513 = getelementptr inbounds %struct._meta_flags, %struct._meta_flags* %16, i32 0, i32 2
  %514 = load i32, i32* %513, align 8
  %515 = icmp ne i32 %514, 0
  br i1 %515, label %524, label %516

516:                                              ; preds = %512
  %517 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %518 = icmp ne %struct.TYPE_37__* %517, null
  br i1 %518, label %519, label %524

519:                                              ; preds = %516
  %520 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %521 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %522 = load i32, i32* %17, align 4
  %523 = call i32 @do_item_bump(%struct.TYPE_38__* %520, %struct.TYPE_37__* %521, i32 %522)
  br label %524

524:                                              ; preds = %519, %516, %512
  %525 = load i32, i32* %17, align 4
  %526 = call i32 @item_unlock(i32 %525)
  br label %527

527:                                              ; preds = %524, %508
  %528 = load i32, i32* %18, align 4
  %529 = icmp ne i32 %528, 0
  br i1 %529, label %592, label %530

530:                                              ; preds = %527
  %531 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %532 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %531, i32 0, i32 2
  %533 = load %struct.TYPE_35__*, %struct.TYPE_35__** %532, align 8
  %534 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %533, i32 0, i32 0
  %535 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %534, i32 0, i32 0
  %536 = call i32 @pthread_mutex_lock(i32* %535)
  %537 = load i32, i32* %21, align 4
  %538 = icmp ne i32 %537, 0
  br i1 %538, label %539, label %559

539:                                              ; preds = %530
  %540 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %541 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %540, i32 0, i32 2
  %542 = load %struct.TYPE_35__*, %struct.TYPE_35__** %541, align 8
  %543 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %542, i32 0, i32 0
  %544 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %543, i32 0, i32 4
  %545 = load i32, i32* %544, align 8
  %546 = add nsw i32 %545, 1
  store i32 %546, i32* %544, align 8
  %547 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %548 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %547, i32 0, i32 2
  %549 = load %struct.TYPE_35__*, %struct.TYPE_35__** %548, align 8
  %550 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %549, i32 0, i32 0
  %551 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %550, i32 0, i32 6
  %552 = load %struct.TYPE_33__*, %struct.TYPE_33__** %551, align 8
  %553 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %554 = call i64 @ITEM_clsid(%struct.TYPE_37__* %553)
  %555 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %552, i64 %554
  %556 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %555, i32 0, i32 0
  %557 = load i32, i32* %556, align 4
  %558 = add nsw i32 %557, 1
  store i32 %558, i32* %556, align 4
  br label %579

559:                                              ; preds = %530
  %560 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %561 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %560, i32 0, i32 2
  %562 = load %struct.TYPE_35__*, %struct.TYPE_35__** %561, align 8
  %563 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %562, i32 0, i32 0
  %564 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %563, i32 0, i32 5
  %565 = load i32*, i32** %564, align 8
  %566 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %567 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %566, i32 0, i32 5
  %568 = load i64, i64* %567, align 8
  %569 = getelementptr inbounds i32, i32* %565, i64 %568
  %570 = load i32, i32* %569, align 4
  %571 = add nsw i32 %570, 1
  store i32 %571, i32* %569, align 4
  %572 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %573 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %572, i32 0, i32 2
  %574 = load %struct.TYPE_35__*, %struct.TYPE_35__** %573, align 8
  %575 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %574, i32 0, i32 0
  %576 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %575, i32 0, i32 1
  %577 = load i32, i32* %576, align 4
  %578 = add nsw i32 %577, 1
  store i32 %578, i32* %576, align 4
  br label %579

579:                                              ; preds = %559, %539
  %580 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %581 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %580, i32 0, i32 2
  %582 = load %struct.TYPE_35__*, %struct.TYPE_35__** %581, align 8
  %583 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %582, i32 0, i32 0
  %584 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %583, i32 0, i32 0
  %585 = call i32 @pthread_mutex_unlock(i32* %584)
  %586 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %587 = load i32, i32* @conn_write, align 4
  %588 = call i32 @conn_set_state(%struct.TYPE_38__* %586, i32 %587)
  %589 = load i32, i32* @conn_new_cmd, align 4
  %590 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %591 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %590, i32 0, i32 4
  store i32 %589, i32* %591, align 4
  br label %646

592:                                              ; preds = %527
  %593 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %594 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %593, i32 0, i32 2
  %595 = load %struct.TYPE_35__*, %struct.TYPE_35__** %594, align 8
  %596 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %595, i32 0, i32 0
  %597 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %596, i32 0, i32 0
  %598 = call i32 @pthread_mutex_lock(i32* %597)
  %599 = load i32, i32* %21, align 4
  %600 = icmp ne i32 %599, 0
  br i1 %600, label %601, label %616

601:                                              ; preds = %592
  %602 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %603 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %602, i32 0, i32 2
  %604 = load %struct.TYPE_35__*, %struct.TYPE_35__** %603, align 8
  %605 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %604, i32 0, i32 0
  %606 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %605, i32 0, i32 4
  %607 = load i32, i32* %606, align 8
  %608 = add nsw i32 %607, 1
  store i32 %608, i32* %606, align 8
  %609 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %610 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %609, i32 0, i32 2
  %611 = load %struct.TYPE_35__*, %struct.TYPE_35__** %610, align 8
  %612 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %611, i32 0, i32 0
  %613 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %612, i32 0, i32 3
  %614 = load i32, i32* %613, align 4
  %615 = add nsw i32 %614, 1
  store i32 %615, i32* %613, align 4
  br label %631

616:                                              ; preds = %592
  %617 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %618 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %617, i32 0, i32 2
  %619 = load %struct.TYPE_35__*, %struct.TYPE_35__** %618, align 8
  %620 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %619, i32 0, i32 0
  %621 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %620, i32 0, i32 2
  %622 = load i32, i32* %621, align 8
  %623 = add nsw i32 %622, 1
  store i32 %623, i32* %621, align 8
  %624 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %625 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %624, i32 0, i32 2
  %626 = load %struct.TYPE_35__*, %struct.TYPE_35__** %625, align 8
  %627 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %626, i32 0, i32 0
  %628 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %627, i32 0, i32 1
  %629 = load i32, i32* %628, align 4
  %630 = add nsw i32 %629, 1
  store i32 %630, i32* %628, align 4
  br label %631

631:                                              ; preds = %616, %601
  %632 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %633 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %632, i32 0, i32 3
  %634 = load i32, i32* %633, align 8
  %635 = load i8*, i8** %7, align 8
  %636 = load i64, i64* %8, align 8
  %637 = call i32 @MEMCACHED_COMMAND_GET(i32 %634, i8* %635, i64 %636, i32 -1, i32 0)
  %638 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %639 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %638, i32 0, i32 2
  %640 = load %struct.TYPE_35__*, %struct.TYPE_35__** %639, align 8
  %641 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %640, i32 0, i32 0
  %642 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %641, i32 0, i32 0
  %643 = call i32 @pthread_mutex_unlock(i32* %642)
  %644 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %645 = call i32 @out_string(%struct.TYPE_38__* %644, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  br label %646

646:                                              ; preds = %631, %579
  br label %661

647:                                              ; preds = %382, %272, %238, %217
  %648 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %649 = icmp ne %struct.TYPE_37__* %648, null
  br i1 %649, label %650, label %657

650:                                              ; preds = %647
  %651 = getelementptr inbounds %struct._meta_flags, %struct._meta_flags* %16, i32 0, i32 1
  %652 = load i64, i64* %651, align 8
  %653 = icmp ne i64 %652, 0
  br i1 %653, label %654, label %657

654:                                              ; preds = %650
  %655 = load i32, i32* %17, align 4
  %656 = call i32 @item_unlock(i32 %655)
  br label %657

657:                                              ; preds = %654, %650, %647
  %658 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %659 = load i8*, i8** %22, align 8
  %660 = call i32 @out_errstring(%struct.TYPE_38__* %658, i8* %659)
  br label %661

661:                                              ; preds = %657, %646, %112, %76, %40
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @out_errstring(%struct.TYPE_38__*, i8*) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @_meta_flag_preparse(i8*, i64, %struct._meta_flags*) #2

declare dso_local %struct.TYPE_37__* @limited_get(i8*, i64, %struct.TYPE_38__*, i32, i32, i32) #2

declare dso_local %struct.TYPE_37__* @limited_get_locked(i8*, i64, %struct.TYPE_38__*, i32, i32*) #2

declare dso_local %struct.TYPE_37__* @item_alloc(i8*, i64, i32, i8*, i32) #2

declare dso_local i8* @realtime(i32) #2

declare dso_local i8* @ITEM_data(%struct.TYPE_37__*) #2

declare dso_local i32 @do_item_link(%struct.TYPE_37__*, i32) #2

declare dso_local i32 @safe_strtol(i8*, i32*) #2

declare dso_local i8* @itoa_u32(i32, i8*) #2

declare dso_local i8* @itoa_u64(i32, i8*) #2

declare dso_local i32 @ITEM_get_cas(%struct.TYPE_37__*) #2

declare dso_local i32 @FLAGS_SIZE(%struct.TYPE_37__*) #2

declare dso_local i64 @ITEM_suffix(%struct.TYPE_37__*) #2

declare dso_local i8* @ITEM_key(%struct.TYPE_37__*) #2

declare dso_local i32 @add_iov(%struct.TYPE_38__*, i8*, i32) #2

declare dso_local i32 @add_chunked_item_iovs(%struct.TYPE_38__*, %struct.TYPE_37__*, i32) #2

declare dso_local i32 @do_item_bump(%struct.TYPE_38__*, %struct.TYPE_37__*, i32) #2

declare dso_local i32 @item_unlock(i32) #2

declare dso_local i32 @pthread_mutex_lock(i32*) #2

declare dso_local i64 @ITEM_clsid(%struct.TYPE_37__*) #2

declare dso_local i32 @pthread_mutex_unlock(i32*) #2

declare dso_local i32 @conn_set_state(%struct.TYPE_38__*, i32) #2

declare dso_local i32 @MEMCACHED_COMMAND_GET(i32, i8*, i64, i32, i32) #2

declare dso_local i32 @out_string(%struct.TYPE_38__*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
