; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/libpq/extr_auth.c_ident_inet.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/libpq/extr_auth.c_ident_inet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__*, %struct.TYPE_8__, %struct.TYPE_8__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.addrinfo = type { i64, i32*, i64, i8*, i32, i32*, i32*, i8* }

@IDENT_USERNAME_MAX = common dso_local global i32 0, align 4
@PGINVALID_SOCKET = common dso_local global i64 0, align 8
@NI_MAXHOST = common dso_local global i32 0, align 4
@NI_MAXSERV = common dso_local global i32 0, align 4
@NI_NUMERICHOST = common dso_local global i32 0, align 4
@NI_NUMERICSERV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@IDENT_PORT = common dso_local global i32 0, align 4
@AI_NUMERICHOST = common dso_local global i8* null, align 8
@SOCK_STREAM = common dso_local global i8* null, align 8
@LOG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"could not create socket for Ident connection: %m\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"could not bind to local address \22%s\22: %m\00", align 1
@.str.3 = private unnamed_addr constant [63 x i8] c"could not connect to Ident server at address \22%s\22, port %s: %m\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%s,%s\0D\0A\00", align 1
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [66 x i8] c"could not send query to Ident server at address \22%s\22, port %s: %m\00", align 1
@.str.6 = private unnamed_addr constant [74 x i8] c"could not receive response from Ident server at address \22%s\22, port %s: %m\00", align 1
@.str.7 = private unnamed_addr constant [53 x i8] c"invalidly formatted response from Ident server: \22%s\22\00", align 1
@STATUS_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @ident_inet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ident_inet(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_8__, align 4
  %5 = alloca %struct.TYPE_8__, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca [80 x i8], align 16
  %17 = alloca i64, align 8
  %18 = alloca %struct.addrinfo*, align 8
  %19 = alloca %struct.addrinfo*, align 8
  %20 = alloca %struct.addrinfo, align 8
  %21 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 3
  %24 = bitcast %struct.TYPE_8__* %4 to i8*
  %25 = bitcast %struct.TYPE_8__* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %24, i8* align 8 %25, i64 8, i1 false)
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 2
  %28 = bitcast %struct.TYPE_8__* %5 to i8*
  %29 = bitcast %struct.TYPE_8__* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %28, i8* align 8 %29, i64 8, i1 false)
  %30 = load i32, i32* @IDENT_USERNAME_MAX, align 4
  %31 = add nsw i32 %30, 1
  %32 = zext i32 %31 to i64
  %33 = call i8* @llvm.stacksave()
  store i8* %33, i8** %6, align 8
  %34 = alloca i8, i64 %32, align 16
  store i64 %32, i64* %7, align 8
  %35 = load i64, i64* @PGINVALID_SOCKET, align 8
  store i64 %35, i64* %8, align 8
  %36 = load i32, i32* @NI_MAXHOST, align 4
  %37 = zext i32 %36 to i64
  %38 = alloca i8, i64 %37, align 16
  store i64 %37, i64* %11, align 8
  %39 = load i32, i32* @NI_MAXSERV, align 4
  %40 = zext i32 %39 to i64
  %41 = alloca i8, i64 %40, align 16
  store i64 %40, i64* %12, align 8
  %42 = load i32, i32* @NI_MAXHOST, align 4
  %43 = zext i32 %42 to i64
  %44 = alloca i8, i64 %43, align 16
  store i64 %43, i64* %13, align 8
  %45 = load i32, i32* @NI_MAXSERV, align 4
  %46 = zext i32 %45 to i64
  %47 = alloca i8, i64 %46, align 16
  store i64 %46, i64* %14, align 8
  %48 = load i32, i32* @NI_MAXSERV, align 4
  %49 = zext i32 %48 to i64
  %50 = alloca i8, i64 %49, align 16
  store i64 %49, i64* %15, align 8
  %51 = load i32, i32* @IDENT_USERNAME_MAX, align 4
  %52 = add nsw i32 80, %51
  %53 = zext i32 %52 to i64
  %54 = alloca i8, i64 %53, align 16
  store i64 %53, i64* %17, align 8
  store %struct.addrinfo* null, %struct.addrinfo** %18, align 8
  store %struct.addrinfo* null, %struct.addrinfo** %19, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = trunc i64 %37 to i32
  %59 = trunc i64 %40 to i32
  %60 = load i32, i32* @NI_NUMERICHOST, align 4
  %61 = load i32, i32* @NI_NUMERICSERV, align 4
  %62 = or i32 %60, %61
  %63 = call i32 @pg_getnameinfo_all(%struct.TYPE_9__* %55, i32 %57, i8* %38, i32 %58, i8* %41, i32 %59, i32 %62)
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = trunc i64 %43 to i32
  %68 = trunc i64 %46 to i32
  %69 = load i32, i32* @NI_NUMERICHOST, align 4
  %70 = load i32, i32* @NI_NUMERICSERV, align 4
  %71 = or i32 %69, %70
  %72 = call i32 @pg_getnameinfo_all(%struct.TYPE_9__* %64, i32 %66, i8* %44, i32 %67, i8* %47, i32 %68, i32 %71)
  %73 = trunc i64 %49 to i32
  %74 = load i32, i32* @IDENT_PORT, align 4
  %75 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %50, i32 %73, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %74)
  %76 = load i8*, i8** @AI_NUMERICHOST, align 8
  %77 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %20, i32 0, i32 7
  store i8* %76, i8** %77, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %20, i32 0, i32 4
  store i32 %80, i32* %81, align 8
  %82 = load i8*, i8** @SOCK_STREAM, align 8
  %83 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %20, i32 0, i32 3
  store i8* %82, i8** %83, align 8
  %84 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %20, i32 0, i32 2
  store i64 0, i64* %84, align 8
  %85 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %20, i32 0, i32 0
  store i64 0, i64* %85, align 8
  %86 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %20, i32 0, i32 6
  store i32* null, i32** %86, align 8
  %87 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %20, i32 0, i32 1
  store i32* null, i32** %87, align 8
  %88 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %20, i32 0, i32 5
  store i32* null, i32** %88, align 8
  %89 = call i32 @pg_getaddrinfo_all(i8* %38, i8* %50, %struct.addrinfo* %20, %struct.addrinfo** %18)
  store i32 %89, i32* %9, align 4
  %90 = load i32, i32* %9, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %1
  %93 = load %struct.addrinfo*, %struct.addrinfo** %18, align 8
  %94 = icmp ne %struct.addrinfo* %93, null
  br i1 %94, label %96, label %95

95:                                               ; preds = %92, %1
  store i32 0, i32* %10, align 4
  br label %231

96:                                               ; preds = %92
  %97 = load i8*, i8** @AI_NUMERICHOST, align 8
  %98 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %20, i32 0, i32 7
  store i8* %97, i8** %98, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %20, i32 0, i32 4
  store i32 %101, i32* %102, align 8
  %103 = load i8*, i8** @SOCK_STREAM, align 8
  %104 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %20, i32 0, i32 3
  store i8* %103, i8** %104, align 8
  %105 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %20, i32 0, i32 2
  store i64 0, i64* %105, align 8
  %106 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %20, i32 0, i32 0
  store i64 0, i64* %106, align 8
  %107 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %20, i32 0, i32 6
  store i32* null, i32** %107, align 8
  %108 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %20, i32 0, i32 1
  store i32* null, i32** %108, align 8
  %109 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %20, i32 0, i32 5
  store i32* null, i32** %109, align 8
  %110 = call i32 @pg_getaddrinfo_all(i8* %44, i8* null, %struct.addrinfo* %20, %struct.addrinfo** %19)
  store i32 %110, i32* %9, align 4
  %111 = load i32, i32* %9, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %116, label %113

113:                                              ; preds = %96
  %114 = load %struct.addrinfo*, %struct.addrinfo** %19, align 8
  %115 = icmp ne %struct.addrinfo* %114, null
  br i1 %115, label %117, label %116

116:                                              ; preds = %113, %96
  store i32 0, i32* %10, align 4
  br label %231

117:                                              ; preds = %113
  %118 = load %struct.addrinfo*, %struct.addrinfo** %18, align 8
  %119 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.addrinfo*, %struct.addrinfo** %18, align 8
  %122 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %121, i32 0, i32 3
  %123 = load i8*, i8** %122, align 8
  %124 = load %struct.addrinfo*, %struct.addrinfo** %18, align 8
  %125 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = call i64 @socket(i32 %120, i8* %123, i64 %126)
  store i64 %127, i64* %8, align 8
  %128 = load i64, i64* %8, align 8
  %129 = load i64, i64* @PGINVALID_SOCKET, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %136

131:                                              ; preds = %117
  %132 = load i32, i32* @LOG, align 4
  %133 = call i32 (...) @errcode_for_socket_access()
  %134 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %135 = call i32 @ereport(i32 %132, i32 %134)
  store i32 0, i32* %10, align 4
  br label %231

136:                                              ; preds = %117
  %137 = load i64, i64* %8, align 8
  %138 = load %struct.addrinfo*, %struct.addrinfo** %19, align 8
  %139 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %138, i32 0, i32 1
  %140 = load i32*, i32** %139, align 8
  %141 = load %struct.addrinfo*, %struct.addrinfo** %19, align 8
  %142 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = call i32 @bind(i64 %137, i32* %140, i64 %143)
  store i32 %144, i32* %9, align 4
  %145 = load i32, i32* %9, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %152

147:                                              ; preds = %136
  %148 = load i32, i32* @LOG, align 4
  %149 = call i32 (...) @errcode_for_socket_access()
  %150 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i8* %44)
  %151 = call i32 @ereport(i32 %148, i32 %150)
  store i32 0, i32* %10, align 4
  br label %231

152:                                              ; preds = %136
  %153 = load i64, i64* %8, align 8
  %154 = load %struct.addrinfo*, %struct.addrinfo** %18, align 8
  %155 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %154, i32 0, i32 1
  %156 = load i32*, i32** %155, align 8
  %157 = load %struct.addrinfo*, %struct.addrinfo** %18, align 8
  %158 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = call i32 @connect(i64 %153, i32* %156, i64 %159)
  store i32 %160, i32* %9, align 4
  %161 = load i32, i32* %9, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %168

163:                                              ; preds = %152
  %164 = load i32, i32* @LOG, align 4
  %165 = call i32 (...) @errcode_for_socket_access()
  %166 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i64 0, i64 0), i8* %38, i8* %50)
  %167 = call i32 @ereport(i32 %164, i32 %166)
  store i32 0, i32* %10, align 4
  br label %231

168:                                              ; preds = %152
  %169 = getelementptr inbounds [80 x i8], [80 x i8]* %16, i64 0, i64 0
  %170 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %169, i32 80, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* %41, i8* %47)
  br label %171

171:                                              ; preds = %185, %168
  %172 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  %173 = load i64, i64* %8, align 8
  %174 = getelementptr inbounds [80 x i8], [80 x i8]* %16, i64 0, i64 0
  %175 = getelementptr inbounds [80 x i8], [80 x i8]* %16, i64 0, i64 0
  %176 = call i32 @strlen(i8* %175)
  %177 = call i32 @send(i64 %173, i8* %174, i32 %176, i32 0)
  store i32 %177, i32* %9, align 4
  br label %178

178:                                              ; preds = %171
  %179 = load i32, i32* %9, align 4
  %180 = icmp slt i32 %179, 0
  br i1 %180, label %181, label %185

181:                                              ; preds = %178
  %182 = load i64, i64* @errno, align 8
  %183 = load i64, i64* @EINTR, align 8
  %184 = icmp eq i64 %182, %183
  br label %185

185:                                              ; preds = %181, %178
  %186 = phi i1 [ false, %178 ], [ %184, %181 ]
  br i1 %186, label %171, label %187

187:                                              ; preds = %185
  %188 = load i32, i32* %9, align 4
  %189 = icmp slt i32 %188, 0
  br i1 %189, label %190, label %195

190:                                              ; preds = %187
  %191 = load i32, i32* @LOG, align 4
  %192 = call i32 (...) @errcode_for_socket_access()
  %193 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.5, i64 0, i64 0), i8* %38, i8* %50)
  %194 = call i32 @ereport(i32 %191, i32 %193)
  store i32 0, i32* %10, align 4
  br label %231

195:                                              ; preds = %187
  br label %196

196:                                              ; preds = %209, %195
  %197 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  %198 = load i64, i64* %8, align 8
  %199 = sub i64 %53, 1
  %200 = trunc i64 %199 to i32
  %201 = call i32 @recv(i64 %198, i8* %54, i32 %200, i32 0)
  store i32 %201, i32* %9, align 4
  br label %202

202:                                              ; preds = %196
  %203 = load i32, i32* %9, align 4
  %204 = icmp slt i32 %203, 0
  br i1 %204, label %205, label %209

205:                                              ; preds = %202
  %206 = load i64, i64* @errno, align 8
  %207 = load i64, i64* @EINTR, align 8
  %208 = icmp eq i64 %206, %207
  br label %209

209:                                              ; preds = %205, %202
  %210 = phi i1 [ false, %202 ], [ %208, %205 ]
  br i1 %210, label %196, label %211

211:                                              ; preds = %209
  %212 = load i32, i32* %9, align 4
  %213 = icmp slt i32 %212, 0
  br i1 %213, label %214, label %219

214:                                              ; preds = %211
  %215 = load i32, i32* @LOG, align 4
  %216 = call i32 (...) @errcode_for_socket_access()
  %217 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.6, i64 0, i64 0), i8* %38, i8* %50)
  %218 = call i32 @ereport(i32 %215, i32 %217)
  store i32 0, i32* %10, align 4
  br label %231

219:                                              ; preds = %211
  %220 = load i32, i32* %9, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i8, i8* %54, i64 %221
  store i8 0, i8* %222, align 1
  %223 = call i32 @interpret_ident_response(i8* %54, i8* %34)
  store i32 %223, i32* %10, align 4
  %224 = load i32, i32* %10, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %230, label %226

226:                                              ; preds = %219
  %227 = load i32, i32* @LOG, align 4
  %228 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0), i8* %54)
  %229 = call i32 @ereport(i32 %227, i32 %228)
  br label %230

230:                                              ; preds = %226, %219
  br label %231

231:                                              ; preds = %230, %214, %190, %163, %147, %131, %116, %95
  %232 = load i64, i64* %8, align 8
  %233 = load i64, i64* @PGINVALID_SOCKET, align 8
  %234 = icmp ne i64 %232, %233
  br i1 %234, label %235, label %238

235:                                              ; preds = %231
  %236 = load i64, i64* %8, align 8
  %237 = call i32 @closesocket(i64 %236)
  br label %238

238:                                              ; preds = %235, %231
  %239 = load %struct.addrinfo*, %struct.addrinfo** %18, align 8
  %240 = icmp ne %struct.addrinfo* %239, null
  br i1 %240, label %241, label %247

241:                                              ; preds = %238
  %242 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = load %struct.addrinfo*, %struct.addrinfo** %18, align 8
  %246 = call i32 @pg_freeaddrinfo_all(i32 %244, %struct.addrinfo* %245)
  br label %247

247:                                              ; preds = %241, %238
  %248 = load %struct.addrinfo*, %struct.addrinfo** %19, align 8
  %249 = icmp ne %struct.addrinfo* %248, null
  br i1 %249, label %250, label %256

250:                                              ; preds = %247
  %251 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = load %struct.addrinfo*, %struct.addrinfo** %19, align 8
  %255 = call i32 @pg_freeaddrinfo_all(i32 %253, %struct.addrinfo* %254)
  br label %256

256:                                              ; preds = %250, %247
  %257 = load i32, i32* %10, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %269

259:                                              ; preds = %256
  %260 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %261 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %260, i32 0, i32 1
  %262 = load %struct.TYPE_6__*, %struct.TYPE_6__** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 4
  %265 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %266 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  %268 = call i32 @check_usermap(i32 %264, i32 %267, i8* %34, i32 0)
  store i32 %268, i32* %2, align 4
  store i32 1, i32* %21, align 4
  br label %271

269:                                              ; preds = %256
  %270 = load i32, i32* @STATUS_ERROR, align 4
  store i32 %270, i32* %2, align 4
  store i32 1, i32* %21, align 4
  br label %271

271:                                              ; preds = %269, %259
  %272 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %272)
  %273 = load i32, i32* %2, align 4
  ret i32 %273
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @pg_getnameinfo_all(%struct.TYPE_9__*, i32, i8*, i32, i8*, i32, i32) #3

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #3

declare dso_local i32 @pg_getaddrinfo_all(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) #3

declare dso_local i64 @socket(i32, i8*, i64) #3

declare dso_local i32 @ereport(i32, i32) #3

declare dso_local i32 @errcode_for_socket_access(...) #3

declare dso_local i32 @errmsg(i8*, ...) #3

declare dso_local i32 @bind(i64, i32*, i64) #3

declare dso_local i32 @connect(i64, i32*, i64) #3

declare dso_local i32 @CHECK_FOR_INTERRUPTS(...) #3

declare dso_local i32 @send(i64, i8*, i32, i32) #3

declare dso_local i32 @strlen(i8*) #3

declare dso_local i32 @recv(i64, i8*, i32, i32) #3

declare dso_local i32 @interpret_ident_response(i8*, i8*) #3

declare dso_local i32 @closesocket(i64) #3

declare dso_local i32 @pg_freeaddrinfo_all(i32, %struct.addrinfo*) #3

declare dso_local i32 @check_usermap(i32, i32, i8*, i32) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
