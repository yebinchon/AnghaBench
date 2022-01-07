; ModuleID = '/home/carl/AnghaBench/mongoose/extr_mongoose.c_mg_socket_if_poll.c'
source_filename = "/home/carl/AnghaBench/mongoose/extr_mongoose.c_mg_socket_if_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_iface = type { %struct.mg_mgr* }
%struct.mg_mgr = type { i64*, %struct.mg_connection* }
%struct.mg_connection = type { i64, i64, i32, double, %struct.mg_connection*, i32*, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }
%struct.timeval = type { i32, i32 }

@INVALID_SOCKET = common dso_local global i64 0, align 8
@FD_SETSIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"new sock %d -> %d\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"new sock is still larger than FD_SETSIZE, disregard\00", align 1
@MG_F_UDP = common dso_local global i32 0, align 4
@MG_F_CONNECTING = common dso_local global i32 0, align 4
@MG_F_WANT_READ = common dso_local global i32 0, align 4
@_MG_F_FD_CAN_READ = common dso_local global i32 0, align 4
@_MG_F_FD_CAN_WRITE = common dso_local global i32 0, align 4
@_MG_F_FD_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mg_socket_if_poll(%struct.mg_iface* %0, i32 %1) #0 {
  %3 = alloca %struct.mg_iface*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mg_mgr*, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca %struct.mg_connection*, align 8
  %9 = alloca %struct.mg_connection*, align 8
  %10 = alloca %struct.timeval, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca double, align 8
  %21 = alloca i32, align 4
  store %struct.mg_iface* %0, %struct.mg_iface** %3, align 8
  store i32 %1, i32* %4, align 4
  %22 = load %struct.mg_iface*, %struct.mg_iface** %3, align 8
  %23 = getelementptr inbounds %struct.mg_iface, %struct.mg_iface* %22, i32 0, i32 0
  %24 = load %struct.mg_mgr*, %struct.mg_mgr** %23, align 8
  store %struct.mg_mgr* %24, %struct.mg_mgr** %5, align 8
  %25 = call double (...) @mg_time()
  store double %25, double* %6, align 8
  %26 = load i64, i64* @INVALID_SOCKET, align 8
  store i64 %26, i64* %14, align 8
  store i32 0, i32* %17, align 4
  store i32 1, i32* %18, align 4
  %27 = call i32 @FD_ZERO(i32* %11)
  %28 = call i32 @FD_ZERO(i32* %12)
  %29 = call i32 @FD_ZERO(i32* %13)
  store double 0.000000e+00, double* %7, align 8
  %30 = load %struct.mg_mgr*, %struct.mg_mgr** %5, align 8
  %31 = getelementptr inbounds %struct.mg_mgr, %struct.mg_mgr* %30, i32 0, i32 1
  %32 = load %struct.mg_connection*, %struct.mg_connection** %31, align 8
  store %struct.mg_connection* %32, %struct.mg_connection** %8, align 8
  store i32 0, i32* %15, align 4
  br label %33

33:                                               ; preds = %177, %2
  %34 = load %struct.mg_connection*, %struct.mg_connection** %8, align 8
  %35 = icmp ne %struct.mg_connection* %34, null
  br i1 %35, label %36, label %179

36:                                               ; preds = %33
  %37 = load %struct.mg_connection*, %struct.mg_connection** %8, align 8
  %38 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %37, i32 0, i32 4
  %39 = load %struct.mg_connection*, %struct.mg_connection** %38, align 8
  store %struct.mg_connection* %39, %struct.mg_connection** %9, align 8
  %40 = load %struct.mg_connection*, %struct.mg_connection** %8, align 8
  %41 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @INVALID_SOCKET, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %155

45:                                               ; preds = %36
  %46 = load i32, i32* %15, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %15, align 4
  %48 = load %struct.mg_connection*, %struct.mg_connection** %8, align 8
  %49 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @FD_SETSIZE, align 8
  %52 = icmp sge i64 %50, %51
  br i1 %52, label %53, label %92

53:                                               ; preds = %45
  %54 = load i32, i32* %18, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %92

56:                                               ; preds = %53
  %57 = load %struct.mg_connection*, %struct.mg_connection** %8, align 8
  %58 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @dup(i64 %59)
  store i32 %60, i32* %19, align 4
  %61 = load i32, i32* %19, align 4
  %62 = icmp sge i32 %61, 0
  br i1 %62, label %63, label %90

63:                                               ; preds = %56
  %64 = load i32, i32* %19, align 4
  %65 = sext i32 %64 to i64
  %66 = load i64, i64* @FD_SETSIZE, align 8
  %67 = icmp slt i64 %65, %66
  br i1 %67, label %68, label %85

68:                                               ; preds = %63
  %69 = load %struct.mg_connection*, %struct.mg_connection** %8, align 8
  %70 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = trunc i64 %71 to i32
  %73 = call i32 @closesocket(i32 %72)
  %74 = load %struct.mg_connection*, %struct.mg_connection** %8, align 8
  %75 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i32, i32* %19, align 4
  %78 = sext i32 %77 to i64
  %79 = inttoptr i64 %78 to i8*
  %80 = call i32 @DBG(i8* %79)
  %81 = load i32, i32* %19, align 4
  %82 = sext i32 %81 to i64
  %83 = load %struct.mg_connection*, %struct.mg_connection** %8, align 8
  %84 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %83, i32 0, i32 0
  store i64 %82, i64* %84, align 8
  br label %89

85:                                               ; preds = %63
  %86 = load i32, i32* %19, align 4
  %87 = call i32 @closesocket(i32 %86)
  %88 = call i32 @DBG(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %18, align 4
  br label %89

89:                                               ; preds = %85, %68
  br label %91

90:                                               ; preds = %56
  store i32 0, i32* %18, align 4
  br label %91

91:                                               ; preds = %90, %89
  br label %92

92:                                               ; preds = %91, %53, %45
  %93 = load %struct.mg_connection*, %struct.mg_connection** %8, align 8
  %94 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %93, i32 0, i32 7
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.mg_connection*, %struct.mg_connection** %8, align 8
  %98 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = icmp slt i64 %96, %99
  br i1 %100, label %101, label %118

101:                                              ; preds = %92
  %102 = load %struct.mg_connection*, %struct.mg_connection** %8, align 8
  %103 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @MG_F_UDP, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %101
  %109 = load %struct.mg_connection*, %struct.mg_connection** %8, align 8
  %110 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %109, i32 0, i32 5
  %111 = load i32*, i32** %110, align 8
  %112 = icmp eq i32* %111, null
  br i1 %112, label %113, label %118

113:                                              ; preds = %108, %101
  %114 = load %struct.mg_connection*, %struct.mg_connection** %8, align 8
  %115 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = call i32 @mg_add_to_set(i64 %116, i32* %11, i64* %14)
  br label %118

118:                                              ; preds = %113, %108, %92
  %119 = load %struct.mg_connection*, %struct.mg_connection** %8, align 8
  %120 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @MG_F_CONNECTING, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %132

125:                                              ; preds = %118
  %126 = load %struct.mg_connection*, %struct.mg_connection** %8, align 8
  %127 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @MG_F_WANT_READ, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %145

132:                                              ; preds = %125, %118
  %133 = load %struct.mg_connection*, %struct.mg_connection** %8, align 8
  %134 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %133, i32 0, i32 6
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = icmp sgt i64 %136, 0
  br i1 %137, label %138, label %154

138:                                              ; preds = %132
  %139 = load %struct.mg_connection*, %struct.mg_connection** %8, align 8
  %140 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @MG_F_CONNECTING, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %154, label %145

145:                                              ; preds = %138, %125
  %146 = load %struct.mg_connection*, %struct.mg_connection** %8, align 8
  %147 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = call i32 @mg_add_to_set(i64 %148, i32* %12, i64* %14)
  %150 = load %struct.mg_connection*, %struct.mg_connection** %8, align 8
  %151 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = call i32 @mg_add_to_set(i64 %152, i32* %13, i64* %14)
  br label %154

154:                                              ; preds = %145, %138, %132
  br label %155

155:                                              ; preds = %154, %36
  %156 = load %struct.mg_connection*, %struct.mg_connection** %8, align 8
  %157 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %156, i32 0, i32 3
  %158 = load double, double* %157, align 8
  %159 = fcmp ogt double %158, 0.000000e+00
  br i1 %159, label %160, label %176

160:                                              ; preds = %155
  %161 = load i32, i32* %17, align 4
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %169, label %163

163:                                              ; preds = %160
  %164 = load %struct.mg_connection*, %struct.mg_connection** %8, align 8
  %165 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %164, i32 0, i32 3
  %166 = load double, double* %165, align 8
  %167 = load double, double* %7, align 8
  %168 = fcmp olt double %166, %167
  br i1 %168, label %169, label %173

169:                                              ; preds = %163, %160
  %170 = load %struct.mg_connection*, %struct.mg_connection** %8, align 8
  %171 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %170, i32 0, i32 3
  %172 = load double, double* %171, align 8
  store double %172, double* %7, align 8
  br label %173

173:                                              ; preds = %169, %163
  %174 = load i32, i32* %17, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %17, align 4
  br label %176

176:                                              ; preds = %173, %155
  br label %177

177:                                              ; preds = %176
  %178 = load %struct.mg_connection*, %struct.mg_connection** %9, align 8
  store %struct.mg_connection* %178, %struct.mg_connection** %8, align 8
  br label %33

179:                                              ; preds = %33
  %180 = load i32, i32* %17, align 4
  %181 = icmp sgt i32 %180, 0
  br i1 %181, label %182, label %196

182:                                              ; preds = %179
  %183 = load double, double* %7, align 8
  %184 = call double (...) @mg_time()
  %185 = fsub double %183, %184
  %186 = fmul double %185, 1.000000e+03
  %187 = fadd double %186, 1.000000e+00
  store double %187, double* %20, align 8
  %188 = load double, double* %20, align 8
  %189 = load i32, i32* %4, align 4
  %190 = sitofp i32 %189 to double
  %191 = fcmp olt double %188, %190
  br i1 %191, label %192, label %195

192:                                              ; preds = %182
  %193 = load double, double* %20, align 8
  %194 = fptosi double %193 to i32
  store i32 %194, i32* %4, align 4
  br label %195

195:                                              ; preds = %192, %182
  br label %196

196:                                              ; preds = %195, %179
  %197 = load i32, i32* %4, align 4
  %198 = icmp slt i32 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %196
  store i32 0, i32* %4, align 4
  br label %200

200:                                              ; preds = %199, %196
  %201 = load i32, i32* %4, align 4
  %202 = sdiv i32 %201, 1000
  %203 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 0
  store i32 %202, i32* %203, align 4
  %204 = load i32, i32* %4, align 4
  %205 = srem i32 %204, 1000
  %206 = mul nsw i32 %205, 1000
  %207 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 1
  store i32 %206, i32* %207, align 4
  %208 = load i64, i64* %14, align 8
  %209 = trunc i64 %208 to i32
  %210 = add nsw i32 %209, 1
  %211 = call i32 @select(i32 %210, i32* %11, i32* %12, i32* %13, %struct.timeval* %10)
  store i32 %211, i32* %16, align 4
  %212 = call double (...) @mg_time()
  store double %212, double* %6, align 8
  %213 = load %struct.mg_mgr*, %struct.mg_mgr** %5, align 8
  %214 = getelementptr inbounds %struct.mg_mgr, %struct.mg_mgr* %213, i32 0, i32 1
  %215 = load %struct.mg_connection*, %struct.mg_connection** %214, align 8
  store %struct.mg_connection* %215, %struct.mg_connection** %8, align 8
  br label %216

216:                                              ; preds = %282, %200
  %217 = load %struct.mg_connection*, %struct.mg_connection** %8, align 8
  %218 = icmp ne %struct.mg_connection* %217, null
  br i1 %218, label %219, label %284

219:                                              ; preds = %216
  store i32 0, i32* %21, align 4
  %220 = load %struct.mg_connection*, %struct.mg_connection** %8, align 8
  %221 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = load i64, i64* @INVALID_SOCKET, align 8
  %224 = icmp ne i64 %222, %223
  br i1 %224, label %225, label %274

225:                                              ; preds = %219
  %226 = load i32, i32* %16, align 4
  %227 = icmp sgt i32 %226, 0
  br i1 %227, label %228, label %273

228:                                              ; preds = %225
  %229 = load %struct.mg_connection*, %struct.mg_connection** %8, align 8
  %230 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %229, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = call i64 @FD_ISSET(i64 %231, i32* %11)
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %248

234:                                              ; preds = %228
  %235 = load %struct.mg_connection*, %struct.mg_connection** %8, align 8
  %236 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %235, i32 0, i32 2
  %237 = load i32, i32* %236, align 8
  %238 = load i32, i32* @MG_F_UDP, align 4
  %239 = and i32 %237, %238
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %246

241:                                              ; preds = %234
  %242 = load %struct.mg_connection*, %struct.mg_connection** %8, align 8
  %243 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %242, i32 0, i32 5
  %244 = load i32*, i32** %243, align 8
  %245 = icmp eq i32* %244, null
  br i1 %245, label %246, label %248

246:                                              ; preds = %241, %234
  %247 = load i32, i32* @_MG_F_FD_CAN_READ, align 4
  br label %249

248:                                              ; preds = %241, %228
  br label %249

249:                                              ; preds = %248, %246
  %250 = phi i32 [ %247, %246 ], [ 0, %248 ]
  %251 = load %struct.mg_connection*, %struct.mg_connection** %8, align 8
  %252 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %251, i32 0, i32 0
  %253 = load i64, i64* %252, align 8
  %254 = call i64 @FD_ISSET(i64 %253, i32* %12)
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %258

256:                                              ; preds = %249
  %257 = load i32, i32* @_MG_F_FD_CAN_WRITE, align 4
  br label %259

258:                                              ; preds = %249
  br label %259

259:                                              ; preds = %258, %256
  %260 = phi i32 [ %257, %256 ], [ 0, %258 ]
  %261 = or i32 %250, %260
  %262 = load %struct.mg_connection*, %struct.mg_connection** %8, align 8
  %263 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %262, i32 0, i32 0
  %264 = load i64, i64* %263, align 8
  %265 = call i64 @FD_ISSET(i64 %264, i32* %13)
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %269

267:                                              ; preds = %259
  %268 = load i32, i32* @_MG_F_FD_ERROR, align 4
  br label %270

269:                                              ; preds = %259
  br label %270

270:                                              ; preds = %269, %267
  %271 = phi i32 [ %268, %267 ], [ 0, %269 ]
  %272 = or i32 %261, %271
  store i32 %272, i32* %21, align 4
  br label %273

273:                                              ; preds = %270, %225
  br label %274

274:                                              ; preds = %273, %219
  %275 = load %struct.mg_connection*, %struct.mg_connection** %8, align 8
  %276 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %275, i32 0, i32 4
  %277 = load %struct.mg_connection*, %struct.mg_connection** %276, align 8
  store %struct.mg_connection* %277, %struct.mg_connection** %9, align 8
  %278 = load %struct.mg_connection*, %struct.mg_connection** %8, align 8
  %279 = load i32, i32* %21, align 4
  %280 = load double, double* %6, align 8
  %281 = call i32 @mg_mgr_handle_conn(%struct.mg_connection* %278, i32 %279, double %280)
  br label %282

282:                                              ; preds = %274
  %283 = load %struct.mg_connection*, %struct.mg_connection** %9, align 8
  store %struct.mg_connection* %283, %struct.mg_connection** %8, align 8
  br label %216

284:                                              ; preds = %216
  %285 = load double, double* %6, align 8
  %286 = fptosi double %285 to i32
  ret i32 %286
}

declare dso_local double @mg_time(...) #1

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @dup(i64) #1

declare dso_local i32 @closesocket(i32) #1

declare dso_local i32 @DBG(i8*) #1

declare dso_local i32 @mg_add_to_set(i64, i32*, i64*) #1

declare dso_local i32 @select(i32, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i64 @FD_ISSET(i64, i32*) #1

declare dso_local i32 @mg_mgr_handle_conn(%struct.mg_connection*, i32, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
