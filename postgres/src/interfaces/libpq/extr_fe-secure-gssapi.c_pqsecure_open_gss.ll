; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-secure-gssapi.c_pqsecure_open_gss.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-secure-gssapi.c_pqsecure_open_gss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i8* }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i32 }

@pqsecure_open_gss.first = internal global i32 1, align 4
@GSS_C_EMPTY_BUFFER = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@PqGSSResultLength = common dso_local global i32 0, align 4
@PqGSSResultPointer = common dso_local global i32 0, align 4
@PqGSSRecvLength = common dso_local global i32 0, align 4
@PqGSSRecvPointer = common dso_local global i64 0, align 8
@PqGSSSendStart = common dso_local global i64 0, align 8
@PqGSSSendPointer = common dso_local global i64 0, align 8
@PqGSSSendBuffer = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@EWOULDBLOCK = common dso_local global i64 0, align 8
@PGRES_POLLING_WRITING = common dso_local global i64 0, align 8
@PqGSSRecvBuffer = common dso_local global i8* null, align 8
@PGRES_POLLING_OK = common dso_local global i64 0, align 8
@PGRES_POLLING_READING = common dso_local global i64 0, align 8
@PQ_GSS_RECV_BUFFER_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@PGRES_POLLING_FAILED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [55 x i8] c"oversize GSSAPI packet sent by the server (%zu > %zu)\0A\00", align 1
@STATUS_OK = common dso_local global i64 0, align 8
@GSS_C_NO_OID = common dso_local global i32 0, align 4
@GSS_REQUIRED_FLAGS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"could not initiate GSSAPI security context\00", align 1
@GSS_C_NO_CREDENTIAL = common dso_local global i32 0, align 4
@GSS_C_QOP_DEFAULT = common dso_local global i32 0, align 4
@PQ_GSS_SEND_BUFFER_SIZE = common dso_local global i32 0, align 4
@max_packet_size = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"GSSAPI size check error\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"GSSAPI context establishment error\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @pqsecure_open_gss(%struct.TYPE_13__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_12__, align 8
  %10 = alloca %struct.TYPE_12__, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  %12 = bitcast %struct.TYPE_12__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 bitcast (%struct.TYPE_12__* @GSS_C_EMPTY_BUFFER to i8*), i64 16, i1 false)
  %13 = bitcast %struct.TYPE_12__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 bitcast (%struct.TYPE_12__* @GSS_C_EMPTY_BUFFER to i8*), i64 16, i1 false)
  %14 = load i32, i32* @pqsecure_open_gss.first, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 0, i32* @PqGSSResultLength, align 4
  store i32 0, i32* @PqGSSResultPointer, align 4
  store i32 0, i32* @PqGSSRecvLength, align 4
  store i64 0, i64* @PqGSSRecvPointer, align 8
  store i64 0, i64* @PqGSSSendStart, align 8
  store i64 0, i64* @PqGSSSendPointer, align 8
  store i32 0, i32* @pqsecure_open_gss.first, align 4
  br label %17

17:                                               ; preds = %16, %1
  %18 = load i64, i64* @PqGSSSendPointer, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %48

20:                                               ; preds = %17
  %21 = load i64, i64* @PqGSSSendPointer, align 8
  %22 = load i64, i64* @PqGSSSendStart, align 8
  %23 = sub nsw i64 %21, %22
  store i64 %23, i64* %11, align 8
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %25 = load i64, i64* @PqGSSSendBuffer, align 8
  %26 = load i64, i64* @PqGSSSendStart, align 8
  %27 = add nsw i64 %25, %26
  %28 = load i64, i64* %11, align 8
  %29 = call i64 @pqsecure_raw_write(%struct.TYPE_13__* %24, i64 %27, i64 %28)
  store i64 %29, i64* %4, align 8
  %30 = load i64, i64* %4, align 8
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %20
  %33 = load i64, i64* @errno, align 8
  %34 = load i64, i64* @EWOULDBLOCK, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load i64, i64* @PGRES_POLLING_WRITING, align 8
  store i64 %37, i64* %2, align 8
  br label %288

38:                                               ; preds = %32, %20
  %39 = load i64, i64* %4, align 8
  %40 = load i64, i64* %11, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %38
  %43 = load i64, i64* %11, align 8
  %44 = load i64, i64* @PqGSSSendStart, align 8
  %45 = add nsw i64 %44, %43
  store i64 %45, i64* @PqGSSSendStart, align 8
  %46 = load i64, i64* @PGRES_POLLING_WRITING, align 8
  store i64 %46, i64* %2, align 8
  br label %288

47:                                               ; preds = %38
  store i64 0, i64* @PqGSSSendStart, align 8
  store i64 0, i64* @PqGSSSendPointer, align 8
  br label %48

48:                                               ; preds = %47, %17
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %185

53:                                               ; preds = %48
  %54 = load i32, i32* @PqGSSRecvLength, align 4
  %55 = sext i32 %54 to i64
  %56 = icmp ult i64 %55, 4
  br i1 %56, label %57, label %85

57:                                               ; preds = %53
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %59 = load i8*, i8** @PqGSSRecvBuffer, align 8
  %60 = load i32, i32* @PqGSSRecvLength, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %59, i64 %61
  %63 = load i32, i32* @PqGSSRecvLength, align 4
  %64 = sext i32 %63 to i64
  %65 = sub i64 4, %64
  %66 = trunc i64 %65 to i32
  %67 = call i64 @gss_read(%struct.TYPE_13__* %58, i8* %62, i32 %66, i64* %4)
  store i64 %67, i64* %8, align 8
  %68 = load i64, i64* %8, align 8
  %69 = load i64, i64* @PGRES_POLLING_OK, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %57
  %72 = load i64, i64* %8, align 8
  store i64 %72, i64* %2, align 8
  br label %288

73:                                               ; preds = %57
  %74 = load i64, i64* %4, align 8
  %75 = load i32, i32* @PqGSSRecvLength, align 4
  %76 = sext i32 %75 to i64
  %77 = add nsw i64 %76, %74
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* @PqGSSRecvLength, align 4
  %79 = load i32, i32* @PqGSSRecvLength, align 4
  %80 = sext i32 %79 to i64
  %81 = icmp ult i64 %80, 4
  br i1 %81, label %82, label %84

82:                                               ; preds = %73
  %83 = load i64, i64* @PGRES_POLLING_READING, align 8
  store i64 %83, i64* %2, align 8
  br label %288

84:                                               ; preds = %73
  br label %85

85:                                               ; preds = %84, %53
  %86 = load i8*, i8** @PqGSSRecvBuffer, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 0
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %89, 69
  br i1 %90, label %91, label %119

91:                                               ; preds = %85
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %93 = load i8*, i8** @PqGSSRecvBuffer, align 8
  %94 = load i32, i32* @PqGSSRecvLength, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %93, i64 %95
  %97 = load i32, i32* @PQ_GSS_RECV_BUFFER_SIZE, align 4
  %98 = load i32, i32* @PqGSSRecvLength, align 4
  %99 = sub nsw i32 %97, %98
  %100 = sub nsw i32 %99, 1
  %101 = call i64 @gss_read(%struct.TYPE_13__* %92, i8* %96, i32 %100, i64* %4)
  store i64 %101, i64* %8, align 8
  %102 = load i64, i64* %8, align 8
  %103 = load i64, i64* @PGRES_POLLING_OK, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %105, label %107

105:                                              ; preds = %91
  %106 = load i64, i64* %8, align 8
  store i64 %106, i64* %2, align 8
  br label %288

107:                                              ; preds = %91
  %108 = load i64, i64* %4, align 8
  %109 = load i32, i32* @PqGSSRecvLength, align 4
  %110 = sext i32 %109 to i64
  %111 = add nsw i64 %110, %108
  %112 = trunc i64 %111 to i32
  store i32 %112, i32* @PqGSSRecvLength, align 4
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 5
  %115 = load i8*, i8** @PqGSSRecvBuffer, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 1
  %117 = call i32 (i32*, i8*, ...) @printfPQExpBuffer(i32* %114, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %116)
  %118 = load i64, i64* @PGRES_POLLING_FAILED, align 8
  store i64 %118, i64* %2, align 8
  br label %288

119:                                              ; preds = %85
  %120 = load i8*, i8** @PqGSSRecvBuffer, align 8
  %121 = bitcast i8* %120 to i32*
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @ntohl(i32 %122)
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  store i32 %123, i32* %124, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = sext i32 %126 to i64
  %128 = load i32, i32* @PQ_GSS_RECV_BUFFER_SIZE, align 4
  %129 = sext i32 %128 to i64
  %130 = sub i64 %129, 4
  %131 = icmp ugt i64 %127, %130
  br i1 %131, label %132, label %146

132:                                              ; preds = %119
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 5
  %135 = call i32 @libpq_gettext(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  %136 = sext i32 %135 to i64
  %137 = inttoptr i64 %136 to i8*
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = sext i32 %139 to i64
  %141 = load i32, i32* @PQ_GSS_RECV_BUFFER_SIZE, align 4
  %142 = sext i32 %141 to i64
  %143 = sub i64 %142, 4
  %144 = call i32 (i32*, i8*, ...) @printfPQExpBuffer(i32* %134, i8* %137, i64 %140, i64 %143)
  %145 = load i64, i64* @PGRES_POLLING_FAILED, align 8
  store i64 %145, i64* %2, align 8
  br label %288

146:                                              ; preds = %119
  %147 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %148 = load i8*, i8** @PqGSSRecvBuffer, align 8
  %149 = load i32, i32* @PqGSSRecvLength, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i8, i8* %148, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = sext i32 %153 to i64
  %155 = load i32, i32* @PqGSSRecvLength, align 4
  %156 = sext i32 %155 to i64
  %157 = sub i64 %156, 4
  %158 = sub i64 %154, %157
  %159 = trunc i64 %158 to i32
  %160 = call i64 @gss_read(%struct.TYPE_13__* %147, i8* %151, i32 %159, i64* %4)
  store i64 %160, i64* %8, align 8
  %161 = load i64, i64* %8, align 8
  %162 = load i64, i64* @PGRES_POLLING_OK, align 8
  %163 = icmp ne i64 %161, %162
  br i1 %163, label %164, label %166

164:                                              ; preds = %146
  %165 = load i64, i64* %8, align 8
  store i64 %165, i64* %2, align 8
  br label %288

166:                                              ; preds = %146
  %167 = load i64, i64* %4, align 8
  %168 = load i32, i32* @PqGSSRecvLength, align 4
  %169 = sext i32 %168 to i64
  %170 = add nsw i64 %169, %167
  %171 = trunc i64 %170 to i32
  store i32 %171, i32* @PqGSSRecvLength, align 4
  %172 = load i32, i32* @PqGSSRecvLength, align 4
  %173 = sext i32 %172 to i64
  %174 = sub i64 %173, 4
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = sext i32 %176 to i64
  %178 = icmp ult i64 %174, %177
  br i1 %178, label %179, label %181

179:                                              ; preds = %166
  %180 = load i64, i64* @PGRES_POLLING_READING, align 8
  store i64 %180, i64* %2, align 8
  br label %288

181:                                              ; preds = %166
  %182 = load i8*, i8** @PqGSSRecvBuffer, align 8
  %183 = getelementptr inbounds i8, i8* %182, i64 4
  %184 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 1
  store i8* %183, i8** %184, align 8
  br label %185

185:                                              ; preds = %181, %48
  %186 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %187 = call i64 @pg_GSS_load_servicename(%struct.TYPE_13__* %186)
  store i64 %187, i64* %4, align 8
  %188 = load i64, i64* %4, align 8
  %189 = load i64, i64* @STATUS_OK, align 8
  %190 = icmp ne i64 %188, %189
  br i1 %190, label %191, label %193

191:                                              ; preds = %185
  %192 = load i64, i64* @PGRES_POLLING_FAILED, align 8
  store i64 %192, i64* %2, align 8
  br label %288

193:                                              ; preds = %185
  %194 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %195 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %194, i32 0, i32 3
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %198 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %197, i32 0, i32 2
  %199 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %200 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %199, i32 0, i32 4
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* @GSS_C_NO_OID, align 4
  %203 = load i32, i32* @GSS_REQUIRED_FLAGS, align 4
  %204 = call i32 @gss_init_sec_context(i32* %6, i32 %196, i32* %198, i32 %201, i32 %202, i32 %203, i32 0, i32 0, %struct.TYPE_12__* %9, i32* null, %struct.TYPE_12__* %10, i32* null, i32* null)
  store i32 %204, i32* %5, align 4
  store i32 0, i32* @PqGSSRecvLength, align 4
  store i64 0, i64* @PqGSSRecvPointer, align 8
  %205 = load i32, i32* %5, align 4
  %206 = call i64 @GSS_ERROR(i32 %205)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %215

208:                                              ; preds = %193
  %209 = call i32 @libpq_gettext(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %210 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %211 = load i32, i32* %5, align 4
  %212 = load i32, i32* %6, align 4
  %213 = call i32 @pg_GSS_error(i32 %209, %struct.TYPE_13__* %210, i32 %211, i32 %212)
  %214 = load i64, i64* @PGRES_POLLING_FAILED, align 8
  store i64 %214, i64* %2, align 8
  br label %288

215:                                              ; preds = %193
  %216 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %219, label %248

219:                                              ; preds = %215
  %220 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %221 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %220, i32 0, i32 3
  %222 = call i32 @gss_release_cred(i32* %6, i32* %221)
  %223 = load i32, i32* @GSS_C_NO_CREDENTIAL, align 4
  %224 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %225 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %224, i32 0, i32 3
  store i32 %223, i32* %225, align 4
  %226 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %227 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %226, i32 0, i32 1
  store i32 1, i32* %227, align 4
  %228 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %229 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %228, i32 0, i32 2
  %230 = load i32, i32* %229, align 4
  %231 = load i32, i32* @GSS_C_QOP_DEFAULT, align 4
  %232 = load i32, i32* @PQ_GSS_SEND_BUFFER_SIZE, align 4
  %233 = sext i32 %232 to i64
  %234 = sub i64 %233, 4
  %235 = trunc i64 %234 to i32
  %236 = call i32 @gss_wrap_size_limit(i32* %6, i32 %230, i32 1, i32 %231, i32 %235, i32* @max_packet_size)
  store i32 %236, i32* %5, align 4
  %237 = load i32, i32* %5, align 4
  %238 = call i64 @GSS_ERROR(i32 %237)
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %246

240:                                              ; preds = %219
  %241 = call i32 @libpq_gettext(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %242 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %243 = load i32, i32* %5, align 4
  %244 = load i32, i32* %6, align 4
  %245 = call i32 @pg_GSS_error(i32 %241, %struct.TYPE_13__* %242, i32 %243, i32 %244)
  br label %246

246:                                              ; preds = %240, %219
  %247 = load i64, i64* @PGRES_POLLING_OK, align 8
  store i64 %247, i64* %2, align 8
  br label %288

248:                                              ; preds = %215
  br label %249

249:                                              ; preds = %248
  %250 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = sext i32 %251 to i64
  %253 = load i32, i32* @PQ_GSS_SEND_BUFFER_SIZE, align 4
  %254 = sext i32 %253 to i64
  %255 = sub i64 %254, 4
  %256 = icmp ugt i64 %252, %255
  br i1 %256, label %257, label %264

257:                                              ; preds = %249
  %258 = call i32 @libpq_gettext(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  %259 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %260 = load i32, i32* %5, align 4
  %261 = load i32, i32* %6, align 4
  %262 = call i32 @pg_GSS_error(i32 %258, %struct.TYPE_13__* %259, i32 %260, i32 %261)
  %263 = load i64, i64* @PGRES_POLLING_FAILED, align 8
  store i64 %263, i64* %2, align 8
  br label %288

264:                                              ; preds = %249
  %265 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  %267 = call i32 @htonl(i32 %266)
  store i32 %267, i32* %7, align 4
  %268 = load i64, i64* @PqGSSSendBuffer, align 8
  %269 = bitcast i32* %7 to i8*
  %270 = call i32 @memcpy(i64 %268, i8* %269, i32 4)
  %271 = load i64, i64* @PqGSSSendPointer, align 8
  %272 = add i64 %271, 4
  store i64 %272, i64* @PqGSSSendPointer, align 8
  %273 = load i64, i64* @PqGSSSendBuffer, align 8
  %274 = load i64, i64* @PqGSSSendPointer, align 8
  %275 = add nsw i64 %273, %274
  %276 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 1
  %277 = load i8*, i8** %276, align 8
  %278 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %279 = load i32, i32* %278, align 8
  %280 = call i32 @memcpy(i64 %275, i8* %277, i32 %279)
  %281 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %282 = load i32, i32* %281, align 8
  %283 = sext i32 %282 to i64
  %284 = load i64, i64* @PqGSSSendPointer, align 8
  %285 = add nsw i64 %284, %283
  store i64 %285, i64* @PqGSSSendPointer, align 8
  %286 = call i32 @gss_release_buffer(i32* %6, %struct.TYPE_12__* %10)
  %287 = load i64, i64* @PGRES_POLLING_WRITING, align 8
  store i64 %287, i64* %2, align 8
  br label %288

288:                                              ; preds = %264, %257, %246, %208, %191, %179, %164, %132, %107, %105, %82, %71, %42, %36
  %289 = load i64, i64* %2, align 8
  ret i64 %289
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @pqsecure_raw_write(%struct.TYPE_13__*, i64, i64) #2

declare dso_local i64 @gss_read(%struct.TYPE_13__*, i8*, i32, i64*) #2

declare dso_local i32 @printfPQExpBuffer(i32*, i8*, ...) #2

declare dso_local i32 @ntohl(i32) #2

declare dso_local i32 @libpq_gettext(i8*) #2

declare dso_local i64 @pg_GSS_load_servicename(%struct.TYPE_13__*) #2

declare dso_local i32 @gss_init_sec_context(i32*, i32, i32*, i32, i32, i32, i32, i32, %struct.TYPE_12__*, i32*, %struct.TYPE_12__*, i32*, i32*) #2

declare dso_local i64 @GSS_ERROR(i32) #2

declare dso_local i32 @pg_GSS_error(i32, %struct.TYPE_13__*, i32, i32) #2

declare dso_local i32 @gss_release_cred(i32*, i32*) #2

declare dso_local i32 @gss_wrap_size_limit(i32*, i32, i32, i32, i32, i32*) #2

declare dso_local i32 @htonl(i32) #2

declare dso_local i32 @memcpy(i64, i8*, i32) #2

declare dso_local i32 @gss_release_buffer(i32*, %struct.TYPE_12__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
