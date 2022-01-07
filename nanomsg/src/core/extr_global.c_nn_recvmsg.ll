; ModuleID = '/home/carl/AnghaBench/nanomsg/src/core/extr_global.c_nn_recvmsg.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/core/extr_global.c_nn_recvmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_msghdr = type { i32, i64, i8*, %struct.nn_iovec* }
%struct.nn_iovec = type { i64, i8* }
%struct.nn_msg = type { i32, i32, i32 }
%struct.nn_cmsghdr = type { i64, i32, i32 }
%struct.nn_sock = type { i32 }

@errno = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@NN_MSG = common dso_local global i64 0, align 8
@PROTO_SP = common dso_local global i32 0, align 4
@SP_HDR = common dso_local global i32 0, align 4
@NN_STAT_MESSAGES_RECEIVED = common dso_local global i32 0, align 4
@NN_STAT_BYTES_RECEIVED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_recvmsg(i32 %0, %struct.nn_msghdr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.nn_msghdr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.nn_msg, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.nn_iovec*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.nn_cmsghdr*, align 8
  %21 = alloca %struct.nn_sock*, align 8
  %22 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.nn_msghdr* %1, %struct.nn_msghdr** %6, align 8
  store i32 %2, i32* %7, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @nn_global_hold_socket(%struct.nn_sock** %21, i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %25, 0
  %27 = zext i1 %26 to i32
  %28 = call i64 @nn_slow(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %3
  %31 = load i32, i32* %8, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %268

33:                                               ; preds = %3
  %34 = load %struct.nn_msghdr*, %struct.nn_msghdr** %6, align 8
  %35 = icmp ne %struct.nn_msghdr* %34, null
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i64 @nn_slow(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %8, align 4
  br label %263

43:                                               ; preds = %33
  %44 = load %struct.nn_msghdr*, %struct.nn_msghdr** %6, align 8
  %45 = getelementptr inbounds %struct.nn_msghdr, %struct.nn_msghdr* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp slt i32 %46, 0
  %48 = zext i1 %47 to i32
  %49 = call i64 @nn_slow(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %43
  %52 = load i32, i32* @EMSGSIZE, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %8, align 4
  br label %263

54:                                               ; preds = %43
  %55 = load %struct.nn_sock*, %struct.nn_sock** %21, align 8
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @nn_sock_recv(%struct.nn_sock* %55, %struct.nn_msg* %9, i32 %56)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp slt i32 %58, 0
  %60 = zext i1 %59 to i32
  %61 = call i64 @nn_slow(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %54
  br label %263

64:                                               ; preds = %54
  %65 = load %struct.nn_msghdr*, %struct.nn_msghdr** %6, align 8
  %66 = getelementptr inbounds %struct.nn_msghdr, %struct.nn_msghdr* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp eq i32 %67, 1
  br i1 %68, label %69, label %91

69:                                               ; preds = %64
  %70 = load %struct.nn_msghdr*, %struct.nn_msghdr** %6, align 8
  %71 = getelementptr inbounds %struct.nn_msghdr, %struct.nn_msghdr* %70, i32 0, i32 3
  %72 = load %struct.nn_iovec*, %struct.nn_iovec** %71, align 8
  %73 = getelementptr inbounds %struct.nn_iovec, %struct.nn_iovec* %72, i64 0
  %74 = getelementptr inbounds %struct.nn_iovec, %struct.nn_iovec* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @NN_MSG, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %91

78:                                               ; preds = %69
  %79 = getelementptr inbounds %struct.nn_msg, %struct.nn_msg* %9, i32 0, i32 2
  %80 = call i8* @nn_chunkref_getchunk(i32* %79)
  store i8* %80, i8** %14, align 8
  %81 = load i8*, i8** %14, align 8
  %82 = load %struct.nn_msghdr*, %struct.nn_msghdr** %6, align 8
  %83 = getelementptr inbounds %struct.nn_msghdr, %struct.nn_msghdr* %82, i32 0, i32 3
  %84 = load %struct.nn_iovec*, %struct.nn_iovec** %83, align 8
  %85 = getelementptr inbounds %struct.nn_iovec, %struct.nn_iovec* %84, i64 0
  %86 = getelementptr inbounds %struct.nn_iovec, %struct.nn_iovec* %85, i32 0, i32 1
  %87 = load i8*, i8** %86, align 8
  %88 = bitcast i8* %87 to i8**
  store i8* %81, i8** %88, align 8
  %89 = load i8*, i8** %14, align 8
  %90 = call i64 @nn_chunk_size(i8* %89)
  store i64 %90, i64* %11, align 8
  br label %159

91:                                               ; preds = %69, %64
  %92 = getelementptr inbounds %struct.nn_msg, %struct.nn_msg* %9, i32 0, i32 2
  %93 = call i32* @nn_chunkref_data(i32* %92)
  store i32* %93, i32** %10, align 8
  %94 = getelementptr inbounds %struct.nn_msg, %struct.nn_msg* %9, i32 0, i32 2
  %95 = call i64 @nn_chunkref_size(i32* %94)
  store i64 %95, i64* %11, align 8
  store i32 0, i32* %12, align 4
  br label %96

96:                                               ; preds = %153, %91
  %97 = load i32, i32* %12, align 4
  %98 = load %struct.nn_msghdr*, %struct.nn_msghdr** %6, align 8
  %99 = getelementptr inbounds %struct.nn_msghdr, %struct.nn_msghdr* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp ne i32 %97, %100
  br i1 %101, label %102, label %156

102:                                              ; preds = %96
  %103 = load %struct.nn_msghdr*, %struct.nn_msghdr** %6, align 8
  %104 = getelementptr inbounds %struct.nn_msghdr, %struct.nn_msghdr* %103, i32 0, i32 3
  %105 = load %struct.nn_iovec*, %struct.nn_iovec** %104, align 8
  %106 = load i32, i32* %12, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.nn_iovec, %struct.nn_iovec* %105, i64 %107
  store %struct.nn_iovec* %108, %struct.nn_iovec** %13, align 8
  %109 = load %struct.nn_iovec*, %struct.nn_iovec** %13, align 8
  %110 = getelementptr inbounds %struct.nn_iovec, %struct.nn_iovec* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @NN_MSG, align 8
  %113 = icmp eq i64 %111, %112
  %114 = zext i1 %113 to i32
  %115 = call i64 @nn_slow(i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %102
  %118 = call i32 @nn_msg_term(%struct.nn_msg* %9)
  %119 = load i32, i32* @EINVAL, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %8, align 4
  br label %263

121:                                              ; preds = %102
  %122 = load %struct.nn_iovec*, %struct.nn_iovec** %13, align 8
  %123 = getelementptr inbounds %struct.nn_iovec, %struct.nn_iovec* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* %11, align 8
  %126 = icmp ugt i64 %124, %125
  br i1 %126, label %127, label %134

127:                                              ; preds = %121
  %128 = load %struct.nn_iovec*, %struct.nn_iovec** %13, align 8
  %129 = getelementptr inbounds %struct.nn_iovec, %struct.nn_iovec* %128, i32 0, i32 1
  %130 = load i8*, i8** %129, align 8
  %131 = load i32*, i32** %10, align 8
  %132 = load i64, i64* %11, align 8
  %133 = call i32 @memcpy(i8* %130, i32* %131, i64 %132)
  br label %156

134:                                              ; preds = %121
  %135 = load %struct.nn_iovec*, %struct.nn_iovec** %13, align 8
  %136 = getelementptr inbounds %struct.nn_iovec, %struct.nn_iovec* %135, i32 0, i32 1
  %137 = load i8*, i8** %136, align 8
  %138 = load i32*, i32** %10, align 8
  %139 = load %struct.nn_iovec*, %struct.nn_iovec** %13, align 8
  %140 = getelementptr inbounds %struct.nn_iovec, %struct.nn_iovec* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = call i32 @memcpy(i8* %137, i32* %138, i64 %141)
  %143 = load %struct.nn_iovec*, %struct.nn_iovec** %13, align 8
  %144 = getelementptr inbounds %struct.nn_iovec, %struct.nn_iovec* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i32*, i32** %10, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 %145
  store i32* %147, i32** %10, align 8
  %148 = load %struct.nn_iovec*, %struct.nn_iovec** %13, align 8
  %149 = getelementptr inbounds %struct.nn_iovec, %struct.nn_iovec* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* %11, align 8
  %152 = sub i64 %151, %150
  store i64 %152, i64* %11, align 8
  br label %153

153:                                              ; preds = %134
  %154 = load i32, i32* %12, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %12, align 4
  br label %96

156:                                              ; preds = %127, %96
  %157 = getelementptr inbounds %struct.nn_msg, %struct.nn_msg* %9, i32 0, i32 2
  %158 = call i64 @nn_chunkref_size(i32* %157)
  store i64 %158, i64* %11, align 8
  br label %159

159:                                              ; preds = %156, %78
  %160 = load %struct.nn_msghdr*, %struct.nn_msghdr** %6, align 8
  %161 = getelementptr inbounds %struct.nn_msghdr, %struct.nn_msghdr* %160, i32 0, i32 2
  %162 = load i8*, i8** %161, align 8
  %163 = icmp ne i8* %162, null
  br i1 %163, label %164, label %250

164:                                              ; preds = %159
  %165 = getelementptr inbounds %struct.nn_msg, %struct.nn_msg* %9, i32 0, i32 1
  %166 = call i64 @nn_chunkref_size(i32* %165)
  store i64 %166, i64* %18, align 8
  %167 = load i64, i64* %18, align 8
  %168 = add i64 %167, 8
  %169 = call i64 @NN_CMSG_SPACE(i64 %168)
  store i64 %169, i64* %19, align 8
  %170 = load i64, i64* %19, align 8
  %171 = getelementptr inbounds %struct.nn_msg, %struct.nn_msg* %9, i32 0, i32 0
  %172 = call i64 @nn_chunkref_size(i32* %171)
  %173 = add i64 %170, %172
  store i64 %173, i64* %17, align 8
  %174 = load %struct.nn_msghdr*, %struct.nn_msghdr** %6, align 8
  %175 = getelementptr inbounds %struct.nn_msghdr, %struct.nn_msghdr* %174, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* @NN_MSG, align 8
  %178 = icmp eq i64 %176, %177
  br i1 %178, label %179, label %193

179:                                              ; preds = %164
  %180 = load i64, i64* %17, align 8
  %181 = call i32 @nn_chunk_alloc(i64 %180, i32 0, i8** %16)
  store i32 %181, i32* %8, align 4
  %182 = load i32, i32* %8, align 4
  %183 = icmp eq i32 %182, 0
  %184 = zext i1 %183 to i32
  %185 = load i32, i32* %8, align 4
  %186 = sub nsw i32 0, %185
  %187 = call i32 @errnum_assert(i32 %184, i32 %186)
  %188 = load i8*, i8** %16, align 8
  %189 = load %struct.nn_msghdr*, %struct.nn_msghdr** %6, align 8
  %190 = getelementptr inbounds %struct.nn_msghdr, %struct.nn_msghdr* %189, i32 0, i32 2
  %191 = load i8*, i8** %190, align 8
  %192 = bitcast i8* %191 to i8**
  store i8* %188, i8** %192, align 8
  br label %200

193:                                              ; preds = %164
  %194 = load %struct.nn_msghdr*, %struct.nn_msghdr** %6, align 8
  %195 = getelementptr inbounds %struct.nn_msghdr, %struct.nn_msghdr* %194, i32 0, i32 2
  %196 = load i8*, i8** %195, align 8
  store i8* %196, i8** %16, align 8
  %197 = load %struct.nn_msghdr*, %struct.nn_msghdr** %6, align 8
  %198 = getelementptr inbounds %struct.nn_msghdr, %struct.nn_msghdr* %197, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  store i64 %199, i64* %17, align 8
  br label %200

200:                                              ; preds = %193, %179
  %201 = load i64, i64* %17, align 8
  %202 = load i64, i64* %19, align 8
  %203 = icmp uge i64 %201, %202
  br i1 %203, label %204, label %249

204:                                              ; preds = %200
  %205 = load i8*, i8** %16, align 8
  %206 = bitcast i8* %205 to %struct.nn_cmsghdr*
  store %struct.nn_cmsghdr* %206, %struct.nn_cmsghdr** %20, align 8
  %207 = load i64, i64* %19, align 8
  %208 = load %struct.nn_cmsghdr*, %struct.nn_cmsghdr** %20, align 8
  %209 = getelementptr inbounds %struct.nn_cmsghdr, %struct.nn_cmsghdr* %208, i32 0, i32 0
  store i64 %207, i64* %209, align 8
  %210 = load i32, i32* @PROTO_SP, align 4
  %211 = load %struct.nn_cmsghdr*, %struct.nn_cmsghdr** %20, align 8
  %212 = getelementptr inbounds %struct.nn_cmsghdr, %struct.nn_cmsghdr* %211, i32 0, i32 2
  store i32 %210, i32* %212, align 4
  %213 = load i32, i32* @SP_HDR, align 4
  %214 = load %struct.nn_cmsghdr*, %struct.nn_cmsghdr** %20, align 8
  %215 = getelementptr inbounds %struct.nn_cmsghdr, %struct.nn_cmsghdr* %214, i32 0, i32 1
  store i32 %213, i32* %215, align 8
  %216 = load %struct.nn_cmsghdr*, %struct.nn_cmsghdr** %20, align 8
  %217 = bitcast %struct.nn_cmsghdr* %216 to i8*
  store i8* %217, i8** %22, align 8
  %218 = load i8*, i8** %22, align 8
  %219 = getelementptr inbounds i8, i8* %218, i64 16
  store i8* %219, i8** %22, align 8
  %220 = load i64, i64* %18, align 8
  %221 = load i8*, i8** %22, align 8
  %222 = bitcast i8* %221 to i64*
  store i64 %220, i64* %222, align 8
  %223 = load i8*, i8** %22, align 8
  %224 = getelementptr inbounds i8, i8* %223, i64 8
  store i8* %224, i8** %22, align 8
  %225 = load i8*, i8** %22, align 8
  %226 = getelementptr inbounds %struct.nn_msg, %struct.nn_msg* %9, i32 0, i32 1
  %227 = call i32* @nn_chunkref_data(i32* %226)
  %228 = load i64, i64* %18, align 8
  %229 = call i32 @memcpy(i8* %225, i32* %227, i64 %228)
  %230 = getelementptr inbounds %struct.nn_msg, %struct.nn_msg* %9, i32 0, i32 0
  %231 = call i64 @nn_chunkref_size(i32* %230)
  store i64 %231, i64* %15, align 8
  %232 = load i64, i64* %15, align 8
  %233 = load i64, i64* %17, align 8
  %234 = load i64, i64* %19, align 8
  %235 = sub i64 %233, %234
  %236 = icmp ugt i64 %232, %235
  br i1 %236, label %237, label %241

237:                                              ; preds = %204
  %238 = load i64, i64* %17, align 8
  %239 = load i64, i64* %19, align 8
  %240 = sub i64 %238, %239
  store i64 %240, i64* %15, align 8
  br label %241

241:                                              ; preds = %237, %204
  %242 = load i8*, i8** %16, align 8
  %243 = load i64, i64* %19, align 8
  %244 = getelementptr inbounds i8, i8* %242, i64 %243
  %245 = getelementptr inbounds %struct.nn_msg, %struct.nn_msg* %9, i32 0, i32 0
  %246 = call i32* @nn_chunkref_data(i32* %245)
  %247 = load i64, i64* %15, align 8
  %248 = call i32 @memcpy(i8* %244, i32* %246, i64 %247)
  br label %249

249:                                              ; preds = %241, %200
  br label %250

250:                                              ; preds = %249, %159
  %251 = call i32 @nn_msg_term(%struct.nn_msg* %9)
  %252 = load %struct.nn_sock*, %struct.nn_sock** %21, align 8
  %253 = load i32, i32* @NN_STAT_MESSAGES_RECEIVED, align 4
  %254 = call i32 @nn_sock_stat_increment(%struct.nn_sock* %252, i32 %253, i64 1)
  %255 = load %struct.nn_sock*, %struct.nn_sock** %21, align 8
  %256 = load i32, i32* @NN_STAT_BYTES_RECEIVED, align 4
  %257 = load i64, i64* %11, align 8
  %258 = call i32 @nn_sock_stat_increment(%struct.nn_sock* %255, i32 %256, i64 %257)
  %259 = load %struct.nn_sock*, %struct.nn_sock** %21, align 8
  %260 = call i32 @nn_global_rele_socket(%struct.nn_sock* %259)
  %261 = load i64, i64* %11, align 8
  %262 = trunc i64 %261 to i32
  store i32 %262, i32* %4, align 4
  br label %268

263:                                              ; preds = %117, %63, %51, %40
  %264 = load %struct.nn_sock*, %struct.nn_sock** %21, align 8
  %265 = call i32 @nn_global_rele_socket(%struct.nn_sock* %264)
  %266 = load i32, i32* %8, align 4
  %267 = sub nsw i32 0, %266
  store i32 %267, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %268

268:                                              ; preds = %263, %250, %30
  %269 = load i32, i32* %4, align 4
  ret i32 %269
}

declare dso_local i32 @nn_global_hold_socket(%struct.nn_sock**, i32) #1

declare dso_local i64 @nn_slow(i32) #1

declare dso_local i32 @nn_sock_recv(%struct.nn_sock*, %struct.nn_msg*, i32) #1

declare dso_local i8* @nn_chunkref_getchunk(i32*) #1

declare dso_local i64 @nn_chunk_size(i8*) #1

declare dso_local i32* @nn_chunkref_data(i32*) #1

declare dso_local i64 @nn_chunkref_size(i32*) #1

declare dso_local i32 @nn_msg_term(%struct.nn_msg*) #1

declare dso_local i32 @memcpy(i8*, i32*, i64) #1

declare dso_local i64 @NN_CMSG_SPACE(i64) #1

declare dso_local i32 @nn_chunk_alloc(i64, i32, i8**) #1

declare dso_local i32 @errnum_assert(i32, i32) #1

declare dso_local i32 @nn_sock_stat_increment(%struct.nn_sock*, i32, i64) #1

declare dso_local i32 @nn_global_rele_socket(%struct.nn_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
