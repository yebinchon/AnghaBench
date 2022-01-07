; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/ddraw/Palette/extr_createpalette.c_Internal_CreatePalette.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/ddraw/Palette/extr_createpalette.c_Internal_CreatePalette.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, i64, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_22__*, %struct.TYPE_18__* }
%struct.TYPE_22__ = type { i64, %struct.TYPE_22__*, %struct.TYPE_22__*, i64, i64, i32, %struct.TYPE_20__*, %struct.TYPE_22__* }
%struct.TYPE_18__ = type { %struct.TYPE_17__, %struct.TYPE_16__ }
%struct.TYPE_17__ = type { i64 (%struct.TYPE_15__*)* }
%struct.TYPE_15__ = type { {}*, i64, i32, %struct.TYPE_22__*, %struct.TYPE_19__*, i32 }
%struct.TYPE_16__ = type { i32, i64 (%struct.TYPE_15__*)* }

@CLASS_E_NOAGGREGATION = common dso_local global i64 0, align 8
@DDRAWILCL_SETCOOPCALLED = common dso_local global i32 0, align 4
@DDERR_NOCOOPERATIVELEVELSET = common dso_local global i64 0, align 8
@DDERR_INVALIDOBJECT = common dso_local global i64 0, align 8
@DDERR_OUTOFMEMORY = common dso_local global i64 0, align 8
@DirectDrawPalette_Vtable = common dso_local global i32 0, align 4
@DDHAL_CB32_CREATEPALETTE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Using HAL CreatePalette\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Using HEL CreatePalette\0A\00", align 1
@DDERR_GENERIC = common dso_local global i64 0, align 8
@DDHAL_DRIVER_NOTHANDLED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [54 x i8] c"mDdCreateSurface failed with DDHAL_DRIVER_NOTHANDLED.\00", align 1
@DDERR_NOTINITIALIZED = common dso_local global i64 0, align 8
@DD_OK = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [25 x i8] c"mDdCreateSurface failed.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @Internal_CreatePalette(%struct.TYPE_21__* %0, i32 %1, i32 %2, i64* %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_15__, align 8
  %13 = alloca %struct.TYPE_22__*, align 8
  %14 = alloca %struct.TYPE_22__*, align 8
  %15 = alloca %struct.TYPE_22__*, align 8
  %16 = alloca i64, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i64* %3, i64** %10, align 8
  store i64 %4, i64* %11, align 8
  %17 = bitcast %struct.TYPE_15__* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %17, i8 0, i64 48, i1 false)
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %13, align 8
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %14, align 8
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %15, align 8
  %18 = load i64, i64* %11, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %5
  %21 = load i64, i64* @CLASS_E_NOAGGREGATION, align 8
  store i64 %21, i64* %6, align 8
  br label %209

22:                                               ; preds = %5
  %23 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @DDRAWILCL_SETCOOPCALLED, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %22
  %32 = load i64, i64* @DDERR_NOCOOPERATIVELEVELSET, align 8
  store i64 %32, i64* %6, align 8
  br label %209

33:                                               ; preds = %22
  %34 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = call i64 (...) @GetCurrentProcessId()
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = load i64, i64* @DDERR_INVALIDOBJECT, align 8
  store i64 %42, i64* %6, align 8
  br label %209

43:                                               ; preds = %33
  %44 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %45 = call i32 @DxHeapMemAlloc(%struct.TYPE_22__* %44, i32 4)
  %46 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %47 = icmp eq %struct.TYPE_22__* %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load i64, i64* @DDERR_OUTOFMEMORY, align 8
  store i64 %49, i64* %16, align 8
  br label %189

50:                                               ; preds = %43
  %51 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %52 = call i32 @DxHeapMemAlloc(%struct.TYPE_22__* %51, i32 4)
  %53 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %54 = icmp eq %struct.TYPE_22__* %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = load i64, i64* @DDERR_OUTOFMEMORY, align 8
  store i64 %56, i64* %16, align 8
  br label %189

57:                                               ; preds = %50
  %58 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %59 = call i32 @DxHeapMemAlloc(%struct.TYPE_22__* %58, i32 4)
  %60 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %61 = icmp eq %struct.TYPE_22__* %60, null
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load i64, i64* @DDERR_OUTOFMEMORY, align 8
  store i64 %63, i64* %16, align 8
  br label %189

64:                                               ; preds = %57
  %65 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %66 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %67 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %66, i32 0, i32 1
  store %struct.TYPE_22__* %65, %struct.TYPE_22__** %67, align 8
  %68 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %69 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %70 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %69, i32 0, i32 7
  store %struct.TYPE_22__* %68, %struct.TYPE_22__** %70, align 8
  %71 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_20__*, %struct.TYPE_20__** %72, align 8
  %74 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %75 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %74, i32 0, i32 6
  store %struct.TYPE_20__* %73, %struct.TYPE_20__** %75, align 8
  %76 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %77 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %76, i32 0, i32 6
  store %struct.TYPE_20__* %73, %struct.TYPE_20__** %77, align 8
  %78 = load i32, i32* %8, align 4
  %79 = call i32 @ConvertPCapsFlags(i32 %78)
  %80 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %81 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %80, i32 0, i32 5
  store i32 %79, i32* %81, align 8
  %82 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %83 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %82, i32 0, i32 4
  store i64 ptrtoint (i32* @DirectDrawPalette_Vtable to i64), i64* %83, align 8
  %84 = call i64 (...) @GetCurrentProcessId()
  %85 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %86 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %85, i32 0, i32 3
  store i64 %84, i64* %86, align 8
  %87 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_20__*, %struct.TYPE_20__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %89, i32 0, i32 2
  %91 = load %struct.TYPE_19__*, %struct.TYPE_19__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 4
  store %struct.TYPE_19__* %91, %struct.TYPE_19__** %92, align 8
  %93 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 3
  store %struct.TYPE_22__* %93, %struct.TYPE_22__** %94, align 8
  %95 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %97, i32 0, i32 2
  %99 = load %struct.TYPE_19__*, %struct.TYPE_19__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @DDHAL_CB32_CREATEPALETTE, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %122

108:                                              ; preds = %64
  %109 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_20__*, %struct.TYPE_20__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %111, i32 0, i32 2
  %113 = load %struct.TYPE_19__*, %struct.TYPE_19__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %113, i32 0, i32 1
  %115 = load %struct.TYPE_18__*, %struct.TYPE_18__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 1
  %118 = load i64 (%struct.TYPE_15__*)*, i64 (%struct.TYPE_15__*)** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  %120 = bitcast {}** %119 to i64 (%struct.TYPE_15__*)**
  store i64 (%struct.TYPE_15__*)* %118, i64 (%struct.TYPE_15__*)** %120, align 8
  %121 = call i32 @DX_STUB_str(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %136

122:                                              ; preds = %64
  %123 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_20__*, %struct.TYPE_20__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %125, i32 0, i32 2
  %127 = load %struct.TYPE_19__*, %struct.TYPE_19__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %127, i32 0, i32 1
  %129 = load %struct.TYPE_18__*, %struct.TYPE_18__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %130, i32 0, i32 0
  %132 = load i64 (%struct.TYPE_15__*)*, i64 (%struct.TYPE_15__*)** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  %134 = bitcast {}** %133 to i64 (%struct.TYPE_15__*)**
  store i64 (%struct.TYPE_15__*)* %132, i64 (%struct.TYPE_15__*)** %134, align 8
  %135 = call i32 @DX_STUB_str(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %136

136:                                              ; preds = %122, %108
  %137 = load i64, i64* @DDERR_GENERIC, align 8
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 1
  store i64 %137, i64* %138, align 8
  %139 = load i32, i32* %9, align 4
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 2
  store i32 %139, i32* %140, align 8
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  %142 = bitcast {}** %141 to i64 (%struct.TYPE_15__*)**
  %143 = load i64 (%struct.TYPE_15__*)*, i64 (%struct.TYPE_15__*)** %142, align 8
  %144 = call i64 %143(%struct.TYPE_15__* %12)
  %145 = load i64, i64* @DDHAL_DRIVER_NOTHANDLED, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %150

147:                                              ; preds = %136
  %148 = call i32 @DX_STUB_str(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0))
  %149 = load i64, i64* @DDERR_NOTINITIALIZED, align 8
  store i64 %149, i64* %16, align 8
  br label %189

150:                                              ; preds = %136
  %151 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @DD_OK, align 8
  %154 = icmp ne i64 %152, %153
  br i1 %154, label %155, label %159

155:                                              ; preds = %150
  %156 = call i32 @DX_STUB_str(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %157 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  store i64 %158, i64* %16, align 8
  br label %189

159:                                              ; preds = %150
  %160 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %161 = ptrtoint %struct.TYPE_22__* %160 to i64
  %162 = load i64*, i64** %10, align 8
  store i64 %161, i64* %162, align 8
  %163 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %164 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %163, i32 0, i32 0
  %165 = load %struct.TYPE_20__*, %struct.TYPE_20__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %165, i32 0, i32 2
  %167 = load %struct.TYPE_19__*, %struct.TYPE_19__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %167, i32 0, i32 0
  %169 = load %struct.TYPE_22__*, %struct.TYPE_22__** %168, align 8
  %170 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %171 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %170, i32 0, i32 2
  store %struct.TYPE_22__* %169, %struct.TYPE_22__** %171, align 8
  %172 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %173 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %174 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %173, i32 0, i32 0
  %175 = load %struct.TYPE_20__*, %struct.TYPE_20__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %175, i32 0, i32 2
  %177 = load %struct.TYPE_19__*, %struct.TYPE_19__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %177, i32 0, i32 0
  store %struct.TYPE_22__* %172, %struct.TYPE_22__** %178, align 8
  %179 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %180 = ptrtoint %struct.TYPE_21__* %179 to i64
  %181 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %182 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %181, i32 0, i32 1
  %183 = load %struct.TYPE_22__*, %struct.TYPE_22__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %183, i32 0, i32 0
  store i64 %180, i64* %184, align 8
  %185 = load i64*, i64** %10, align 8
  %186 = load i64, i64* %185, align 8
  %187 = call i32 @IDirectDrawPalette_AddRef(i64 %186)
  %188 = load i64, i64* @DD_OK, align 8
  store i64 %188, i64* %6, align 8
  br label %209

189:                                              ; preds = %155, %147, %62, %55, %48
  %190 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %191 = icmp ne %struct.TYPE_22__* %190, null
  br i1 %191, label %192, label %195

192:                                              ; preds = %189
  %193 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %194 = call i32 @DxHeapMemFree(%struct.TYPE_22__* %193)
  br label %195

195:                                              ; preds = %192, %189
  %196 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %197 = icmp ne %struct.TYPE_22__* %196, null
  br i1 %197, label %198, label %201

198:                                              ; preds = %195
  %199 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %200 = call i32 @DxHeapMemFree(%struct.TYPE_22__* %199)
  br label %201

201:                                              ; preds = %198, %195
  %202 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %203 = icmp ne %struct.TYPE_22__* %202, null
  br i1 %203, label %204, label %207

204:                                              ; preds = %201
  %205 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %206 = call i32 @DxHeapMemFree(%struct.TYPE_22__* %205)
  br label %207

207:                                              ; preds = %204, %201
  %208 = load i64, i64* %16, align 8
  store i64 %208, i64* %6, align 8
  br label %209

209:                                              ; preds = %207, %159, %41, %31, %20
  %210 = load i64, i64* %6, align 8
  ret i64 %210
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @GetCurrentProcessId(...) #2

declare dso_local i32 @DxHeapMemAlloc(%struct.TYPE_22__*, i32) #2

declare dso_local i32 @ConvertPCapsFlags(i32) #2

declare dso_local i32 @DX_STUB_str(i8*) #2

declare dso_local i32 @IDirectDrawPalette_AddRef(i64) #2

declare dso_local i32 @DxHeapMemFree(%struct.TYPE_22__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
