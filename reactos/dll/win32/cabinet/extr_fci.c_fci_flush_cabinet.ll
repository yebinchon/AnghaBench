; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/cabinet/extr_fci.c_fci_flush_cabinet.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/cabinet/extr_fci.c_fci_flush_cabinet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.TYPE_11__, i32, i32, %struct.TYPE_11__*, i32, i32, i32, i64, i64 }
%struct.TYPE_11__ = type { i64, i64, i64, i32, i32, i32 }

@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@FCIERR_NONE = common dso_local global i32 0, align 4
@ERROR_GEN_FAILURE = common dso_local global i32 0, align 4
@CB_MAX_CABINET_NAME = common dso_local global i64 0, align 8
@CB_MAX_DISK_NAME = common dso_local global i64 0, align 8
@ERROR_FUNCTION_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_12__*, i64, i32 (%struct.TYPE_11__*, i32, i32)*, i32)* @fci_flush_cabinet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fci_flush_cabinet(%struct.TYPE_12__* %0, i64 %1, i32 (%struct.TYPE_11__*, i32, i32)* %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32 (%struct.TYPE_11__*, i32, i32)*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 (%struct.TYPE_11__*, i32, i32)* %2, i32 (%struct.TYPE_11__*, i32, i32)** %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 0, i64* %10, align 8
  %12 = load i64, i64* @FALSE, align 8
  store i64 %12, i64* %11, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %4
  %18 = load i64, i64* %7, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = load i64, i64* @TRUE, align 8
  store i64 %21, i64* %11, align 8
  br label %22

22:                                               ; preds = %20, %17, %4
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %24 = load i64, i64* %7, align 8
  %25 = load i32 (%struct.TYPE_11__*, i32, i32)*, i32 (%struct.TYPE_11__*, i32, i32)** %8, align 8
  %26 = load i32, i32* %9, align 4
  %27 = call i64 @fci_flush_folder(%struct.TYPE_12__* %23, i64 %24, i32 (%struct.TYPE_11__*, i32, i32)* %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %22
  %30 = load i64, i64* @FALSE, align 8
  store i64 %30, i64* %5, align 8
  br label %336

31:                                               ; preds = %22
  %32 = load i64, i64* %11, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load i64, i64* @TRUE, align 8
  store i64 %35, i64* %5, align 8
  br label %336

36:                                               ; preds = %31
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 17
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @FALSE, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %62, label %47

47:                                               ; preds = %41, %36
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %68

52:                                               ; preds = %47
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %52
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %57, %52, %41
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %64 = load i32, i32* @FCIERR_NONE, align 4
  %65 = load i32, i32* @ERROR_GEN_FAILURE, align 4
  %66 = call i32 @set_error(%struct.TYPE_12__* %63, i32 %64, i32 %65)
  %67 = load i64, i64* @FALSE, align 8
  store i64 %67, i64* %5, align 8
  br label %336

68:                                               ; preds = %57, %47
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @write_cabinet(%struct.TYPE_12__* %69, i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %68
  %74 = load i64, i64* @FALSE, align 8
  store i64 %74, i64* %5, align 8
  br label %336

75:                                               ; preds = %68
  %76 = load i64, i64* @TRUE, align 8
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 16
  store i64 %76, i64* %78, align 8
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %314

83:                                               ; preds = %75
  %84 = load i64, i64* @FALSE, align 8
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 1
  store i64 %84, i64* %86, align 8
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %102

91:                                               ; preds = %83
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 4
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %91
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %98 = load i32, i32* @FCIERR_NONE, align 4
  %99 = load i32, i32* @ERROR_GEN_FAILURE, align 4
  %100 = call i32 @set_error(%struct.TYPE_12__* %97, i32 %98, i32 %99)
  %101 = load i64, i64* @FALSE, align 8
  store i64 %101, i64* %5, align 8
  br label %336

102:                                              ; preds = %91, %83
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 8
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %129

107:                                              ; preds = %102
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 15
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 9
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 4
  %115 = load i64, i64* @CB_MAX_CABINET_NAME, align 8
  %116 = call i32 @memcpy(i32 %110, i32 %114, i64 %115)
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 14
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 9
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 8
  %124 = load i64, i64* @CB_MAX_DISK_NAME, align 8
  %125 = call i32 @memcpy(i32 %119, i32 %123, i64 %124)
  %126 = load i64, i64* @FALSE, align 8
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 8
  store i64 %126, i64* %128, align 8
  br label %129

129:                                              ; preds = %107, %102
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 9
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 12
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %133, align 8
  %135 = bitcast %struct.TYPE_11__* %131 to i8*
  %136 = bitcast %struct.TYPE_11__* %134 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %135, i8* align 8 %136, i64 40, i1 false)
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %138 = call i64 @get_header_size(%struct.TYPE_12__* %137)
  store i64 %138, i64* %10, align 8
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %150

143:                                              ; preds = %129
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 9
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* %10, align 8
  %149 = add nsw i64 %148, %147
  store i64 %149, i64* %10, align 8
  br label %150

150:                                              ; preds = %143, %129
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 4
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = add nsw i64 %153, %156
  %158 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 5
  %160 = load i64, i64* %159, align 8
  %161 = add nsw i64 %157, %160
  %162 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 3
  %164 = load i64, i64* %163, align 8
  %165 = add nsw i64 %161, %164
  %166 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 2
  %168 = load i64, i64* %167, align 8
  %169 = add nsw i64 %165, %168
  %170 = add i64 %169, 4
  %171 = load i64, i64* %10, align 8
  %172 = add i64 %171, %170
  store i64 %172, i64* %10, align 8
  %173 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %173, i32 0, i32 6
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* @FALSE, align 8
  %177 = icmp eq i64 %175, %176
  br i1 %177, label %178, label %191

178:                                              ; preds = %150
  %179 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %179, i32 0, i32 9
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* %10, align 8
  %184 = icmp slt i64 %182, %183
  br i1 %184, label %185, label %191

185:                                              ; preds = %178
  %186 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %187 = load i64, i64* @FALSE, align 8
  %188 = load i32 (%struct.TYPE_11__*, i32, i32)*, i32 (%struct.TYPE_11__*, i32, i32)** %8, align 8
  %189 = load i32, i32* %9, align 4
  %190 = call i64 @fci_flush_cabinet(%struct.TYPE_12__* %186, i64 %187, i32 (%struct.TYPE_11__*, i32, i32)* %188, i32 %189)
  store i64 %190, i64* %5, align 8
  br label %336

191:                                              ; preds = %178, %150
  %192 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %192, i32 0, i32 6
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* @FALSE, align 8
  %196 = icmp eq i64 %194, %195
  br i1 %196, label %197, label %242

197:                                              ; preds = %191
  %198 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %199 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %198, i32 0, i32 9
  %200 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %199, i32 0, i32 1
  %201 = load i64, i64* %200, align 8
  %202 = load i64, i64* %10, align 8
  %203 = load i64, i64* @CB_MAX_CABINET_NAME, align 8
  %204 = add nsw i64 %202, %203
  %205 = load i64, i64* @CB_MAX_DISK_NAME, align 8
  %206 = add nsw i64 %204, %205
  %207 = icmp slt i64 %201, %206
  br i1 %207, label %208, label %242

208:                                              ; preds = %197
  %209 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %210 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %209, i32 0, i32 12
  %211 = load %struct.TYPE_11__*, %struct.TYPE_11__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %211, i32 0, i32 5
  %213 = load i32, i32* %212, align 8
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %212, align 8
  %215 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %216 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %215, i32 0, i32 13
  %217 = load i32, i32* %216, align 8
  %218 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %219 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %218, i32 0, i32 11
  store i32 %217, i32* %219, align 4
  %220 = load i32 (%struct.TYPE_11__*, i32, i32)*, i32 (%struct.TYPE_11__*, i32, i32)** %8, align 8
  %221 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %222 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %221, i32 0, i32 12
  %223 = load %struct.TYPE_11__*, %struct.TYPE_11__** %222, align 8
  %224 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %225 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %224, i32 0, i32 11
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %228 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %227, i32 0, i32 10
  %229 = load i32, i32* %228, align 8
  %230 = call i32 %220(%struct.TYPE_11__* %223, i32 %226, i32 %229)
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %238, label %232

232:                                              ; preds = %208
  %233 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %234 = load i32, i32* @FCIERR_NONE, align 4
  %235 = load i32, i32* @ERROR_FUNCTION_FAILED, align 4
  %236 = call i32 @set_error(%struct.TYPE_12__* %233, i32 %234, i32 %235)
  %237 = load i64, i64* @FALSE, align 8
  store i64 %237, i64* %5, align 8
  br label %336

238:                                              ; preds = %208
  %239 = load i64, i64* @TRUE, align 8
  %240 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %241 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %240, i32 0, i32 6
  store i64 %239, i64* %241, align 8
  br label %242

242:                                              ; preds = %238, %197, %191
  %243 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %244 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %243, i32 0, i32 6
  %245 = load i64, i64* %244, align 8
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %280

247:                                              ; preds = %242
  %248 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %249 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %248, i32 0, i32 9
  %250 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %249, i32 0, i32 1
  %251 = load i64, i64* %250, align 8
  %252 = load i64, i64* %10, align 8
  %253 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %254 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %253, i32 0, i32 9
  %255 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %254, i32 0, i32 4
  %256 = load i32, i32* %255, align 4
  %257 = call i64 @strlen(i32 %256)
  %258 = add nsw i64 %252, %257
  %259 = add nsw i64 %258, 1
  %260 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %261 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %260, i32 0, i32 9
  %262 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %261, i32 0, i32 3
  %263 = load i32, i32* %262, align 8
  %264 = call i64 @strlen(i32 %263)
  %265 = add nsw i64 %259, %264
  %266 = add nsw i64 %265, 1
  %267 = icmp slt i64 %251, %266
  br i1 %267, label %268, label %280

268:                                              ; preds = %247
  %269 = load i64, i64* @FALSE, align 8
  %270 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %271 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %270, i32 0, i32 6
  store i64 %269, i64* %271, align 8
  %272 = load i64, i64* @TRUE, align 8
  %273 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %274 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %273, i32 0, i32 1
  store i64 %272, i64* %274, align 8
  %275 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %276 = load i64, i64* @FALSE, align 8
  %277 = load i32 (%struct.TYPE_11__*, i32, i32)*, i32 (%struct.TYPE_11__*, i32, i32)** %8, align 8
  %278 = load i32, i32* %9, align 4
  %279 = call i64 @fci_flush_cabinet(%struct.TYPE_12__* %275, i64 %276, i32 (%struct.TYPE_11__*, i32, i32)* %277, i32 %278)
  store i64 %279, i64* %5, align 8
  br label %336

280:                                              ; preds = %247, %242
  %281 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %282 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %281, i32 0, i32 7
  %283 = load i64, i64* %282, align 8
  %284 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %285 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %284, i32 0, i32 9
  %286 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %285, i32 0, i32 2
  %287 = load i64, i64* %286, align 8
  %288 = icmp sge i64 %283, %287
  br i1 %288, label %289, label %295

289:                                              ; preds = %280
  %290 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %291 = load i64, i64* @FALSE, align 8
  %292 = load i32 (%struct.TYPE_11__*, i32, i32)*, i32 (%struct.TYPE_11__*, i32, i32)** %8, align 8
  %293 = load i32, i32* %9, align 4
  %294 = call i64 @fci_flush_folder(%struct.TYPE_12__* %290, i64 %291, i32 (%struct.TYPE_11__*, i32, i32)* %292, i32 %293)
  store i64 %294, i64* %5, align 8
  br label %336

295:                                              ; preds = %280
  %296 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %297 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %296, i32 0, i32 0
  %298 = load i64, i64* %297, align 8
  %299 = icmp sgt i64 %298, 0
  br i1 %299, label %300, label %313

300:                                              ; preds = %295
  %301 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %302 = load i64, i64* @FALSE, align 8
  %303 = load i32 (%struct.TYPE_11__*, i32, i32)*, i32 (%struct.TYPE_11__*, i32, i32)** %8, align 8
  %304 = load i32, i32* %9, align 4
  %305 = call i64 @fci_flush_folder(%struct.TYPE_12__* %301, i64 %302, i32 (%struct.TYPE_11__*, i32, i32)* %303, i32 %304)
  %306 = icmp ne i64 %305, 0
  br i1 %306, label %309, label %307

307:                                              ; preds = %300
  %308 = load i64, i64* @FALSE, align 8
  store i64 %308, i64* %5, align 8
  br label %336

309:                                              ; preds = %300
  %310 = load i64, i64* @TRUE, align 8
  %311 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %312 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %311, i32 0, i32 8
  store i64 %310, i64* %312, align 8
  br label %313

313:                                              ; preds = %309, %295
  br label %334

314:                                              ; preds = %75
  %315 = load i64, i64* @FALSE, align 8
  %316 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %317 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %316, i32 0, i32 8
  store i64 %315, i64* %317, align 8
  %318 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %319 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %318, i32 0, i32 0
  %320 = load i64, i64* %319, align 8
  %321 = icmp sgt i64 %320, 0
  br i1 %321, label %327, label %322

322:                                              ; preds = %314
  %323 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %324 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %323, i32 0, i32 4
  %325 = load i64, i64* %324, align 8
  %326 = icmp ne i64 %325, 0
  br i1 %326, label %327, label %333

327:                                              ; preds = %322, %314
  %328 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %329 = load i32, i32* @FCIERR_NONE, align 4
  %330 = load i32, i32* @ERROR_GEN_FAILURE, align 4
  %331 = call i32 @set_error(%struct.TYPE_12__* %328, i32 %329, i32 %330)
  %332 = load i64, i64* @FALSE, align 8
  store i64 %332, i64* %5, align 8
  br label %336

333:                                              ; preds = %322
  br label %334

334:                                              ; preds = %333, %313
  %335 = load i64, i64* @TRUE, align 8
  store i64 %335, i64* %5, align 8
  br label %336

336:                                              ; preds = %334, %327, %307, %289, %268, %232, %185, %96, %73, %62, %34, %29
  %337 = load i64, i64* %5, align 8
  ret i64 %337
}

declare dso_local i64 @fci_flush_folder(%struct.TYPE_12__*, i64, i32 (%struct.TYPE_11__*, i32, i32)*, i32) #1

declare dso_local i32 @set_error(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @write_cabinet(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @get_header_size(%struct.TYPE_12__*) #1

declare dso_local i64 @strlen(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
