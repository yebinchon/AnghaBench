; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/itss/extr_chm_lib.c__chm_decompress_block.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/itss/extr_chm_lib.c__chm_decompress_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chmFile = type { i64, i64, i32, i32*, %struct.TYPE_2__, i32, i32** }
%struct.TYPE_2__ = type { i64 }

@DECR_OK = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.chmFile*, i64, i32**)* @_chm_decompress_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @_chm_decompress_block(%struct.chmFile* %0, i64 %1, i32** %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.chmFile*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.chmFile* %0, %struct.chmFile** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32** %2, i32*** %7, align 8
  %16 = call i32 (...) @GetProcessHeap()
  %17 = load %struct.chmFile*, %struct.chmFile** %5, align 8
  %18 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %17, i32 0, i32 4
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = trunc i64 %20 to i32
  %22 = add i32 %21, 6144
  %23 = call i8* @HeapAlloc(i32 %16, i32 0, i32 %22)
  %24 = bitcast i8* %23 to i32*
  store i32* %24, i32** %8, align 8
  %25 = load i64, i64* %6, align 8
  %26 = load %struct.chmFile*, %struct.chmFile** %5, align 8
  %27 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = srem i64 %25, %28
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %13, align 4
  %31 = load i64, i64* %6, align 8
  %32 = load i32, i32* %13, align 4
  %33 = sext i32 %32 to i64
  %34 = sub nsw i64 %31, %33
  %35 = load %struct.chmFile*, %struct.chmFile** %5, align 8
  %36 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp sle i64 %34, %37
  br i1 %38, label %39, label %52

39:                                               ; preds = %3
  %40 = load i64, i64* %6, align 8
  %41 = load %struct.chmFile*, %struct.chmFile** %5, align 8
  %42 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp sge i64 %40, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %39
  %46 = load i64, i64* %6, align 8
  %47 = load %struct.chmFile*, %struct.chmFile** %5, align 8
  %48 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = sub nsw i64 %46, %49
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %13, align 4
  br label %52

52:                                               ; preds = %45, %39, %3
  %53 = load i32, i32* %13, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %172

55:                                               ; preds = %52
  %56 = load i32, i32* %13, align 4
  store i32 %56, i32* %14, align 4
  br label %57

57:                                               ; preds = %168, %55
  %58 = load i32, i32* %14, align 4
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %171

60:                                               ; preds = %57
  %61 = load i64, i64* %6, align 8
  %62 = load i32, i32* %14, align 4
  %63 = sext i32 %62 to i64
  %64 = sub nsw i64 %61, %63
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %15, align 4
  %66 = load %struct.chmFile*, %struct.chmFile** %5, align 8
  %67 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i32, i32* %15, align 4
  %70 = sext i32 %69 to i64
  %71 = icmp ne i64 %68, %70
  br i1 %71, label %72, label %167

72:                                               ; preds = %60
  %73 = load i32, i32* %15, align 4
  %74 = sext i32 %73 to i64
  %75 = load %struct.chmFile*, %struct.chmFile** %5, align 8
  %76 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = srem i64 %74, %77
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %72
  %81 = load %struct.chmFile*, %struct.chmFile** %5, align 8
  %82 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @LZXreset(i32 %83)
  br label %85

85:                                               ; preds = %80, %72
  %86 = load i32, i32* %15, align 4
  %87 = load %struct.chmFile*, %struct.chmFile** %5, align 8
  %88 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = srem i32 %86, %89
  store i32 %90, i32* %11, align 4
  %91 = load i32, i32* %15, align 4
  %92 = load %struct.chmFile*, %struct.chmFile** %5, align 8
  %93 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %92, i32 0, i32 3
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %11, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  store i32 %91, i32* %97, align 4
  %98 = load %struct.chmFile*, %struct.chmFile** %5, align 8
  %99 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %98, i32 0, i32 6
  %100 = load i32**, i32*** %99, align 8
  %101 = load i32, i32* %11, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32*, i32** %100, i64 %102
  %104 = load i32*, i32** %103, align 8
  %105 = icmp ne i32* %104, null
  br i1 %105, label %121, label %106

106:                                              ; preds = %85
  %107 = call i32 (...) @GetProcessHeap()
  %108 = load %struct.chmFile*, %struct.chmFile** %5, align 8
  %109 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %108, i32 0, i32 4
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = trunc i64 %111 to i32
  %113 = call i8* @HeapAlloc(i32 %107, i32 0, i32 %112)
  %114 = bitcast i8* %113 to i32*
  %115 = load %struct.chmFile*, %struct.chmFile** %5, align 8
  %116 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %115, i32 0, i32 6
  %117 = load i32**, i32*** %116, align 8
  %118 = load i32, i32* %11, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32*, i32** %117, i64 %119
  store i32* %114, i32** %120, align 8
  br label %121

121:                                              ; preds = %106, %85
  %122 = load %struct.chmFile*, %struct.chmFile** %5, align 8
  %123 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %122, i32 0, i32 6
  %124 = load i32**, i32*** %123, align 8
  %125 = load i32, i32* %11, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32*, i32** %124, i64 %126
  %128 = load i32*, i32** %127, align 8
  store i32* %128, i32** %12, align 8
  %129 = load %struct.chmFile*, %struct.chmFile** %5, align 8
  %130 = load i32, i32* %15, align 4
  %131 = sext i32 %130 to i64
  %132 = call i32 @_chm_get_cmpblock_bounds(%struct.chmFile* %129, i64 %131, i64* %9, i64* %10)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %158

134:                                              ; preds = %121
  %135 = load %struct.chmFile*, %struct.chmFile** %5, align 8
  %136 = load i32*, i32** %8, align 8
  %137 = load i64, i64* %9, align 8
  %138 = load i64, i64* %10, align 8
  %139 = call i64 @_chm_fetch_bytes(%struct.chmFile* %135, i32* %136, i64 %137, i64 %138)
  %140 = load i64, i64* %10, align 8
  %141 = icmp ne i64 %139, %140
  br i1 %141, label %158, label %142

142:                                              ; preds = %134
  %143 = load %struct.chmFile*, %struct.chmFile** %5, align 8
  %144 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %143, i32 0, i32 5
  %145 = load i32, i32* %144, align 8
  %146 = load i32*, i32** %8, align 8
  %147 = load i32*, i32** %12, align 8
  %148 = load i64, i64* %10, align 8
  %149 = trunc i64 %148 to i32
  %150 = load %struct.chmFile*, %struct.chmFile** %5, align 8
  %151 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %150, i32 0, i32 4
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = trunc i64 %153 to i32
  %155 = call i64 @LZXdecompress(i32 %145, i32* %146, i32* %147, i32 %149, i32 %154)
  %156 = load i64, i64* @DECR_OK, align 8
  %157 = icmp ne i64 %155, %156
  br i1 %157, label %158, label %162

158:                                              ; preds = %142, %134, %121
  %159 = call i32 (...) @GetProcessHeap()
  %160 = load i32*, i32** %8, align 8
  %161 = call i32 @HeapFree(i32 %159, i32 0, i32* %160)
  store i64 0, i64* %4, align 8
  br label %279

162:                                              ; preds = %142
  %163 = load i32, i32* %15, align 4
  %164 = sext i32 %163 to i64
  %165 = load %struct.chmFile*, %struct.chmFile** %5, align 8
  %166 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %165, i32 0, i32 1
  store i64 %164, i64* %166, align 8
  br label %167

167:                                              ; preds = %162, %60
  br label %168

168:                                              ; preds = %167
  %169 = load i32, i32* %14, align 4
  %170 = add nsw i32 %169, -1
  store i32 %170, i32* %14, align 4
  br label %57

171:                                              ; preds = %57
  br label %185

172:                                              ; preds = %52
  %173 = load i64, i64* %6, align 8
  %174 = load %struct.chmFile*, %struct.chmFile** %5, align 8
  %175 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = srem i64 %173, %176
  %178 = icmp eq i64 %177, 0
  br i1 %178, label %179, label %184

179:                                              ; preds = %172
  %180 = load %struct.chmFile*, %struct.chmFile** %5, align 8
  %181 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %180, i32 0, i32 5
  %182 = load i32, i32* %181, align 8
  %183 = call i32 @LZXreset(i32 %182)
  br label %184

184:                                              ; preds = %179, %172
  br label %185

185:                                              ; preds = %184, %171
  %186 = load i64, i64* %6, align 8
  %187 = load %struct.chmFile*, %struct.chmFile** %5, align 8
  %188 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 8
  %190 = sext i32 %189 to i64
  %191 = srem i64 %186, %190
  %192 = trunc i64 %191 to i32
  store i32 %192, i32* %11, align 4
  %193 = load i64, i64* %6, align 8
  %194 = trunc i64 %193 to i32
  %195 = load %struct.chmFile*, %struct.chmFile** %5, align 8
  %196 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %195, i32 0, i32 3
  %197 = load i32*, i32** %196, align 8
  %198 = load i32, i32* %11, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %197, i64 %199
  store i32 %194, i32* %200, align 4
  %201 = load %struct.chmFile*, %struct.chmFile** %5, align 8
  %202 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %201, i32 0, i32 6
  %203 = load i32**, i32*** %202, align 8
  %204 = load i32, i32* %11, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32*, i32** %203, i64 %205
  %207 = load i32*, i32** %206, align 8
  %208 = icmp ne i32* %207, null
  br i1 %208, label %224, label %209

209:                                              ; preds = %185
  %210 = call i32 (...) @GetProcessHeap()
  %211 = load %struct.chmFile*, %struct.chmFile** %5, align 8
  %212 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %211, i32 0, i32 4
  %213 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = trunc i64 %214 to i32
  %216 = call i8* @HeapAlloc(i32 %210, i32 0, i32 %215)
  %217 = bitcast i8* %216 to i32*
  %218 = load %struct.chmFile*, %struct.chmFile** %5, align 8
  %219 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %218, i32 0, i32 6
  %220 = load i32**, i32*** %219, align 8
  %221 = load i32, i32* %11, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32*, i32** %220, i64 %222
  store i32* %217, i32** %223, align 8
  br label %224

224:                                              ; preds = %209, %185
  %225 = load %struct.chmFile*, %struct.chmFile** %5, align 8
  %226 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %225, i32 0, i32 6
  %227 = load i32**, i32*** %226, align 8
  %228 = load i32, i32* %11, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i32*, i32** %227, i64 %229
  %231 = load i32*, i32** %230, align 8
  store i32* %231, i32** %12, align 8
  %232 = load i32*, i32** %12, align 8
  %233 = load i32**, i32*** %7, align 8
  store i32* %232, i32** %233, align 8
  %234 = load %struct.chmFile*, %struct.chmFile** %5, align 8
  %235 = load i64, i64* %6, align 8
  %236 = call i32 @_chm_get_cmpblock_bounds(%struct.chmFile* %234, i64 %235, i64* %9, i64* %10)
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %262

238:                                              ; preds = %224
  %239 = load %struct.chmFile*, %struct.chmFile** %5, align 8
  %240 = load i32*, i32** %8, align 8
  %241 = load i64, i64* %9, align 8
  %242 = load i64, i64* %10, align 8
  %243 = call i64 @_chm_fetch_bytes(%struct.chmFile* %239, i32* %240, i64 %241, i64 %242)
  %244 = load i64, i64* %10, align 8
  %245 = icmp ne i64 %243, %244
  br i1 %245, label %262, label %246

246:                                              ; preds = %238
  %247 = load %struct.chmFile*, %struct.chmFile** %5, align 8
  %248 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %247, i32 0, i32 5
  %249 = load i32, i32* %248, align 8
  %250 = load i32*, i32** %8, align 8
  %251 = load i32*, i32** %12, align 8
  %252 = load i64, i64* %10, align 8
  %253 = trunc i64 %252 to i32
  %254 = load %struct.chmFile*, %struct.chmFile** %5, align 8
  %255 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %254, i32 0, i32 4
  %256 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %255, i32 0, i32 0
  %257 = load i64, i64* %256, align 8
  %258 = trunc i64 %257 to i32
  %259 = call i64 @LZXdecompress(i32 %249, i32* %250, i32* %251, i32 %253, i32 %258)
  %260 = load i64, i64* @DECR_OK, align 8
  %261 = icmp ne i64 %259, %260
  br i1 %261, label %262, label %266

262:                                              ; preds = %246, %238, %224
  %263 = call i32 (...) @GetProcessHeap()
  %264 = load i32*, i32** %8, align 8
  %265 = call i32 @HeapFree(i32 %263, i32 0, i32* %264)
  store i64 0, i64* %4, align 8
  br label %279

266:                                              ; preds = %246
  %267 = load i64, i64* %6, align 8
  %268 = trunc i64 %267 to i32
  %269 = sext i32 %268 to i64
  %270 = load %struct.chmFile*, %struct.chmFile** %5, align 8
  %271 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %270, i32 0, i32 1
  store i64 %269, i64* %271, align 8
  %272 = call i32 (...) @GetProcessHeap()
  %273 = load i32*, i32** %8, align 8
  %274 = call i32 @HeapFree(i32 %272, i32 0, i32* %273)
  %275 = load %struct.chmFile*, %struct.chmFile** %5, align 8
  %276 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %275, i32 0, i32 4
  %277 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %276, i32 0, i32 0
  %278 = load i64, i64* %277, align 8
  store i64 %278, i64* %4, align 8
  br label %279

279:                                              ; preds = %266, %262, %158
  %280 = load i64, i64* %4, align 8
  ret i64 %280
}

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @LZXreset(i32) #1

declare dso_local i32 @_chm_get_cmpblock_bounds(%struct.chmFile*, i64, i64*, i64*) #1

declare dso_local i64 @_chm_fetch_bytes(%struct.chmFile*, i32*, i64, i64) #1

declare dso_local i64 @LZXdecompress(i32, i32*, i32*, i32, i32) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
