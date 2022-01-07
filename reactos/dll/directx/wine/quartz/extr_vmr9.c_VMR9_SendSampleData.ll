; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/quartz/extr_vmr9.c_VMR9_SendSampleData.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/quartz/extr_vmr9.c_VMR9_SendSampleData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.quartz_vmr = type { i32, i32, i32, i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32, i64, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_20__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_19__ = type { i8*, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_20__ }
%struct.TYPE_17__ = type { %struct.TYPE_20__ }

@S_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%p %p %d\0A\00", align 1
@FORMAT_VideoInfo = common dso_local global i32 0, align 4
@FORMAT_VideoInfo2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"Unknown type %s\0A\00", align 1
@VFW_E_RUNTIME_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"biSize = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"biWidth = %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"biHeight = %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"biPlanes = %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"biBitCount = %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"biCompression = %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"biSizeImage = %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"Src Rect: %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"Dst Rect: %s\0A\00", align 1
@D3DLOCK_DISCARD = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [40 x i8] c"IDirect3DSurface9_LockRect failed (%x)\0A\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"Slow path! %u/%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.quartz_vmr*, %struct.TYPE_16__*, i64, i32)* @VMR9_SendSampleData to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @VMR9_SendSampleData(%struct.quartz_vmr* %0, %struct.TYPE_16__* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.quartz_vmr*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_21__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_20__*, align 8
  %15 = alloca %struct.TYPE_19__, align 8
  store %struct.quartz_vmr* %0, %struct.quartz_vmr** %6, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load i32, i32* @S_OK, align 4
  store i32 %16, i32* %11, align 4
  %17 = load %struct.quartz_vmr*, %struct.quartz_vmr** %6, align 8
  %18 = load i64, i64* %8, align 8
  %19 = load i32, i32* %9, align 4
  %20 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), %struct.quartz_vmr* %17, i64 %18, i32 %19)
  %21 = load %struct.quartz_vmr*, %struct.quartz_vmr** %6, align 8
  %22 = getelementptr inbounds %struct.quartz_vmr, %struct.quartz_vmr* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  store %struct.TYPE_21__* %26, %struct.TYPE_21__** %10, align 8
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %27, i32 0, i32 2
  %29 = call i64 @IsEqualIID(i32* %28, i32* @FORMAT_VideoInfo)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %4
  %32 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to %struct.TYPE_18__*
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 0
  store %struct.TYPE_20__* %36, %struct.TYPE_20__** %14, align 8
  br label %55

37:                                               ; preds = %4
  %38 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %38, i32 0, i32 2
  %40 = call i64 @IsEqualIID(i32* %39, i32* @FORMAT_VideoInfo2)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to %struct.TYPE_17__*
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 0
  store %struct.TYPE_20__* %47, %struct.TYPE_20__** %14, align 8
  br label %54

48:                                               ; preds = %37
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %49, i32 0, i32 0
  %51 = call i32 @debugstr_guid(i32* %50)
  %52 = call i32 @FIXME(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* @VFW_E_RUNTIME_ERROR, align 4
  store i32 %53, i32* %5, align 4
  br label %230

54:                                               ; preds = %42
  br label %55

55:                                               ; preds = %54, %31
  %56 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %57 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %58)
  %60 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %62)
  %64 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %65 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %66)
  %68 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %69 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %70)
  %72 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %73 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 4
  %75 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 %74)
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %76, i32 0, i32 6
  %78 = ptrtoint i32* %77 to i32
  %79 = call i32 @debugstr_an(i32 %78, i32 4)
  %80 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i32 %79)
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %82 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 4
  %84 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i32 %83)
  %85 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %86 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %12, align 4
  %88 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %89 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %13, align 4
  %91 = load %struct.quartz_vmr*, %struct.quartz_vmr** %6, align 8
  %92 = getelementptr inbounds %struct.quartz_vmr, %struct.quartz_vmr* %91, i32 0, i32 3
  %93 = call i32 @wine_dbgstr_rect(i32* %92)
  %94 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i32 %93)
  %95 = load %struct.quartz_vmr*, %struct.quartz_vmr** %6, align 8
  %96 = getelementptr inbounds %struct.quartz_vmr, %struct.quartz_vmr* %95, i32 0, i32 2
  %97 = call i32 @wine_dbgstr_rect(i32* %96)
  %98 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i32 %97)
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @D3DLOCK_DISCARD, align 4
  %103 = call i32 @IDirect3DSurface9_LockRect(i32 %101, %struct.TYPE_19__* %15, i32* null, i32 %102)
  store i32 %103, i32* %11, align 4
  %104 = load i32, i32* %11, align 4
  %105 = call i64 @FAILED(i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %55
  %108 = load i32, i32* %11, align 4
  %109 = call i32 @ERR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i64 0, i64 0), i32 %108)
  %110 = load i32, i32* %11, align 4
  store i32 %110, i32* %5, align 4
  br label %230

111:                                              ; preds = %55
  %112 = load i32, i32* %13, align 4
  %113 = icmp sgt i32 %112, 0
  br i1 %113, label %114, label %157

114:                                              ; preds = %111
  %115 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 0
  %116 = load i8*, i8** %115, align 8
  %117 = load i32, i32* %13, align 4
  %118 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = mul nsw i32 %117, %119
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8, i8* %116, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 0
  store i8* %122, i8** %123, align 8
  br label %124

124:                                              ; preds = %128, %114
  %125 = load i32, i32* %13, align 4
  %126 = add nsw i32 %125, -1
  store i32 %126, i32* %13, align 4
  %127 = icmp ne i32 %125, 0
  br i1 %127, label %128, label %156

128:                                              ; preds = %124
  %129 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 0
  %130 = load i8*, i8** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = sext i32 %132 to i64
  %134 = sub i64 0, %133
  %135 = getelementptr inbounds i8, i8* %130, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 0
  store i8* %135, i8** %136, align 8
  %137 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 0
  %138 = load i8*, i8** %137, align 8
  %139 = load i64, i64* %8, align 8
  %140 = load i32, i32* %12, align 4
  %141 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %142 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %141, i32 0, i32 4
  %143 = load i32, i32* %142, align 4
  %144 = mul nsw i32 %140, %143
  %145 = sdiv i32 %144, 8
  %146 = call i32 @memcpy(i8* %138, i64 %139, i32 %145)
  %147 = load i64, i64* %8, align 8
  %148 = load i32, i32* %12, align 4
  %149 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %150 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %149, i32 0, i32 4
  %151 = load i32, i32* %150, align 4
  %152 = mul nsw i32 %148, %151
  %153 = sdiv i32 %152, 8
  %154 = sext i32 %153 to i64
  %155 = add nsw i64 %147, %154
  store i64 %155, i64* %8, align 8
  br label %124

156:                                              ; preds = %124
  br label %216

157:                                              ; preds = %111
  %158 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* %12, align 4
  %161 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %162 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %161, i32 0, i32 4
  %163 = load i32, i32* %162, align 4
  %164 = mul nsw i32 %160, %163
  %165 = sdiv i32 %164, 8
  %166 = icmp ne i32 %159, %165
  br i1 %166, label %167, label %209

167:                                              ; preds = %157
  %168 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 1
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* %12, align 4
  %171 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %172 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %171, i32 0, i32 4
  %173 = load i32, i32* %172, align 4
  %174 = mul nsw i32 %170, %173
  %175 = sdiv i32 %174, 8
  %176 = call i32 @WARN(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0), i32 %169, i32 %175)
  br label %177

177:                                              ; preds = %181, %167
  %178 = load i32, i32* %13, align 4
  %179 = add nsw i32 %178, -1
  store i32 %179, i32* %13, align 4
  %180 = icmp ne i32 %178, 0
  br i1 %180, label %181, label %208

181:                                              ; preds = %177
  %182 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 0
  %183 = load i8*, i8** %182, align 8
  %184 = load i64, i64* %8, align 8
  %185 = load i32, i32* %12, align 4
  %186 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %187 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %186, i32 0, i32 4
  %188 = load i32, i32* %187, align 4
  %189 = mul nsw i32 %185, %188
  %190 = sdiv i32 %189, 8
  %191 = call i32 @memcpy(i8* %183, i64 %184, i32 %190)
  %192 = load i64, i64* %8, align 8
  %193 = load i32, i32* %12, align 4
  %194 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %195 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %194, i32 0, i32 4
  %196 = load i32, i32* %195, align 4
  %197 = mul nsw i32 %193, %196
  %198 = sdiv i32 %197, 8
  %199 = sext i32 %198 to i64
  %200 = add nsw i64 %192, %199
  store i64 %200, i64* %8, align 8
  %201 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 0
  %202 = load i8*, i8** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 1
  %204 = load i32, i32* %203, align 8
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i8, i8* %202, i64 %205
  %207 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 0
  store i8* %206, i8** %207, align 8
  br label %177

208:                                              ; preds = %177
  br label %215

209:                                              ; preds = %157
  %210 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 0
  %211 = load i8*, i8** %210, align 8
  %212 = load i64, i64* %8, align 8
  %213 = load i32, i32* %9, align 4
  %214 = call i32 @memcpy(i8* %211, i64 %212, i32 %213)
  br label %215

215:                                              ; preds = %209, %208
  br label %216

216:                                              ; preds = %215, %156
  %217 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %218 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = call i32 @IDirect3DSurface9_UnlockRect(i32 %219)
  %221 = load %struct.quartz_vmr*, %struct.quartz_vmr** %6, align 8
  %222 = getelementptr inbounds %struct.quartz_vmr, %struct.quartz_vmr* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = load %struct.quartz_vmr*, %struct.quartz_vmr** %6, align 8
  %225 = getelementptr inbounds %struct.quartz_vmr, %struct.quartz_vmr* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %228 = call i32 @IVMRImagePresenter9_PresentImage(i32 %223, i32 %226, %struct.TYPE_16__* %227)
  store i32 %228, i32* %11, align 4
  %229 = load i32, i32* %11, align 4
  store i32 %229, i32* %5, align 4
  br label %230

230:                                              ; preds = %216, %107, %48
  %231 = load i32, i32* %5, align 4
  ret i32 %231
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i64 @IsEqualIID(i32*, i32*) #1

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i32 @debugstr_guid(i32*) #1

declare dso_local i32 @debugstr_an(i32, i32) #1

declare dso_local i32 @wine_dbgstr_rect(i32*) #1

declare dso_local i32 @IDirect3DSurface9_LockRect(i32, %struct.TYPE_19__*, i32*, i32) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @ERR(i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i64, i32) #1

declare dso_local i32 @WARN(i8*, i32, i32) #1

declare dso_local i32 @IDirect3DSurface9_UnlockRect(i32) #1

declare dso_local i32 @IVMRImagePresenter9_PresentImage(i32, i32, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
