; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_rdm.c_rdm_devices_get.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_rdm.c_rdm_devices_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i64, %struct.TYPE_12__*, i32, i64, %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i32 }

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
@ERROR_ACCESS_DENIED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i32] [i32 67, i32 114, i32 101, i32 97, i32 116, i32 101, i32 70, i32 105, i32 108, i32 101, i32 32, i32 40, i32 104, i32 68, i32 101, i32 118, i32 105, i32 99, i32 101, i32 41, i32 0], align 4
@.str.2 = private unnamed_addr constant [26 x i32] [i32 67, i32 114, i32 101, i32 97, i32 116, i32 101, i32 70, i32 105, i32 108, i32 101, i32 32, i32 40, i32 100, i32 101, i32 118, i32 105, i32 99, i32 101, i32 72, i32 97, i32 110, i32 100, i32 108, i32 101, i32 41, i32 0], align 4
@.str.3 = private unnamed_addr constant [20 x i32] [i32 83, i32 101, i32 116, i32 117, i32 112, i32 68, i32 105, i32 71, i32 101, i32 116, i32 67, i32 108, i32 97, i32 115, i32 115, i32 68, i32 101, i32 118, i32 115, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rdm_devices_get(%struct.TYPE_12__** %0, i64* %1) #0 {
  %3 = alloca %struct.TYPE_12__**, align 8
  %4 = alloca i64*, align 8
  %5 = alloca %struct.TYPE_12__**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_11__, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_13__, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_12__** %0, %struct.TYPE_12__*** %3, align 8
  store i64* %1, i64** %4, align 8
  %18 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %3, align 8
  store %struct.TYPE_12__** %18, %struct.TYPE_12__*** %5, align 8
  store i64 0, i64* %12, align 8
  %19 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %5, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %19, align 8
  %20 = call i32 @HidD_GetHidGuid(i32* %6)
  %21 = load i32, i32* @DIGCF_DEVICEINTERFACE, align 4
  %22 = load i32, i32* @DIGCF_PRESENT, align 4
  %23 = or i32 %21, %22
  %24 = call i64 @SetupDiGetClassDevs(i32* %6, i32* null, i32* null, i32 %23)
  store i64 %24, i64* %7, align 8
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %196

28:                                               ; preds = %2
  store i64 0, i64* %10, align 8
  %29 = load i32, i32* @TRUE, align 4
  store i32 %29, i32* %9, align 4
  br label %30

30:                                               ; preds = %190, %28
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %193

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  store i32 4, i32* %34, align 4
  %35 = load i64, i64* %7, align 8
  %36 = load i64, i64* %10, align 8
  %37 = call i32 @SetupDiEnumDeviceInterfaces(i64 %35, i32* null, i32* %6, i64 %36, %struct.TYPE_11__* %8)
  store i32 %37, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %189

39:                                               ; preds = %33
  store i64 0, i64* %11, align 8
  %40 = load i64, i64* %7, align 8
  %41 = call i64 @SetupDiGetDeviceInterfaceDetail(i64 %40, %struct.TYPE_11__* %8, %struct.TYPE_12__* null, i64 0, i64* %11, i32* null)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %188, label %43

43:                                               ; preds = %39
  %44 = call i64 (...) @GetLastError()
  %45 = load i64, i64* @ERROR_INSUFFICIENT_BUFFER, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %188

47:                                               ; preds = %43
  %48 = load i32, i32* @LPTR, align 4
  %49 = load i64, i64* %11, align 8
  %50 = trunc i64 %49 to i32
  %51 = call i64 @LocalAlloc(i32 %48, i32 %50)
  %52 = inttoptr i64 %51 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %52, %struct.TYPE_12__** %13, align 8
  %53 = icmp ne %struct.TYPE_12__* %52, null
  br i1 %53, label %54, label %187

54:                                               ; preds = %47
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 0
  store i32 4, i32* %56, align 8
  %57 = load i64, i64* %7, align 8
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %59 = load i64, i64* %11, align 8
  %60 = call i64 @SetupDiGetDeviceInterfaceDetail(i64 %57, %struct.TYPE_11__* %8, %struct.TYPE_12__* %58, i64 %59, i64* %11, i32* null)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %184

62:                                               ; preds = %54
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @FILE_SHARE_READ, align 4
  %67 = load i32, i32* @FILE_SHARE_WRITE, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @OPEN_EXISTING, align 4
  %70 = call i8* @CreateFile(i32 %65, i32 0, i32 %68, i32* null, i32 %69, i32 0, i32* null)
  %71 = ptrtoint i8* %70 to i64
  store i64 %71, i64* %14, align 8
  %72 = load i64, i64* %14, align 8
  %73 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %181

75:                                               ; preds = %62
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  store i32 12, i32* %76, align 4
  %77 = load i64, i64* %14, align 8
  %78 = call i64 @HidD_GetAttributes(i64 %77, %struct.TYPE_13__* %15)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %178

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = icmp eq i32 %82, 65535
  br i1 %83, label %84, label %177

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = icmp eq i32 %86, 53
  br i1 %87, label %88, label %177

88:                                               ; preds = %84
  %89 = load i32, i32* @LPTR, align 4
  %90 = call i64 @LocalAlloc(i32 %89, i32 4)
  %91 = inttoptr i64 %90 to %struct.TYPE_12__*
  %92 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %5, align 8
  store %struct.TYPE_12__* %91, %struct.TYPE_12__** %92, align 8
  %93 = icmp ne %struct.TYPE_12__* %91, null
  br i1 %93, label %94, label %176

94:                                               ; preds = %88
  %95 = load i64, i64* %14, align 8
  %96 = call i64 @HidD_GetPreparsedData(i64 %95, i32* %16)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %113

98:                                               ; preds = %94
  %99 = load i32, i32* %16, align 4
  %100 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %5, align 8
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 6
  %103 = call i32 @HidP_GetCaps(i32 %99, i32* %102)
  store i32 %103, i32* %17, align 4
  %104 = load i32, i32* %17, align 4
  %105 = call i32 @NT_SUCCESS(i32 %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %110, label %107

107:                                              ; preds = %98
  %108 = load i32, i32* %17, align 4
  %109 = call i32 @PRINT_ERROR(i8* bitcast ([21 x i32]* @.str to i8*), i32 %108)
  br label %110

110:                                              ; preds = %107, %98
  %111 = load i32, i32* %16, align 4
  %112 = call i32 @HidD_FreePreparsedData(i32 %111)
  br label %113

113:                                              ; preds = %110, %94
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @_wcsdup(i32 %116)
  %118 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %5, align 8
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 3
  store i32 %117, i32* %120, align 8
  %121 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %5, align 8
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 5
  %124 = bitcast %struct.TYPE_13__* %123 to i8*
  %125 = bitcast %struct.TYPE_13__* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %124, i8* align 4 %125, i64 12, i1 false)
  %126 = load i64, i64* %12, align 8
  %127 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %5, align 8
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 4
  store i64 %126, i64* %129, align 8
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @FILE_READ_DATA, align 4
  %134 = load i32, i32* @FILE_WRITE_DATA, align 4
  %135 = or i32 %133, %134
  %136 = load i32, i32* @FILE_SHARE_READ, align 4
  %137 = load i32, i32* @FILE_SHARE_WRITE, align 4
  %138 = or i32 %136, %137
  %139 = load i32, i32* @OPEN_EXISTING, align 4
  %140 = call i8* @CreateFile(i32 %132, i32 %135, i32 %138, i32* null, i32 %139, i32 0, i32* null)
  %141 = ptrtoint i8* %140 to i64
  %142 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %5, align 8
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 1
  store i64 %141, i64* %144, align 8
  %145 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %5, align 8
  %146 = load %struct.TYPE_12__*, %struct.TYPE_12__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %163

150:                                              ; preds = %113
  %151 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %5, align 8
  %152 = load %struct.TYPE_12__*, %struct.TYPE_12__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %156 = icmp ne i64 %154, %155
  br i1 %156, label %157, label %163

157:                                              ; preds = %150
  %158 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %5, align 8
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 2
  store %struct.TYPE_12__** %160, %struct.TYPE_12__*** %5, align 8
  %161 = load i64, i64* %12, align 8
  %162 = add nsw i64 %161, 1
  store i64 %162, i64* %12, align 8
  br label %175

163:                                              ; preds = %150, %113
  %164 = call i64 (...) @GetLastError()
  %165 = load i64, i64* @ERROR_ACCESS_DENIED, align 8
  %166 = icmp ne i64 %164, %165
  br i1 %166, label %167, label %169

167:                                              ; preds = %163
  %168 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([21 x i32]* @.str.1 to i8*))
  br label %169

169:                                              ; preds = %167, %163
  %170 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %5, align 8
  %171 = load %struct.TYPE_12__*, %struct.TYPE_12__** %170, align 8
  %172 = call i64 @LocalFree(%struct.TYPE_12__* %171)
  %173 = inttoptr i64 %172 to %struct.TYPE_12__*
  %174 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %5, align 8
  store %struct.TYPE_12__* %173, %struct.TYPE_12__** %174, align 8
  br label %175

175:                                              ; preds = %169, %157
  br label %176

176:                                              ; preds = %175, %88
  br label %177

177:                                              ; preds = %176, %84, %80
  br label %178

178:                                              ; preds = %177, %75
  %179 = load i64, i64* %14, align 8
  %180 = call i32 @CloseHandle(i64 %179)
  br label %183

181:                                              ; preds = %62
  %182 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([26 x i32]* @.str.2 to i8*))
  br label %183

183:                                              ; preds = %181, %178
  br label %184

184:                                              ; preds = %183, %54
  %185 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %186 = call i64 @LocalFree(%struct.TYPE_12__* %185)
  br label %187

187:                                              ; preds = %184, %47
  br label %188

188:                                              ; preds = %187, %43, %39
  br label %189

189:                                              ; preds = %188, %33
  br label %190

190:                                              ; preds = %189
  %191 = load i64, i64* %10, align 8
  %192 = add nsw i64 %191, 1
  store i64 %192, i64* %10, align 8
  br label %30

193:                                              ; preds = %30
  %194 = load i64, i64* %7, align 8
  %195 = call i32 @SetupDiDestroyDeviceInfoList(i64 %194)
  br label %198

196:                                              ; preds = %2
  %197 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([20 x i32]* @.str.3 to i8*))
  br label %198

198:                                              ; preds = %196, %193
  %199 = load i64*, i64** %4, align 8
  %200 = icmp ne i64* %199, null
  br i1 %200, label %201, label %204

201:                                              ; preds = %198
  %202 = load i64, i64* %12, align 8
  %203 = load i64*, i64** %4, align 8
  store i64 %202, i64* %203, align 8
  br label %204

204:                                              ; preds = %201, %198
  %205 = load i64, i64* %12, align 8
  %206 = icmp sgt i64 %205, 0
  %207 = zext i1 %206 to i32
  ret i32 %207
}

declare dso_local i32 @HidD_GetHidGuid(i32*) #1

declare dso_local i64 @SetupDiGetClassDevs(i32*, i32*, i32*, i32) #1

declare dso_local i32 @SetupDiEnumDeviceInterfaces(i64, i32*, i32*, i64, %struct.TYPE_11__*) #1

declare dso_local i64 @SetupDiGetDeviceInterfaceDetail(i64, %struct.TYPE_11__*, %struct.TYPE_12__*, i64, i64*, i32*) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i64 @LocalAlloc(i32, i32) #1

declare dso_local i8* @CreateFile(i32, i32, i32, i32*, i32, i32, i32*) #1

declare dso_local i64 @HidD_GetAttributes(i64, %struct.TYPE_13__*) #1

declare dso_local i64 @HidD_GetPreparsedData(i64, i32*) #1

declare dso_local i32 @HidP_GetCaps(i32, i32*) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @PRINT_ERROR(i8*, i32) #1

declare dso_local i32 @HidD_FreePreparsedData(i32) #1

declare dso_local i32 @_wcsdup(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @PRINT_ERROR_AUTO(i8*) #1

declare dso_local i64 @LocalFree(%struct.TYPE_12__*) #1

declare dso_local i32 @CloseHandle(i64) #1

declare dso_local i32 @SetupDiDestroyDeviceInfoList(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
