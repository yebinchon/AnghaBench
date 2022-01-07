; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mscutils/servman/extr_start.c_DoStartService.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mscutils/servman/extr_start.c_DoStartService.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i32 }

@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@LMEM_FIXED = common dso_local global i32 0, align 4
@SC_MANAGER_CONNECT = common dso_local global i32 0, align 4
@SERVICE_START = common dso_local global i32 0, align 4
@SERVICE_QUERY_STATUS = common dso_local global i32 0, align 4
@ERROR_SERVICE_ALREADY_RUNNING = common dso_local global i64 0, align 8
@DEFAULT_STEP = common dso_local global i32 0, align 4
@SC_STATUS_PROCESS_INFO = common dso_local global i32 0, align 4
@MAX_WAIT_TIME = common dso_local global i32 0, align 4
@SERVICE_RUNNING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @DoStartService(i64* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_2__, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64**, align 8
  %21 = alloca i32, align 4
  store i64* %0, i64** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  store i32 0, i32* %11, align 4
  %22 = load i64, i64* @FALSE, align 8
  store i64 %22, i64* %16, align 8
  %23 = load i64, i64* @TRUE, align 8
  store i64 %23, i64* %17, align 8
  store i32 0, i32* %19, align 4
  store i64** null, i64*** %20, align 8
  %24 = load i64*, i64** %7, align 8
  %25 = icmp ne i64* %24, null
  br i1 %25, label %26, label %95

26:                                               ; preds = %3
  %27 = load i64*, i64** %7, align 8
  store i64* %27, i64** %18, align 8
  br label %28

28:                                               ; preds = %48, %26
  %29 = load i64*, i64** %18, align 8
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %51

32:                                               ; preds = %28
  %33 = load i64*, i64** %18, align 8
  %34 = load i64, i64* %33, align 8
  %35 = call i64 @iswspace(i64 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i64, i64* @TRUE, align 8
  store i64 %38, i64* %17, align 8
  br label %48

39:                                               ; preds = %32
  %40 = load i64, i64* %17, align 8
  %41 = load i64, i64* @FALSE, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load i32, i32* %19, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %19, align 4
  %46 = load i64, i64* @FALSE, align 8
  store i64 %46, i64* %17, align 8
  br label %47

47:                                               ; preds = %43, %39
  br label %48

48:                                               ; preds = %47, %37
  %49 = load i64*, i64** %18, align 8
  %50 = getelementptr inbounds i64, i64* %49, i32 1
  store i64* %50, i64** %18, align 8
  br label %28

51:                                               ; preds = %28
  %52 = load i32, i32* @LMEM_FIXED, align 4
  %53 = load i32, i32* %19, align 4
  %54 = sext i32 %53 to i64
  %55 = mul i64 %54, 8
  %56 = trunc i64 %55 to i32
  %57 = call i64** @LocalAlloc(i32 %52, i32 %56)
  store i64** %57, i64*** %20, align 8
  %58 = load i64**, i64*** %20, align 8
  %59 = icmp ne i64** %58, null
  br i1 %59, label %62, label %60

60:                                               ; preds = %51
  %61 = load i64, i64* @FALSE, align 8
  store i64 %61, i64* %4, align 8
  br label %248

62:                                               ; preds = %51
  store i32 0, i32* %19, align 4
  %63 = load i64, i64* @TRUE, align 8
  store i64 %63, i64* %17, align 8
  %64 = load i64*, i64** %7, align 8
  store i64* %64, i64** %18, align 8
  br label %65

65:                                               ; preds = %91, %62
  %66 = load i64*, i64** %18, align 8
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %94

69:                                               ; preds = %65
  %70 = load i64*, i64** %18, align 8
  %71 = load i64, i64* %70, align 8
  %72 = call i64 @iswspace(i64 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load i64*, i64** %18, align 8
  store i64 0, i64* %75, align 8
  %76 = load i64, i64* @TRUE, align 8
  store i64 %76, i64* %17, align 8
  br label %91

77:                                               ; preds = %69
  %78 = load i64, i64* %17, align 8
  %79 = load i64, i64* @FALSE, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %90

81:                                               ; preds = %77
  %82 = load i64*, i64** %18, align 8
  %83 = load i64**, i64*** %20, align 8
  %84 = load i32, i32* %19, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i64*, i64** %83, i64 %85
  store i64* %82, i64** %86, align 8
  %87 = load i32, i32* %19, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %19, align 4
  %89 = load i64, i64* @FALSE, align 8
  store i64 %89, i64* %17, align 8
  br label %90

90:                                               ; preds = %81, %77
  br label %91

91:                                               ; preds = %90, %74
  %92 = load i64*, i64** %18, align 8
  %93 = getelementptr inbounds i64, i64* %92, i32 1
  store i64* %93, i64** %18, align 8
  br label %65

94:                                               ; preds = %65
  br label %95

95:                                               ; preds = %94, %3
  %96 = load i32, i32* @SC_MANAGER_CONNECT, align 4
  %97 = call i32 @OpenSCManagerW(i32* null, i32* null, i32 %96)
  store i32 %97, i32* %8, align 4
  %98 = load i32, i32* %8, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %109, label %100

100:                                              ; preds = %95
  %101 = load i64**, i64*** %20, align 8
  %102 = icmp ne i64** %101, null
  br i1 %102, label %103, label %107

103:                                              ; preds = %100
  %104 = load i64**, i64*** %20, align 8
  %105 = ptrtoint i64** %104 to i32
  %106 = call i32 @LocalFree(i32 %105)
  br label %107

107:                                              ; preds = %103, %100
  %108 = load i64, i64* @FALSE, align 8
  store i64 %108, i64* %4, align 8
  br label %248

109:                                              ; preds = %95
  %110 = load i32, i32* %8, align 4
  %111 = load i64*, i64** %5, align 8
  %112 = load i32, i32* @SERVICE_START, align 4
  %113 = load i32, i32* @SERVICE_QUERY_STATUS, align 4
  %114 = or i32 %112, %113
  %115 = call i32 @OpenServiceW(i32 %110, i64* %111, i32 %114)
  store i32 %115, i32* %9, align 4
  %116 = load i32, i32* %9, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %129, label %118

118:                                              ; preds = %109
  %119 = load i32, i32* %8, align 4
  %120 = call i32 @CloseServiceHandle(i32 %119)
  %121 = load i64**, i64*** %20, align 8
  %122 = icmp ne i64** %121, null
  br i1 %122, label %123, label %127

123:                                              ; preds = %118
  %124 = load i64**, i64*** %20, align 8
  %125 = ptrtoint i64** %124 to i32
  %126 = call i32 @LocalFree(i32 %125)
  br label %127

127:                                              ; preds = %123, %118
  %128 = load i64, i64* @FALSE, align 8
  store i64 %128, i64* %4, align 8
  br label %248

129:                                              ; preds = %109
  %130 = load i32, i32* %9, align 4
  %131 = load i32, i32* %19, align 4
  %132 = load i64**, i64*** %20, align 8
  %133 = call i64 @StartServiceW(i32 %130, i32 %131, i64** %132)
  store i64 %133, i64* %16, align 8
  %134 = load i64, i64* %16, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %142, label %136

136:                                              ; preds = %129
  %137 = call i64 (...) @GetLastError()
  %138 = load i64, i64* @ERROR_SERVICE_ALREADY_RUNNING, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %142

140:                                              ; preds = %136
  %141 = load i64, i64* @TRUE, align 8
  store i64 %141, i64* %16, align 8
  br label %235

142:                                              ; preds = %136, %129
  %143 = load i64, i64* %16, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %234

145:                                              ; preds = %142
  %146 = load i64, i64* %6, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %145
  %149 = load i64, i64* %6, align 8
  %150 = load i32, i32* @DEFAULT_STEP, align 4
  %151 = call i32 @IncrementProgressBar(i64 %149, i32 %150)
  br label %152

152:                                              ; preds = %148, %145
  %153 = load i32, i32* %9, align 4
  %154 = load i32, i32* @SC_STATUS_PROCESS_INFO, align 4
  %155 = ptrtoint %struct.TYPE_2__* %10 to i32
  %156 = call i64 @QueryServiceStatusEx(i32 %153, i32 %154, i32 %155, i32 24, i32* %11)
  store i64 %156, i64* %16, align 8
  %157 = load i64, i64* %16, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %226

159:                                              ; preds = %152
  %160 = load i64, i64* @FALSE, align 8
  store i64 %160, i64* %16, align 8
  %161 = load i32, i32* @MAX_WAIT_TIME, align 4
  store i32 %161, i32* %15, align 4
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  store i32 %163, i32* %13, align 4
  %164 = call i32 (...) @GetTickCount()
  store i32 %164, i32* %12, align 4
  br label %165

165:                                              ; preds = %224, %159
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @SERVICE_RUNNING, align 8
  %169 = icmp ne i64 %167, %168
  br i1 %169, label %170, label %225

170:                                              ; preds = %165
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = sdiv i32 %172, 10
  store i32 %173, i32* %14, align 4
  %174 = load i32, i32* %14, align 4
  %175 = icmp slt i32 %174, 1000
  br i1 %175, label %176, label %177

176:                                              ; preds = %170
  store i32 1000, i32* %14, align 4
  br label %182

177:                                              ; preds = %170
  %178 = load i32, i32* %14, align 4
  %179 = icmp sgt i32 %178, 10000
  br i1 %179, label %180, label %181

180:                                              ; preds = %177
  store i32 10000, i32* %14, align 4
  br label %181

181:                                              ; preds = %180, %177
  br label %182

182:                                              ; preds = %181, %176
  %183 = load i32, i32* %14, align 4
  %184 = sdiv i32 %183, 1000
  store i32 %184, i32* %21, align 4
  br label %185

185:                                              ; preds = %197, %182
  %186 = load i32, i32* %21, align 4
  %187 = icmp sgt i32 %186, 0
  br i1 %187, label %188, label %200

188:                                              ; preds = %185
  %189 = call i32 @Sleep(i32 1000)
  %190 = load i64, i64* %6, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %196

192:                                              ; preds = %188
  %193 = load i64, i64* %6, align 8
  %194 = load i32, i32* @DEFAULT_STEP, align 4
  %195 = call i32 @IncrementProgressBar(i64 %193, i32 %194)
  br label %196

196:                                              ; preds = %192, %188
  br label %197

197:                                              ; preds = %196
  %198 = load i32, i32* %21, align 4
  %199 = add nsw i32 %198, -1
  store i32 %199, i32* %21, align 4
  br label %185

200:                                              ; preds = %185
  %201 = load i32, i32* %9, align 4
  %202 = load i32, i32* @SC_STATUS_PROCESS_INFO, align 4
  %203 = ptrtoint %struct.TYPE_2__* %10 to i32
  %204 = call i64 @QueryServiceStatusEx(i32 %201, i32 %202, i32 %203, i32 24, i32* %11)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %207, label %206

206:                                              ; preds = %200
  br label %225

207:                                              ; preds = %200
  %208 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = load i32, i32* %13, align 4
  %211 = icmp sgt i32 %209, %210
  br i1 %211, label %212, label %216

212:                                              ; preds = %207
  %213 = call i32 (...) @GetTickCount()
  store i32 %213, i32* %12, align 4
  %214 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  store i32 %215, i32* %13, align 4
  br label %224

216:                                              ; preds = %207
  %217 = call i32 (...) @GetTickCount()
  %218 = load i32, i32* %12, align 4
  %219 = load i32, i32* %15, align 4
  %220 = add nsw i32 %218, %219
  %221 = icmp sge i32 %217, %220
  br i1 %221, label %222, label %223

222:                                              ; preds = %216
  br label %225

223:                                              ; preds = %216
  br label %224

224:                                              ; preds = %223, %212
  br label %165

225:                                              ; preds = %222, %206, %165
  br label %226

226:                                              ; preds = %225, %152
  %227 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %228 = load i64, i64* %227, align 8
  %229 = load i64, i64* @SERVICE_RUNNING, align 8
  %230 = icmp eq i64 %228, %229
  br i1 %230, label %231, label %233

231:                                              ; preds = %226
  %232 = load i64, i64* @TRUE, align 8
  store i64 %232, i64* %16, align 8
  br label %233

233:                                              ; preds = %231, %226
  br label %234

234:                                              ; preds = %233, %142
  br label %235

235:                                              ; preds = %234, %140
  %236 = load i32, i32* %9, align 4
  %237 = call i32 @CloseServiceHandle(i32 %236)
  %238 = load i32, i32* %8, align 4
  %239 = call i32 @CloseServiceHandle(i32 %238)
  %240 = load i64**, i64*** %20, align 8
  %241 = icmp ne i64** %240, null
  br i1 %241, label %242, label %246

242:                                              ; preds = %235
  %243 = load i64**, i64*** %20, align 8
  %244 = ptrtoint i64** %243 to i32
  %245 = call i32 @LocalFree(i32 %244)
  br label %246

246:                                              ; preds = %242, %235
  %247 = load i64, i64* %16, align 8
  store i64 %247, i64* %4, align 8
  br label %248

248:                                              ; preds = %246, %127, %107, %60
  %249 = load i64, i64* %4, align 8
  ret i64 %249
}

declare dso_local i64 @iswspace(i64) #1

declare dso_local i64** @LocalAlloc(i32, i32) #1

declare dso_local i32 @OpenSCManagerW(i32*, i32*, i32) #1

declare dso_local i32 @LocalFree(i32) #1

declare dso_local i32 @OpenServiceW(i32, i64*, i32) #1

declare dso_local i32 @CloseServiceHandle(i32) #1

declare dso_local i64 @StartServiceW(i32, i32, i64**) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @IncrementProgressBar(i64, i32) #1

declare dso_local i64 @QueryServiceStatusEx(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @GetTickCount(...) #1

declare dso_local i32 @Sleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
