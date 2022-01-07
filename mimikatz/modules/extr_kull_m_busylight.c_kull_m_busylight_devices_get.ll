; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_busylight.c_kull_m_busylight_devices_get.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_busylight.c_kull_m_busylight_devices_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i64, i32, %struct.TYPE_18__*, i32, i32, i64, %struct.TYPE_16__, %struct.TYPE_19__*, %struct.TYPE_20__, i32 }
%struct.TYPE_16__ = type { i32, i32, i32 }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_17__ = type { i32 }

@DIGCF_DEVICEINTERFACE = common dso_local global i32 0, align 4
@DIGCF_PRESENT = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@ERROR_INSUFFICIENT_BUFFER = common dso_local global i64 0, align 8
@LPTR = common dso_local global i32 0, align 4
@FILE_SHARE_READ = common dso_local global i32 0, align 4
@FILE_SHARE_WRITE = common dso_local global i32 0, align 4
@OPEN_EXISTING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i32] [i32 72, i32 105, i32 100, i32 80, i32 95, i32 71, i32 101, i32 116, i32 67, i32 97, i32 112, i32 115, i32 32, i32 40, i32 37, i32 48, i32 56, i32 120, i32 41, i32 10, i32 0], align 4
@FILE_READ_DATA = common dso_local global i32 0, align 4
@FILE_WRITE_DATA = common dso_local global i32 0, align 4
@kull_m_busylight_keepAliveThread = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i32] [i32 67, i32 114, i32 101, i32 97, i32 116, i32 101, i32 84, i32 104, i32 114, i32 101, i32 97, i32 100, i32 32, i32 40, i32 104, i32 75, i32 101, i32 101, i32 112, i32 65, i32 108, i32 105, i32 118, i32 101, i32 84, i32 104, i32 114, i32 101, i32 97, i32 100, i32 41, i32 0], align 4
@.str.2 = private unnamed_addr constant [19 x i32] [i32 67, i32 114, i32 101, i32 97, i32 116, i32 101, i32 70, i32 105, i32 108, i32 101, i32 32, i32 40, i32 104, i32 66, i32 117, i32 115, i32 121, i32 41, i32 0], align 4
@.str.3 = private unnamed_addr constant [26 x i32] [i32 67, i32 114, i32 101, i32 97, i32 116, i32 101, i32 70, i32 105, i32 108, i32 101, i32 32, i32 40, i32 100, i32 101, i32 118, i32 105, i32 99, i32 101, i32 72, i32 97, i32 110, i32 100, i32 108, i32 101, i32 41, i32 0], align 4
@.str.4 = private unnamed_addr constant [20 x i32] [i32 83, i32 101, i32 116, i32 117, i32 112, i32 68, i32 105, i32 71, i32 101, i32 116, i32 67, i32 108, i32 97, i32 115, i32 115, i32 68, i32 101, i32 118, i32 115, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kull_m_busylight_devices_get(%struct.TYPE_18__** %0, i64* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_18__**, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_18__**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_17__, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_18__*, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_20__, align 4
  %20 = alloca %struct.TYPE_19__*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.TYPE_18__** %0, %struct.TYPE_18__*** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %23 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %5, align 8
  store %struct.TYPE_18__** %23, %struct.TYPE_18__*** %9, align 8
  store i64 0, i64* %16, align 8
  %24 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %9, align 8
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %24, align 8
  %25 = call i32 @HidD_GetHidGuid(i32* %10)
  %26 = load i32, i32* @DIGCF_DEVICEINTERFACE, align 4
  %27 = load i32, i32* @DIGCF_PRESENT, align 4
  %28 = or i32 %26, %27
  %29 = call i64 @SetupDiGetClassDevs(i32* %10, i32* null, i32* null, i32 %28)
  store i64 %29, i64* %11, align 8
  %30 = load i64, i64* %11, align 8
  %31 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %249

33:                                               ; preds = %4
  store i64 0, i64* %14, align 8
  %34 = load i32, i32* @TRUE, align 4
  store i32 %34, i32* %13, align 4
  br label %35

35:                                               ; preds = %243, %33
  %36 = load i32, i32* %13, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %246

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 0
  store i32 4, i32* %39, align 4
  %40 = load i64, i64* %11, align 8
  %41 = load i64, i64* %14, align 8
  %42 = call i32 @SetupDiEnumDeviceInterfaces(i64 %40, i32* null, i32* %10, i64 %41, %struct.TYPE_17__* %12)
  store i32 %42, i32* %13, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %242

44:                                               ; preds = %38
  store i64 0, i64* %15, align 8
  %45 = load i64, i64* %11, align 8
  %46 = call i64 @SetupDiGetDeviceInterfaceDetail(i64 %45, %struct.TYPE_17__* %12, %struct.TYPE_18__* null, i64 0, i64* %15, i32* null)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %241, label %48

48:                                               ; preds = %44
  %49 = call i64 (...) @GetLastError()
  %50 = load i64, i64* @ERROR_INSUFFICIENT_BUFFER, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %241

52:                                               ; preds = %48
  %53 = load i32, i32* @LPTR, align 4
  %54 = load i64, i64* %15, align 8
  %55 = trunc i64 %54 to i32
  %56 = call i64 @LocalAlloc(i32 %53, i32 %55)
  %57 = inttoptr i64 %56 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %57, %struct.TYPE_18__** %17, align 8
  %58 = icmp ne %struct.TYPE_18__* %57, null
  br i1 %58, label %59, label %240

59:                                               ; preds = %52
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 0
  store i32 4, i32* %61, align 8
  %62 = load i64, i64* %11, align 8
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %64 = load i64, i64* %15, align 8
  %65 = call i64 @SetupDiGetDeviceInterfaceDetail(i64 %62, %struct.TYPE_17__* %12, %struct.TYPE_18__* %63, i64 %64, i64* %15, i32* null)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %237

67:                                               ; preds = %59
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @FILE_SHARE_READ, align 4
  %72 = load i32, i32* @FILE_SHARE_WRITE, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @OPEN_EXISTING, align 4
  %75 = call i8* @CreateFile(i32 %70, i32 0, i32 %73, i32* null, i32 %74, i32 0, i32* null)
  %76 = ptrtoint i8* %75 to i64
  store i64 %76, i64* %18, align 8
  %77 = load i64, i64* %18, align 8
  %78 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %234

80:                                               ; preds = %67
  %81 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i32 0, i32 0
  store i32 4, i32* %81, align 4
  %82 = load i64, i64* %18, align 8
  %83 = call i64 @HidD_GetAttributes(i64 %82, %struct.TYPE_20__* %19)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %231

85:                                               ; preds = %80
  %86 = call %struct.TYPE_19__* @kull_m_busylight_devices_getIdFromAttributes(%struct.TYPE_20__* %19)
  store %struct.TYPE_19__* %86, %struct.TYPE_19__** %20, align 8
  %87 = icmp ne %struct.TYPE_19__* %86, null
  br i1 %87, label %88, label %230

88:                                               ; preds = %85
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* %7, align 8
  %93 = and i64 %91, %92
  %94 = load i64, i64* %7, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %229

96:                                               ; preds = %88
  %97 = load i32, i32* @LPTR, align 4
  %98 = call i64 @LocalAlloc(i32 %97, i32 4)
  %99 = inttoptr i64 %98 to %struct.TYPE_18__*
  %100 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %9, align 8
  store %struct.TYPE_18__* %99, %struct.TYPE_18__** %100, align 8
  %101 = icmp ne %struct.TYPE_18__* %99, null
  br i1 %101, label %102, label %228

102:                                              ; preds = %96
  %103 = load i64, i64* %18, align 8
  %104 = call i64 @HidD_GetPreparsedData(i64 %103, i32* %21)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %121

106:                                              ; preds = %102
  %107 = load i32, i32* %21, align 4
  %108 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %9, align 8
  %109 = load %struct.TYPE_18__*, %struct.TYPE_18__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %109, i32 0, i32 10
  %111 = call i32 @HidP_GetCaps(i32 %107, i32* %110)
  store i32 %111, i32* %22, align 4
  %112 = load i32, i32* %22, align 4
  %113 = call i32 @NT_SUCCESS(i32 %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %118, label %115

115:                                              ; preds = %106
  %116 = load i32, i32* %22, align 4
  %117 = call i32 @PRINT_ERROR(i8* bitcast ([21 x i32]* @.str to i8*), i32 %116)
  br label %118

118:                                              ; preds = %115, %106
  %119 = load i32, i32* %21, align 4
  %120 = call i32 @HidD_FreePreparsedData(i32 %119)
  br label %121

121:                                              ; preds = %118, %102
  %122 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %123 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %122, i32 0, i32 5
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @_wcsdup(i32 %124)
  %126 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %9, align 8
  %127 = load %struct.TYPE_18__*, %struct.TYPE_18__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %127, i32 0, i32 5
  store i32 %125, i32* %128, align 4
  %129 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %9, align 8
  %130 = load %struct.TYPE_18__*, %struct.TYPE_18__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %130, i32 0, i32 9
  %132 = bitcast %struct.TYPE_20__* %131 to i8*
  %133 = bitcast %struct.TYPE_20__* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %132, i8* align 4 %133, i64 4, i1 false)
  %134 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %135 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %9, align 8
  %136 = load %struct.TYPE_18__*, %struct.TYPE_18__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %136, i32 0, i32 8
  store %struct.TYPE_19__* %134, %struct.TYPE_19__** %137, align 8
  %138 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %9, align 8
  %139 = load %struct.TYPE_18__*, %struct.TYPE_18__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %139, i32 0, i32 7
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %140, i32 0, i32 0
  store i32 4, i32* %141, align 8
  %142 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %9, align 8
  %143 = load %struct.TYPE_18__*, %struct.TYPE_18__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %143, i32 0, i32 7
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %144, i32 0, i32 1
  store i32 4, i32* %145, align 4
  %146 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %9, align 8
  %147 = load %struct.TYPE_18__*, %struct.TYPE_18__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %147, i32 0, i32 7
  %149 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %148, i32 0, i32 2
  store i32 85, i32* %149, align 8
  %150 = load i64, i64* %16, align 8
  %151 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %9, align 8
  %152 = load %struct.TYPE_18__*, %struct.TYPE_18__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %152, i32 0, i32 6
  store i64 %150, i64* %153, align 8
  %154 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %155 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %154, i32 0, i32 5
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @FILE_READ_DATA, align 4
  %158 = load i32, i32* @FILE_WRITE_DATA, align 4
  %159 = or i32 %157, %158
  %160 = load i32, i32* @FILE_SHARE_READ, align 4
  %161 = load i32, i32* @FILE_SHARE_WRITE, align 4
  %162 = or i32 %160, %161
  %163 = load i32, i32* @OPEN_EXISTING, align 4
  %164 = call i8* @CreateFile(i32 %156, i32 %159, i32 %162, i32* null, i32 %163, i32 0, i32* null)
  %165 = ptrtoint i8* %164 to i64
  %166 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %9, align 8
  %167 = load %struct.TYPE_18__*, %struct.TYPE_18__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %167, i32 0, i32 1
  store i64 %165, i64* %168, align 8
  %169 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %9, align 8
  %170 = load %struct.TYPE_18__*, %struct.TYPE_18__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %220

174:                                              ; preds = %121
  %175 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %9, align 8
  %176 = load %struct.TYPE_18__*, %struct.TYPE_18__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %180 = icmp ne i64 %178, %179
  br i1 %180, label %181, label %220

181:                                              ; preds = %174
  %182 = load i32, i32* %8, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %213

184:                                              ; preds = %181
  %185 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %9, align 8
  %186 = load %struct.TYPE_18__*, %struct.TYPE_18__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %186, i32 0, i32 2
  store i32 5000, i32* %187, align 8
  %188 = load i32, i32* @kull_m_busylight_keepAliveThread, align 4
  %189 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %9, align 8
  %190 = load %struct.TYPE_18__*, %struct.TYPE_18__** %189, align 8
  %191 = call i32 @CreateThread(i32* null, i32 0, i32 %188, %struct.TYPE_18__* %190, i32 0, i32* null)
  %192 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %9, align 8
  %193 = load %struct.TYPE_18__*, %struct.TYPE_18__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %193, i32 0, i32 4
  store i32 %191, i32* %194, align 8
  %195 = icmp ne i32 %191, 0
  br i1 %195, label %196, label %202

196:                                              ; preds = %184
  %197 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %9, align 8
  %198 = load %struct.TYPE_18__*, %struct.TYPE_18__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %198, i32 0, i32 3
  store %struct.TYPE_18__** %199, %struct.TYPE_18__*** %9, align 8
  %200 = load i64, i64* %16, align 8
  %201 = add nsw i64 %200, 1
  store i64 %201, i64* %16, align 8
  br label %212

202:                                              ; preds = %184
  %203 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([32 x i32]* @.str.1 to i8*))
  %204 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %9, align 8
  %205 = load %struct.TYPE_18__*, %struct.TYPE_18__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %205, i32 0, i32 1
  %207 = load i64, i64* %206, align 8
  %208 = call i32 @CloseHandle(i64 %207)
  %209 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %9, align 8
  %210 = load %struct.TYPE_18__*, %struct.TYPE_18__** %209, align 8
  %211 = call i64 @LocalFree(%struct.TYPE_18__* %210)
  br label %212

212:                                              ; preds = %202, %196
  br label %219

213:                                              ; preds = %181
  %214 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %9, align 8
  %215 = load %struct.TYPE_18__*, %struct.TYPE_18__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %215, i32 0, i32 3
  store %struct.TYPE_18__** %216, %struct.TYPE_18__*** %9, align 8
  %217 = load i64, i64* %16, align 8
  %218 = add nsw i64 %217, 1
  store i64 %218, i64* %16, align 8
  br label %219

219:                                              ; preds = %213, %212
  br label %227

220:                                              ; preds = %174, %121
  %221 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([19 x i32]* @.str.2 to i8*))
  %222 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %9, align 8
  %223 = load %struct.TYPE_18__*, %struct.TYPE_18__** %222, align 8
  %224 = call i64 @LocalFree(%struct.TYPE_18__* %223)
  %225 = inttoptr i64 %224 to %struct.TYPE_18__*
  %226 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %9, align 8
  store %struct.TYPE_18__* %225, %struct.TYPE_18__** %226, align 8
  br label %227

227:                                              ; preds = %220, %219
  br label %228

228:                                              ; preds = %227, %96
  br label %229

229:                                              ; preds = %228, %88
  br label %230

230:                                              ; preds = %229, %85
  br label %231

231:                                              ; preds = %230, %80
  %232 = load i64, i64* %18, align 8
  %233 = call i32 @CloseHandle(i64 %232)
  br label %236

234:                                              ; preds = %67
  %235 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([26 x i32]* @.str.3 to i8*))
  br label %236

236:                                              ; preds = %234, %231
  br label %237

237:                                              ; preds = %236, %59
  %238 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %239 = call i64 @LocalFree(%struct.TYPE_18__* %238)
  br label %240

240:                                              ; preds = %237, %52
  br label %241

241:                                              ; preds = %240, %48, %44
  br label %242

242:                                              ; preds = %241, %38
  br label %243

243:                                              ; preds = %242
  %244 = load i64, i64* %14, align 8
  %245 = add nsw i64 %244, 1
  store i64 %245, i64* %14, align 8
  br label %35

246:                                              ; preds = %35
  %247 = load i64, i64* %11, align 8
  %248 = call i32 @SetupDiDestroyDeviceInfoList(i64 %247)
  br label %251

249:                                              ; preds = %4
  %250 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([20 x i32]* @.str.4 to i8*))
  br label %251

251:                                              ; preds = %249, %246
  %252 = load i64*, i64** %6, align 8
  %253 = icmp ne i64* %252, null
  br i1 %253, label %254, label %257

254:                                              ; preds = %251
  %255 = load i64, i64* %16, align 8
  %256 = load i64*, i64** %6, align 8
  store i64 %255, i64* %256, align 8
  br label %257

257:                                              ; preds = %254, %251
  %258 = load i64, i64* %16, align 8
  %259 = icmp sgt i64 %258, 0
  %260 = zext i1 %259 to i32
  ret i32 %260
}

declare dso_local i32 @HidD_GetHidGuid(i32*) #1

declare dso_local i64 @SetupDiGetClassDevs(i32*, i32*, i32*, i32) #1

declare dso_local i32 @SetupDiEnumDeviceInterfaces(i64, i32*, i32*, i64, %struct.TYPE_17__*) #1

declare dso_local i64 @SetupDiGetDeviceInterfaceDetail(i64, %struct.TYPE_17__*, %struct.TYPE_18__*, i64, i64*, i32*) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i64 @LocalAlloc(i32, i32) #1

declare dso_local i8* @CreateFile(i32, i32, i32, i32*, i32, i32, i32*) #1

declare dso_local i64 @HidD_GetAttributes(i64, %struct.TYPE_20__*) #1

declare dso_local %struct.TYPE_19__* @kull_m_busylight_devices_getIdFromAttributes(%struct.TYPE_20__*) #1

declare dso_local i64 @HidD_GetPreparsedData(i64, i32*) #1

declare dso_local i32 @HidP_GetCaps(i32, i32*) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @PRINT_ERROR(i8*, i32) #1

declare dso_local i32 @HidD_FreePreparsedData(i32) #1

declare dso_local i32 @_wcsdup(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @CreateThread(i32*, i32, i32, %struct.TYPE_18__*, i32, i32*) #1

declare dso_local i32 @PRINT_ERROR_AUTO(i8*) #1

declare dso_local i32 @CloseHandle(i64) #1

declare dso_local i64 @LocalFree(%struct.TYPE_18__*) #1

declare dso_local i32 @SetupDiDestroyDeviceInfoList(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
