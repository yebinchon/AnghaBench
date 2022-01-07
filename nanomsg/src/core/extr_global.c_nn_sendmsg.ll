; ModuleID = '/home/carl/AnghaBench/nanomsg/src/core/extr_global.c_nn_sendmsg.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/core/extr_global.c_nn_sendmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_msghdr = type { i32, i8*, i64, %struct.nn_iovec* }
%struct.nn_iovec = type { i64, i8* }
%struct.nn_msg = type { i32, i32, i32 }
%struct.nn_cmsghdr = type { i64, i64, i64 }
%struct.nn_sock = type { i32 }

@errno = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@NN_MSG = common dso_local global i64 0, align 8
@EFAULT = common dso_local global i32 0, align 4
@PROTO_SP = common dso_local global i64 0, align 8
@SP_HDR = common dso_local global i64 0, align 8
@NN_STAT_MESSAGES_SENT = common dso_local global i32 0, align 4
@NN_STAT_BYTES_SENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_sendmsg(i32 %0, %struct.nn_msghdr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.nn_msghdr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.nn_iovec*, align 8
  %13 = alloca %struct.nn_msg, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.nn_cmsghdr*, align 8
  %17 = alloca %struct.nn_sock*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store %struct.nn_msghdr* %1, %struct.nn_msghdr** %6, align 8
  store i32 %2, i32* %7, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @nn_global_hold_socket(%struct.nn_sock** %17, i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i64 @nn_slow(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %3
  %28 = load i32, i32* %8, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %317

30:                                               ; preds = %3
  %31 = load %struct.nn_msghdr*, %struct.nn_msghdr** %6, align 8
  %32 = icmp ne %struct.nn_msghdr* %31, null
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i64 @nn_slow(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %8, align 4
  br label %312

40:                                               ; preds = %30
  %41 = load %struct.nn_msghdr*, %struct.nn_msghdr** %6, align 8
  %42 = getelementptr inbounds %struct.nn_msghdr, %struct.nn_msghdr* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %43, 0
  %45 = zext i1 %44 to i32
  %46 = call i64 @nn_slow(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %40
  %49 = load i32, i32* @EMSGSIZE, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %8, align 4
  br label %312

51:                                               ; preds = %40
  %52 = load %struct.nn_msghdr*, %struct.nn_msghdr** %6, align 8
  %53 = getelementptr inbounds %struct.nn_msghdr, %struct.nn_msghdr* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %56, label %87

56:                                               ; preds = %51
  %57 = load %struct.nn_msghdr*, %struct.nn_msghdr** %6, align 8
  %58 = getelementptr inbounds %struct.nn_msghdr, %struct.nn_msghdr* %57, i32 0, i32 3
  %59 = load %struct.nn_iovec*, %struct.nn_iovec** %58, align 8
  %60 = getelementptr inbounds %struct.nn_iovec, %struct.nn_iovec* %59, i64 0
  %61 = getelementptr inbounds %struct.nn_iovec, %struct.nn_iovec* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @NN_MSG, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %87

65:                                               ; preds = %56
  %66 = load %struct.nn_msghdr*, %struct.nn_msghdr** %6, align 8
  %67 = getelementptr inbounds %struct.nn_msghdr, %struct.nn_msghdr* %66, i32 0, i32 3
  %68 = load %struct.nn_iovec*, %struct.nn_iovec** %67, align 8
  %69 = getelementptr inbounds %struct.nn_iovec, %struct.nn_iovec* %68, i64 0
  %70 = getelementptr inbounds %struct.nn_iovec, %struct.nn_iovec* %69, i32 0, i32 1
  %71 = load i8*, i8** %70, align 8
  %72 = bitcast i8* %71 to i8**
  %73 = load i8*, i8** %72, align 8
  store i8* %73, i8** %14, align 8
  %74 = load i8*, i8** %14, align 8
  %75 = icmp eq i8* %74, null
  %76 = zext i1 %75 to i32
  %77 = call i64 @nn_slow(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %65
  %80 = load i32, i32* @EFAULT, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %8, align 4
  br label %312

82:                                               ; preds = %65
  %83 = load i8*, i8** %14, align 8
  %84 = call i64 @nn_chunk_size(i8* %83)
  store i64 %84, i64* %9, align 8
  %85 = load i8*, i8** %14, align 8
  %86 = call i32 @nn_msg_init_chunk(%struct.nn_msg* %13, i8* %85)
  store i32 1, i32* %15, align 4
  br label %189

87:                                               ; preds = %56, %51
  store i64 0, i64* %9, align 8
  store i32 0, i32* %11, align 4
  br label %88

88:                                               ; preds = %150, %87
  %89 = load i32, i32* %11, align 4
  %90 = load %struct.nn_msghdr*, %struct.nn_msghdr** %6, align 8
  %91 = getelementptr inbounds %struct.nn_msghdr, %struct.nn_msghdr* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp ne i32 %89, %92
  br i1 %93, label %94, label %153

94:                                               ; preds = %88
  %95 = load %struct.nn_msghdr*, %struct.nn_msghdr** %6, align 8
  %96 = getelementptr inbounds %struct.nn_msghdr, %struct.nn_msghdr* %95, i32 0, i32 3
  %97 = load %struct.nn_iovec*, %struct.nn_iovec** %96, align 8
  %98 = load i32, i32* %11, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.nn_iovec, %struct.nn_iovec* %97, i64 %99
  store %struct.nn_iovec* %100, %struct.nn_iovec** %12, align 8
  %101 = load %struct.nn_iovec*, %struct.nn_iovec** %12, align 8
  %102 = getelementptr inbounds %struct.nn_iovec, %struct.nn_iovec* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @NN_MSG, align 8
  %105 = icmp eq i64 %103, %104
  %106 = zext i1 %105 to i32
  %107 = call i64 @nn_slow(i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %94
  %110 = load i32, i32* @EINVAL, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %8, align 4
  br label %312

112:                                              ; preds = %94
  %113 = load %struct.nn_iovec*, %struct.nn_iovec** %12, align 8
  %114 = getelementptr inbounds %struct.nn_iovec, %struct.nn_iovec* %113, i32 0, i32 1
  %115 = load i8*, i8** %114, align 8
  %116 = icmp ne i8* %115, null
  br i1 %116, label %122, label %117

117:                                              ; preds = %112
  %118 = load %struct.nn_iovec*, %struct.nn_iovec** %12, align 8
  %119 = getelementptr inbounds %struct.nn_iovec, %struct.nn_iovec* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br label %122

122:                                              ; preds = %117, %112
  %123 = phi i1 [ false, %112 ], [ %121, %117 ]
  %124 = zext i1 %123 to i32
  %125 = call i64 @nn_slow(i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %122
  %128 = load i32, i32* @EFAULT, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %8, align 4
  br label %312

130:                                              ; preds = %122
  %131 = load i64, i64* %9, align 8
  %132 = load %struct.nn_iovec*, %struct.nn_iovec** %12, align 8
  %133 = getelementptr inbounds %struct.nn_iovec, %struct.nn_iovec* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = add i64 %131, %134
  %136 = load i64, i64* %9, align 8
  %137 = icmp ult i64 %135, %136
  %138 = zext i1 %137 to i32
  %139 = call i64 @nn_slow(i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %130
  %142 = load i32, i32* @EINVAL, align 4
  %143 = sub nsw i32 0, %142
  store i32 %143, i32* %8, align 4
  br label %312

144:                                              ; preds = %130
  %145 = load %struct.nn_iovec*, %struct.nn_iovec** %12, align 8
  %146 = getelementptr inbounds %struct.nn_iovec, %struct.nn_iovec* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* %9, align 8
  %149 = add i64 %148, %147
  store i64 %149, i64* %9, align 8
  br label %150

150:                                              ; preds = %144
  %151 = load i32, i32* %11, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %11, align 4
  br label %88

153:                                              ; preds = %88
  %154 = load i64, i64* %9, align 8
  %155 = call i32 @nn_msg_init(%struct.nn_msg* %13, i64 %154)
  store i64 0, i64* %9, align 8
  store i32 0, i32* %11, align 4
  br label %156

156:                                              ; preds = %185, %153
  %157 = load i32, i32* %11, align 4
  %158 = load %struct.nn_msghdr*, %struct.nn_msghdr** %6, align 8
  %159 = getelementptr inbounds %struct.nn_msghdr, %struct.nn_msghdr* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = icmp ne i32 %157, %160
  br i1 %161, label %162, label %188

162:                                              ; preds = %156
  %163 = load %struct.nn_msghdr*, %struct.nn_msghdr** %6, align 8
  %164 = getelementptr inbounds %struct.nn_msghdr, %struct.nn_msghdr* %163, i32 0, i32 3
  %165 = load %struct.nn_iovec*, %struct.nn_iovec** %164, align 8
  %166 = load i32, i32* %11, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.nn_iovec, %struct.nn_iovec* %165, i64 %167
  store %struct.nn_iovec* %168, %struct.nn_iovec** %12, align 8
  %169 = getelementptr inbounds %struct.nn_msg, %struct.nn_msg* %13, i32 0, i32 0
  %170 = call i32* @nn_chunkref_data(i32* %169)
  %171 = load i64, i64* %9, align 8
  %172 = getelementptr inbounds i32, i32* %170, i64 %171
  %173 = load %struct.nn_iovec*, %struct.nn_iovec** %12, align 8
  %174 = getelementptr inbounds %struct.nn_iovec, %struct.nn_iovec* %173, i32 0, i32 1
  %175 = load i8*, i8** %174, align 8
  %176 = load %struct.nn_iovec*, %struct.nn_iovec** %12, align 8
  %177 = getelementptr inbounds %struct.nn_iovec, %struct.nn_iovec* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = call i32 @memcpy(i32* %172, i8* %175, i64 %178)
  %180 = load %struct.nn_iovec*, %struct.nn_iovec** %12, align 8
  %181 = getelementptr inbounds %struct.nn_iovec, %struct.nn_iovec* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* %9, align 8
  %184 = add i64 %183, %182
  store i64 %184, i64* %9, align 8
  br label %185

185:                                              ; preds = %162
  %186 = load i32, i32* %11, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %11, align 4
  br label %156

188:                                              ; preds = %156
  store i32 0, i32* %15, align 4
  br label %189

189:                                              ; preds = %188, %82
  %190 = load %struct.nn_msghdr*, %struct.nn_msghdr** %6, align 8
  %191 = getelementptr inbounds %struct.nn_msghdr, %struct.nn_msghdr* %190, i32 0, i32 1
  %192 = load i8*, i8** %191, align 8
  %193 = icmp ne i8* %192, null
  br i1 %193, label %194, label %283

194:                                              ; preds = %189
  %195 = load %struct.nn_msghdr*, %struct.nn_msghdr** %6, align 8
  %196 = getelementptr inbounds %struct.nn_msghdr, %struct.nn_msghdr* %195, i32 0, i32 2
  %197 = load i64, i64* %196, align 8
  %198 = load i64, i64* @NN_MSG, align 8
  %199 = icmp eq i64 %197, %198
  br i1 %199, label %200, label %211

200:                                              ; preds = %194
  %201 = load %struct.nn_msghdr*, %struct.nn_msghdr** %6, align 8
  %202 = getelementptr inbounds %struct.nn_msghdr, %struct.nn_msghdr* %201, i32 0, i32 1
  %203 = load i8*, i8** %202, align 8
  %204 = bitcast i8* %203 to i8**
  %205 = load i8*, i8** %204, align 8
  store i8* %205, i8** %14, align 8
  %206 = getelementptr inbounds %struct.nn_msg, %struct.nn_msg* %13, i32 0, i32 2
  %207 = call i32 @nn_chunkref_term(i32* %206)
  %208 = getelementptr inbounds %struct.nn_msg, %struct.nn_msg* %13, i32 0, i32 2
  %209 = load i8*, i8** %14, align 8
  %210 = call i32 @nn_chunkref_init_chunk(i32* %208, i8* %209)
  br label %228

211:                                              ; preds = %194
  %212 = getelementptr inbounds %struct.nn_msg, %struct.nn_msg* %13, i32 0, i32 2
  %213 = call i32 @nn_chunkref_term(i32* %212)
  %214 = getelementptr inbounds %struct.nn_msg, %struct.nn_msg* %13, i32 0, i32 2
  %215 = load %struct.nn_msghdr*, %struct.nn_msghdr** %6, align 8
  %216 = getelementptr inbounds %struct.nn_msghdr, %struct.nn_msghdr* %215, i32 0, i32 2
  %217 = load i64, i64* %216, align 8
  %218 = call i32 @nn_chunkref_init(i32* %214, i64 %217)
  %219 = getelementptr inbounds %struct.nn_msg, %struct.nn_msg* %13, i32 0, i32 2
  %220 = call i32* @nn_chunkref_data(i32* %219)
  %221 = load %struct.nn_msghdr*, %struct.nn_msghdr** %6, align 8
  %222 = getelementptr inbounds %struct.nn_msghdr, %struct.nn_msghdr* %221, i32 0, i32 1
  %223 = load i8*, i8** %222, align 8
  %224 = load %struct.nn_msghdr*, %struct.nn_msghdr** %6, align 8
  %225 = getelementptr inbounds %struct.nn_msghdr, %struct.nn_msghdr* %224, i32 0, i32 2
  %226 = load i64, i64* %225, align 8
  %227 = call i32 @memcpy(i32* %220, i8* %223, i64 %226)
  br label %228

228:                                              ; preds = %211, %200
  %229 = load %struct.nn_msghdr*, %struct.nn_msghdr** %6, align 8
  %230 = call %struct.nn_cmsghdr* @NN_CMSG_FIRSTHDR(%struct.nn_msghdr* %229)
  store %struct.nn_cmsghdr* %230, %struct.nn_cmsghdr** %16, align 8
  br label %231

231:                                              ; preds = %278, %228
  %232 = load %struct.nn_cmsghdr*, %struct.nn_cmsghdr** %16, align 8
  %233 = icmp ne %struct.nn_cmsghdr* %232, null
  br i1 %233, label %234, label %282

234:                                              ; preds = %231
  %235 = load %struct.nn_cmsghdr*, %struct.nn_cmsghdr** %16, align 8
  %236 = getelementptr inbounds %struct.nn_cmsghdr, %struct.nn_cmsghdr* %235, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = load i64, i64* @PROTO_SP, align 8
  %239 = icmp eq i64 %237, %238
  br i1 %239, label %240, label %278

240:                                              ; preds = %234
  %241 = load %struct.nn_cmsghdr*, %struct.nn_cmsghdr** %16, align 8
  %242 = getelementptr inbounds %struct.nn_cmsghdr, %struct.nn_cmsghdr* %241, i32 0, i32 1
  %243 = load i64, i64* %242, align 8
  %244 = load i64, i64* @SP_HDR, align 8
  %245 = icmp eq i64 %243, %244
  br i1 %245, label %246, label %278

246:                                              ; preds = %240
  %247 = load %struct.nn_cmsghdr*, %struct.nn_cmsghdr** %16, align 8
  %248 = call i8* @NN_CMSG_DATA(%struct.nn_cmsghdr* %247)
  store i8* %248, i8** %18, align 8
  %249 = load %struct.nn_cmsghdr*, %struct.nn_cmsghdr** %16, align 8
  %250 = getelementptr inbounds %struct.nn_cmsghdr, %struct.nn_cmsghdr* %249, i32 0, i32 2
  %251 = load i64, i64* %250, align 8
  %252 = call i64 @NN_CMSG_SPACE(i32 0)
  %253 = sub i64 %251, %252
  store i64 %253, i64* %19, align 8
  %254 = load i64, i64* %19, align 8
  %255 = icmp ugt i64 %254, 8
  br i1 %255, label %256, label %277

256:                                              ; preds = %246
  %257 = load i8*, i8** %18, align 8
  %258 = bitcast i8* %257 to i64*
  %259 = load i64, i64* %258, align 8
  store i64 %259, i64* %10, align 8
  %260 = load i64, i64* %10, align 8
  %261 = load i64, i64* %19, align 8
  %262 = sub i64 %261, 8
  %263 = icmp ule i64 %260, %262
  br i1 %263, label %264, label %276

264:                                              ; preds = %256
  %265 = getelementptr inbounds %struct.nn_msg, %struct.nn_msg* %13, i32 0, i32 1
  %266 = call i32 @nn_chunkref_term(i32* %265)
  %267 = getelementptr inbounds %struct.nn_msg, %struct.nn_msg* %13, i32 0, i32 1
  %268 = load i64, i64* %10, align 8
  %269 = call i32 @nn_chunkref_init(i32* %267, i64 %268)
  %270 = getelementptr inbounds %struct.nn_msg, %struct.nn_msg* %13, i32 0, i32 1
  %271 = call i32* @nn_chunkref_data(i32* %270)
  %272 = load i8*, i8** %18, align 8
  %273 = getelementptr inbounds i8, i8* %272, i64 8
  %274 = load i64, i64* %10, align 8
  %275 = call i32 @memcpy(i32* %271, i8* %273, i64 %274)
  br label %276

276:                                              ; preds = %264, %256
  br label %277

277:                                              ; preds = %276, %246
  br label %282

278:                                              ; preds = %240, %234
  %279 = load %struct.nn_msghdr*, %struct.nn_msghdr** %6, align 8
  %280 = load %struct.nn_cmsghdr*, %struct.nn_cmsghdr** %16, align 8
  %281 = call %struct.nn_cmsghdr* @NN_CMSG_NXTHDR(%struct.nn_msghdr* %279, %struct.nn_cmsghdr* %280)
  store %struct.nn_cmsghdr* %281, %struct.nn_cmsghdr** %16, align 8
  br label %231

282:                                              ; preds = %277, %231
  br label %283

283:                                              ; preds = %282, %189
  %284 = load %struct.nn_sock*, %struct.nn_sock** %17, align 8
  %285 = load i32, i32* %7, align 4
  %286 = call i32 @nn_sock_send(%struct.nn_sock* %284, %struct.nn_msg* %13, i32 %285)
  store i32 %286, i32* %8, align 4
  %287 = load i32, i32* %8, align 4
  %288 = icmp slt i32 %287, 0
  %289 = zext i1 %288 to i32
  %290 = call i64 @nn_slow(i32 %289)
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %292, label %300

292:                                              ; preds = %283
  %293 = load i32, i32* %15, align 4
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %298

295:                                              ; preds = %292
  %296 = getelementptr inbounds %struct.nn_msg, %struct.nn_msg* %13, i32 0, i32 0
  %297 = call i32 @nn_chunkref_init(i32* %296, i64 0)
  br label %298

298:                                              ; preds = %295, %292
  %299 = call i32 @nn_msg_term(%struct.nn_msg* %13)
  br label %312

300:                                              ; preds = %283
  %301 = load %struct.nn_sock*, %struct.nn_sock** %17, align 8
  %302 = load i32, i32* @NN_STAT_MESSAGES_SENT, align 4
  %303 = call i32 @nn_sock_stat_increment(%struct.nn_sock* %301, i32 %302, i64 1)
  %304 = load %struct.nn_sock*, %struct.nn_sock** %17, align 8
  %305 = load i32, i32* @NN_STAT_BYTES_SENT, align 4
  %306 = load i64, i64* %9, align 8
  %307 = call i32 @nn_sock_stat_increment(%struct.nn_sock* %304, i32 %305, i64 %306)
  %308 = load %struct.nn_sock*, %struct.nn_sock** %17, align 8
  %309 = call i32 @nn_global_rele_socket(%struct.nn_sock* %308)
  %310 = load i64, i64* %9, align 8
  %311 = trunc i64 %310 to i32
  store i32 %311, i32* %4, align 4
  br label %317

312:                                              ; preds = %298, %141, %127, %109, %79, %48, %37
  %313 = load %struct.nn_sock*, %struct.nn_sock** %17, align 8
  %314 = call i32 @nn_global_rele_socket(%struct.nn_sock* %313)
  %315 = load i32, i32* %8, align 4
  %316 = sub nsw i32 0, %315
  store i32 %316, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %317

317:                                              ; preds = %312, %300, %27
  %318 = load i32, i32* %4, align 4
  ret i32 %318
}

declare dso_local i32 @nn_global_hold_socket(%struct.nn_sock**, i32) #1

declare dso_local i64 @nn_slow(i32) #1

declare dso_local i64 @nn_chunk_size(i8*) #1

declare dso_local i32 @nn_msg_init_chunk(%struct.nn_msg*, i8*) #1

declare dso_local i32 @nn_msg_init(%struct.nn_msg*, i64) #1

declare dso_local i32 @memcpy(i32*, i8*, i64) #1

declare dso_local i32* @nn_chunkref_data(i32*) #1

declare dso_local i32 @nn_chunkref_term(i32*) #1

declare dso_local i32 @nn_chunkref_init_chunk(i32*, i8*) #1

declare dso_local i32 @nn_chunkref_init(i32*, i64) #1

declare dso_local %struct.nn_cmsghdr* @NN_CMSG_FIRSTHDR(%struct.nn_msghdr*) #1

declare dso_local i8* @NN_CMSG_DATA(%struct.nn_cmsghdr*) #1

declare dso_local i64 @NN_CMSG_SPACE(i32) #1

declare dso_local %struct.nn_cmsghdr* @NN_CMSG_NXTHDR(%struct.nn_msghdr*, %struct.nn_cmsghdr*) #1

declare dso_local i32 @nn_sock_send(%struct.nn_sock*, %struct.nn_msg*, i32) #1

declare dso_local i32 @nn_msg_term(%struct.nn_msg*) #1

declare dso_local i32 @nn_sock_stat_increment(%struct.nn_sock*, i32, i64) #1

declare dso_local i32 @nn_global_rele_socket(%struct.nn_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
