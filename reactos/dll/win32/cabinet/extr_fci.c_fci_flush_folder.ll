; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/cabinet/extr_fci.c_fci_flush_folder.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/cabinet/extr_fci.c_fci_flush_folder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.TYPE_14__*, %struct.TYPE_13__, i32, i64, i64, i64 }
%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.TYPE_13__ = type { i64, i64 }
%struct.folder = type { i32 }

@FCIERR_NONE = common dso_local global i32 0, align 4
@ERROR_BAD_ARGUMENTS = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@ERROR_GEN_FAILURE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@statusFolder = common dso_local global i32 0, align 4
@FCIERR_USER_ABORT = common dso_local global i32 0, align 4
@CB_MAX_CABINET_NAME = common dso_local global i64 0, align 8
@CB_MAX_DISK_NAME = common dso_local global i64 0, align 8
@ERROR_FUNCTION_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_15__*, i64, i32 (%struct.TYPE_14__*, i64, i32)*, i32 (i32, i64, i64, i32)*)* @fci_flush_folder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fci_flush_folder(%struct.TYPE_15__* %0, i64 %1, i32 (%struct.TYPE_14__*, i64, i32)* %2, i32 (i32, i64, i64, i32)* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32 (%struct.TYPE_14__*, i64, i32)*, align 8
  %9 = alloca i32 (i32, i64, i64, i32)*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.folder*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 (%struct.TYPE_14__*, i64, i32)* %2, i32 (%struct.TYPE_14__*, i64, i32)** %8, align 8
  store i32 (i32, i64, i64, i32)* %3, i32 (i32, i64, i64, i32)** %9, align 8
  %13 = load i32 (%struct.TYPE_14__*, i64, i32)*, i32 (%struct.TYPE_14__*, i64, i32)** %8, align 8
  %14 = icmp ne i32 (%struct.TYPE_14__*, i64, i32)* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = load i32 (i32, i64, i64, i32)*, i32 (i32, i64, i64, i32)** %9, align 8
  %17 = icmp ne i32 (i32, i64, i64, i32)* %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %15, %4
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %20 = load i32, i32* @FCIERR_NONE, align 4
  %21 = load i32, i32* @ERROR_BAD_ARGUMENTS, align 4
  %22 = call i32 @set_error(%struct.TYPE_15__* %19, i32 %20, i32 %21)
  %23 = load i64, i64* @FALSE, align 8
  store i64 %23, i64* %5, align 8
  br label %351

24:                                               ; preds = %15
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %24
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %36 = load i32, i32* @FCIERR_NONE, align 4
  %37 = load i32, i32* @ERROR_GEN_FAILURE, align 4
  %38 = call i32 @set_error(%struct.TYPE_15__* %35, i32 %36, i32 %37)
  %39 = load i64, i64* @FALSE, align 8
  store i64 %39, i64* %5, align 8
  br label %351

40:                                               ; preds = %29, %24
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %58

45:                                               ; preds = %40
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %45
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %52 = load i32, i32* @FCIERR_NONE, align 4
  %53 = load i32, i32* @ERROR_GEN_FAILURE, align 4
  %54 = call i32 @set_error(%struct.TYPE_15__* %51, i32 %52, i32 %53)
  %55 = load i64, i64* @FALSE, align 8
  store i64 %55, i64* %5, align 8
  br label %351

56:                                               ; preds = %45
  %57 = load i64, i64* @TRUE, align 8
  store i64 %57, i64* %5, align 8
  br label %351

58:                                               ; preds = %40
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 9
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %58
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 4
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = load i64, i64* @TRUE, align 8
  store i64 %69, i64* %5, align 8
  br label %351

70:                                               ; preds = %63, %58
  %71 = load i64, i64* @FALSE, align 8
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 9
  store i64 %71, i64* %73, align 8
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %75 = load i32 (i32, i64, i64, i32)*, i32 (i32, i64, i64, i32)** %9, align 8
  %76 = call i32 @add_data_block(%struct.TYPE_15__* %74, i32 (i32, i64, i64, i32)* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %70
  %79 = load i64, i64* @FALSE, align 8
  store i64 %79, i64* %5, align 8
  br label %351

80:                                               ; preds = %70
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 8
  store i64 0, i64* %82, align 8
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %84 = call i64 @get_header_size(%struct.TYPE_15__* %83)
  %85 = add i64 %84, 4
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 11
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = add i64 %85, %89
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 4
  %93 = load i64, i64* %92, align 8
  %94 = add i64 %90, %93
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 5
  %97 = load i64, i64* %96, align 8
  %98 = add i64 %94, %97
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = add i64 %98, %101
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = add i64 %102, %105
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 6
  %109 = load i64, i64* %108, align 8
  %110 = add i64 %106, %109
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 14
  store i64 %110, i64* %112, align 8
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 15
  store i64 0, i64* %114, align 8
  %115 = load i32 (i32, i64, i64, i32)*, i32 (i32, i64, i64, i32)** %9, align 8
  %116 = load i32, i32* @statusFolder, align 4
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 15
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 14
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 12
  %125 = load i32, i32* %124, align 8
  %126 = call i32 %115(i32 %116, i64 %119, i64 %122, i32 %125)
  %127 = icmp eq i32 %126, -1
  br i1 %127, label %128, label %133

128:                                              ; preds = %80
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %130 = load i32, i32* @FCIERR_USER_ABORT, align 4
  %131 = call i32 @set_error(%struct.TYPE_15__* %129, i32 %130, i32 0)
  %132 = load i64, i64* @FALSE, align 8
  store i64 %132, i64* %5, align 8
  br label %351

133:                                              ; preds = %80
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %135 = call i64 @get_header_size(%struct.TYPE_15__* %134)
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 5
  %138 = load i64, i64* %137, align 8
  %139 = add nsw i64 %135, %138
  %140 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %140, i32 0, i32 4
  %142 = load i64, i64* %141, align 8
  %143 = add nsw i64 %139, %142
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i32 0, i32 6
  %146 = load i64, i64* %145, align 8
  %147 = add nsw i64 %143, %146
  store i64 %147, i64* %11, align 8
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i32 0, i32 2
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %160

152:                                              ; preds = %133
  %153 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %153, i32 0, i32 11
  %155 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = add i64 4, %156
  %158 = load i64, i64* %11, align 8
  %159 = add i64 %158, %157
  store i64 %159, i64* %11, align 8
  br label %160

160:                                              ; preds = %152, %133
  %161 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @FALSE, align 8
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %166, label %228

166:                                              ; preds = %160
  %167 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @FALSE, align 8
  %171 = icmp eq i64 %169, %170
  br i1 %171, label %172, label %228

172:                                              ; preds = %166
  %173 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %173, i32 0, i32 11
  %175 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %174, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* %11, align 8
  %178 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %179 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %178, i32 0, i32 3
  %180 = load i64, i64* %179, align 8
  %181 = add nsw i64 %177, %180
  %182 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %183 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %182, i32 0, i32 2
  %184 = load i64, i64* %183, align 8
  %185 = add nsw i64 %181, %184
  %186 = load i64, i64* @CB_MAX_CABINET_NAME, align 8
  %187 = add nsw i64 %185, %186
  %188 = load i64, i64* @CB_MAX_DISK_NAME, align 8
  %189 = add nsw i64 %187, %188
  %190 = icmp slt i64 %176, %189
  br i1 %190, label %194, label %191

191:                                              ; preds = %172
  %192 = load i64, i64* %7, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %228

194:                                              ; preds = %191, %172
  %195 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %196 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %195, i32 0, i32 10
  %197 = load %struct.TYPE_14__*, %struct.TYPE_14__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %198, align 4
  %201 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %202 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %201, i32 0, i32 14
  %203 = load i64, i64* %202, align 8
  %204 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %205 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %204, i32 0, i32 13
  store i64 %203, i64* %205, align 8
  %206 = load i32 (%struct.TYPE_14__*, i64, i32)*, i32 (%struct.TYPE_14__*, i64, i32)** %8, align 8
  %207 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %208 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %207, i32 0, i32 10
  %209 = load %struct.TYPE_14__*, %struct.TYPE_14__** %208, align 8
  %210 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %211 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %210, i32 0, i32 13
  %212 = load i64, i64* %211, align 8
  %213 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %214 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %213, i32 0, i32 12
  %215 = load i32, i32* %214, align 8
  %216 = call i32 %206(%struct.TYPE_14__* %209, i64 %212, i32 %215)
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %224, label %218

218:                                              ; preds = %194
  %219 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %220 = load i32, i32* @FCIERR_NONE, align 4
  %221 = load i32, i32* @ERROR_FUNCTION_FAILED, align 4
  %222 = call i32 @set_error(%struct.TYPE_15__* %219, i32 %220, i32 %221)
  %223 = load i64, i64* @FALSE, align 8
  store i64 %223, i64* %5, align 8
  br label %351

224:                                              ; preds = %194
  %225 = load i64, i64* @TRUE, align 8
  %226 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %227 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %226, i32 0, i32 0
  store i64 %225, i64* %227, align 8
  br label %228

228:                                              ; preds = %224, %191, %166, %160
  %229 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %230 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %229, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %238, label %233

233:                                              ; preds = %228
  %234 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %235 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %234, i32 0, i32 1
  %236 = load i64, i64* %235, align 8
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %311

238:                                              ; preds = %233, %228
  %239 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %240 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %239, i32 0, i32 11
  %241 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %240, i32 0, i32 1
  %242 = load i64, i64* %241, align 8
  %243 = load i64, i64* %11, align 8
  %244 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %245 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %244, i32 0, i32 3
  %246 = load i64, i64* %245, align 8
  %247 = add nsw i64 %243, %246
  %248 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %249 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %248, i32 0, i32 2
  %250 = load i64, i64* %249, align 8
  %251 = add nsw i64 %247, %250
  %252 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %253 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %252, i32 0, i32 10
  %254 = load %struct.TYPE_14__*, %struct.TYPE_14__** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 4
  %257 = call i64 @strlen(i32 %256)
  %258 = add nsw i64 %251, %257
  %259 = add nsw i64 %258, 1
  %260 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %261 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %260, i32 0, i32 10
  %262 = load %struct.TYPE_14__*, %struct.TYPE_14__** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 4
  %265 = call i64 @strlen(i32 %264)
  %266 = add nsw i64 %259, %265
  %267 = add nsw i64 %266, 1
  %268 = icmp slt i64 %242, %267
  br i1 %268, label %272, label %269

269:                                              ; preds = %238
  %270 = load i64, i64* %7, align 8
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %311

272:                                              ; preds = %269, %238
  %273 = load i64, i64* @FALSE, align 8
  %274 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %275 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %274, i32 0, i32 0
  store i64 %273, i64* %275, align 8
  %276 = load i64, i64* @TRUE, align 8
  %277 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %278 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %277, i32 0, i32 1
  store i64 %276, i64* %278, align 8
  %279 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %280 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %279, i32 0, i32 11
  %281 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %280, i32 0, i32 1
  %282 = load i64, i64* %281, align 8
  %283 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %284 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %283, i32 0, i32 2
  %285 = load i64, i64* %284, align 8
  %286 = load i64, i64* %11, align 8
  %287 = add nsw i64 %285, %286
  %288 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %289 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %288, i32 0, i32 10
  %290 = load %struct.TYPE_14__*, %struct.TYPE_14__** %289, align 8
  %291 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %290, i32 0, i32 1
  %292 = load i32, i32* %291, align 4
  %293 = call i64 @strlen(i32 %292)
  %294 = add nsw i64 %287, %293
  %295 = add nsw i64 %294, 1
  %296 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %297 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %296, i32 0, i32 10
  %298 = load %struct.TYPE_14__*, %struct.TYPE_14__** %297, align 8
  %299 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 4
  %301 = call i64 @strlen(i32 %300)
  %302 = add nsw i64 %295, %301
  %303 = add nsw i64 %302, 1
  %304 = icmp sle i64 %282, %303
  br i1 %304, label %305, label %307

305:                                              ; preds = %272
  %306 = load i64, i64* @FALSE, align 8
  store i64 %306, i64* %5, align 8
  br label %351

307:                                              ; preds = %272
  %308 = load i64, i64* @TRUE, align 8
  %309 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %310 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %309, i32 0, i32 9
  store i64 %308, i64* %310, align 8
  br label %323

311:                                              ; preds = %269, %233
  %312 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %313 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %312, i32 0, i32 1
  %314 = load i64, i64* %313, align 8
  %315 = icmp ne i64 %314, 0
  br i1 %315, label %316, label %322

316:                                              ; preds = %311
  %317 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %318 = load i32, i32* @FCIERR_NONE, align 4
  %319 = load i32, i32* @ERROR_GEN_FAILURE, align 4
  %320 = call i32 @set_error(%struct.TYPE_15__* %317, i32 %318, i32 %319)
  %321 = load i64, i64* @FALSE, align 8
  store i64 %321, i64* %5, align 8
  br label %351

322:                                              ; preds = %311
  br label %323

323:                                              ; preds = %322, %307
  %324 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %325 = call %struct.folder* @add_folder(%struct.TYPE_15__* %324)
  store %struct.folder* %325, %struct.folder** %12, align 8
  %326 = icmp ne %struct.folder* %325, null
  br i1 %326, label %329, label %327

327:                                              ; preds = %323
  %328 = load i64, i64* @FALSE, align 8
  store i64 %328, i64* %5, align 8
  br label %351

329:                                              ; preds = %323
  %330 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %331 = load %struct.folder*, %struct.folder** %12, align 8
  %332 = load i32 (i32, i64, i64, i32)*, i32 (i32, i64, i64, i32)** %9, align 8
  %333 = call i32 @add_data_to_folder(%struct.TYPE_15__* %330, %struct.folder* %331, i64* %10, i32 (i32, i64, i64, i32)* %332)
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %337, label %335

335:                                              ; preds = %329
  %336 = load i64, i64* @FALSE, align 8
  store i64 %336, i64* %5, align 8
  br label %351

337:                                              ; preds = %329
  %338 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %339 = load %struct.folder*, %struct.folder** %12, align 8
  %340 = load i64, i64* %10, align 8
  %341 = call i32 @add_files_to_folder(%struct.TYPE_15__* %338, %struct.folder* %339, i64 %340)
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %345, label %343

343:                                              ; preds = %337
  %344 = load i64, i64* @FALSE, align 8
  store i64 %344, i64* %5, align 8
  br label %351

345:                                              ; preds = %337
  %346 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %347 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %346, i32 0, i32 8
  store i64 0, i64* %347, align 8
  %348 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %349 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %348, i32 0, i32 7
  store i64 0, i64* %349, align 8
  %350 = load i64, i64* @TRUE, align 8
  store i64 %350, i64* %5, align 8
  br label %351

351:                                              ; preds = %345, %343, %335, %327, %316, %305, %218, %128, %78, %68, %56, %50, %34, %18
  %352 = load i64, i64* %5, align 8
  ret i64 %352
}

declare dso_local i32 @set_error(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @add_data_block(%struct.TYPE_15__*, i32 (i32, i64, i64, i32)*) #1

declare dso_local i64 @get_header_size(%struct.TYPE_15__*) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local %struct.folder* @add_folder(%struct.TYPE_15__*) #1

declare dso_local i32 @add_data_to_folder(%struct.TYPE_15__*, %struct.folder*, i64*, i32 (i32, i64, i64, i32)*) #1

declare dso_local i32 @add_files_to_folder(%struct.TYPE_15__*, %struct.folder*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
