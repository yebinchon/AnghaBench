; ModuleID = '/home/carl/AnghaBench/openpilot/selfdrive/visiond/transforms/extr_transform.c_transform_queue.c'
source_filename = "/home/carl/AnghaBench/openpilot/selfdrive/visiond/transforms/extr_transform.c_transform_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i64 }

@CL_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @transform_queue(%struct.TYPE_8__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i64 %10) #0 {
  %12 = alloca %struct.TYPE_7__, align 8
  %13 = alloca %struct.TYPE_8__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.TYPE_7__, align 8
  %26 = alloca %struct.TYPE_7__, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca [2 x i64], align 16
  %39 = alloca [2 x i64], align 16
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  store i64 %10, i64* %40, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %13, align 8
  store i32 %1, i32* %14, align 4
  store i32 %2, i32* %15, align 4
  store i32 %3, i32* %16, align 4
  store i32 %4, i32* %17, align 4
  store i32 %5, i32* %18, align 4
  store i32 %6, i32* %19, align 4
  store i32 %7, i32* %20, align 4
  store i32 %8, i32* %21, align 4
  store i32 %9, i32* %22, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  %41 = bitcast %struct.TYPE_7__* %25 to i8*
  %42 = bitcast %struct.TYPE_7__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %41, i8* align 8 %42, i64 8, i1 false)
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i64 @transform_scale_buffer(i64 %44, double 5.000000e-01)
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  store i64 %45, i64* %46, align 8
  %47 = load i32, i32* %14, align 4
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @CL_TRUE, align 4
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to i8*
  %55 = call i32 @clEnqueueWriteBuffer(i32 %47, i32 %50, i32 %51, i32 0, i32 36, i8* %54, i32 0, i32* null, i32* null)
  store i32 %55, i32* %23, align 4
  %56 = load i32, i32* %23, align 4
  %57 = icmp eq i32 %56, 0
  %58 = zext i1 %57 to i32
  %59 = call i32 @assert(i32 %58)
  %60 = load i32, i32* %14, align 4
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @CL_TRUE, align 4
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = inttoptr i64 %66 to i8*
  %68 = call i32 @clEnqueueWriteBuffer(i32 %60, i32 %63, i32 %64, i32 0, i32 36, i8* %67, i32 0, i32* null, i32* null)
  store i32 %68, i32* %23, align 4
  %69 = load i32, i32* %23, align 4
  %70 = icmp eq i32 %69, 0
  %71 = zext i1 %70 to i32
  %72 = call i32 @assert(i32 %71)
  %73 = load i32, i32* %16, align 4
  store i32 %73, i32* %27, align 4
  %74 = load i32, i32* %17, align 4
  store i32 %74, i32* %28, align 4
  %75 = load i32, i32* %16, align 4
  %76 = sdiv i32 %75, 2
  store i32 %76, i32* %29, align 4
  %77 = load i32, i32* %17, align 4
  %78 = sdiv i32 %77, 2
  store i32 %78, i32* %30, align 4
  store i32 0, i32* %31, align 4
  %79 = load i32, i32* %27, align 4
  %80 = load i32, i32* %28, align 4
  %81 = mul nsw i32 %79, %80
  %82 = add nsw i32 0, %81
  store i32 %82, i32* %32, align 4
  %83 = load i32, i32* %32, align 4
  %84 = load i32, i32* %29, align 4
  %85 = load i32, i32* %30, align 4
  %86 = mul nsw i32 %84, %85
  %87 = add nsw i32 %83, %86
  store i32 %87, i32* %33, align 4
  %88 = load i32, i32* %21, align 4
  store i32 %88, i32* %34, align 4
  %89 = load i32, i32* %22, align 4
  store i32 %89, i32* %35, align 4
  %90 = load i32, i32* %21, align 4
  %91 = sdiv i32 %90, 2
  store i32 %91, i32* %36, align 4
  %92 = load i32, i32* %22, align 4
  %93 = sdiv i32 %92, 2
  store i32 %93, i32* %37, align 4
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @clSetKernelArg(i32 %96, i32 0, i32 4, i32* %15)
  store i32 %97, i32* %23, align 4
  %98 = load i32, i32* %23, align 4
  %99 = icmp eq i32 %98, 0
  %100 = zext i1 %99 to i32
  %101 = call i32 @assert(i32 %100)
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @clSetKernelArg(i32 %104, i32 1, i32 4, i32* %27)
  store i32 %105, i32* %23, align 4
  %106 = load i32, i32* %23, align 4
  %107 = icmp eq i32 %106, 0
  %108 = zext i1 %107 to i32
  %109 = call i32 @assert(i32 %108)
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @clSetKernelArg(i32 %112, i32 2, i32 4, i32* %31)
  store i32 %113, i32* %23, align 4
  %114 = load i32, i32* %23, align 4
  %115 = icmp eq i32 %114, 0
  %116 = zext i1 %115 to i32
  %117 = call i32 @assert(i32 %116)
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @clSetKernelArg(i32 %120, i32 3, i32 4, i32* %28)
  store i32 %121, i32* %23, align 4
  %122 = load i32, i32* %23, align 4
  %123 = icmp eq i32 %122, 0
  %124 = zext i1 %123 to i32
  %125 = call i32 @assert(i32 %124)
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @clSetKernelArg(i32 %128, i32 4, i32 4, i32* %27)
  store i32 %129, i32* %23, align 4
  %130 = load i32, i32* %23, align 4
  %131 = icmp eq i32 %130, 0
  %132 = zext i1 %131 to i32
  %133 = call i32 @assert(i32 %132)
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @clSetKernelArg(i32 %136, i32 5, i32 4, i32* %18)
  store i32 %137, i32* %23, align 4
  %138 = load i32, i32* %23, align 4
  %139 = icmp eq i32 %138, 0
  %140 = zext i1 %139 to i32
  %141 = call i32 @assert(i32 %140)
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @clSetKernelArg(i32 %144, i32 6, i32 4, i32* %34)
  store i32 %145, i32* %23, align 4
  %146 = load i32, i32* %23, align 4
  %147 = icmp eq i32 %146, 0
  %148 = zext i1 %147 to i32
  %149 = call i32 @assert(i32 %148)
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @clSetKernelArg(i32 %152, i32 7, i32 4, i32* %24)
  store i32 %153, i32* %23, align 4
  %154 = load i32, i32* %23, align 4
  %155 = icmp eq i32 %154, 0
  %156 = zext i1 %155 to i32
  %157 = call i32 @assert(i32 %156)
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @clSetKernelArg(i32 %160, i32 8, i32 4, i32* %35)
  store i32 %161, i32* %23, align 4
  %162 = load i32, i32* %23, align 4
  %163 = icmp eq i32 %162, 0
  %164 = zext i1 %163 to i32
  %165 = call i32 @assert(i32 %164)
  %166 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @clSetKernelArg(i32 %168, i32 9, i32 4, i32* %34)
  store i32 %169, i32* %23, align 4
  %170 = load i32, i32* %23, align 4
  %171 = icmp eq i32 %170, 0
  %172 = zext i1 %171 to i32
  %173 = call i32 @assert(i32 %172)
  %174 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 0
  %179 = call i32 @clSetKernelArg(i32 %176, i32 10, i32 4, i32* %178)
  store i32 %179, i32* %23, align 4
  %180 = load i32, i32* %23, align 4
  %181 = icmp eq i32 %180, 0
  %182 = zext i1 %181 to i32
  %183 = call i32 @assert(i32 %182)
  %184 = getelementptr inbounds [2 x i64], [2 x i64]* %38, i64 0, i64 0
  %185 = load i32, i32* %34, align 4
  %186 = sext i32 %185 to i64
  store i64 %186, i64* %184, align 8
  %187 = getelementptr inbounds i64, i64* %184, i64 1
  %188 = load i32, i32* %35, align 4
  %189 = sext i32 %188 to i64
  store i64 %189, i64* %187, align 8
  %190 = load i32, i32* %14, align 4
  %191 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 4
  %194 = bitcast [2 x i64]* %38 to i64*
  %195 = call i32 @clEnqueueNDRangeKernel(i32 %190, i32 %193, i32 2, i32* null, i64* %194, i32* null, i32 0, i32 0, i32* null)
  store i32 %195, i32* %23, align 4
  %196 = load i32, i32* %23, align 4
  %197 = icmp eq i32 %196, 0
  %198 = zext i1 %197 to i32
  %199 = call i32 @assert(i32 %198)
  %200 = getelementptr inbounds [2 x i64], [2 x i64]* %39, i64 0, i64 0
  %201 = load i32, i32* %36, align 4
  %202 = sext i32 %201 to i64
  store i64 %202, i64* %200, align 8
  %203 = getelementptr inbounds i64, i64* %200, i64 1
  %204 = load i32, i32* %37, align 4
  %205 = sext i32 %204 to i64
  store i64 %205, i64* %203, align 8
  %206 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %207 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 4
  %209 = call i32 @clSetKernelArg(i32 %208, i32 1, i32 4, i32* %29)
  store i32 %209, i32* %23, align 4
  %210 = load i32, i32* %23, align 4
  %211 = icmp eq i32 %210, 0
  %212 = zext i1 %211 to i32
  %213 = call i32 @assert(i32 %212)
  %214 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 4
  %217 = call i32 @clSetKernelArg(i32 %216, i32 2, i32 4, i32* %32)
  store i32 %217, i32* %23, align 4
  %218 = load i32, i32* %23, align 4
  %219 = icmp eq i32 %218, 0
  %220 = zext i1 %219 to i32
  %221 = call i32 @assert(i32 %220)
  %222 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %223 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %222, i32 0, i32 2
  %224 = load i32, i32* %223, align 4
  %225 = call i32 @clSetKernelArg(i32 %224, i32 3, i32 4, i32* %30)
  store i32 %225, i32* %23, align 4
  %226 = load i32, i32* %23, align 4
  %227 = icmp eq i32 %226, 0
  %228 = zext i1 %227 to i32
  %229 = call i32 @assert(i32 %228)
  %230 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %231 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %230, i32 0, i32 2
  %232 = load i32, i32* %231, align 4
  %233 = call i32 @clSetKernelArg(i32 %232, i32 4, i32 4, i32* %29)
  store i32 %233, i32* %23, align 4
  %234 = load i32, i32* %23, align 4
  %235 = icmp eq i32 %234, 0
  %236 = zext i1 %235 to i32
  %237 = call i32 @assert(i32 %236)
  %238 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %239 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %238, i32 0, i32 2
  %240 = load i32, i32* %239, align 4
  %241 = call i32 @clSetKernelArg(i32 %240, i32 5, i32 4, i32* %19)
  store i32 %241, i32* %23, align 4
  %242 = load i32, i32* %23, align 4
  %243 = icmp eq i32 %242, 0
  %244 = zext i1 %243 to i32
  %245 = call i32 @assert(i32 %244)
  %246 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %247 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %246, i32 0, i32 2
  %248 = load i32, i32* %247, align 4
  %249 = call i32 @clSetKernelArg(i32 %248, i32 6, i32 4, i32* %36)
  store i32 %249, i32* %23, align 4
  %250 = load i32, i32* %23, align 4
  %251 = icmp eq i32 %250, 0
  %252 = zext i1 %251 to i32
  %253 = call i32 @assert(i32 %252)
  %254 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %255 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %254, i32 0, i32 2
  %256 = load i32, i32* %255, align 4
  %257 = call i32 @clSetKernelArg(i32 %256, i32 7, i32 4, i32* %24)
  store i32 %257, i32* %23, align 4
  %258 = load i32, i32* %23, align 4
  %259 = icmp eq i32 %258, 0
  %260 = zext i1 %259 to i32
  %261 = call i32 @assert(i32 %260)
  %262 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %263 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %262, i32 0, i32 2
  %264 = load i32, i32* %263, align 4
  %265 = call i32 @clSetKernelArg(i32 %264, i32 8, i32 4, i32* %37)
  store i32 %265, i32* %23, align 4
  %266 = load i32, i32* %23, align 4
  %267 = icmp eq i32 %266, 0
  %268 = zext i1 %267 to i32
  %269 = call i32 @assert(i32 %268)
  %270 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %271 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %270, i32 0, i32 2
  %272 = load i32, i32* %271, align 4
  %273 = call i32 @clSetKernelArg(i32 %272, i32 9, i32 4, i32* %36)
  store i32 %273, i32* %23, align 4
  %274 = load i32, i32* %23, align 4
  %275 = icmp eq i32 %274, 0
  %276 = zext i1 %275 to i32
  %277 = call i32 @assert(i32 %276)
  %278 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %279 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %278, i32 0, i32 2
  %280 = load i32, i32* %279, align 4
  %281 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %282 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %281, i32 0, i32 1
  %283 = call i32 @clSetKernelArg(i32 %280, i32 10, i32 4, i32* %282)
  store i32 %283, i32* %23, align 4
  %284 = load i32, i32* %23, align 4
  %285 = icmp eq i32 %284, 0
  %286 = zext i1 %285 to i32
  %287 = call i32 @assert(i32 %286)
  %288 = load i32, i32* %14, align 4
  %289 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %290 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %289, i32 0, i32 2
  %291 = load i32, i32* %290, align 4
  %292 = bitcast [2 x i64]* %39 to i64*
  %293 = call i32 @clEnqueueNDRangeKernel(i32 %288, i32 %291, i32 2, i32* null, i64* %292, i32* null, i32 0, i32 0, i32* null)
  store i32 %293, i32* %23, align 4
  %294 = load i32, i32* %23, align 4
  %295 = icmp eq i32 %294, 0
  %296 = zext i1 %295 to i32
  %297 = call i32 @assert(i32 %296)
  %298 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %299 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %298, i32 0, i32 2
  %300 = load i32, i32* %299, align 4
  %301 = call i32 @clSetKernelArg(i32 %300, i32 2, i32 4, i32* %33)
  store i32 %301, i32* %23, align 4
  %302 = load i32, i32* %23, align 4
  %303 = icmp eq i32 %302, 0
  %304 = zext i1 %303 to i32
  %305 = call i32 @assert(i32 %304)
  %306 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %307 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %306, i32 0, i32 2
  %308 = load i32, i32* %307, align 4
  %309 = call i32 @clSetKernelArg(i32 %308, i32 5, i32 4, i32* %20)
  store i32 %309, i32* %23, align 4
  %310 = load i32, i32* %23, align 4
  %311 = icmp eq i32 %310, 0
  %312 = zext i1 %311 to i32
  %313 = call i32 @assert(i32 %312)
  %314 = load i32, i32* %14, align 4
  %315 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %316 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %315, i32 0, i32 2
  %317 = load i32, i32* %316, align 4
  %318 = bitcast [2 x i64]* %39 to i64*
  %319 = call i32 @clEnqueueNDRangeKernel(i32 %314, i32 %317, i32 2, i32* null, i64* %318, i32* null, i32 0, i32 0, i32* null)
  store i32 %319, i32* %23, align 4
  %320 = load i32, i32* %23, align 4
  %321 = icmp eq i32 %320, 0
  %322 = zext i1 %321 to i32
  %323 = call i32 @assert(i32 %322)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @transform_scale_buffer(i64, double) #2

declare dso_local i32 @clEnqueueWriteBuffer(i32, i32, i32, i32, i32, i8*, i32, i32*, i32*) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @clSetKernelArg(i32, i32, i32, i32*) #2

declare dso_local i32 @clEnqueueNDRangeKernel(i32, i32, i32, i32*, i64*, i32*, i32, i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
