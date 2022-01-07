; ModuleID = '/home/carl/AnghaBench/linux/tools/virtio/extr_vringh_test.c_parallel_test.c'
source_filename = "/home/carl/AnghaBench/linux/tools/virtio/extr_vringh_test.c_parallel_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vring_desc = type { i32 }
%struct.vringh = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.vringh_range = type opaque
%struct.iovec = type { i32 }
%struct.vringh_iov = type { i64, i64 }
%struct.guest_virtio_device = type { i32, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.virtqueue = type { i32 }
%struct.scatterlist = type { i32 }
%struct.vringh_range.0 = type opaque

@.str = private unnamed_addr constant [22 x i8] c"/tmp/vringh_test-file\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Opening /tmp/vringh_test-file\00", align 1
@RINGSIZE = common dso_local global i32 0, align 4
@ALIGN = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Using CPUS %u and %u\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@__user_addr_min = common dso_local global i8* null, align 8
@__user_addr_max = common dso_local global i8* null, align 8
@user_addr_offset = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"Could not set affinity to cpu %u\00", align 1
@NUM_XFERS = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [28 x i8] c"vringh_need_notify_user: %i\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"vringh_get_head\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"vringh_getdesc_user: %i\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"vringh_iov_pull_user: %i\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"vringh_iov_push_user: %i\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"vringh_complete_user: %i\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"Child died with signal %i?\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"Child exited %i?\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"Host: notified %lu, pinged %lu\0A\00", align 1
@no_notify_host = common dso_local global i32 0, align 4
@parallel_notify_host = common dso_local global i32 0, align 4
@never_callback_guest = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [9 x i8] c"guest vq\00", align 1
@__kfree_ignore_start = common dso_local global %struct.vring_desc* null, align 8
@__kfree_ignore_end = common dso_local global %struct.vring_desc* null, align 8
@__kmalloc_fake = common dso_local global %struct.vring_desc* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [28 x i8] c"virtqueue_add_in/outbuf: %i\00", align 1
@.str.16 = private unnamed_addr constant [33 x i8] c"Guest: notified %lu, pinged %lu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32 (%struct.vringh*, i32, %struct.vringh_range*)*, i32)* @parallel_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parallel_test(i32 %0, i32 (%struct.vringh*, i32, %struct.vringh_range*)* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32 (%struct.vringh*, i32, %struct.vringh_range*)*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [2 x i32], align 4
  %13 = alloca [2 x i32], align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca [128 x i8], align 16
  %21 = alloca %struct.vringh, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca [5 x i8], align 1
  %26 = alloca [2 x %struct.iovec], align 4
  %27 = alloca [2 x %struct.iovec], align 4
  %28 = alloca %struct.vringh_iov, align 8
  %29 = alloca %struct.vringh_iov, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca %struct.guest_virtio_device, align 8
  %33 = alloca %struct.virtqueue*, align 8
  %34 = alloca i32*, align 8
  %35 = alloca %struct.vring_desc*, align 8
  %36 = alloca i32, align 4
  %37 = alloca [4 x %struct.scatterlist], align 16
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32*, align 8
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32*, align 8
  %44 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 (%struct.vringh*, i32, %struct.vringh_range*)* %1, i32 (%struct.vringh*, i32, %struct.vringh_range*)** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  store i64 0, i64* %16, align 8
  %45 = load i32, i32* @O_RDWR, align 4
  %46 = load i32, i32* @O_CREAT, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @O_TRUNC, align 4
  %49 = or i32 %47, %48
  %50 = call i32 @open(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %49, i32 384)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %3
  %54 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %55

55:                                               ; preds = %53, %3
  %56 = load i32, i32* @RINGSIZE, align 4
  %57 = load i32, i32* @ALIGN, align 4
  %58 = call i32 @vring_size(i32 %56, i32 %57)
  %59 = sext i32 %58 to i64
  %60 = load i32, i32* @RINGSIZE, align 4
  %61 = mul nsw i32 %60, 2
  %62 = sext i32 %61 to i64
  %63 = mul i64 %62, 4
  %64 = add i64 %59, %63
  %65 = load i32, i32* @RINGSIZE, align 4
  %66 = mul nsw i32 %65, 6
  %67 = sext i32 %66 to i64
  %68 = mul i64 %67, 4
  %69 = add i64 %64, %68
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* %11, align 4
  %72 = call i32 (...) @getpagesize()
  %73 = add nsw i32 %71, %72
  %74 = sub nsw i32 %73, 1
  %75 = call i32 (...) @getpagesize()
  %76 = sub nsw i32 %75, 1
  %77 = xor i32 %76, -1
  %78 = and i32 %74, %77
  store i32 %78, i32* %11, align 4
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* %11, align 4
  %81 = call i32 @ftruncate(i32 %79, i32 %80)
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* @PROT_READ, align 4
  %84 = load i32, i32* @PROT_WRITE, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @MAP_SHARED, align 4
  %87 = load i32, i32* %10, align 4
  %88 = call i8* @mmap(i32* null, i32 %82, i32 %85, i32 %86, i32 %87, i32 0)
  store i8* %88, i8** %8, align 8
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* @PROT_READ, align 4
  %91 = load i32, i32* @PROT_WRITE, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @MAP_SHARED, align 4
  %94 = load i32, i32* %10, align 4
  %95 = call i8* @mmap(i32* null, i32 %89, i32 %92, i32 %93, i32 %94, i32 0)
  store i8* %95, i8** %9, align 8
  %96 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %97 = call i32 @pipe(i32* %96)
  %98 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %99 = call i32 @pipe(i32* %98)
  %100 = call i32 @CPU_ZERO(i32* %19)
  %101 = call i32 @find_cpus(i32* %17, i32* %18)
  %102 = load i32, i32* %17, align 4
  %103 = zext i32 %102 to i64
  %104 = load i32, i32* %18, align 4
  %105 = zext i32 %104 to i64
  %106 = call i32 @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i64 %103, i64 %105)
  %107 = load i32, i32* @stdout, align 4
  %108 = call i32 @fflush(i32 %107)
  %109 = call i64 (...) @fork()
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %337

111:                                              ; preds = %55
  store i32 0, i32* %24, align 4
  %112 = load i8*, i8** %9, align 8
  %113 = load i32, i32* %11, align 4
  %114 = call i32 @munmap(i8* %112, i32 %113)
  %115 = load i8*, i8** %8, align 8
  store i8* %115, i8** @__user_addr_min, align 8
  %116 = load i8*, i8** @__user_addr_min, align 8
  %117 = load i32, i32* %11, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr i8, i8* %116, i64 %118
  store i8* %119, i8** @__user_addr_max, align 8
  %120 = load i8*, i8** %8, align 8
  %121 = load i8*, i8** %9, align 8
  %122 = ptrtoint i8* %120 to i64
  %123 = ptrtoint i8* %121 to i64
  %124 = sub i64 %122, %123
  %125 = trunc i64 %124 to i32
  store i32 %125, i32* @user_addr_offset, align 4
  %126 = load i32, i32* @user_addr_offset, align 4
  %127 = call i32 @assert(i32 %126)
  %128 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @close(i32 %129)
  %131 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @close(i32 %132)
  %134 = getelementptr inbounds %struct.vringh, %struct.vringh* %21, i32 0, i32 0
  %135 = load i32, i32* @RINGSIZE, align 4
  %136 = load i8*, i8** %8, align 8
  %137 = load i32, i32* @ALIGN, align 4
  %138 = call i32 @vring_init(%struct.TYPE_4__* %134, i32 %135, i8* %136, i32 %137)
  %139 = load i32, i32* %5, align 4
  %140 = load i32, i32* @RINGSIZE, align 4
  %141 = getelementptr inbounds %struct.vringh, %struct.vringh* %21, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = getelementptr inbounds %struct.vringh, %struct.vringh* %21, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = getelementptr inbounds %struct.vringh, %struct.vringh* %21, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @vringh_init_user(%struct.vringh* %21, i32 %139, i32 %140, i32 1, i32 %143, i32 %146, i32 %149)
  %151 = load i32, i32* %17, align 4
  %152 = call i32 @CPU_SET(i32 %151, i32* %19)
  %153 = call i32 (...) @getpid()
  %154 = call i64 @sched_setaffinity(i32 %153, i32 4, i32* %19)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %111
  %157 = load i32, i32* %17, align 4
  %158 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %157)
  br label %159

159:                                              ; preds = %156, %111
  br label %160

160:                                              ; preds = %299, %238, %230, %159
  %161 = load i64, i64* %14, align 8
  %162 = load i64, i64* @NUM_XFERS, align 8
  %163 = icmp ult i64 %161, %162
  br i1 %163, label %164, label %300

164:                                              ; preds = %160
  %165 = load i32, i32* %7, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %196

167:                                              ; preds = %164
  br label %168

168:                                              ; preds = %189, %167
  %169 = call i32 @vringh_get_head(%struct.vringh* %21, i32* %30)
  store i32 %169, i32* %23, align 4
  %170 = load i32, i32* %23, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %168
  br label %190

173:                                              ; preds = %168
  %174 = call i32 @vringh_need_notify_user(%struct.vringh* %21)
  store i32 %174, i32* %23, align 4
  %175 = load i32, i32* %23, align 4
  %176 = icmp slt i32 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %173
  %178 = load i32, i32* %23, align 4
  %179 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %178)
  br label %180

180:                                              ; preds = %177, %173
  %181 = load i32, i32* %23, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %189

183:                                              ; preds = %180
  %184 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @write(i32 %185, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i32 1)
  %187 = load i64, i64* %15, align 8
  %188 = add i64 %187, 1
  store i64 %188, i64* %15, align 8
  br label %189

189:                                              ; preds = %183, %180
  br label %168

190:                                              ; preds = %172
  %191 = load i32, i32* %23, align 4
  %192 = icmp ne i32 %191, 1
  br i1 %192, label %193, label %195

193:                                              ; preds = %190
  %194 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  br label %195

195:                                              ; preds = %193, %190
  store i32 0, i32* %31, align 4
  br label %288

196:                                              ; preds = %164
  %197 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %26, i64 0, i64 0
  %198 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %26, i64 0, i64 0
  %199 = call i32 @ARRAY_SIZE(%struct.iovec* %198)
  %200 = call i32 @vringh_iov_init(%struct.vringh_iov* %28, %struct.iovec* %197, i32 %199)
  %201 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %27, i64 0, i64 0
  %202 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %27, i64 0, i64 0
  %203 = call i32 @ARRAY_SIZE(%struct.iovec* %202)
  %204 = call i32 @vringh_iov_init(%struct.vringh_iov* %29, %struct.iovec* %201, i32 %203)
  %205 = load i32 (%struct.vringh*, i32, %struct.vringh_range*)*, i32 (%struct.vringh*, i32, %struct.vringh_range*)** %6, align 8
  %206 = bitcast i32 (%struct.vringh*, i32, %struct.vringh_range*)* %205 to i32 (%struct.vringh*, i32, %struct.vringh_range.0*)*
  %207 = call i32 @vringh_getdesc_user(%struct.vringh* %21, %struct.vringh_iov* %28, %struct.vringh_iov* %29, i32 (%struct.vringh*, i32, %struct.vringh_range.0*)* %206, i32* %30)
  store i32 %207, i32* %23, align 4
  br label %208

208:                                              ; preds = %196
  %209 = load i32, i32* %23, align 4
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %211, label %242

211:                                              ; preds = %208
  %212 = call i32 @vringh_need_notify_user(%struct.vringh* %21)
  store i32 %212, i32* %23, align 4
  %213 = load i32, i32* %23, align 4
  %214 = icmp slt i32 %213, 0
  br i1 %214, label %215, label %218

215:                                              ; preds = %211
  %216 = load i32, i32* %23, align 4
  %217 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %216)
  br label %218

218:                                              ; preds = %215, %211
  %219 = load i32, i32* %23, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %227

221:                                              ; preds = %218
  %222 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %223 = load i32, i32* %222, align 4
  %224 = call i32 @write(i32 %223, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i32 1)
  %225 = load i64, i64* %15, align 8
  %226 = add i64 %225, 1
  store i64 %226, i64* %15, align 8
  br label %227

227:                                              ; preds = %221, %218
  %228 = call i32 @vringh_notify_enable_user(%struct.vringh* %21)
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %231, label %230

230:                                              ; preds = %227
  br label %160

231:                                              ; preds = %227
  %232 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %233 = load i32, i32* %232, align 4
  %234 = getelementptr inbounds [128 x i8], [128 x i8]* %20, i64 0, i64 0
  %235 = call i32 @read(i32 %233, i8* %234, i32 128)
  %236 = icmp slt i32 %235, 1
  br i1 %236, label %237, label %238

237:                                              ; preds = %231
  br label %300

238:                                              ; preds = %231
  %239 = call i32 @vringh_notify_disable_user(%struct.vringh* %21)
  %240 = load i64, i64* %16, align 8
  %241 = add i64 %240, 1
  store i64 %241, i64* %16, align 8
  br label %160

242:                                              ; preds = %208
  %243 = load i32, i32* %23, align 4
  %244 = icmp ne i32 %243, 1
  br i1 %244, label %245, label %248

245:                                              ; preds = %242
  %246 = load i32, i32* %23, align 4
  %247 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 %246)
  br label %248

248:                                              ; preds = %245, %242
  %249 = getelementptr inbounds %struct.vringh_iov, %struct.vringh_iov* %28, i32 0, i32 0
  %250 = load i64, i64* %249, align 8
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %268

252:                                              ; preds = %248
  %253 = getelementptr inbounds [5 x i8], [5 x i8]* %25, i64 0, i64 0
  %254 = call i32 @vringh_iov_pull_user(%struct.vringh_iov* %28, i8* %253, i32 5)
  store i32 %254, i32* %24, align 4
  %255 = load i32, i32* %24, align 4
  %256 = icmp ne i32 %255, 4
  br i1 %256, label %257, label %260

257:                                              ; preds = %252
  %258 = load i32, i32* %24, align 4
  %259 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 %258)
  br label %260

260:                                              ; preds = %257, %252
  %261 = getelementptr inbounds %struct.vringh_iov, %struct.vringh_iov* %28, i32 0, i32 1
  %262 = load i64, i64* %261, align 8
  %263 = getelementptr inbounds %struct.vringh_iov, %struct.vringh_iov* %28, i32 0, i32 0
  %264 = load i64, i64* %263, align 8
  %265 = icmp eq i64 %262, %264
  %266 = zext i1 %265 to i32
  %267 = call i32 @assert(i32 %266)
  store i32 0, i32* %31, align 4
  br label %287

268:                                              ; preds = %248
  %269 = getelementptr inbounds [5 x i8], [5 x i8]* %25, i64 0, i64 0
  %270 = load i32, i32* %24, align 4
  %271 = call i32 @vringh_iov_push_user(%struct.vringh_iov* %29, i8* %269, i32 %270)
  store i32 %271, i32* %23, align 4
  %272 = load i32, i32* %23, align 4
  %273 = load i32, i32* %24, align 4
  %274 = icmp ne i32 %272, %273
  br i1 %274, label %275, label %278

275:                                              ; preds = %268
  %276 = load i32, i32* %23, align 4
  %277 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i32 %276)
  br label %278

278:                                              ; preds = %275, %268
  %279 = getelementptr inbounds %struct.vringh_iov, %struct.vringh_iov* %29, i32 0, i32 1
  %280 = load i64, i64* %279, align 8
  %281 = getelementptr inbounds %struct.vringh_iov, %struct.vringh_iov* %29, i32 0, i32 0
  %282 = load i64, i64* %281, align 8
  %283 = icmp eq i64 %280, %282
  %284 = zext i1 %283 to i32
  %285 = call i32 @assert(i32 %284)
  %286 = load i32, i32* %23, align 4
  store i32 %286, i32* %31, align 4
  br label %287

287:                                              ; preds = %278, %260
  br label %288

288:                                              ; preds = %287, %195
  %289 = load i64, i64* %14, align 8
  %290 = add i64 %289, 1
  store i64 %290, i64* %14, align 8
  %291 = load i32, i32* %30, align 4
  %292 = load i32, i32* %31, align 4
  %293 = call i32 @vringh_complete_user(%struct.vringh* %21, i32 %291, i32 %292)
  store i32 %293, i32* %23, align 4
  %294 = load i32, i32* %23, align 4
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %299

296:                                              ; preds = %288
  %297 = load i32, i32* %23, align 4
  %298 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0), i32 %297)
  br label %299

299:                                              ; preds = %296, %288
  br label %160

300:                                              ; preds = %237, %160
  %301 = call i32 @vringh_need_notify_user(%struct.vringh* %21)
  store i32 %301, i32* %23, align 4
  %302 = load i32, i32* %23, align 4
  %303 = icmp slt i32 %302, 0
  br i1 %303, label %304, label %307

304:                                              ; preds = %300
  %305 = load i32, i32* %23, align 4
  %306 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %305)
  br label %307

307:                                              ; preds = %304, %300
  %308 = load i32, i32* %23, align 4
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %316

310:                                              ; preds = %307
  %311 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %312 = load i32, i32* %311, align 4
  %313 = call i32 @write(i32 %312, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i32 1)
  %314 = load i64, i64* %15, align 8
  %315 = add i64 %314, 1
  store i64 %315, i64* %15, align 8
  br label %316

316:                                              ; preds = %310, %307
  %317 = call i32 @wait(i32* %22)
  %318 = load i32, i32* %22, align 4
  %319 = call i32 @WIFEXITED(i32 %318)
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %325, label %321

321:                                              ; preds = %316
  %322 = load i32, i32* %22, align 4
  %323 = call i32 @WTERMSIG(i32 %322)
  %324 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i64 0, i64 0), i32 %323)
  br label %325

325:                                              ; preds = %321, %316
  %326 = load i32, i32* %22, align 4
  %327 = call i32 @WEXITSTATUS(i32 %326)
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %333

329:                                              ; preds = %325
  %330 = load i32, i32* %22, align 4
  %331 = call i32 @WEXITSTATUS(i32 %330)
  %332 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0), i32 %331)
  br label %333

333:                                              ; preds = %329, %325
  %334 = load i64, i64* %15, align 8
  %335 = load i64, i64* %16, align 8
  %336 = call i32 @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.13, i64 0, i64 0), i64 %334, i64 %335)
  store i32 0, i32* %4, align 4
  br label %627

337:                                              ; preds = %55
  store i32 0, i32* %36, align 4
  %338 = load i8*, i8** %9, align 8
  %339 = load i32, i32* @RINGSIZE, align 4
  %340 = load i32, i32* @ALIGN, align 4
  %341 = call i32 @vring_size(i32 %339, i32 %340)
  %342 = sext i32 %341 to i64
  %343 = getelementptr i8, i8* %338, i64 %342
  %344 = bitcast i8* %343 to i32*
  store i32* %344, i32** %34, align 8
  %345 = load i32*, i32** %34, align 8
  %346 = bitcast i32* %345 to i8*
  %347 = load i32, i32* @RINGSIZE, align 4
  %348 = add nsw i32 %347, 1
  %349 = mul nsw i32 %348, 2
  %350 = sext i32 %349 to i64
  %351 = mul i64 %350, 4
  %352 = getelementptr i8, i8* %346, i64 %351
  %353 = bitcast i8* %352 to %struct.vring_desc*
  store %struct.vring_desc* %353, %struct.vring_desc** %35, align 8
  %354 = load i8*, i8** %8, align 8
  %355 = load i32, i32* %11, align 4
  %356 = call i32 @munmap(i8* %354, i32 %355)
  %357 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %358 = load i32, i32* %357, align 4
  %359 = call i32 @close(i32 %358)
  %360 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %361 = load i32, i32* %360, align 4
  %362 = call i32 @close(i32 %361)
  %363 = load i32, i32* %5, align 4
  %364 = getelementptr inbounds %struct.guest_virtio_device, %struct.guest_virtio_device* %32, i32 0, i32 2
  %365 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %364, i32 0, i32 0
  store i32 %363, i32* %365, align 8
  %366 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  %367 = load i32, i32* %366, align 4
  %368 = getelementptr inbounds %struct.guest_virtio_device, %struct.guest_virtio_device* %32, i32 0, i32 0
  store i32 %367, i32* %368, align 8
  %369 = getelementptr inbounds %struct.guest_virtio_device, %struct.guest_virtio_device* %32, i32 0, i32 1
  store i64 0, i64* %369, align 8
  %370 = load i32, i32* %17, align 4
  %371 = call i32 @CPU_SET(i32 %370, i32* %19)
  %372 = call i32 (...) @getpid()
  %373 = call i64 @sched_setaffinity(i32 %372, i32 4, i32* %19)
  %374 = icmp ne i64 %373, 0
  br i1 %374, label %375, label %378

375:                                              ; preds = %337
  %376 = load i32, i32* %17, align 4
  %377 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %376)
  br label %378

378:                                              ; preds = %375, %337
  %379 = load i32, i32* @RINGSIZE, align 4
  %380 = load i32, i32* @ALIGN, align 4
  %381 = getelementptr inbounds %struct.guest_virtio_device, %struct.guest_virtio_device* %32, i32 0, i32 2
  %382 = load i8*, i8** %9, align 8
  %383 = load i32, i32* %7, align 4
  %384 = icmp ne i32 %383, 0
  br i1 %384, label %385, label %387

385:                                              ; preds = %378
  %386 = load i32, i32* @no_notify_host, align 4
  br label %389

387:                                              ; preds = %378
  %388 = load i32, i32* @parallel_notify_host, align 4
  br label %389

389:                                              ; preds = %387, %385
  %390 = phi i32 [ %386, %385 ], [ %388, %387 ]
  %391 = load i32, i32* @never_callback_guest, align 4
  %392 = call %struct.virtqueue* @vring_new_virtqueue(i32 0, i32 %379, i32 %380, %struct.TYPE_3__* %381, i32 1, i32 0, i8* %382, i32 %390, i32 %391, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0))
  store %struct.virtqueue* %392, %struct.virtqueue** %33, align 8
  %393 = load %struct.vring_desc*, %struct.vring_desc** %35, align 8
  store %struct.vring_desc* %393, %struct.vring_desc** @__kfree_ignore_start, align 8
  %394 = load %struct.vring_desc*, %struct.vring_desc** %35, align 8
  %395 = load i32, i32* @RINGSIZE, align 4
  %396 = mul nsw i32 %395, 6
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds %struct.vring_desc, %struct.vring_desc* %394, i64 %397
  store %struct.vring_desc* %398, %struct.vring_desc** @__kfree_ignore_end, align 8
  br label %399

399:                                              ; preds = %568, %557, %549, %389
  %400 = load i64, i64* %14, align 8
  %401 = load i64, i64* @NUM_XFERS, align 8
  %402 = icmp ult i64 %400, %401
  br i1 %402, label %403, label %573

403:                                              ; preds = %399
  %404 = load i64, i64* %14, align 8
  %405 = urem i64 %404, 2
  %406 = icmp ne i64 %405, 0
  %407 = xor i1 %406, true
  %408 = zext i1 %407 to i32
  store i32 %408, i32* %42, align 4
  br label %409

409:                                              ; preds = %435, %403
  %410 = load %struct.virtqueue*, %struct.virtqueue** %33, align 8
  %411 = call i32* @virtqueue_get_buf(%struct.virtqueue* %410, i32* %39)
  store i32* %411, i32** %40, align 8
  %412 = icmp ne i32* %411, null
  br i1 %412, label %413, label %438

413:                                              ; preds = %409
  %414 = load i32, i32* %39, align 4
  %415 = icmp eq i32 %414, 4
  br i1 %415, label %416, label %424

416:                                              ; preds = %413
  %417 = load i32*, i32** %40, align 8
  %418 = load i32, i32* %417, align 4
  %419 = load i32, i32* %36, align 4
  %420 = sub i32 %419, 1
  %421 = icmp eq i32 %418, %420
  %422 = zext i1 %421 to i32
  %423 = call i32 @assert(i32 %422)
  br label %435

424:                                              ; preds = %413
  %425 = load i32, i32* %7, align 4
  %426 = icmp ne i32 %425, 0
  br i1 %426, label %434, label %427

427:                                              ; preds = %424
  %428 = load i32*, i32** %40, align 8
  %429 = load i32, i32* %428, align 4
  %430 = load i32, i32* %36, align 4
  %431 = icmp eq i32 %429, %430
  %432 = zext i1 %431 to i32
  %433 = call i32 @assert(i32 %432)
  br label %434

434:                                              ; preds = %427, %424
  br label %435

435:                                              ; preds = %434, %416
  %436 = load i32, i32* %36, align 4
  %437 = add i32 %436, 1
  store i32 %437, i32* %36, align 4
  br label %409

438:                                              ; preds = %409
  %439 = load i32*, i32** %34, align 8
  %440 = load i64, i64* %14, align 8
  %441 = load i32, i32* @RINGSIZE, align 4
  %442 = add nsw i32 %441, 1
  %443 = sext i32 %442 to i64
  %444 = urem i64 %440, %443
  %445 = getelementptr inbounds i32, i32* %439, i64 %444
  store i32* %445, i32** %40, align 8
  %446 = load i32, i32* %42, align 4
  %447 = icmp ne i32 %446, 0
  br i1 %447, label %448, label %452

448:                                              ; preds = %438
  %449 = load i64, i64* %14, align 8
  %450 = trunc i64 %449 to i32
  %451 = load i32*, i32** %40, align 8
  store i32 %450, i32* %451, align 4
  br label %454

452:                                              ; preds = %438
  %453 = load i32*, i32** %40, align 8
  store i32 -1, i32* %453, align 4
  br label %454

454:                                              ; preds = %452, %448
  %455 = load i64, i64* %14, align 8
  %456 = udiv i64 %455, 4
  %457 = urem i64 %456, 4
  switch i64 %457, label %516 [
    i64 0, label %458
    i64 1, label %475
    i64 2, label %487
    i64 3, label %494
  ]

458:                                              ; preds = %454
  %459 = getelementptr inbounds [4 x %struct.scatterlist], [4 x %struct.scatterlist]* %37, i64 0, i64 0
  store i32 3, i32* %38, align 4
  %460 = call i32 @sg_init_table(%struct.scatterlist* %459, i32 3)
  %461 = getelementptr inbounds [4 x %struct.scatterlist], [4 x %struct.scatterlist]* %37, i64 0, i64 0
  %462 = load i32*, i32** %40, align 8
  %463 = bitcast i32* %462 to i8*
  %464 = call i32 @sg_set_buf(%struct.scatterlist* %461, i8* %463, i32 1)
  %465 = getelementptr inbounds [4 x %struct.scatterlist], [4 x %struct.scatterlist]* %37, i64 0, i64 1
  %466 = load i32*, i32** %40, align 8
  %467 = bitcast i32* %466 to i8*
  %468 = getelementptr i8, i8* %467, i64 1
  %469 = call i32 @sg_set_buf(%struct.scatterlist* %465, i8* %468, i32 2)
  %470 = getelementptr inbounds [4 x %struct.scatterlist], [4 x %struct.scatterlist]* %37, i64 0, i64 2
  %471 = load i32*, i32** %40, align 8
  %472 = bitcast i32* %471 to i8*
  %473 = getelementptr i8, i8* %472, i64 3
  %474 = call i32 @sg_set_buf(%struct.scatterlist* %470, i8* %473, i32 1)
  br label %516

475:                                              ; preds = %454
  %476 = getelementptr inbounds [4 x %struct.scatterlist], [4 x %struct.scatterlist]* %37, i64 0, i64 0
  store i32 2, i32* %38, align 4
  %477 = call i32 @sg_init_table(%struct.scatterlist* %476, i32 2)
  %478 = getelementptr inbounds [4 x %struct.scatterlist], [4 x %struct.scatterlist]* %37, i64 0, i64 0
  %479 = load i32*, i32** %40, align 8
  %480 = bitcast i32* %479 to i8*
  %481 = call i32 @sg_set_buf(%struct.scatterlist* %478, i8* %480, i32 1)
  %482 = getelementptr inbounds [4 x %struct.scatterlist], [4 x %struct.scatterlist]* %37, i64 0, i64 1
  %483 = load i32*, i32** %40, align 8
  %484 = bitcast i32* %483 to i8*
  %485 = getelementptr i8, i8* %484, i64 1
  %486 = call i32 @sg_set_buf(%struct.scatterlist* %482, i8* %485, i32 3)
  br label %516

487:                                              ; preds = %454
  %488 = getelementptr inbounds [4 x %struct.scatterlist], [4 x %struct.scatterlist]* %37, i64 0, i64 0
  store i32 1, i32* %38, align 4
  %489 = call i32 @sg_init_table(%struct.scatterlist* %488, i32 1)
  %490 = getelementptr inbounds [4 x %struct.scatterlist], [4 x %struct.scatterlist]* %37, i64 0, i64 0
  %491 = load i32*, i32** %40, align 8
  %492 = bitcast i32* %491 to i8*
  %493 = call i32 @sg_set_buf(%struct.scatterlist* %490, i8* %492, i32 4)
  br label %516

494:                                              ; preds = %454
  %495 = getelementptr inbounds [4 x %struct.scatterlist], [4 x %struct.scatterlist]* %37, i64 0, i64 0
  store i32 4, i32* %38, align 4
  %496 = call i32 @sg_init_table(%struct.scatterlist* %495, i32 4)
  %497 = getelementptr inbounds [4 x %struct.scatterlist], [4 x %struct.scatterlist]* %37, i64 0, i64 0
  %498 = load i32*, i32** %40, align 8
  %499 = bitcast i32* %498 to i8*
  %500 = call i32 @sg_set_buf(%struct.scatterlist* %497, i8* %499, i32 1)
  %501 = getelementptr inbounds [4 x %struct.scatterlist], [4 x %struct.scatterlist]* %37, i64 0, i64 1
  %502 = load i32*, i32** %40, align 8
  %503 = bitcast i32* %502 to i8*
  %504 = getelementptr i8, i8* %503, i64 1
  %505 = call i32 @sg_set_buf(%struct.scatterlist* %501, i8* %504, i32 1)
  %506 = getelementptr inbounds [4 x %struct.scatterlist], [4 x %struct.scatterlist]* %37, i64 0, i64 2
  %507 = load i32*, i32** %40, align 8
  %508 = bitcast i32* %507 to i8*
  %509 = getelementptr i8, i8* %508, i64 2
  %510 = call i32 @sg_set_buf(%struct.scatterlist* %506, i8* %509, i32 1)
  %511 = getelementptr inbounds [4 x %struct.scatterlist], [4 x %struct.scatterlist]* %37, i64 0, i64 3
  %512 = load i32*, i32** %40, align 8
  %513 = bitcast i32* %512 to i8*
  %514 = getelementptr i8, i8* %513, i64 3
  %515 = call i32 @sg_set_buf(%struct.scatterlist* %511, i8* %514, i32 1)
  br label %516

516:                                              ; preds = %454, %494, %487, %475, %458
  %517 = load %struct.vring_desc*, %struct.vring_desc** %35, align 8
  %518 = load i64, i64* %14, align 8
  %519 = load i32, i32* @RINGSIZE, align 4
  %520 = sext i32 %519 to i64
  %521 = urem i64 %518, %520
  %522 = mul i64 %521, 4
  %523 = getelementptr inbounds %struct.vring_desc, %struct.vring_desc* %517, i64 %522
  store %struct.vring_desc* %523, %struct.vring_desc** @__kmalloc_fake, align 8
  %524 = load i32, i32* %42, align 4
  %525 = icmp ne i32 %524, 0
  br i1 %525, label %526, label %533

526:                                              ; preds = %516
  %527 = load %struct.virtqueue*, %struct.virtqueue** %33, align 8
  %528 = getelementptr inbounds [4 x %struct.scatterlist], [4 x %struct.scatterlist]* %37, i64 0, i64 0
  %529 = load i32, i32* %38, align 4
  %530 = load i32*, i32** %40, align 8
  %531 = load i32, i32* @GFP_KERNEL, align 4
  %532 = call i32 @virtqueue_add_outbuf(%struct.virtqueue* %527, %struct.scatterlist* %528, i32 %529, i32* %530, i32 %531)
  store i32 %532, i32* %41, align 4
  br label %540

533:                                              ; preds = %516
  %534 = load %struct.virtqueue*, %struct.virtqueue** %33, align 8
  %535 = getelementptr inbounds [4 x %struct.scatterlist], [4 x %struct.scatterlist]* %37, i64 0, i64 0
  %536 = load i32, i32* %38, align 4
  %537 = load i32*, i32** %40, align 8
  %538 = load i32, i32* @GFP_KERNEL, align 4
  %539 = call i32 @virtqueue_add_inbuf(%struct.virtqueue* %534, %struct.scatterlist* %535, i32 %536, i32* %537, i32 %538)
  store i32 %539, i32* %41, align 4
  br label %540

540:                                              ; preds = %533, %526
  %541 = load i32, i32* %41, align 4
  %542 = load i32, i32* @ENOSPC, align 4
  %543 = sub nsw i32 0, %542
  %544 = icmp eq i32 %541, %543
  br i1 %544, label %545, label %562

545:                                              ; preds = %540
  %546 = load %struct.virtqueue*, %struct.virtqueue** %33, align 8
  %547 = call i32 @virtqueue_enable_cb_delayed(%struct.virtqueue* %546)
  %548 = icmp ne i32 %547, 0
  br i1 %548, label %550, label %549

549:                                              ; preds = %545
  br label %399

550:                                              ; preds = %545
  %551 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %552 = load i32, i32* %551, align 4
  %553 = getelementptr inbounds [128 x i8], [128 x i8]* %20, i64 0, i64 0
  %554 = call i32 @read(i32 %552, i8* %553, i32 128)
  %555 = icmp slt i32 %554, 1
  br i1 %555, label %556, label %557

556:                                              ; preds = %550
  br label %573

557:                                              ; preds = %550
  %558 = load i64, i64* %16, align 8
  %559 = add i64 %558, 1
  store i64 %559, i64* %16, align 8
  %560 = load %struct.virtqueue*, %struct.virtqueue** %33, align 8
  %561 = call i32 @virtqueue_disable_cb(%struct.virtqueue* %560)
  br label %399

562:                                              ; preds = %540
  %563 = load i32, i32* %41, align 4
  %564 = icmp ne i32 %563, 0
  br i1 %564, label %565, label %568

565:                                              ; preds = %562
  %566 = load i32, i32* %41, align 4
  %567 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i64 0, i64 0), i32 %566)
  br label %568

568:                                              ; preds = %565, %562
  %569 = load i64, i64* %14, align 8
  %570 = add i64 %569, 1
  store i64 %570, i64* %14, align 8
  %571 = load %struct.virtqueue*, %struct.virtqueue** %33, align 8
  %572 = call i32 @virtqueue_kick(%struct.virtqueue* %571)
  br label %399

573:                                              ; preds = %556, %399
  br label %574

574:                                              ; preds = %615, %607, %600, %573
  %575 = load i32, i32* %36, align 4
  %576 = zext i32 %575 to i64
  %577 = load i64, i64* %14, align 8
  %578 = icmp ne i64 %576, %577
  br i1 %578, label %579, label %620

579:                                              ; preds = %574
  %580 = load %struct.virtqueue*, %struct.virtqueue** %33, align 8
  %581 = call i32* @virtqueue_get_buf(%struct.virtqueue* %580, i32* %44)
  store i32* %581, i32** %43, align 8
  %582 = load i32*, i32** %43, align 8
  %583 = icmp ne i32* %582, null
  br i1 %583, label %584, label %603

584:                                              ; preds = %579
  %585 = load i32, i32* %44, align 4
  %586 = icmp eq i32 %585, 4
  br i1 %586, label %587, label %595

587:                                              ; preds = %584
  %588 = load i32*, i32** %43, align 8
  %589 = load i32, i32* %588, align 4
  %590 = load i32, i32* %36, align 4
  %591 = sub i32 %590, 1
  %592 = icmp eq i32 %589, %591
  %593 = zext i1 %592 to i32
  %594 = call i32 @assert(i32 %593)
  br label %600

595:                                              ; preds = %584
  %596 = load i32, i32* %44, align 4
  %597 = icmp eq i32 %596, 0
  %598 = zext i1 %597 to i32
  %599 = call i32 @assert(i32 %598)
  br label %600

600:                                              ; preds = %595, %587
  %601 = load i32, i32* %36, align 4
  %602 = add i32 %601, 1
  store i32 %602, i32* %36, align 4
  br label %574

603:                                              ; preds = %579
  %604 = load %struct.virtqueue*, %struct.virtqueue** %33, align 8
  %605 = call i32 @virtqueue_enable_cb_delayed(%struct.virtqueue* %604)
  %606 = icmp ne i32 %605, 0
  br i1 %606, label %608, label %607

607:                                              ; preds = %603
  br label %574

608:                                              ; preds = %603
  %609 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %610 = load i32, i32* %609, align 4
  %611 = getelementptr inbounds [128 x i8], [128 x i8]* %20, i64 0, i64 0
  %612 = call i32 @read(i32 %610, i8* %611, i32 128)
  %613 = icmp slt i32 %612, 1
  br i1 %613, label %614, label %615

614:                                              ; preds = %608
  br label %620

615:                                              ; preds = %608
  %616 = load i64, i64* %16, align 8
  %617 = add i64 %616, 1
  store i64 %617, i64* %16, align 8
  %618 = load %struct.virtqueue*, %struct.virtqueue** %33, align 8
  %619 = call i32 @virtqueue_disable_cb(%struct.virtqueue* %618)
  br label %574

620:                                              ; preds = %614, %574
  %621 = getelementptr inbounds %struct.guest_virtio_device, %struct.guest_virtio_device* %32, i32 0, i32 1
  %622 = load i64, i64* %621, align 8
  %623 = load i64, i64* %16, align 8
  %624 = call i32 @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.16, i64 0, i64 0), i64 %622, i64 %623)
  %625 = load %struct.virtqueue*, %struct.virtqueue** %33, align 8
  %626 = call i32 @vring_del_virtqueue(%struct.virtqueue* %625)
  store i32 0, i32* %4, align 4
  br label %627

627:                                              ; preds = %620, %333
  %628 = load i32, i32* %4, align 4
  ret i32 %628
}

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i32 @vring_size(i32, i32) #1

declare dso_local i32 @getpagesize(...) #1

declare dso_local i32 @ftruncate(i32, i32) #1

declare dso_local i8* @mmap(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @pipe(i32*) #1

declare dso_local i32 @CPU_ZERO(i32*) #1

declare dso_local i32 @find_cpus(i32*, i32*) #1

declare dso_local i32 @printf(i8*, i64, i64) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i64 @fork(...) #1

declare dso_local i32 @munmap(i8*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @vring_init(%struct.TYPE_4__*, i32, i8*, i32) #1

declare dso_local i32 @vringh_init_user(%struct.vringh*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @CPU_SET(i32, i32*) #1

declare dso_local i64 @sched_setaffinity(i32, i32, i32*) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32 @vringh_get_head(%struct.vringh*, i32*) #1

declare dso_local i32 @vringh_need_notify_user(%struct.vringh*) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @vringh_iov_init(%struct.vringh_iov*, %struct.iovec*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.iovec*) #1

declare dso_local i32 @vringh_getdesc_user(%struct.vringh*, %struct.vringh_iov*, %struct.vringh_iov*, i32 (%struct.vringh*, i32, %struct.vringh_range.0*)*, i32*) #1

declare dso_local i32 @vringh_notify_enable_user(%struct.vringh*) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @vringh_notify_disable_user(%struct.vringh*) #1

declare dso_local i32 @vringh_iov_pull_user(%struct.vringh_iov*, i8*, i32) #1

declare dso_local i32 @vringh_iov_push_user(%struct.vringh_iov*, i8*, i32) #1

declare dso_local i32 @vringh_complete_user(%struct.vringh*, i32, i32) #1

declare dso_local i32 @wait(i32*) #1

declare dso_local i32 @WIFEXITED(i32) #1

declare dso_local i32 @WTERMSIG(i32) #1

declare dso_local i32 @WEXITSTATUS(i32) #1

declare dso_local %struct.virtqueue* @vring_new_virtqueue(i32, i32, i32, %struct.TYPE_3__*, i32, i32, i8*, i32, i32, i8*) #1

declare dso_local i32* @virtqueue_get_buf(%struct.virtqueue*, i32*) #1

declare dso_local i32 @sg_init_table(%struct.scatterlist*, i32) #1

declare dso_local i32 @sg_set_buf(%struct.scatterlist*, i8*, i32) #1

declare dso_local i32 @virtqueue_add_outbuf(%struct.virtqueue*, %struct.scatterlist*, i32, i32*, i32) #1

declare dso_local i32 @virtqueue_add_inbuf(%struct.virtqueue*, %struct.scatterlist*, i32, i32*, i32) #1

declare dso_local i32 @virtqueue_enable_cb_delayed(%struct.virtqueue*) #1

declare dso_local i32 @virtqueue_disable_cb(%struct.virtqueue*) #1

declare dso_local i32 @virtqueue_kick(%struct.virtqueue*) #1

declare dso_local i32 @vring_del_virtqueue(%struct.virtqueue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
