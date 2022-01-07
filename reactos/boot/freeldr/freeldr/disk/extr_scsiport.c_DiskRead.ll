; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/disk/extr_scsiport.c_DiskRead.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/disk/extr_scsiport.c_DiskRead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i64, i32*, i8*, i32, i32, i8* }
%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i8* }

@ESUCCESS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PagedPool = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SRB_FUNCTION_EXECUTE_SCSI = common dso_local global i8* null, align 8
@SRB_FLAGS_DATA_IN = common dso_local global i8* null, align 8
@SCSIOP_READ = common dso_local global i8* null, align 8
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32, i32*)* @DiskRead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DiskRead(i32 %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call %struct.TYPE_11__* @FsGetDeviceSpecific(i32 %17)
  store %struct.TYPE_11__* %18, %struct.TYPE_11__** %10, align 8
  %19 = load i32*, i32** %9, align 8
  store i32 0, i32* %19, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32, i32* @ESUCCESS, align 4
  store i32 %23, i32* %5, align 4
  br label %340

24:                                               ; preds = %4
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sdiv i32 %25, %28
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = add nsw i32 %30, %33
  %35 = sub nsw i32 %34, 1
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sdiv i32 %35, %38
  store i32 %39, i32* %14, align 4
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %14, align 4
  %44 = add nsw i32 %42, %43
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = icmp sge i32 %44, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %24
  %50 = load i32, i32* @EINVAL, align 4
  store i32 %50, i32* %5, align 4
  br label %340

51:                                               ; preds = %24
  %52 = load i32, i32* %13, align 4
  %53 = icmp sgt i32 %52, 65535
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = load i32, i32* @EINVAL, align 4
  store i32 %55, i32* %5, align 4
  br label %340

56:                                               ; preds = %51
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp ult i32 %59, -1
  %61 = zext i1 %60 to i32
  %62 = call i32 @ASSERT(i32 %61)
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 7
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = sext i32 %68 to i64
  %70 = add nsw i64 %65, %69
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %15, align 4
  %72 = load i32, i32* %13, align 4
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %212

74:                                               ; preds = %56
  %75 = load i32, i32* @PagedPool, align 4
  %76 = call i8* @ExAllocatePool(i32 %75, i32 4)
  %77 = bitcast i8* %76 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %77, %struct.TYPE_9__** %11, align 8
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %79 = icmp ne %struct.TYPE_9__* %78, null
  br i1 %79, label %82, label %80

80:                                               ; preds = %74
  %81 = load i32, i32* @ENOMEM, align 4
  store i32 %81, i32* %5, align 4
  br label %340

82:                                               ; preds = %74
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %84 = call i32 @RtlZeroMemory(%struct.TYPE_9__* %83, i32 4)
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  store i32 4, i32* %86, align 8
  %87 = load i8*, i8** @SRB_FUNCTION_EXECUTE_SCSI, align 8
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 10
  store i8* %87, i8** %89, align 8
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 6
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 9
  store i32 %92, i32* %94, align 4
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 5
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 8
  store i32 %97, i32* %99, align 8
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 4
  store i32 %102, i32* %104, align 8
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 1
  store i32 10, i32* %106, align 4
  %107 = load i8*, i8** @SRB_FLAGS_DATA_IN, align 8
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 7
  store i8* %107, i8** %109, align 8
  %110 = load i32, i32* %13, align 4
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = mul nsw i32 %110, %113
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 2
  store i32 %114, i32* %116, align 8
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 3
  store i32 5, i32* %118, align 4
  %119 = load i32*, i32** %7, align 8
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 6
  store i32* %119, i32** %121, align 8
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 5
  %124 = load i64, i64* %123, align 8
  %125 = inttoptr i64 %124 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %125, %struct.TYPE_10__** %12, align 8
  %126 = load i8*, i8** @SCSIOP_READ, align 8
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 7
  store i8* %126, i8** %129, align 8
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 6
  store i32 %132, i32* %135, align 8
  %136 = load i32, i32* %15, align 4
  %137 = ashr i32 %136, 24
  %138 = and i32 %137, 255
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 0
  store i32 %138, i32* %141, align 8
  %142 = load i32, i32* %15, align 4
  %143 = ashr i32 %142, 16
  %144 = and i32 %143, 255
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 1
  store i32 %144, i32* %147, align 4
  %148 = load i32, i32* %15, align 4
  %149 = ashr i32 %148, 8
  %150 = and i32 %149, 255
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 2
  store i32 %150, i32* %153, align 8
  %154 = load i32, i32* %15, align 4
  %155 = and i32 %154, 255
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 3
  store i32 %155, i32* %158, align 4
  %159 = load i32, i32* %13, align 4
  %160 = ashr i32 %159, 8
  %161 = and i32 %160, 255
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 4
  store i32 %161, i32* %164, align 8
  %165 = load i32, i32* %13, align 4
  %166 = and i32 %165, 255
  %167 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 5
  store i32 %166, i32* %169, align 4
  %170 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %171 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %174 = call i32 @SpiSendSynchronousSrb(i32 %172, %struct.TYPE_9__* %173)
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %178, label %176

176:                                              ; preds = %82
  %177 = load i32, i32* @EIO, align 4
  store i32 %177, i32* %5, align 4
  br label %340

178:                                              ; preds = %82
  %179 = load i32*, i32** %7, align 8
  %180 = bitcast i32* %179 to i8*
  %181 = load i32, i32* %13, align 4
  %182 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %183 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = mul nsw i32 %181, %184
  %186 = sext i32 %185 to i64
  %187 = getelementptr i8, i8* %180, i64 %186
  %188 = bitcast i8* %187 to i32*
  store i32* %188, i32** %7, align 8
  %189 = load i32, i32* %13, align 4
  %190 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %191 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = mul nsw i32 %189, %192
  %194 = load i32, i32* %8, align 4
  %195 = sub nsw i32 %194, %193
  store i32 %195, i32* %8, align 4
  %196 = load i32, i32* %13, align 4
  %197 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = mul nsw i32 %196, %199
  %201 = load i32*, i32** %9, align 8
  %202 = load i32, i32* %201, align 4
  %203 = add nsw i32 %202, %200
  store i32 %203, i32* %201, align 4
  %204 = load i32, i32* %13, align 4
  %205 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %206 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = add nsw i32 %207, %204
  store i32 %208, i32* %206, align 4
  %209 = load i32, i32* %13, align 4
  %210 = load i32, i32* %15, align 4
  %211 = add nsw i32 %210, %209
  store i32 %211, i32* %15, align 4
  br label %212

212:                                              ; preds = %178, %56
  %213 = load i32, i32* %8, align 4
  %214 = icmp sgt i32 %213, 0
  br i1 %214, label %215, label %338

215:                                              ; preds = %212
  %216 = load i32, i32* @PagedPool, align 4
  %217 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %218 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = call i8* @ExAllocatePool(i32 %216, i32 %219)
  store i8* %220, i8** %16, align 8
  %221 = load i8*, i8** %16, align 8
  %222 = icmp ne i8* %221, null
  br i1 %222, label %225, label %223

223:                                              ; preds = %215
  %224 = load i32, i32* @ENOMEM, align 4
  store i32 %224, i32* %5, align 4
  br label %340

225:                                              ; preds = %215
  %226 = load i32, i32* @PagedPool, align 4
  %227 = call i8* @ExAllocatePool(i32 %226, i32 4)
  %228 = bitcast i8* %227 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %228, %struct.TYPE_9__** %11, align 8
  %229 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %230 = icmp ne %struct.TYPE_9__* %229, null
  br i1 %230, label %235, label %231

231:                                              ; preds = %225
  %232 = load i8*, i8** %16, align 8
  %233 = call i32 @ExFreePool(i8* %232)
  %234 = load i32, i32* @ENOMEM, align 4
  store i32 %234, i32* %5, align 4
  br label %340

235:                                              ; preds = %225
  %236 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %237 = call i32 @RtlZeroMemory(%struct.TYPE_9__* %236, i32 4)
  %238 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %239 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %238, i32 0, i32 0
  store i32 4, i32* %239, align 8
  %240 = load i8*, i8** @SRB_FUNCTION_EXECUTE_SCSI, align 8
  %241 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %242 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %241, i32 0, i32 10
  store i8* %240, i8** %242, align 8
  %243 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %244 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %243, i32 0, i32 6
  %245 = load i32, i32* %244, align 8
  %246 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %247 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %246, i32 0, i32 9
  store i32 %245, i32* %247, align 4
  %248 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %249 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %248, i32 0, i32 5
  %250 = load i32, i32* %249, align 4
  %251 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %252 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %251, i32 0, i32 8
  store i32 %250, i32* %252, align 8
  %253 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %254 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %253, i32 0, i32 4
  %255 = load i32, i32* %254, align 8
  %256 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %257 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %256, i32 0, i32 4
  store i32 %255, i32* %257, align 8
  %258 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %259 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %258, i32 0, i32 1
  store i32 10, i32* %259, align 4
  %260 = load i8*, i8** @SRB_FLAGS_DATA_IN, align 8
  %261 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %262 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %261, i32 0, i32 7
  store i8* %260, i8** %262, align 8
  %263 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %264 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %267 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %266, i32 0, i32 2
  store i32 %265, i32* %267, align 8
  %268 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %269 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %268, i32 0, i32 3
  store i32 5, i32* %269, align 4
  %270 = load i8*, i8** %16, align 8
  %271 = bitcast i8* %270 to i32*
  %272 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %273 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %272, i32 0, i32 6
  store i32* %271, i32** %273, align 8
  %274 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %275 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %274, i32 0, i32 5
  %276 = load i64, i64* %275, align 8
  %277 = inttoptr i64 %276 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %277, %struct.TYPE_10__** %12, align 8
  %278 = load i8*, i8** @SCSIOP_READ, align 8
  %279 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %280 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %279, i32 0, i32 0
  %281 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %280, i32 0, i32 7
  store i8* %278, i8** %281, align 8
  %282 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %283 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %282, i32 0, i32 4
  %284 = load i32, i32* %283, align 8
  %285 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %286 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %285, i32 0, i32 0
  %287 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %286, i32 0, i32 6
  store i32 %284, i32* %287, align 8
  %288 = load i32, i32* %15, align 4
  %289 = ashr i32 %288, 24
  %290 = and i32 %289, 255
  %291 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %292 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %291, i32 0, i32 0
  %293 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %292, i32 0, i32 0
  store i32 %290, i32* %293, align 8
  %294 = load i32, i32* %15, align 4
  %295 = ashr i32 %294, 16
  %296 = and i32 %295, 255
  %297 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %298 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %297, i32 0, i32 0
  %299 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %298, i32 0, i32 1
  store i32 %296, i32* %299, align 4
  %300 = load i32, i32* %15, align 4
  %301 = ashr i32 %300, 8
  %302 = and i32 %301, 255
  %303 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %304 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %303, i32 0, i32 0
  %305 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %304, i32 0, i32 2
  store i32 %302, i32* %305, align 8
  %306 = load i32, i32* %15, align 4
  %307 = and i32 %306, 255
  %308 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %309 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %308, i32 0, i32 0
  %310 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %309, i32 0, i32 3
  store i32 %307, i32* %310, align 4
  %311 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %312 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %311, i32 0, i32 0
  %313 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %312, i32 0, i32 4
  store i32 0, i32* %313, align 8
  %314 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %315 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %314, i32 0, i32 0
  %316 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %315, i32 0, i32 5
  store i32 1, i32* %316, align 4
  %317 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %318 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %317, i32 0, i32 3
  %319 = load i32, i32* %318, align 4
  %320 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %321 = call i32 @SpiSendSynchronousSrb(i32 %319, %struct.TYPE_9__* %320)
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %327, label %323

323:                                              ; preds = %235
  %324 = load i8*, i8** %16, align 8
  %325 = call i32 @ExFreePool(i8* %324)
  %326 = load i32, i32* @EIO, align 4
  store i32 %326, i32* %5, align 4
  br label %340

327:                                              ; preds = %235
  %328 = load i32*, i32** %7, align 8
  %329 = load i8*, i8** %16, align 8
  %330 = load i32, i32* %8, align 4
  %331 = call i32 @RtlCopyMemory(i32* %328, i8* %329, i32 %330)
  %332 = load i32, i32* %8, align 4
  %333 = load i32*, i32** %9, align 8
  %334 = load i32, i32* %333, align 4
  %335 = add nsw i32 %334, %332
  store i32 %335, i32* %333, align 4
  %336 = load i8*, i8** %16, align 8
  %337 = call i32 @ExFreePool(i8* %336)
  br label %338

338:                                              ; preds = %327, %212
  %339 = load i32, i32* @ESUCCESS, align 4
  store i32 %339, i32* %5, align 4
  br label %340

340:                                              ; preds = %338, %323, %231, %223, %176, %80, %54, %49, %22
  %341 = load i32, i32* %5, align 4
  ret i32 %341
}

declare dso_local %struct.TYPE_11__* @FsGetDeviceSpecific(i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i8* @ExAllocatePool(i32, i32) #1

declare dso_local i32 @RtlZeroMemory(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @SpiSendSynchronousSrb(i32, %struct.TYPE_9__*) #1

declare dso_local i32 @ExFreePool(i8*) #1

declare dso_local i32 @RtlCopyMemory(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
