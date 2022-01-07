; ModuleID = '/home/carl/AnghaBench/memcached/extr_memcached.c_process_bin_complete_sasl_auth.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_memcached.c_process_bin_complete_sasl_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, i64 }
%struct.TYPE_22__ = type { i32, i32, i32, i32, i32, %struct.TYPE_20__*, i8*, i32, %struct.TYPE_18__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32, i32, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_21__ = type { i32, i32 }

@settings = common dso_local global %struct.TYPE_23__ zeroinitializer, align 8
@PROTOCOL_BINARY_RESPONSE_EINVAL = common dso_local global i32 0, align 4
@conn_swallow = common dso_local global i8* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"mech:  ``%s'' with %d bytes of data\0A\00", align 1
@.str.1 = private unnamed_addr constant [76 x i8] c"%d: SASL_STEP called but sasl_server_start not called for this connection!\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Unhandled command %d with challenge %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"sasl result code:  %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"Authenticated\00", align 1
@PROTOCOL_BINARY_RESPONSE_AUTH_CONTINUE = common dso_local global i32 0, align 4
@conn_mwrite = common dso_local global i32 0, align 4
@conn_new_cmd = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [28 x i8] c"Unknown sasl response:  %d\0A\00", align 1
@PROTOCOL_BINARY_RESPONSE_AUTH_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_22__*)* @process_bin_complete_sasl_auth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_bin_complete_sasl_auth(%struct.TYPE_22__* %0) #0 {
  %2 = alloca %struct.TYPE_22__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %2, align 8
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @settings, i32 0, i32 0), align 8
  %13 = call i32 @assert(i32 %12)
  store i8* null, i8** %3, align 8
  store i32 0, i32* %4, align 4
  %14 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @assert(i32 %16)
  %18 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %19 = call i32 @init_sasl_conn(%struct.TYPE_22__* %18)
  %20 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %20, i32 0, i32 8
  %22 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %5, align 4
  %25 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %25, i32 0, i32 8
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %5, align 4
  %31 = sub nsw i32 %29, %30
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = inttoptr i64 %36 to %struct.TYPE_21__*
  %38 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp sgt i32 %32, %39
  br i1 %40, label %41, label %53

41:                                               ; preds = %1
  %42 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %43 = load i32, i32* @PROTOCOL_BINARY_RESPONSE_EINVAL, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @write_bin_error(%struct.TYPE_22__* %42, i32 %43, i32* null, i32 %44)
  %46 = load i8*, i8** @conn_swallow, align 8
  %47 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %47, i32 0, i32 6
  store i8* %46, i8** %48, align 8
  %49 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @item_unlink(i32 %51)
  br label %263

53:                                               ; preds = %1
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %54, 1
  %56 = zext i32 %55 to i64
  %57 = call i8* @llvm.stacksave()
  store i8* %57, i8** %7, align 8
  %58 = alloca i8, i64 %56, align 16
  store i64 %56, i64* %8, align 8
  %59 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = sext i32 %61 to i64
  %63 = inttoptr i64 %62 to %struct.TYPE_21__*
  %64 = call i32 @ITEM_key(%struct.TYPE_21__* %63)
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @memcpy(i8* %58, i32 %64, i32 %65)
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %58, i64 %68
  store i8 0, i8* %69, align 1
  %70 = load i64, i64* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @settings, i32 0, i32 1), align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %53
  %73 = load i32, i32* @stderr, align 4
  %74 = load i32, i32* %6, align 4
  %75 = call i32 (i32, i8*, ...) @fprintf(i32 %73, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %58, i32 %74)
  br label %76

76:                                               ; preds = %72, %53
  %77 = load i32, i32* %6, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  br label %87

80:                                               ; preds = %76
  %81 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = sext i32 %83 to i64
  %85 = inttoptr i64 %84 to %struct.TYPE_21__*
  %86 = call i8* @ITEM_data(%struct.TYPE_21__* %85)
  br label %87

87:                                               ; preds = %80, %79
  %88 = phi i8* [ null, %79 ], [ %86, %80 ]
  store i8* %88, i8** %9, align 8
  %89 = load i32, i32* %6, align 4
  %90 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = sext i32 %92 to i64
  %94 = inttoptr i64 %93 to %struct.TYPE_21__*
  %95 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = icmp sgt i32 %89, %96
  br i1 %97, label %98, label %110

98:                                               ; preds = %87
  %99 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %100 = load i32, i32* @PROTOCOL_BINARY_RESPONSE_EINVAL, align 4
  %101 = load i32, i32* %6, align 4
  %102 = call i32 @write_bin_error(%struct.TYPE_22__* %99, i32 %100, i32* null, i32 %101)
  %103 = load i8*, i8** @conn_swallow, align 8
  %104 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %104, i32 0, i32 6
  store i8* %103, i8** %105, align 8
  %106 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @item_unlink(i32 %108)
  store i32 1, i32* %10, align 4
  br label %260

110:                                              ; preds = %87
  store i32 -1, i32* %11, align 4
  %111 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  switch i32 %113, label %153 [
    i32 131, label %114
    i32 130, label %131
  ]

114:                                              ; preds = %110
  %115 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %116 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %115, i32 0, i32 7
  %117 = load i32, i32* %116, align 8
  %118 = load i8*, i8** %9, align 8
  %119 = load i32, i32* %6, align 4
  %120 = call i32 @sasl_server_start(i32 %117, i8* %58, i8* %118, i32 %119, i8** %3, i32* %4)
  store i32 %120, i32* %11, align 4
  %121 = load i32, i32* %11, align 4
  %122 = icmp eq i32 %121, 128
  br i1 %122, label %126, label %123

123:                                              ; preds = %114
  %124 = load i32, i32* %11, align 4
  %125 = icmp eq i32 %124, 129
  br label %126

126:                                              ; preds = %123, %114
  %127 = phi i1 [ true, %114 ], [ %125, %123 ]
  %128 = zext i1 %127 to i32
  %129 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %130 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %129, i32 0, i32 2
  store i32 %128, i32* %130, align 8
  br label %165

131:                                              ; preds = %110
  %132 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %133 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %146, label %136

136:                                              ; preds = %131
  %137 = load i64, i64* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @settings, i32 0, i32 1), align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %136
  %140 = load i32, i32* @stderr, align 4
  %141 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %142 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = call i32 (i32, i8*, ...) @fprintf(i32 %140, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 %143)
  br label %145

145:                                              ; preds = %139, %136
  br label %165

146:                                              ; preds = %131
  %147 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %148 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %147, i32 0, i32 7
  %149 = load i32, i32* %148, align 8
  %150 = load i8*, i8** %9, align 8
  %151 = load i32, i32* %6, align 4
  %152 = call i32 @sasl_server_step(i32 %149, i8* %150, i32 %151, i8** %3, i32* %4)
  store i32 %152, i32* %11, align 4
  br label %165

153:                                              ; preds = %110
  %154 = call i32 @assert(i32 0)
  %155 = load i64, i64* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @settings, i32 0, i32 1), align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %164

157:                                              ; preds = %153
  %158 = load i32, i32* @stderr, align 4
  %159 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %160 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load i8*, i8** %9, align 8
  %163 = call i32 (i32, i8*, ...) @fprintf(i32 %158, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %161, i8* %162)
  br label %164

164:                                              ; preds = %157, %153
  br label %165

165:                                              ; preds = %164, %146, %145, %126
  %166 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %167 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = call i32 @item_unlink(i32 %168)
  %170 = load i64, i64* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @settings, i32 0, i32 1), align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %165
  %173 = load i32, i32* @stderr, align 4
  %174 = load i32, i32* %11, align 4
  %175 = call i32 (i32, i8*, ...) @fprintf(i32 %173, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %174)
  br label %176

176:                                              ; preds = %172, %165
  %177 = load i32, i32* %11, align 4
  switch i32 %177, label %222 [
    i32 128, label %178
    i32 129, label %203
  ]

178:                                              ; preds = %176
  %179 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %180 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %179, i32 0, i32 4
  store i32 1, i32* %180, align 8
  %181 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %182 = call i32 @strlen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %183 = call i32 @write_bin_response(%struct.TYPE_22__* %181, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 0, i32 0, i32 %182)
  %184 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %185 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %184, i32 0, i32 5
  %186 = load %struct.TYPE_20__*, %struct.TYPE_20__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %187, i32 0, i32 0
  %189 = call i32 @pthread_mutex_lock(i32* %188)
  %190 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %191 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %190, i32 0, i32 5
  %192 = load %struct.TYPE_20__*, %struct.TYPE_20__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %194, align 4
  %197 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %198 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %197, i32 0, i32 5
  %199 = load %struct.TYPE_20__*, %struct.TYPE_20__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %200, i32 0, i32 0
  %202 = call i32 @pthread_mutex_unlock(i32* %201)
  br label %259

203:                                              ; preds = %176
  %204 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %205 = load i32, i32* @PROTOCOL_BINARY_RESPONSE_AUTH_CONTINUE, align 4
  %206 = load i32, i32* %4, align 4
  %207 = call i32 @add_bin_header(%struct.TYPE_22__* %204, i32 %205, i32 0, i32 0, i32 %206)
  %208 = load i32, i32* %4, align 4
  %209 = icmp ugt i32 %208, 0
  br i1 %209, label %210, label %215

210:                                              ; preds = %203
  %211 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %212 = load i8*, i8** %3, align 8
  %213 = load i32, i32* %4, align 4
  %214 = call i32 @add_iov(%struct.TYPE_22__* %211, i8* %212, i32 %213)
  br label %215

215:                                              ; preds = %210, %203
  %216 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %217 = load i32, i32* @conn_mwrite, align 4
  %218 = call i32 @conn_set_state(%struct.TYPE_22__* %216, i32 %217)
  %219 = load i8*, i8** @conn_new_cmd, align 8
  %220 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %221 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %220, i32 0, i32 6
  store i8* %219, i8** %221, align 8
  br label %259

222:                                              ; preds = %176
  %223 = load i64, i64* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @settings, i32 0, i32 1), align 8
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %229

225:                                              ; preds = %222
  %226 = load i32, i32* @stderr, align 4
  %227 = load i32, i32* %11, align 4
  %228 = call i32 (i32, i8*, ...) @fprintf(i32 %226, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %227)
  br label %229

229:                                              ; preds = %225, %222
  %230 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %231 = load i32, i32* @PROTOCOL_BINARY_RESPONSE_AUTH_ERROR, align 4
  %232 = call i32 @write_bin_error(%struct.TYPE_22__* %230, i32 %231, i32* null, i32 0)
  %233 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %234 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %233, i32 0, i32 5
  %235 = load %struct.TYPE_20__*, %struct.TYPE_20__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %236, i32 0, i32 0
  %238 = call i32 @pthread_mutex_lock(i32* %237)
  %239 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %240 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %239, i32 0, i32 5
  %241 = load %struct.TYPE_20__*, %struct.TYPE_20__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %242, i32 0, i32 2
  %244 = load i32, i32* %243, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %243, align 4
  %246 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %247 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %246, i32 0, i32 5
  %248 = load %struct.TYPE_20__*, %struct.TYPE_20__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %250, align 4
  %253 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %254 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %253, i32 0, i32 5
  %255 = load %struct.TYPE_20__*, %struct.TYPE_20__** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %255, i32 0, i32 0
  %257 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %256, i32 0, i32 0
  %258 = call i32 @pthread_mutex_unlock(i32* %257)
  br label %259

259:                                              ; preds = %229, %215, %178
  store i32 0, i32* %10, align 4
  br label %260

260:                                              ; preds = %259, %98
  %261 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %261)
  %262 = load i32, i32* %10, align 4
  switch i32 %262, label %264 [
    i32 0, label %263
    i32 1, label %263
  ]

263:                                              ; preds = %41, %260, %260
  ret void

264:                                              ; preds = %260
  unreachable
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @init_sasl_conn(%struct.TYPE_22__*) #1

declare dso_local i32 @write_bin_error(%struct.TYPE_22__*, i32, i32*, i32) #1

declare dso_local i32 @item_unlink(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @ITEM_key(%struct.TYPE_21__*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @ITEM_data(%struct.TYPE_21__*) #1

declare dso_local i32 @sasl_server_start(i32, i8*, i8*, i32, i8**, i32*) #1

declare dso_local i32 @sasl_server_step(i32, i8*, i32, i8**, i32*) #1

declare dso_local i32 @write_bin_response(%struct.TYPE_22__*, i8*, i32, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @add_bin_header(%struct.TYPE_22__*, i32, i32, i32, i32) #1

declare dso_local i32 @add_iov(%struct.TYPE_22__*, i8*, i32) #1

declare dso_local i32 @conn_set_state(%struct.TYPE_22__*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
