; ModuleID = '/home/carl/AnghaBench/nanomsg/tests/extr_ws.c_main.c'
source_filename = "/home/carl/AnghaBench/nanomsg/tests/extr_ws.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@socket_address = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"ws\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@AF_SP = common dso_local global i32 0, align 4
@NN_PAIR = common dso_local global i32 0, align 4
@NN_WS = common dso_local global i32 0, align 4
@NN_WS_MSG_TYPE = common dso_local global i32 0, align 4
@NN_WS_MSG_TYPE_BINARY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"ws://127.0.0.1\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"ws://*:\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [15 x i8] c"ws://*:1000000\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"ws://*:some_port\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"ws://eth10000;127.0.0.1:5555\00", align 1
@ENODEV = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [16 x i8] c"ws://127.0.0.1:\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"ws://127.0.0.1:1000000\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"ws://eth10000:5555\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"ws://:5555\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"ws://-hostname:5555\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"ws://abc.123.---.#:5555\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"ws://[::1]:5555\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"ws://abc...123:5555\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"ws://.123:5555\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"ABC\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"DEF\00", align 1
@.str.19 = private unnamed_addr constant [41 x i8] c"0123456789012345678901234567890123456789\00", align 1
@EADDRINUSE = common dso_local global i64 0, align 8
@NN_SOL_SOCKET = common dso_local global i32 0, align 4
@NN_RCVMAXSIZE = common dso_local global i32 0, align 4
@NN_SNDTIMEO = common dso_local global i32 0, align 4
@NN_RCVTIMEO = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [5 x i8] c"ABCD\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"ABCDE\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca [128 x i8], align 16
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %14 = load i8*, i8** @socket_address, align 8
  %15 = load i32, i32* %4, align 4
  %16 = load i8**, i8*** %5, align 8
  %17 = call i32 @get_test_port(i32 %15, i8** %16)
  %18 = call i32 @test_addr_from(i8* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %17)
  %19 = getelementptr inbounds [128 x i8], [128 x i8]* %13, i64 0, i64 0
  %20 = load i32, i32* %4, align 4
  %21 = load i8**, i8*** %5, align 8
  %22 = call i32 @get_test_port(i32 %20, i8** %21)
  %23 = call i32 @test_addr_from(i8* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* @AF_SP, align 4
  %25 = load i32, i32* @NN_PAIR, align 4
  %26 = call i32 @test_socket(i32 %24, i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = getelementptr inbounds [128 x i8], [128 x i8]* %13, i64 0, i64 0
  %29 = call i32 @test_bind(i32 %27, i8* %28)
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @test_close(i32 %30)
  %32 = load i32, i32* @AF_SP, align 4
  %33 = load i32, i32* @NN_PAIR, align 4
  %34 = call i32 @test_socket(i32 %32, i32 %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load i8*, i8** @socket_address, align 8
  %37 = call i32 @test_connect(i32 %35, i8* %36)
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @test_close(i32 %38)
  %40 = load i32, i32* @AF_SP, align 4
  %41 = load i32, i32* @NN_PAIR, align 4
  %42 = call i32 @test_socket(i32 %40, i32 %41)
  store i32 %42, i32* %8, align 4
  store i64 4, i64* %11, align 8
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @NN_WS, align 4
  %45 = load i32, i32* @NN_WS_MSG_TYPE, align 4
  %46 = call i32 @nn_getsockopt(i32 %43, i32 %44, i32 %45, i32* %10, i64* %11)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp eq i32 %47, 0
  %49 = zext i1 %48 to i32
  %50 = call i32 @errno_assert(i32 %49)
  %51 = load i64, i64* %11, align 8
  %52 = icmp eq i64 %51, 4
  %53 = zext i1 %52 to i32
  %54 = call i32 @nn_assert(i32 %53)
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* @NN_WS_MSG_TYPE_BINARY, align 4
  %57 = icmp eq i32 %55, %56
  %58 = zext i1 %57 to i32
  %59 = call i32 @nn_assert(i32 %58)
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @nn_connect(i32 %60, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp sge i32 %62, 0
  %64 = zext i1 %63 to i32
  %65 = call i32 @errno_assert(i32 %64)
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @nn_connect(i32 %66, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp slt i32 %68, 0
  %70 = zext i1 %69 to i32
  %71 = call i32 @nn_assert(i32 %70)
  %72 = call i64 (...) @nn_errno()
  %73 = load i64, i64* @EINVAL, align 8
  %74 = icmp eq i64 %72, %73
  %75 = zext i1 %74 to i32
  %76 = call i32 @errno_assert(i32 %75)
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @nn_connect(i32 %77, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* %6, align 4
  %80 = icmp slt i32 %79, 0
  %81 = zext i1 %80 to i32
  %82 = call i32 @nn_assert(i32 %81)
  %83 = call i64 (...) @nn_errno()
  %84 = load i64, i64* @EINVAL, align 8
  %85 = icmp eq i64 %83, %84
  %86 = zext i1 %85 to i32
  %87 = call i32 @errno_assert(i32 %86)
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @nn_connect(i32 %88, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  store i32 %89, i32* %6, align 4
  %90 = load i32, i32* %6, align 4
  %91 = icmp slt i32 %90, 0
  %92 = zext i1 %91 to i32
  %93 = call i32 @nn_assert(i32 %92)
  %94 = load i32, i32* %8, align 4
  %95 = call i32 @nn_connect(i32 %94, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  store i32 %95, i32* %6, align 4
  %96 = load i32, i32* %6, align 4
  %97 = icmp slt i32 %96, 0
  %98 = zext i1 %97 to i32
  %99 = call i32 @nn_assert(i32 %98)
  %100 = call i64 (...) @nn_errno()
  %101 = load i64, i64* @ENODEV, align 8
  %102 = icmp eq i64 %100, %101
  %103 = zext i1 %102 to i32
  %104 = call i32 @errno_assert(i32 %103)
  %105 = load i32, i32* %8, align 4
  %106 = call i32 @nn_bind(i32 %105, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0))
  store i32 %106, i32* %6, align 4
  %107 = load i32, i32* %6, align 4
  %108 = icmp slt i32 %107, 0
  %109 = zext i1 %108 to i32
  %110 = call i32 @nn_assert(i32 %109)
  %111 = call i64 (...) @nn_errno()
  %112 = load i64, i64* @EINVAL, align 8
  %113 = icmp eq i64 %111, %112
  %114 = zext i1 %113 to i32
  %115 = call i32 @errno_assert(i32 %114)
  %116 = load i32, i32* %8, align 4
  %117 = call i32 @nn_bind(i32 %116, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0))
  store i32 %117, i32* %6, align 4
  %118 = load i32, i32* %6, align 4
  %119 = icmp slt i32 %118, 0
  %120 = zext i1 %119 to i32
  %121 = call i32 @nn_assert(i32 %120)
  %122 = call i64 (...) @nn_errno()
  %123 = load i64, i64* @EINVAL, align 8
  %124 = icmp eq i64 %122, %123
  %125 = zext i1 %124 to i32
  %126 = call i32 @errno_assert(i32 %125)
  %127 = load i32, i32* %8, align 4
  %128 = call i32 @nn_bind(i32 %127, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0))
  store i32 %128, i32* %6, align 4
  %129 = load i32, i32* %6, align 4
  %130 = icmp slt i32 %129, 0
  %131 = zext i1 %130 to i32
  %132 = call i32 @nn_assert(i32 %131)
  %133 = call i64 (...) @nn_errno()
  %134 = load i64, i64* @ENODEV, align 8
  %135 = icmp eq i64 %133, %134
  %136 = zext i1 %135 to i32
  %137 = call i32 @errno_assert(i32 %136)
  %138 = load i32, i32* %8, align 4
  %139 = call i32 @nn_connect(i32 %138, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0))
  store i32 %139, i32* %6, align 4
  %140 = load i32, i32* %6, align 4
  %141 = icmp slt i32 %140, 0
  %142 = zext i1 %141 to i32
  %143 = call i32 @nn_assert(i32 %142)
  %144 = call i64 (...) @nn_errno()
  %145 = load i64, i64* @EINVAL, align 8
  %146 = icmp eq i64 %144, %145
  %147 = zext i1 %146 to i32
  %148 = call i32 @errno_assert(i32 %147)
  %149 = load i32, i32* %8, align 4
  %150 = call i32 @nn_connect(i32 %149, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0))
  store i32 %150, i32* %6, align 4
  %151 = load i32, i32* %6, align 4
  %152 = icmp slt i32 %151, 0
  %153 = zext i1 %152 to i32
  %154 = call i32 @nn_assert(i32 %153)
  %155 = call i64 (...) @nn_errno()
  %156 = load i64, i64* @EINVAL, align 8
  %157 = icmp eq i64 %155, %156
  %158 = zext i1 %157 to i32
  %159 = call i32 @errno_assert(i32 %158)
  %160 = load i32, i32* %8, align 4
  %161 = call i32 @nn_connect(i32 %160, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0))
  store i32 %161, i32* %6, align 4
  %162 = load i32, i32* %6, align 4
  %163 = icmp slt i32 %162, 0
  %164 = zext i1 %163 to i32
  %165 = call i32 @nn_assert(i32 %164)
  %166 = call i64 (...) @nn_errno()
  %167 = load i64, i64* @EINVAL, align 8
  %168 = icmp eq i64 %166, %167
  %169 = zext i1 %168 to i32
  %170 = call i32 @errno_assert(i32 %169)
  %171 = load i32, i32* %8, align 4
  %172 = call i32 @nn_connect(i32 %171, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0))
  store i32 %172, i32* %6, align 4
  %173 = load i32, i32* %6, align 4
  %174 = icmp slt i32 %173, 0
  %175 = zext i1 %174 to i32
  %176 = call i32 @nn_assert(i32 %175)
  %177 = call i64 (...) @nn_errno()
  %178 = load i64, i64* @EINVAL, align 8
  %179 = icmp eq i64 %177, %178
  %180 = zext i1 %179 to i32
  %181 = call i32 @errno_assert(i32 %180)
  %182 = load i32, i32* %8, align 4
  %183 = call i32 @nn_connect(i32 %182, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0))
  store i32 %183, i32* %6, align 4
  %184 = load i32, i32* %6, align 4
  %185 = icmp slt i32 %184, 0
  %186 = zext i1 %185 to i32
  %187 = call i32 @nn_assert(i32 %186)
  %188 = call i64 (...) @nn_errno()
  %189 = load i64, i64* @EINVAL, align 8
  %190 = icmp eq i64 %188, %189
  %191 = zext i1 %190 to i32
  %192 = call i32 @errno_assert(i32 %191)
  %193 = load i32, i32* %8, align 4
  %194 = call i32 @nn_connect(i32 %193, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0))
  store i32 %194, i32* %6, align 4
  %195 = load i32, i32* %6, align 4
  %196 = icmp slt i32 %195, 0
  %197 = zext i1 %196 to i32
  %198 = call i32 @nn_assert(i32 %197)
  %199 = call i64 (...) @nn_errno()
  %200 = load i64, i64* @EINVAL, align 8
  %201 = icmp eq i64 %199, %200
  %202 = zext i1 %201 to i32
  %203 = call i32 @errno_assert(i32 %202)
  %204 = load i32, i32* %8, align 4
  %205 = call i32 @test_close(i32 %204)
  %206 = load i32, i32* @AF_SP, align 4
  %207 = load i32, i32* @NN_PAIR, align 4
  %208 = call i32 @test_socket(i32 %206, i32 %207)
  store i32 %208, i32* %7, align 4
  %209 = load i32, i32* %7, align 4
  %210 = load i8*, i8** @socket_address, align 8
  %211 = call i32 @test_bind(i32 %209, i8* %210)
  %212 = load i32, i32* @AF_SP, align 4
  %213 = load i32, i32* @NN_PAIR, align 4
  %214 = call i32 @test_socket(i32 %212, i32 %213)
  store i32 %214, i32* %8, align 4
  %215 = load i32, i32* %8, align 4
  %216 = load i8*, i8** @socket_address, align 8
  %217 = call i32 @test_connect(i32 %215, i8* %216)
  store i32 0, i32* %12, align 4
  br label %218

218:                                              ; preds = %230, %2
  %219 = load i32, i32* %12, align 4
  %220 = icmp ne i32 %219, 100
  br i1 %220, label %221, label %233

221:                                              ; preds = %218
  %222 = load i32, i32* %8, align 4
  %223 = call i32 @test_send(i32 %222, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0))
  %224 = load i32, i32* %7, align 4
  %225 = call i32 @test_recv(i32 %224, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0))
  %226 = load i32, i32* %7, align 4
  %227 = call i32 @test_send(i32 %226, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0))
  %228 = load i32, i32* %8, align 4
  %229 = call i32 @test_recv(i32 %228, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0))
  br label %230

230:                                              ; preds = %221
  %231 = load i32, i32* %12, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %12, align 4
  br label %218

233:                                              ; preds = %218
  store i32 0, i32* %12, align 4
  br label %234

234:                                              ; preds = %240, %233
  %235 = load i32, i32* %12, align 4
  %236 = icmp ne i32 %235, 100
  br i1 %236, label %237, label %243

237:                                              ; preds = %234
  %238 = load i32, i32* %8, align 4
  %239 = call i32 @test_send(i32 %238, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.19, i64 0, i64 0))
  br label %240

240:                                              ; preds = %237
  %241 = load i32, i32* %12, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %12, align 4
  br label %234

243:                                              ; preds = %234
  store i32 0, i32* %12, align 4
  br label %244

244:                                              ; preds = %250, %243
  %245 = load i32, i32* %12, align 4
  %246 = icmp ne i32 %245, 100
  br i1 %246, label %247, label %253

247:                                              ; preds = %244
  %248 = load i32, i32* %7, align 4
  %249 = call i32 @test_recv(i32 %248, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.19, i64 0, i64 0))
  br label %250

250:                                              ; preds = %247
  %251 = load i32, i32* %12, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %12, align 4
  br label %244

253:                                              ; preds = %244
  %254 = load i32, i32* %8, align 4
  %255 = call i32 @test_close(i32 %254)
  %256 = load i32, i32* %7, align 4
  %257 = call i32 @test_close(i32 %256)
  %258 = load i32, i32* @AF_SP, align 4
  %259 = load i32, i32* @NN_PAIR, align 4
  %260 = call i32 @test_socket(i32 %258, i32 %259)
  store i32 %260, i32* %7, align 4
  %261 = load i32, i32* %7, align 4
  %262 = load i8*, i8** @socket_address, align 8
  %263 = call i32 @test_bind(i32 %261, i8* %262)
  %264 = load i32, i32* @AF_SP, align 4
  %265 = load i32, i32* @NN_PAIR, align 4
  %266 = call i32 @test_socket(i32 %264, i32 %265)
  store i32 %266, i32* %9, align 4
  %267 = load i32, i32* %9, align 4
  %268 = load i8*, i8** @socket_address, align 8
  %269 = call i32 @nn_bind(i32 %267, i8* %268)
  store i32 %269, i32* %6, align 4
  %270 = load i32, i32* %6, align 4
  %271 = icmp slt i32 %270, 0
  %272 = zext i1 %271 to i32
  %273 = call i32 @nn_assert(i32 %272)
  %274 = call i64 (...) @nn_errno()
  %275 = load i64, i64* @EADDRINUSE, align 8
  %276 = icmp eq i64 %274, %275
  %277 = zext i1 %276 to i32
  %278 = call i32 @errno_assert(i32 %277)
  %279 = load i32, i32* %7, align 4
  %280 = call i32 @test_close(i32 %279)
  %281 = load i32, i32* %9, align 4
  %282 = call i32 @test_close(i32 %281)
  %283 = load i32, i32* @AF_SP, align 4
  %284 = load i32, i32* @NN_PAIR, align 4
  %285 = call i32 @test_socket(i32 %283, i32 %284)
  store i32 %285, i32* %7, align 4
  store i32 -1, i32* %10, align 4
  %286 = load i32, i32* %7, align 4
  %287 = load i32, i32* @NN_SOL_SOCKET, align 4
  %288 = load i32, i32* @NN_RCVMAXSIZE, align 4
  %289 = call i32 @nn_setsockopt(i32 %286, i32 %287, i32 %288, i32* %10, i32 4)
  store i32 %289, i32* %6, align 4
  %290 = load i32, i32* %6, align 4
  %291 = icmp sge i32 %290, 0
  %292 = zext i1 %291 to i32
  %293 = call i32 @nn_assert(i32 %292)
  store i32 -2, i32* %10, align 4
  %294 = load i32, i32* %7, align 4
  %295 = load i32, i32* @NN_SOL_SOCKET, align 4
  %296 = load i32, i32* @NN_RCVMAXSIZE, align 4
  %297 = call i32 @nn_setsockopt(i32 %294, i32 %295, i32 %296, i32* %10, i32 4)
  store i32 %297, i32* %6, align 4
  %298 = load i32, i32* %6, align 4
  %299 = icmp slt i32 %298, 0
  %300 = zext i1 %299 to i32
  %301 = call i32 @nn_assert(i32 %300)
  %302 = call i64 (...) @nn_errno()
  %303 = load i64, i64* @EINVAL, align 8
  %304 = icmp eq i64 %302, %303
  %305 = zext i1 %304 to i32
  %306 = call i32 @errno_assert(i32 %305)
  %307 = load i32, i32* %7, align 4
  %308 = call i32 @test_close(i32 %307)
  %309 = load i32, i32* @AF_SP, align 4
  %310 = load i32, i32* @NN_PAIR, align 4
  %311 = call i32 @test_socket(i32 %309, i32 %310)
  store i32 %311, i32* %7, align 4
  %312 = load i32, i32* %7, align 4
  %313 = load i8*, i8** @socket_address, align 8
  %314 = call i32 @test_bind(i32 %312, i8* %313)
  %315 = load i32, i32* @AF_SP, align 4
  %316 = load i32, i32* @NN_PAIR, align 4
  %317 = call i32 @test_socket(i32 %315, i32 %316)
  store i32 %317, i32* %8, align 4
  %318 = load i32, i32* %8, align 4
  %319 = load i8*, i8** @socket_address, align 8
  %320 = call i32 @test_connect(i32 %318, i8* %319)
  store i32 1000, i32* %10, align 4
  %321 = load i32, i32* %8, align 4
  %322 = load i32, i32* @NN_SOL_SOCKET, align 4
  %323 = load i32, i32* @NN_SNDTIMEO, align 4
  %324 = call i32 @test_setsockopt(i32 %321, i32 %322, i32 %323, i32* %10, i32 4)
  %325 = load i32, i32* %10, align 4
  %326 = icmp eq i32 %325, 1000
  %327 = zext i1 %326 to i32
  %328 = call i32 @nn_assert(i32 %327)
  store i32 1000, i32* %10, align 4
  %329 = load i32, i32* %7, align 4
  %330 = load i32, i32* @NN_SOL_SOCKET, align 4
  %331 = load i32, i32* @NN_RCVTIMEO, align 4
  %332 = call i32 @test_setsockopt(i32 %329, i32 %330, i32 %331, i32* %10, i32 4)
  %333 = load i32, i32* %10, align 4
  %334 = icmp eq i32 %333, 1000
  %335 = zext i1 %334 to i32
  %336 = call i32 @nn_assert(i32 %335)
  store i32 4, i32* %10, align 4
  %337 = load i32, i32* %7, align 4
  %338 = load i32, i32* @NN_SOL_SOCKET, align 4
  %339 = load i32, i32* @NN_RCVMAXSIZE, align 4
  %340 = call i32 @test_setsockopt(i32 %337, i32 %338, i32 %339, i32* %10, i32 4)
  %341 = load i32, i32* %8, align 4
  %342 = call i32 @test_send(i32 %341, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0))
  %343 = load i32, i32* %7, align 4
  %344 = call i32 @test_recv(i32 %343, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0))
  %345 = load i32, i32* %8, align 4
  %346 = call i32 @test_send(i32 %345, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0))
  %347 = load i32, i32* %7, align 4
  %348 = call i32 @test_recv(i32 %347, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0))
  %349 = load i32, i32* %8, align 4
  %350 = call i32 @test_send(i32 %349, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0))
  %351 = load i32, i32* %7, align 4
  %352 = load i32, i32* @ETIMEDOUT, align 4
  %353 = call i32 @test_drop(i32 %351, i32 %352)
  store i32 5, i32* %10, align 4
  %354 = load i32, i32* %7, align 4
  %355 = load i32, i32* @NN_SOL_SOCKET, align 4
  %356 = load i32, i32* @NN_RCVMAXSIZE, align 4
  %357 = call i32 @test_setsockopt(i32 %354, i32 %355, i32 %356, i32* %10, i32 4)
  %358 = load i32, i32* %8, align 4
  %359 = load i8*, i8** @socket_address, align 8
  %360 = call i32 @test_connect(i32 %358, i8* %359)
  %361 = load i32, i32* %8, align 4
  %362 = call i32 @test_send(i32 %361, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0))
  %363 = load i32, i32* %7, align 4
  %364 = call i32 @test_recv(i32 %363, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0))
  %365 = load i32, i32* %7, align 4
  %366 = call i32 @test_close(i32 %365)
  %367 = load i32, i32* %8, align 4
  %368 = call i32 @test_close(i32 %367)
  %369 = call i32 (...) @test_text()
  %370 = load i32, i32* @AF_SP, align 4
  %371 = load i32, i32* @NN_PAIR, align 4
  %372 = call i32 @test_socket(i32 %370, i32 %371)
  store i32 %372, i32* %8, align 4
  %373 = load i32, i32* %8, align 4
  %374 = load i8*, i8** @socket_address, align 8
  %375 = call i32 @test_connect(i32 %373, i8* %374)
  %376 = call i32 @nn_sleep(i32 100)
  %377 = load i32, i32* %8, align 4
  %378 = call i32 @test_close(i32 %377)
  ret i32 0
}

declare dso_local i32 @test_addr_from(i8*, i8*, i8*, i32) #1

declare dso_local i32 @get_test_port(i32, i8**) #1

declare dso_local i32 @test_socket(i32, i32) #1

declare dso_local i32 @test_bind(i32, i8*) #1

declare dso_local i32 @test_close(i32) #1

declare dso_local i32 @test_connect(i32, i8*) #1

declare dso_local i32 @nn_getsockopt(i32, i32, i32, i32*, i64*) #1

declare dso_local i32 @errno_assert(i32) #1

declare dso_local i32 @nn_assert(i32) #1

declare dso_local i32 @nn_connect(i32, i8*) #1

declare dso_local i64 @nn_errno(...) #1

declare dso_local i32 @nn_bind(i32, i8*) #1

declare dso_local i32 @test_send(i32, i8*) #1

declare dso_local i32 @test_recv(i32, i8*) #1

declare dso_local i32 @nn_setsockopt(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @test_setsockopt(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @test_drop(i32, i32) #1

declare dso_local i32 @test_text(...) #1

declare dso_local i32 @nn_sleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
