; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_sr98.c_sr98_devices_get.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_sr98.c_sr98_devices_get.c"
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
@.str.1 = private unnamed_addr constant [21 x i32] [i32 67, i32 114, i32 101, i32 97, i32 116, i32 101, i32 70, i32 105, i32 108, i32 101, i32 32, i32 40, i32 104, i32 68, i32 101, i32 118, i32 105, i32 99, i32 101, i32 41, i32 0], align 4
@.str.2 = private unnamed_addr constant [26 x i32] [i32 67, i32 114, i32 101, i32 97, i32 116, i32 101, i32 70, i32 105, i32 108, i32 101, i32 32, i32 40, i32 100, i32 101, i32 118, i32 105, i32 99, i32 101, i32 72, i32 97, i32 110, i32 100, i32 108, i32 101, i32 41, i32 0], align 4
@.str.3 = private unnamed_addr constant [20 x i32] [i32 83, i32 101, i32 116, i32 117, i32 112, i32 68, i32 105, i32 71, i32 101, i32 116, i32 67, i32 108, i32 97, i32 115, i32 115, i32 68, i32 101, i32 118, i32 115, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sr98_devices_get(%struct.TYPE_12__** %0, i64* %1) #0 {
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
  br i1 %27, label %28, label %195

28:                                               ; preds = %2
  store i64 0, i64* %10, align 8
  %29 = load i32, i32* @TRUE, align 4
  store i32 %29, i32* %9, align 4
  br label %30

30:                                               ; preds = %189, %28
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %192

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  store i32 4, i32* %34, align 4
  %35 = load i64, i64* %7, align 8
  %36 = load i64, i64* %10, align 8
  %37 = call i32 @SetupDiEnumDeviceInterfaces(i64 %35, i32* null, i32* %6, i64 %36, %struct.TYPE_11__* %8)
  store i32 %37, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %188

39:                                               ; preds = %33
  store i64 0, i64* %11, align 8
  %40 = load i64, i64* %7, align 8
  %41 = call i64 @SetupDiGetDeviceInterfaceDetail(i64 %40, %struct.TYPE_11__* %8, %struct.TYPE_12__* null, i64 0, i64* %11, i32* null)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %187, label %43

43:                                               ; preds = %39
  %44 = call i64 (...) @GetLastError()
  %45 = load i64, i64* @ERROR_INSUFFICIENT_BUFFER, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %187

47:                                               ; preds = %43
  %48 = load i32, i32* @LPTR, align 4
  %49 = load i64, i64* %11, align 8
  %50 = trunc i64 %49 to i32
  %51 = call i64 @LocalAlloc(i32 %48, i32 %50)
  %52 = inttoptr i64 %51 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %52, %struct.TYPE_12__** %13, align 8
  %53 = icmp ne %struct.TYPE_12__* %52, null
  br i1 %53, label %54, label %186

54:                                               ; preds = %47
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 0
  store i32 4, i32* %56, align 8
  %57 = load i64, i64* %7, align 8
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %59 = load i64, i64* %11, align 8
  %60 = call i64 @SetupDiGetDeviceInterfaceDetail(i64 %57, %struct.TYPE_11__* %8, %struct.TYPE_12__* %58, i64 %59, i64* %11, i32* null)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %183

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
  br i1 %74, label %75, label %180

75:                                               ; preds = %62
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  store i32 12, i32* %76, align 4
  %77 = load i64, i64* %14, align 8
  %78 = call i64 @HidD_GetAttributes(i64 %77, %struct.TYPE_13__* %15)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %177

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = icmp eq i32 %82, 26248
  br i1 %83, label %84, label %176

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = icmp sge i32 %86, 26704
  br i1 %87, label %88, label %176

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = icmp sle i32 %90, 26728
  br i1 %91, label %92, label %176

92:                                               ; preds = %88
  %93 = load i32, i32* @LPTR, align 4
  %94 = call i64 @LocalAlloc(i32 %93, i32 4)
  %95 = inttoptr i64 %94 to %struct.TYPE_12__*
  %96 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %5, align 8
  store %struct.TYPE_12__* %95, %struct.TYPE_12__** %96, align 8
  %97 = icmp ne %struct.TYPE_12__* %95, null
  br i1 %97, label %98, label %175

98:                                               ; preds = %92
  %99 = load i64, i64* %14, align 8
  %100 = call i64 @HidD_GetPreparsedData(i64 %99, i32* %16)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %117

102:                                              ; preds = %98
  %103 = load i32, i32* %16, align 4
  %104 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %5, align 8
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 6
  %107 = call i32 @HidP_GetCaps(i32 %103, i32* %106)
  store i32 %107, i32* %17, align 4
  %108 = load i32, i32* %17, align 4
  %109 = call i32 @NT_SUCCESS(i32 %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %114, label %111

111:                                              ; preds = %102
  %112 = load i32, i32* %17, align 4
  %113 = call i32 @PRINT_ERROR(i8* bitcast ([21 x i32]* @.str to i8*), i32 %112)
  br label %114

114:                                              ; preds = %111, %102
  %115 = load i32, i32* %16, align 4
  %116 = call i32 @HidD_FreePreparsedData(i32 %115)
  br label %117

117:                                              ; preds = %114, %98
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @_wcsdup(i32 %120)
  %122 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %5, align 8
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 3
  store i32 %121, i32* %124, align 8
  %125 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %5, align 8
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 5
  %128 = bitcast %struct.TYPE_13__* %127 to i8*
  %129 = bitcast %struct.TYPE_13__* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %128, i8* align 4 %129, i64 12, i1 false)
  %130 = load i64, i64* %12, align 8
  %131 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %5, align 8
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 4
  store i64 %130, i64* %133, align 8
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @FILE_READ_DATA, align 4
  %138 = load i32, i32* @FILE_WRITE_DATA, align 4
  %139 = or i32 %137, %138
  %140 = load i32, i32* @FILE_SHARE_READ, align 4
  %141 = load i32, i32* @FILE_SHARE_WRITE, align 4
  %142 = or i32 %140, %141
  %143 = load i32, i32* @OPEN_EXISTING, align 4
  %144 = call i8* @CreateFile(i32 %136, i32 %139, i32 %142, i32* null, i32 %143, i32 0, i32* null)
  %145 = ptrtoint i8* %144 to i64
  %146 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %5, align 8
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 1
  store i64 %145, i64* %148, align 8
  %149 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %5, align 8
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %167

154:                                              ; preds = %117
  %155 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %5, align 8
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %160 = icmp ne i64 %158, %159
  br i1 %160, label %161, label %167

161:                                              ; preds = %154
  %162 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %5, align 8
  %163 = load %struct.TYPE_12__*, %struct.TYPE_12__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i32 0, i32 2
  store %struct.TYPE_12__** %164, %struct.TYPE_12__*** %5, align 8
  %165 = load i64, i64* %12, align 8
  %166 = add nsw i64 %165, 1
  store i64 %166, i64* %12, align 8
  br label %174

167:                                              ; preds = %154, %117
  %168 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([21 x i32]* @.str.1 to i8*))
  %169 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %5, align 8
  %170 = load %struct.TYPE_12__*, %struct.TYPE_12__** %169, align 8
  %171 = call i64 @LocalFree(%struct.TYPE_12__* %170)
  %172 = inttoptr i64 %171 to %struct.TYPE_12__*
  %173 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %5, align 8
  store %struct.TYPE_12__* %172, %struct.TYPE_12__** %173, align 8
  br label %174

174:                                              ; preds = %167, %161
  br label %175

175:                                              ; preds = %174, %92
  br label %176

176:                                              ; preds = %175, %88, %84, %80
  br label %177

177:                                              ; preds = %176, %75
  %178 = load i64, i64* %14, align 8
  %179 = call i32 @CloseHandle(i64 %178)
  br label %182

180:                                              ; preds = %62
  %181 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([26 x i32]* @.str.2 to i8*))
  br label %182

182:                                              ; preds = %180, %177
  br label %183

183:                                              ; preds = %182, %54
  %184 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %185 = call i64 @LocalFree(%struct.TYPE_12__* %184)
  br label %186

186:                                              ; preds = %183, %47
  br label %187

187:                                              ; preds = %186, %43, %39
  br label %188

188:                                              ; preds = %187, %33
  br label %189

189:                                              ; preds = %188
  %190 = load i64, i64* %10, align 8
  %191 = add nsw i64 %190, 1
  store i64 %191, i64* %10, align 8
  br label %30

192:                                              ; preds = %30
  %193 = load i64, i64* %7, align 8
  %194 = call i32 @SetupDiDestroyDeviceInfoList(i64 %193)
  br label %197

195:                                              ; preds = %2
  %196 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([20 x i32]* @.str.3 to i8*))
  br label %197

197:                                              ; preds = %195, %192
  %198 = load i64*, i64** %4, align 8
  %199 = icmp ne i64* %198, null
  br i1 %199, label %200, label %203

200:                                              ; preds = %197
  %201 = load i64, i64* %12, align 8
  %202 = load i64*, i64** %4, align 8
  store i64 %201, i64* %202, align 8
  br label %203

203:                                              ; preds = %200, %197
  %204 = load i64, i64* %12, align 8
  %205 = icmp sgt i64 %204, 0
  %206 = zext i1 %205 to i32
  ret i32 %206
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
