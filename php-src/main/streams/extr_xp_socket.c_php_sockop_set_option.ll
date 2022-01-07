; ModuleID = '/home/carl/AnghaBench/php-src/main/streams/extr_xp_socket.c_php_sockop_set_option.c'
source_filename = "/home/carl/AnghaBench/php-src/main/streams/extr_xp_socket.c_php_sockop_set_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i64 }
%struct.TYPE_13__ = type { i32, i32, i32, %struct.timeval }
%struct.timeval = type { i32, i32 }
%struct.TYPE_11__ = type { i64, %struct.TYPE_10__, i32, i32, %struct.TYPE_9__, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32 }

@PHP_STREAM_OPTION_RETURN_NOTIMPL = common dso_local global i32 0, align 4
@default_socket_timeout = common dso_local global i32 0, align 4
@PHP_POLLREADABLE = common dso_local global i32 0, align 4
@POLLPRI = common dso_local global i32 0, align 4
@MSG_PEEK = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@PHP_STREAM_OPTION_RETURN_OK = common dso_local global i32 0, align 4
@PHP_STREAM_OPTION_RETURN_ERR = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"timed_out\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"blocked\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"eof\00", align 1
@STREAM_OOB = common dso_local global i32 0, align 4
@MSG_OOB = common dso_local global i32 0, align 4
@E_WARNING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@STREAM_PEEK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i32, i32, i8*)* @php_sockop_set_option to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @php_sockop_set_option(%struct.TYPE_12__* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca %struct.TYPE_11__*, align 8
  %14 = alloca %struct.timeval, align 4
  %15 = alloca i8, align 1
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %23, %struct.TYPE_13__** %12, align 8
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %25 = icmp ne %struct.TYPE_13__* %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %4
  %27 = load i32, i32* @PHP_STREAM_OPTION_RETURN_NOTIMPL, align 4
  store i32 %27, i32* %5, align 4
  br label %389

28:                                               ; preds = %4
  %29 = load i32, i32* %7, align 4
  switch i32 %29, label %387 [
    i32 140, label %30
    i32 141, label %105
    i32 138, label %123
    i32 139, label %133
    i32 137, label %153
  ]

30:                                               ; preds = %28
  store i32 1, i32* %16, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %50

33:                                               ; preds = %30
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.timeval, %struct.timeval* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %44

39:                                               ; preds = %33
  %40 = load i32, i32* @default_socket_timeout, align 4
  %41 = call i32 @FG(i32 %40)
  %42 = getelementptr inbounds %struct.timeval, %struct.timeval* %14, i32 0, i32 0
  store i32 %41, i32* %42, align 4
  %43 = getelementptr inbounds %struct.timeval, %struct.timeval* %14, i32 0, i32 1
  store i32 0, i32* %43, align 4
  br label %49

44:                                               ; preds = %33
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 3
  %47 = bitcast %struct.timeval* %14 to i8*
  %48 = bitcast %struct.timeval* %46 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %47, i8* align 4 %48, i64 8, i1 false)
  br label %49

49:                                               ; preds = %44, %39
  br label %54

50:                                               ; preds = %30
  %51 = load i32, i32* %8, align 4
  %52 = getelementptr inbounds %struct.timeval, %struct.timeval* %14, i32 0, i32 0
  store i32 %51, i32* %52, align 4
  %53 = getelementptr inbounds %struct.timeval, %struct.timeval* %14, i32 0, i32 1
  store i32 0, i32* %53, align 4
  br label %54

54:                                               ; preds = %50, %49
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %57, -1
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  store i32 0, i32* %16, align 4
  br label %96

60:                                               ; preds = %54
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @PHP_POLLREADABLE, align 4
  %65 = load i32, i32* @POLLPRI, align 4
  %66 = or i32 %64, %65
  %67 = call i32 @php_pollfd_for(i32 %63, i32 %66, %struct.timeval* %14)
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %95

69:                                               ; preds = %60
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @MSG_PEEK, align 4
  %74 = call i32 @recv(i32 %72, i8* %15, i32 1, i32 %73)
  store i32 %74, i32* %17, align 4
  %75 = call i32 (...) @php_socket_errno()
  store i32 %75, i32* %18, align 4
  %76 = load i32, i32* %17, align 4
  %77 = icmp eq i32 0, %76
  br i1 %77, label %93, label %78

78:                                               ; preds = %69
  %79 = load i32, i32* %17, align 4
  %80 = icmp sgt i32 0, %79
  br i1 %80, label %81, label %94

81:                                               ; preds = %78
  %82 = load i32, i32* %18, align 4
  %83 = load i32, i32* @EWOULDBLOCK, align 4
  %84 = icmp ne i32 %82, %83
  br i1 %84, label %85, label %94

85:                                               ; preds = %81
  %86 = load i32, i32* %18, align 4
  %87 = load i32, i32* @EAGAIN, align 4
  %88 = icmp ne i32 %86, %87
  br i1 %88, label %89, label %94

89:                                               ; preds = %85
  %90 = load i32, i32* %18, align 4
  %91 = load i32, i32* @EMSGSIZE, align 4
  %92 = icmp ne i32 %90, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %89, %69
  store i32 0, i32* %16, align 4
  br label %94

94:                                               ; preds = %93, %89, %85, %81, %78
  br label %95

95:                                               ; preds = %94, %60
  br label %96

96:                                               ; preds = %95, %59
  %97 = load i32, i32* %16, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %96
  %100 = load i32, i32* @PHP_STREAM_OPTION_RETURN_OK, align 4
  br label %103

101:                                              ; preds = %96
  %102 = load i32, i32* @PHP_STREAM_OPTION_RETURN_ERR, align 4
  br label %103

103:                                              ; preds = %101, %99
  %104 = phi i32 [ %100, %99 ], [ %102, %101 ]
  store i32 %104, i32* %5, align 4
  br label %389

105:                                              ; preds = %28
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  store i32 %108, i32* %10, align 4
  %109 = load i32, i32* @SUCCESS, align 4
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %8, align 4
  %114 = call i32 @php_set_sock_blocking(i32 %112, i32 %113)
  %115 = icmp eq i32 %109, %114
  br i1 %115, label %116, label %121

116:                                              ; preds = %105
  %117 = load i32, i32* %8, align 4
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 1
  store i32 %117, i32* %119, align 4
  %120 = load i32, i32* %10, align 4
  store i32 %120, i32* %5, align 4
  br label %389

121:                                              ; preds = %105
  %122 = load i32, i32* @PHP_STREAM_OPTION_RETURN_ERR, align 4
  store i32 %122, i32* %5, align 4
  br label %389

123:                                              ; preds = %28
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 3
  %126 = load i8*, i8** %9, align 8
  %127 = bitcast i8* %126 to %struct.timeval*
  %128 = bitcast %struct.timeval* %125 to i8*
  %129 = bitcast %struct.timeval* %127 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %128, i8* align 4 %129, i64 8, i1 false)
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 2
  store i32 0, i32* %131, align 4
  %132 = load i32, i32* @PHP_STREAM_OPTION_RETURN_OK, align 4
  store i32 %132, i32* %5, align 4
  br label %389

133:                                              ; preds = %28
  %134 = load i8*, i8** %9, align 8
  %135 = bitcast i8* %134 to i32*
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @add_assoc_bool(i32* %135, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %138)
  %140 = load i8*, i8** %9, align 8
  %141 = bitcast i8* %140 to i32*
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @add_assoc_bool(i32* %141, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %144)
  %146 = load i8*, i8** %9, align 8
  %147 = bitcast i8* %146 to i32*
  %148 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @add_assoc_bool(i32* %147, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %150)
  %152 = load i32, i32* @PHP_STREAM_OPTION_RETURN_OK, align 4
  store i32 %152, i32* %5, align 4
  br label %389

153:                                              ; preds = %28
  %154 = load i8*, i8** %9, align 8
  %155 = bitcast i8* %154 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %155, %struct.TYPE_11__** %13, align 8
  %156 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 5
  %158 = load i32, i32* %157, align 8
  switch i32 %158, label %385 [
    i32 131, label %159
    i32 133, label %175
    i32 132, label %217
    i32 129, label %259
    i32 130, label %310
  ]

159:                                              ; preds = %153
  %160 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 4
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i32 0, i32 5
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @listen(i32 %162, i32 %166)
  %168 = icmp eq i32 %167, 0
  %169 = zext i1 %168 to i64
  %170 = select i1 %168, i32 0, i32 -1
  %171 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i32 0, i32 0
  store i32 %170, i32* %173, align 8
  %174 = load i32, i32* @PHP_STREAM_OPTION_RETURN_OK, align 4
  store i32 %174, i32* %5, align 4
  br label %389

175:                                              ; preds = %153
  %176 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %187

183:                                              ; preds = %175
  %184 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %185 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i32 0, i32 3
  br label %188

187:                                              ; preds = %175
  br label %188

188:                                              ; preds = %187, %183
  %189 = phi i32* [ %186, %183 ], [ null, %187 ]
  %190 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %191 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 8
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %198

194:                                              ; preds = %188
  %195 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %196 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %196, i32 0, i32 2
  br label %199

198:                                              ; preds = %188
  br label %199

199:                                              ; preds = %198, %194
  %200 = phi i32* [ %197, %194 ], [ null, %198 ]
  %201 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %202 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 8
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %209

205:                                              ; preds = %199
  %206 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %207 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %207, i32 0, i32 1
  br label %210

209:                                              ; preds = %199
  br label %210

210:                                              ; preds = %209, %205
  %211 = phi i32* [ %208, %205 ], [ null, %209 ]
  %212 = call i32 @php_network_get_sock_name(i32 %178, i32* %189, i32* %200, i32* %211)
  %213 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %214 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %213, i32 0, i32 1
  %215 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %214, i32 0, i32 0
  store i32 %212, i32* %215, align 8
  %216 = load i32, i32* @PHP_STREAM_OPTION_RETURN_OK, align 4
  store i32 %216, i32* %5, align 4
  br label %389

217:                                              ; preds = %153
  %218 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %219 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %222 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %221, i32 0, i32 3
  %223 = load i32, i32* %222, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %229

225:                                              ; preds = %217
  %226 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %227 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %226, i32 0, i32 1
  %228 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %227, i32 0, i32 3
  br label %230

229:                                              ; preds = %217
  br label %230

230:                                              ; preds = %229, %225
  %231 = phi i32* [ %228, %225 ], [ null, %229 ]
  %232 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %233 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %232, i32 0, i32 2
  %234 = load i32, i32* %233, align 8
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %240

236:                                              ; preds = %230
  %237 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %238 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %237, i32 0, i32 1
  %239 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %238, i32 0, i32 2
  br label %241

240:                                              ; preds = %230
  br label %241

241:                                              ; preds = %240, %236
  %242 = phi i32* [ %239, %236 ], [ null, %240 ]
  %243 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %244 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %243, i32 0, i32 2
  %245 = load i32, i32* %244, align 8
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %251

247:                                              ; preds = %241
  %248 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %249 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %248, i32 0, i32 1
  %250 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %249, i32 0, i32 1
  br label %252

251:                                              ; preds = %241
  br label %252

252:                                              ; preds = %251, %247
  %253 = phi i32* [ %250, %247 ], [ null, %251 ]
  %254 = call i32 @php_network_get_peer_name(i32 %220, i32* %231, i32* %242, i32* %253)
  %255 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %256 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %255, i32 0, i32 1
  %257 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %256, i32 0, i32 0
  store i32 %254, i32* %257, align 8
  %258 = load i32, i32* @PHP_STREAM_OPTION_RETURN_OK, align 4
  store i32 %258, i32* %5, align 4
  br label %389

259:                                              ; preds = %153
  store i32 0, i32* %11, align 4
  %260 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %261 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %260, i32 0, i32 4
  %262 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = load i32, i32* @STREAM_OOB, align 4
  %265 = and i32 %263, %264
  %266 = load i32, i32* @STREAM_OOB, align 4
  %267 = icmp eq i32 %265, %266
  br i1 %267, label %268, label %272

268:                                              ; preds = %259
  %269 = load i32, i32* @MSG_OOB, align 4
  %270 = load i32, i32* %11, align 4
  %271 = or i32 %270, %269
  store i32 %271, i32* %11, align 4
  br label %272

272:                                              ; preds = %268, %259
  %273 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %274 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %275 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %274, i32 0, i32 4
  %276 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %275, i32 0, i32 2
  %277 = load i32, i32* %276, align 8
  %278 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %279 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %278, i32 0, i32 4
  %280 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %279, i32 0, i32 1
  %281 = load i32, i32* %280, align 4
  %282 = load i32, i32* %11, align 4
  %283 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %284 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %283, i32 0, i32 4
  %285 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %284, i32 0, i32 4
  %286 = load i32, i32* %285, align 8
  %287 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %288 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %287, i32 0, i32 4
  %289 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %288, i32 0, i32 3
  %290 = load i32, i32* %289, align 4
  %291 = call i32 @sock_sendto(%struct.TYPE_13__* %273, i32 %277, i32 %281, i32 %282, i32 %286, i32 %290)
  %292 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %293 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %292, i32 0, i32 1
  %294 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %293, i32 0, i32 0
  store i32 %291, i32* %294, align 8
  %295 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %296 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %295, i32 0, i32 1
  %297 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 8
  %299 = icmp eq i32 %298, -1
  br i1 %299, label %300, label %308

300:                                              ; preds = %272
  %301 = call i32 (...) @php_socket_errno()
  %302 = call i8* @php_socket_strerror(i32 %301, i32* null, i32 0)
  store i8* %302, i8** %19, align 8
  %303 = load i32, i32* @E_WARNING, align 4
  %304 = load i8*, i8** %19, align 8
  %305 = call i32 @php_error_docref(i32* null, i32 %303, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %304)
  %306 = load i8*, i8** %19, align 8
  %307 = call i32 @efree(i8* %306)
  br label %308

308:                                              ; preds = %300, %272
  %309 = load i32, i32* @PHP_STREAM_OPTION_RETURN_OK, align 4
  store i32 %309, i32* %5, align 4
  br label %389

310:                                              ; preds = %153
  store i32 0, i32* %11, align 4
  %311 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %312 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %311, i32 0, i32 4
  %313 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 8
  %315 = load i32, i32* @STREAM_OOB, align 4
  %316 = and i32 %314, %315
  %317 = load i32, i32* @STREAM_OOB, align 4
  %318 = icmp eq i32 %316, %317
  br i1 %318, label %319, label %323

319:                                              ; preds = %310
  %320 = load i32, i32* @MSG_OOB, align 4
  %321 = load i32, i32* %11, align 4
  %322 = or i32 %321, %320
  store i32 %322, i32* %11, align 4
  br label %323

323:                                              ; preds = %319, %310
  %324 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %325 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %324, i32 0, i32 4
  %326 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %325, i32 0, i32 0
  %327 = load i32, i32* %326, align 8
  %328 = load i32, i32* @STREAM_PEEK, align 4
  %329 = and i32 %327, %328
  %330 = load i32, i32* @STREAM_PEEK, align 4
  %331 = icmp eq i32 %329, %330
  br i1 %331, label %332, label %336

332:                                              ; preds = %323
  %333 = load i32, i32* @MSG_PEEK, align 4
  %334 = load i32, i32* %11, align 4
  %335 = or i32 %334, %333
  store i32 %335, i32* %11, align 4
  br label %336

336:                                              ; preds = %332, %323
  %337 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %338 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %339 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %338, i32 0, i32 4
  %340 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %339, i32 0, i32 2
  %341 = load i32, i32* %340, align 8
  %342 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %343 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %342, i32 0, i32 4
  %344 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %343, i32 0, i32 1
  %345 = load i32, i32* %344, align 4
  %346 = load i32, i32* %11, align 4
  %347 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %348 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %347, i32 0, i32 3
  %349 = load i32, i32* %348, align 4
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %351, label %355

351:                                              ; preds = %336
  %352 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %353 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %352, i32 0, i32 1
  %354 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %353, i32 0, i32 3
  br label %356

355:                                              ; preds = %336
  br label %356

356:                                              ; preds = %355, %351
  %357 = phi i32* [ %354, %351 ], [ null, %355 ]
  %358 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %359 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %358, i32 0, i32 2
  %360 = load i32, i32* %359, align 8
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %362, label %366

362:                                              ; preds = %356
  %363 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %364 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %363, i32 0, i32 1
  %365 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %364, i32 0, i32 2
  br label %367

366:                                              ; preds = %356
  br label %367

367:                                              ; preds = %366, %362
  %368 = phi i32* [ %365, %362 ], [ null, %366 ]
  %369 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %370 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %369, i32 0, i32 2
  %371 = load i32, i32* %370, align 8
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %373, label %377

373:                                              ; preds = %367
  %374 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %375 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %374, i32 0, i32 1
  %376 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %375, i32 0, i32 1
  br label %378

377:                                              ; preds = %367
  br label %378

378:                                              ; preds = %377, %373
  %379 = phi i32* [ %376, %373 ], [ null, %377 ]
  %380 = call i32 @sock_recvfrom(%struct.TYPE_13__* %337, i32 %341, i32 %345, i32 %346, i32* %357, i32* %368, i32* %379)
  %381 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %382 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %381, i32 0, i32 1
  %383 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %382, i32 0, i32 0
  store i32 %380, i32* %383, align 8
  %384 = load i32, i32* @PHP_STREAM_OPTION_RETURN_OK, align 4
  store i32 %384, i32* %5, align 4
  br label %389

385:                                              ; preds = %153
  %386 = load i32, i32* @PHP_STREAM_OPTION_RETURN_NOTIMPL, align 4
  store i32 %386, i32* %5, align 4
  br label %389

387:                                              ; preds = %28
  %388 = load i32, i32* @PHP_STREAM_OPTION_RETURN_NOTIMPL, align 4
  store i32 %388, i32* %5, align 4
  br label %389

389:                                              ; preds = %387, %385, %378, %308, %252, %210, %159, %133, %123, %121, %116, %103, %26
  %390 = load i32, i32* %5, align 4
  ret i32 %390
}

declare dso_local i32 @FG(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @php_pollfd_for(i32, i32, %struct.timeval*) #1

declare dso_local i32 @recv(i32, i8*, i32, i32) #1

declare dso_local i32 @php_socket_errno(...) #1

declare dso_local i32 @php_set_sock_blocking(i32, i32) #1

declare dso_local i32 @add_assoc_bool(i32*, i8*, i32) #1

declare dso_local i32 @listen(i32, i32) #1

declare dso_local i32 @php_network_get_sock_name(i32, i32*, i32*, i32*) #1

declare dso_local i32 @php_network_get_peer_name(i32, i32*, i32*, i32*) #1

declare dso_local i32 @sock_sendto(%struct.TYPE_13__*, i32, i32, i32, i32, i32) #1

declare dso_local i8* @php_socket_strerror(i32, i32*, i32) #1

declare dso_local i32 @php_error_docref(i32*, i32, i8*, i8*) #1

declare dso_local i32 @efree(i8*) #1

declare dso_local i32 @sock_recvfrom(%struct.TYPE_13__*, i32, i32, i32, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
