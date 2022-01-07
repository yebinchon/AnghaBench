; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/lib/fs/extr_fat.c_FatReadFile.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/lib/fs/extr_fat.c_FatReadFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }

@.str = private unnamed_addr constant [46 x i8] c"FatReadFile() BytesToRead = %d Buffer = 0x%x\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"FatReadFile() FatFileInfo->CurrentCluster = 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Going to read: %u clusters\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i64, i64*, i64)* @FatReadFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @FatReadFile(%struct.TYPE_8__* %0, i64 %1, i64* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64* %2, i64** %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 3
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  store %struct.TYPE_7__* %19, %struct.TYPE_7__** %10, align 8
  %20 = load i64, i64* %7, align 8
  %21 = trunc i64 %20 to i32
  %22 = load i64, i64* %9, align 8
  %23 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %21, i64 %22)
  %24 = load i64*, i64** %8, align 8
  %25 = icmp ne i64* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %4
  %27 = load i64*, i64** %8, align 8
  store i64 0, i64* %27, align 8
  br label %28

28:                                               ; preds = %26, %4
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp sge i64 %31, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = load i32, i32* @TRUE, align 4
  store i32 %37, i32* %5, align 4
  br label %278

38:                                               ; preds = %28
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %7, align 8
  %43 = add nsw i64 %41, %42
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp sgt i64 %43, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %38
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = sub nsw i64 %51, %54
  store i64 %55, i64* %7, align 8
  br label %56

56:                                               ; preds = %48, %38
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = mul nsw i32 %59, %62
  store i32 %63, i32* %12, align 4
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i32, i32* %12, align 4
  %68 = sext i32 %67 to i64
  %69 = srem i64 %66, %68
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %154

71:                                               ; preds = %56
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i32, i32* %12, align 4
  %76 = sext i32 %75 to i64
  %77 = srem i64 %74, %76
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %13, align 4
  %79 = load i64, i64* %7, align 8
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* %13, align 4
  %82 = sub nsw i32 %80, %81
  %83 = call i32 @min(i64 %79, i32 %82)
  store i32 %83, i32* %14, align 4
  %84 = load i32, i32* %14, align 4
  %85 = load i32, i32* %12, align 4
  %86 = icmp sle i32 %84, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %71
  %88 = load i32, i32* %14, align 4
  %89 = icmp sgt i32 %88, 0
  br label %90

90:                                               ; preds = %87, %71
  %91 = phi i1 [ false, %71 ], [ %89, %87 ]
  %92 = zext i1 %91 to i32
  %93 = call i32 @ASSERT(i32 %92)
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* %13, align 4
  %99 = load i32, i32* %14, align 4
  %100 = sext i32 %99 to i64
  %101 = load i64, i64* %9, align 8
  %102 = call i32 @FatReadPartialCluster(%struct.TYPE_7__* %94, i32 %97, i32 %98, i64 %100, i64 %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %106, label %104

104:                                              ; preds = %90
  %105 = load i32, i32* @FALSE, align 4
  store i32 %105, i32* %5, align 4
  br label %278

106:                                              ; preds = %90
  %107 = load i64*, i64** %8, align 8
  %108 = icmp ne i64* %107, null
  br i1 %108, label %109, label %115

109:                                              ; preds = %106
  %110 = load i32, i32* %14, align 4
  %111 = sext i32 %110 to i64
  %112 = load i64*, i64** %8, align 8
  %113 = load i64, i64* %112, align 8
  %114 = add nsw i64 %113, %111
  store i64 %114, i64* %112, align 8
  br label %115

115:                                              ; preds = %109, %106
  %116 = load i32, i32* %14, align 4
  %117 = sext i32 %116 to i64
  %118 = load i64, i64* %7, align 8
  %119 = sub nsw i64 %118, %117
  store i64 %119, i64* %7, align 8
  %120 = load i32, i32* %14, align 4
  %121 = sext i32 %120 to i64
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = add nsw i64 %124, %121
  store i64 %125, i64* %123, align 8
  %126 = load i64, i64* %9, align 8
  %127 = trunc i64 %126 to i32
  %128 = load i32, i32* %14, align 4
  %129 = add nsw i32 %127, %128
  %130 = sext i32 %129 to i64
  store i64 %130, i64* %9, align 8
  %131 = load i32, i32* %14, align 4
  %132 = load i32, i32* %13, align 4
  %133 = add nsw i32 %131, %132
  %134 = load i32, i32* %12, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %136, label %153

136:                                              ; preds = %115
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @FatGetFatEntry(%struct.TYPE_7__* %137, i32 %140, i32* %11)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %145, label %143

143:                                              ; preds = %136
  %144 = load i32, i32* @FALSE, align 4
  store i32 %144, i32* %5, align 4
  br label %278

145:                                              ; preds = %136
  %146 = load i32, i32* %11, align 4
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 2
  store i32 %146, i32* %148, align 8
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %151)
  br label %153

153:                                              ; preds = %145, %115
  br label %154

154:                                              ; preds = %153, %56
  %155 = load i64, i64* %7, align 8
  %156 = icmp sgt i64 %155, 0
  br i1 %156, label %157, label %232

157:                                              ; preds = %154
  %158 = load i64, i64* %7, align 8
  %159 = load i32, i32* %12, align 4
  %160 = sext i32 %159 to i64
  %161 = sdiv i64 %158, %160
  %162 = trunc i64 %161 to i32
  store i32 %162, i32* %15, align 4
  %163 = load i32, i32* %15, align 4
  %164 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %163)
  %165 = load i32, i32* %15, align 4
  %166 = icmp sgt i32 %165, 0
  br i1 %166, label %167, label %231

167:                                              ; preds = %157
  %168 = load i32, i32* %15, align 4
  %169 = load i32, i32* %12, align 4
  %170 = mul nsw i32 %168, %169
  store i32 %170, i32* %16, align 4
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @FAT_IS_END_CLUSTER(i32 %173)
  %175 = icmp ne i32 %174, 0
  %176 = xor i1 %175, true
  %177 = zext i1 %176 to i32
  %178 = call i32 @ASSERT(i32 %177)
  %179 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %180 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 8
  %183 = load i32, i32* %15, align 4
  %184 = load i64, i64* %9, align 8
  %185 = call i32 @FatReadClusterChain(%struct.TYPE_7__* %179, i32 %182, i32 %183, i64 %184, i32* %11)
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %189, label %187

187:                                              ; preds = %167
  %188 = load i32, i32* @FALSE, align 4
  store i32 %188, i32* %5, align 4
  br label %278

189:                                              ; preds = %167
  %190 = load i64*, i64** %8, align 8
  %191 = icmp ne i64* %190, null
  br i1 %191, label %192, label %198

192:                                              ; preds = %189
  %193 = load i32, i32* %16, align 4
  %194 = sext i32 %193 to i64
  %195 = load i64*, i64** %8, align 8
  %196 = load i64, i64* %195, align 8
  %197 = add nsw i64 %196, %194
  store i64 %197, i64* %195, align 8
  br label %198

198:                                              ; preds = %192, %189
  %199 = load i32, i32* %16, align 4
  %200 = sext i32 %199 to i64
  %201 = load i64, i64* %7, align 8
  %202 = sub nsw i64 %201, %200
  store i64 %202, i64* %7, align 8
  %203 = load i64, i64* %9, align 8
  %204 = trunc i64 %203 to i32
  %205 = load i32, i32* %16, align 4
  %206 = add nsw i32 %204, %205
  %207 = sext i32 %206 to i64
  store i64 %207, i64* %9, align 8
  %208 = load i32, i32* %11, align 4
  %209 = call i32 @FAT_IS_END_CLUSTER(i32 %208)
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %214

211:                                              ; preds = %198
  %212 = load i64, i64* %7, align 8
  %213 = icmp eq i64 %212, 0
  br label %214

214:                                              ; preds = %211, %198
  %215 = phi i1 [ true, %198 ], [ %213, %211 ]
  %216 = zext i1 %215 to i32
  %217 = call i32 @ASSERT(i32 %216)
  %218 = load i32, i32* %16, align 4
  %219 = sext i32 %218 to i64
  %220 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %221 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = add nsw i64 %222, %219
  store i64 %223, i64* %221, align 8
  %224 = load i32, i32* %11, align 4
  %225 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %226 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %225, i32 0, i32 2
  store i32 %224, i32* %226, align 8
  %227 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %228 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %227, i32 0, i32 2
  %229 = load i32, i32* %228, align 8
  %230 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %229)
  br label %231

231:                                              ; preds = %214, %157
  br label %232

232:                                              ; preds = %231, %154
  %233 = load i64, i64* %7, align 8
  %234 = icmp sgt i64 %233, 0
  br i1 %234, label %235, label %276

235:                                              ; preds = %232
  %236 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %237 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 8
  %239 = call i32 @FAT_IS_END_CLUSTER(i32 %238)
  %240 = icmp ne i32 %239, 0
  %241 = xor i1 %240, true
  %242 = zext i1 %241 to i32
  %243 = call i32 @ASSERT(i32 %242)
  %244 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %245 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %246 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %245, i32 0, i32 2
  %247 = load i32, i32* %246, align 8
  %248 = load i64, i64* %7, align 8
  %249 = load i64, i64* %9, align 8
  %250 = call i32 @FatReadPartialCluster(%struct.TYPE_7__* %244, i32 %247, i32 0, i64 %248, i64 %249)
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %254, label %252

252:                                              ; preds = %235
  %253 = load i32, i32* @FALSE, align 4
  store i32 %253, i32* %5, align 4
  br label %278

254:                                              ; preds = %235
  %255 = load i64*, i64** %8, align 8
  %256 = icmp ne i64* %255, null
  br i1 %256, label %257, label %262

257:                                              ; preds = %254
  %258 = load i64, i64* %7, align 8
  %259 = load i64*, i64** %8, align 8
  %260 = load i64, i64* %259, align 8
  %261 = add nsw i64 %260, %258
  store i64 %261, i64* %259, align 8
  br label %262

262:                                              ; preds = %257, %254
  %263 = load i64, i64* %7, align 8
  %264 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %265 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %264, i32 0, i32 0
  %266 = load i64, i64* %265, align 8
  %267 = add nsw i64 %266, %263
  store i64 %267, i64* %265, align 8
  %268 = load i64, i64* %7, align 8
  %269 = load i64, i64* %7, align 8
  %270 = sub nsw i64 %269, %268
  store i64 %270, i64* %7, align 8
  %271 = load i64, i64* %9, align 8
  %272 = trunc i64 %271 to i32
  %273 = sext i32 %272 to i64
  %274 = load i64, i64* %7, align 8
  %275 = add nsw i64 %273, %274
  store i64 %275, i64* %9, align 8
  br label %276

276:                                              ; preds = %262, %232
  %277 = load i32, i32* @TRUE, align 4
  store i32 %277, i32* %5, align 4
  br label %278

278:                                              ; preds = %276, %252, %187, %143, %104, %36
  %279 = load i32, i32* %5, align 4
  ret i32 %279
}

declare dso_local i32 @TRACE(i8*, i32, ...) #1

declare dso_local i32 @min(i64, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @FatReadPartialCluster(%struct.TYPE_7__*, i32, i32, i64, i64) #1

declare dso_local i32 @FatGetFatEntry(%struct.TYPE_7__*, i32, i32*) #1

declare dso_local i32 @FAT_IS_END_CLUSTER(i32) #1

declare dso_local i32 @FatReadClusterChain(%struct.TYPE_7__*, i32, i32, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
