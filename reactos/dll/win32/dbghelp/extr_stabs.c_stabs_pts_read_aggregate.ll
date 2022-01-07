; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_stabs.c_stabs_pts_read_aggregate.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_stabs.c_stabs_pts_read_aggregate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ParseTypedefData = type { i8*, i32, i32, i32 }
%struct.symt_udt = type { i32 }
%struct.symt = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"__inherited_class_\00", align 1
@TI_GET_LENGTH = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ParseTypedefData*, %struct.symt_udt*)* @stabs_pts_read_aggregate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stabs_pts_read_aggregate(%struct.ParseTypedefData* %0, %struct.symt_udt* %1) #0 {
  %3 = alloca %struct.ParseTypedefData*, align 8
  %4 = alloca %struct.symt_udt*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.symt*, align 8
  %8 = alloca %struct.symt*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca [256 x i8], align 16
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  store %struct.ParseTypedefData* %0, %struct.ParseTypedefData** %3, align 8
  store %struct.symt_udt* %1, %struct.symt_udt** %4, align 8
  store %struct.symt* null, %struct.symt** %8, align 8
  %16 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %3, align 8
  %17 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %3, align 8
  %18 = call i32 @stabs_pts_read_number(%struct.ParseTypedefData* %17, i64* %5)
  %19 = icmp eq i32 %18, -1
  %20 = zext i1 %19 to i32
  %21 = call i32 @PTS_ABORTIF(%struct.ParseTypedefData* %16, i32 %20)
  %22 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %3, align 8
  %23 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.symt_udt*, %struct.symt_udt** %4, align 8
  %26 = load i64, i64* %5, align 8
  %27 = call i32 @symt_set_udt_size(i32 %24, %struct.symt_udt* %25, i64 %26)
  store i32 %27, i32* %10, align 4
  %28 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %3, align 8
  %29 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 33
  br i1 %33, label %34, label %128

34:                                               ; preds = %2
  %35 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %3, align 8
  %36 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %36, align 8
  %39 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %3, align 8
  %40 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %3, align 8
  %41 = call i32 @stabs_pts_read_number(%struct.ParseTypedefData* %40, i64* %11)
  %42 = icmp eq i32 %41, -1
  %43 = zext i1 %42 to i32
  %44 = call i32 @PTS_ABORTIF(%struct.ParseTypedefData* %39, i32 %43)
  %45 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %3, align 8
  %46 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %3, align 8
  %47 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %47, align 8
  %50 = load i8, i8* %48, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp ne i32 %51, 44
  %53 = zext i1 %52 to i32
  %54 = call i32 @PTS_ABORTIF(%struct.ParseTypedefData* %45, i32 %53)
  br label %55

55:                                               ; preds = %116, %34
  %56 = load i64, i64* %11, align 8
  %57 = add nsw i64 %56, -1
  store i64 %57, i64* %11, align 8
  %58 = icmp sge i64 %57, 0
  br i1 %58, label %59, label %127

59:                                               ; preds = %55
  %60 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %3, align 8
  %61 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 2
  store i8* %63, i8** %61, align 8
  %64 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %3, align 8
  %65 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %3, align 8
  %66 = call i32 @stabs_pts_read_number(%struct.ParseTypedefData* %65, i64* %6)
  %67 = icmp eq i32 %66, -1
  %68 = zext i1 %67 to i32
  %69 = call i32 @PTS_ABORTIF(%struct.ParseTypedefData* %64, i32 %68)
  %70 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %3, align 8
  %71 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %3, align 8
  %72 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %72, align 8
  %75 = load i8, i8* %73, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp ne i32 %76, 44
  %78 = zext i1 %77 to i32
  %79 = call i32 @PTS_ABORTIF(%struct.ParseTypedefData* %70, i32 %78)
  %80 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %3, align 8
  %81 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %3, align 8
  %82 = call i32 @stabs_pts_read_type_def(%struct.ParseTypedefData* %81, i32* null, %struct.symt** %7)
  %83 = icmp eq i32 %82, -1
  %84 = zext i1 %83 to i32
  %85 = call i32 @PTS_ABORTIF(%struct.ParseTypedefData* %80, i32 %84)
  %86 = load i32, i32* %10, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %116

88:                                               ; preds = %59
  %89 = load %struct.symt*, %struct.symt** %7, align 8
  %90 = icmp ne %struct.symt* %89, null
  br i1 %90, label %91, label %116

91:                                               ; preds = %88
  %92 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %93 = call i32 @strcpy(i8* %92, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %94 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %95 = load %struct.symt*, %struct.symt** %7, align 8
  %96 = call i32 @symt_get_name(%struct.symt* %95)
  %97 = call i32 @strcat(i8* %94, i32 %96)
  %98 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %3, align 8
  %99 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.symt*, %struct.symt** %7, align 8
  %102 = load i32, i32* @TI_GET_LENGTH, align 4
  %103 = call i32 @symt_get_info(i32 %100, %struct.symt* %101, i32 %102, i64* %13)
  %104 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %3, align 8
  %105 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.symt_udt*, %struct.symt_udt** %4, align 8
  %108 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %109 = load %struct.symt*, %struct.symt** %7, align 8
  %110 = load i64, i64* %6, align 8
  %111 = load i64, i64* %13, align 8
  %112 = trunc i64 %111 to i32
  %113 = mul nsw i32 %112, 8
  %114 = sext i32 %113 to i64
  %115 = call i32 @symt_add_udt_element(i32 %106, %struct.symt_udt* %107, i8* %108, %struct.symt* %109, i64 %110, i64 %114)
  br label %116

116:                                              ; preds = %91, %88, %59
  %117 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %3, align 8
  %118 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %3, align 8
  %119 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %118, i32 0, i32 0
  %120 = load i8*, i8** %119, align 8
  %121 = getelementptr inbounds i8, i8* %120, i32 1
  store i8* %121, i8** %119, align 8
  %122 = load i8, i8* %120, align 1
  %123 = sext i8 %122 to i32
  %124 = icmp ne i32 %123, 59
  %125 = zext i1 %124 to i32
  %126 = call i32 @PTS_ABORTIF(%struct.ParseTypedefData* %117, i32 %125)
  br label %55

127:                                              ; preds = %55
  br label %128

128:                                              ; preds = %127, %2
  br label %129

129:                                              ; preds = %402, %296, %225, %163, %128
  %130 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %3, align 8
  %131 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %130, i32 0, i32 0
  %132 = load i8*, i8** %131, align 8
  %133 = load i8, i8* %132, align 1
  %134 = sext i8 %133 to i32
  %135 = icmp ne i32 %134, 59
  br i1 %135, label %136, label %406

136:                                              ; preds = %129
  %137 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %3, align 8
  %138 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  store i32 %139, i32* %9, align 4
  %140 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %3, align 8
  %141 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %140, i32 0, i32 0
  %142 = load i8*, i8** %141, align 8
  %143 = getelementptr inbounds i8, i8* %142, i64 0
  %144 = load i8, i8* %143, align 1
  %145 = sext i8 %144 to i32
  %146 = icmp eq i32 %145, 36
  br i1 %146, label %147, label %283

147:                                              ; preds = %136
  %148 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %3, align 8
  %149 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %148, i32 0, i32 0
  %150 = load i8*, i8** %149, align 8
  %151 = getelementptr inbounds i8, i8* %150, i64 1
  %152 = load i8, i8* %151, align 1
  %153 = sext i8 %152 to i32
  %154 = icmp eq i32 %153, 118
  br i1 %154, label %155, label %283

155:                                              ; preds = %147
  %156 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %3, align 8
  %157 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %156, i32 0, i32 0
  %158 = load i8*, i8** %157, align 8
  %159 = getelementptr inbounds i8, i8* %158, i64 2
  %160 = load i8, i8* %159, align 1
  %161 = sext i8 %160 to i32
  %162 = icmp eq i32 %161, 102
  br i1 %162, label %163, label %217

163:                                              ; preds = %155
  %164 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %3, align 8
  %165 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %164, i32 0, i32 0
  %166 = load i8*, i8** %165, align 8
  %167 = getelementptr inbounds i8, i8* %166, i64 3
  store i8* %167, i8** %165, align 8
  %168 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %3, align 8
  %169 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %168, i32 0, i32 0
  %170 = bitcast i8** %169 to float**
  %171 = call i32 @stabs_read_type_enum(float** %170)
  %172 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %3, align 8
  %173 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %3, align 8
  %174 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %173, i32 0, i32 0
  %175 = load i8*, i8** %174, align 8
  %176 = getelementptr inbounds i8, i8* %175, i32 1
  store i8* %176, i8** %174, align 8
  %177 = load i8, i8* %175, align 1
  %178 = sext i8 %177 to i32
  %179 = icmp ne i32 %178, 58
  %180 = zext i1 %179 to i32
  %181 = call i32 @PTS_ABORTIF(%struct.ParseTypedefData* %172, i32 %180)
  %182 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %3, align 8
  %183 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %3, align 8
  %184 = call i32 @stabs_pts_read_type_def(%struct.ParseTypedefData* %183, i32* null, %struct.symt** %8)
  %185 = icmp eq i32 %184, -1
  %186 = zext i1 %185 to i32
  %187 = call i32 @PTS_ABORTIF(%struct.ParseTypedefData* %182, i32 %186)
  %188 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %3, align 8
  %189 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %3, align 8
  %190 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %189, i32 0, i32 0
  %191 = load i8*, i8** %190, align 8
  %192 = getelementptr inbounds i8, i8* %191, i32 1
  store i8* %192, i8** %190, align 8
  %193 = load i8, i8* %191, align 1
  %194 = sext i8 %193 to i32
  %195 = icmp ne i32 %194, 44
  %196 = zext i1 %195 to i32
  %197 = call i32 @PTS_ABORTIF(%struct.ParseTypedefData* %188, i32 %196)
  %198 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %3, align 8
  %199 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %3, align 8
  %200 = call i32 @stabs_pts_read_number(%struct.ParseTypedefData* %199, i64* %14)
  %201 = icmp eq i32 %200, -1
  %202 = zext i1 %201 to i32
  %203 = call i32 @PTS_ABORTIF(%struct.ParseTypedefData* %198, i32 %202)
  %204 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %3, align 8
  %205 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %3, align 8
  %206 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %205, i32 0, i32 0
  %207 = load i8*, i8** %206, align 8
  %208 = getelementptr inbounds i8, i8* %207, i32 1
  store i8* %208, i8** %206, align 8
  %209 = load i8, i8* %207, align 1
  %210 = sext i8 %209 to i32
  %211 = icmp ne i32 %210, 59
  %212 = zext i1 %211 to i32
  %213 = call i32 @PTS_ABORTIF(%struct.ParseTypedefData* %204, i32 %212)
  %214 = load i32, i32* %9, align 4
  %215 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %3, align 8
  %216 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %215, i32 0, i32 1
  store i32 %214, i32* %216, align 8
  br label %129

217:                                              ; preds = %155
  %218 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %3, align 8
  %219 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %218, i32 0, i32 0
  %220 = load i8*, i8** %219, align 8
  %221 = getelementptr inbounds i8, i8* %220, i64 2
  %222 = load i8, i8* %221, align 1
  %223 = sext i8 %222 to i32
  %224 = icmp eq i32 %223, 98
  br i1 %224, label %225, label %281

225:                                              ; preds = %217
  %226 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %3, align 8
  %227 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %226, i32 0, i32 0
  %228 = load i8*, i8** %227, align 8
  %229 = getelementptr inbounds i8, i8* %228, i64 3
  store i8* %229, i8** %227, align 8
  %230 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %3, align 8
  %231 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %3, align 8
  %232 = call i32 @stabs_pts_read_type_def(%struct.ParseTypedefData* %231, i32* null, %struct.symt** %8)
  %233 = icmp eq i32 %232, -1
  %234 = zext i1 %233 to i32
  %235 = call i32 @PTS_ABORTIF(%struct.ParseTypedefData* %230, i32 %234)
  %236 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %3, align 8
  %237 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %3, align 8
  %238 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %237, i32 0, i32 0
  %239 = load i8*, i8** %238, align 8
  %240 = getelementptr inbounds i8, i8* %239, i32 1
  store i8* %240, i8** %238, align 8
  %241 = load i8, i8* %239, align 1
  %242 = sext i8 %241 to i32
  %243 = icmp ne i32 %242, 58
  %244 = zext i1 %243 to i32
  %245 = call i32 @PTS_ABORTIF(%struct.ParseTypedefData* %236, i32 %244)
  %246 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %3, align 8
  %247 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %3, align 8
  %248 = call i32 @stabs_pts_read_type_def(%struct.ParseTypedefData* %247, i32* null, %struct.symt** %8)
  %249 = icmp eq i32 %248, -1
  %250 = zext i1 %249 to i32
  %251 = call i32 @PTS_ABORTIF(%struct.ParseTypedefData* %246, i32 %250)
  %252 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %3, align 8
  %253 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %3, align 8
  %254 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %253, i32 0, i32 0
  %255 = load i8*, i8** %254, align 8
  %256 = getelementptr inbounds i8, i8* %255, i32 1
  store i8* %256, i8** %254, align 8
  %257 = load i8, i8* %255, align 1
  %258 = sext i8 %257 to i32
  %259 = icmp ne i32 %258, 44
  %260 = zext i1 %259 to i32
  %261 = call i32 @PTS_ABORTIF(%struct.ParseTypedefData* %252, i32 %260)
  %262 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %3, align 8
  %263 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %3, align 8
  %264 = call i32 @stabs_pts_read_number(%struct.ParseTypedefData* %263, i64* %14)
  %265 = icmp eq i32 %264, -1
  %266 = zext i1 %265 to i32
  %267 = call i32 @PTS_ABORTIF(%struct.ParseTypedefData* %262, i32 %266)
  %268 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %3, align 8
  %269 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %3, align 8
  %270 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %269, i32 0, i32 0
  %271 = load i8*, i8** %270, align 8
  %272 = getelementptr inbounds i8, i8* %271, i32 1
  store i8* %272, i8** %270, align 8
  %273 = load i8, i8* %271, align 1
  %274 = sext i8 %273 to i32
  %275 = icmp ne i32 %274, 59
  %276 = zext i1 %275 to i32
  %277 = call i32 @PTS_ABORTIF(%struct.ParseTypedefData* %268, i32 %276)
  %278 = load i32, i32* %9, align 4
  %279 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %3, align 8
  %280 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %279, i32 0, i32 1
  store i32 %278, i32* %280, align 8
  br label %129

281:                                              ; preds = %217
  br label %282

282:                                              ; preds = %281
  br label %283

283:                                              ; preds = %282, %147, %136
  %284 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %3, align 8
  %285 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %3, align 8
  %286 = call i32 @stabs_pts_read_id(%struct.ParseTypedefData* %285)
  %287 = icmp eq i32 %286, -1
  %288 = zext i1 %287 to i32
  %289 = call i32 @PTS_ABORTIF(%struct.ParseTypedefData* %284, i32 %288)
  %290 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %3, align 8
  %291 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %290, i32 0, i32 0
  %292 = load i8*, i8** %291, align 8
  %293 = load i8, i8* %292, align 1
  %294 = sext i8 %293 to i32
  %295 = icmp eq i32 %294, 58
  br i1 %295, label %296, label %306

296:                                              ; preds = %283
  %297 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %3, align 8
  %298 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %297, i32 0, i32 0
  %299 = load i8*, i8** %298, align 8
  %300 = getelementptr inbounds i8, i8* %299, i32 1
  store i8* %300, i8** %298, align 8
  %301 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %3, align 8
  %302 = call i32 @stabs_pts_read_method_info(%struct.ParseTypedefData* %301)
  %303 = load i32, i32* %9, align 4
  %304 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %3, align 8
  %305 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %304, i32 0, i32 1
  store i32 %303, i32* %305, align 8
  br label %129

306:                                              ; preds = %283
  %307 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %3, align 8
  %308 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %307, i32 0, i32 0
  %309 = load i8*, i8** %308, align 8
  %310 = load i8, i8* %309, align 1
  %311 = sext i8 %310 to i32
  %312 = icmp eq i32 %311, 47
  br i1 %312, label %313, label %318

313:                                              ; preds = %306
  %314 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %3, align 8
  %315 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %314, i32 0, i32 0
  %316 = load i8*, i8** %315, align 8
  %317 = getelementptr inbounds i8, i8* %316, i64 2
  store i8* %317, i8** %315, align 8
  br label %318

318:                                              ; preds = %313, %306
  br label %319

319:                                              ; preds = %318
  %320 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %3, align 8
  %321 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %3, align 8
  %322 = call i32 @stabs_pts_read_type_def(%struct.ParseTypedefData* %321, i32* null, %struct.symt** %7)
  %323 = icmp eq i32 %322, -1
  %324 = zext i1 %323 to i32
  %325 = call i32 @PTS_ABORTIF(%struct.ParseTypedefData* %320, i32 %324)
  %326 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %3, align 8
  %327 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %326, i32 0, i32 0
  %328 = load i8*, i8** %327, align 8
  %329 = getelementptr inbounds i8, i8* %328, i32 1
  store i8* %329, i8** %327, align 8
  %330 = load i8, i8* %328, align 1
  %331 = sext i8 %330 to i32
  switch i32 %331, label %398 [
    i32 44, label %332
    i32 58, label %384
  ]

332:                                              ; preds = %319
  %333 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %3, align 8
  %334 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %3, align 8
  %335 = call i32 @stabs_pts_read_number(%struct.ParseTypedefData* %334, i64* %6)
  %336 = icmp eq i32 %335, -1
  %337 = zext i1 %336 to i32
  %338 = call i32 @PTS_ABORTIF(%struct.ParseTypedefData* %333, i32 %337)
  %339 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %3, align 8
  %340 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %3, align 8
  %341 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %340, i32 0, i32 0
  %342 = load i8*, i8** %341, align 8
  %343 = getelementptr inbounds i8, i8* %342, i32 1
  store i8* %343, i8** %341, align 8
  %344 = load i8, i8* %342, align 1
  %345 = sext i8 %344 to i32
  %346 = icmp ne i32 %345, 44
  %347 = zext i1 %346 to i32
  %348 = call i32 @PTS_ABORTIF(%struct.ParseTypedefData* %339, i32 %347)
  %349 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %3, align 8
  %350 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %3, align 8
  %351 = call i32 @stabs_pts_read_number(%struct.ParseTypedefData* %350, i64* %5)
  %352 = icmp eq i32 %351, -1
  %353 = zext i1 %352 to i32
  %354 = call i32 @PTS_ABORTIF(%struct.ParseTypedefData* %349, i32 %353)
  %355 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %3, align 8
  %356 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %3, align 8
  %357 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %356, i32 0, i32 0
  %358 = load i8*, i8** %357, align 8
  %359 = getelementptr inbounds i8, i8* %358, i32 1
  store i8* %359, i8** %357, align 8
  %360 = load i8, i8* %358, align 1
  %361 = sext i8 %360 to i32
  %362 = icmp ne i32 %361, 59
  %363 = zext i1 %362 to i32
  %364 = call i32 @PTS_ABORTIF(%struct.ParseTypedefData* %355, i32 %363)
  %365 = load i32, i32* %10, align 4
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %367, label %383

367:                                              ; preds = %332
  %368 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %3, align 8
  %369 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %368, i32 0, i32 3
  %370 = load i32, i32* %369, align 8
  %371 = load %struct.symt_udt*, %struct.symt_udt** %4, align 8
  %372 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %3, align 8
  %373 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %372, i32 0, i32 2
  %374 = load i32, i32* %373, align 4
  %375 = load i32, i32* %9, align 4
  %376 = add nsw i32 %374, %375
  %377 = sext i32 %376 to i64
  %378 = inttoptr i64 %377 to i8*
  %379 = load %struct.symt*, %struct.symt** %7, align 8
  %380 = load i64, i64* %6, align 8
  %381 = load i64, i64* %5, align 8
  %382 = call i32 @symt_add_udt_element(i32 %370, %struct.symt_udt* %371, i8* %378, %struct.symt* %379, i64 %380, i64 %381)
  br label %383

383:                                              ; preds = %367, %332
  br label %402

384:                                              ; preds = %319
  %385 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %3, align 8
  %386 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %3, align 8
  %387 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %386, i32 0, i32 0
  %388 = load i8*, i8** %387, align 8
  %389 = call i8* @strchr(i8* %388, i8 signext 59)
  store i8* %389, i8** %15, align 8
  %390 = icmp ne i8* %389, null
  %391 = xor i1 %390, true
  %392 = zext i1 %391 to i32
  %393 = call i32 @PTS_ABORTIF(%struct.ParseTypedefData* %385, i32 %392)
  %394 = load i8*, i8** %15, align 8
  %395 = getelementptr inbounds i8, i8* %394, i64 1
  %396 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %3, align 8
  %397 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %396, i32 0, i32 0
  store i8* %395, i8** %397, align 8
  br label %402

398:                                              ; preds = %319
  %399 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %3, align 8
  %400 = load i32, i32* @TRUE, align 4
  %401 = call i32 @PTS_ABORTIF(%struct.ParseTypedefData* %399, i32 %400)
  br label %402

402:                                              ; preds = %398, %384, %383
  %403 = load i32, i32* %9, align 4
  %404 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %3, align 8
  %405 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %404, i32 0, i32 1
  store i32 %403, i32* %405, align 8
  br label %129

406:                                              ; preds = %129
  %407 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %3, align 8
  %408 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %3, align 8
  %409 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %408, i32 0, i32 0
  %410 = load i8*, i8** %409, align 8
  %411 = getelementptr inbounds i8, i8* %410, i32 1
  store i8* %411, i8** %409, align 8
  %412 = load i8, i8* %410, align 1
  %413 = sext i8 %412 to i32
  %414 = icmp ne i32 %413, 59
  %415 = zext i1 %414 to i32
  %416 = call i32 @PTS_ABORTIF(%struct.ParseTypedefData* %407, i32 %415)
  %417 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %3, align 8
  %418 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %417, i32 0, i32 0
  %419 = load i8*, i8** %418, align 8
  %420 = load i8, i8* %419, align 1
  %421 = sext i8 %420 to i32
  %422 = icmp eq i32 %421, 126
  br i1 %422, label %423, label %454

423:                                              ; preds = %406
  %424 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %3, align 8
  %425 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %424, i32 0, i32 0
  %426 = load i8*, i8** %425, align 8
  %427 = getelementptr inbounds i8, i8* %426, i32 1
  store i8* %427, i8** %425, align 8
  %428 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %3, align 8
  %429 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %3, align 8
  %430 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %429, i32 0, i32 0
  %431 = load i8*, i8** %430, align 8
  %432 = getelementptr inbounds i8, i8* %431, i32 1
  store i8* %432, i8** %430, align 8
  %433 = load i8, i8* %431, align 1
  %434 = sext i8 %433 to i32
  %435 = icmp ne i32 %434, 37
  %436 = zext i1 %435 to i32
  %437 = call i32 @PTS_ABORTIF(%struct.ParseTypedefData* %428, i32 %436)
  %438 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %3, align 8
  %439 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %3, align 8
  %440 = call i32 @stabs_pts_read_type_def(%struct.ParseTypedefData* %439, i32* null, %struct.symt** %8)
  %441 = icmp eq i32 %440, -1
  %442 = zext i1 %441 to i32
  %443 = call i32 @PTS_ABORTIF(%struct.ParseTypedefData* %438, i32 %442)
  %444 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %3, align 8
  %445 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %3, align 8
  %446 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %445, i32 0, i32 0
  %447 = load i8*, i8** %446, align 8
  %448 = getelementptr inbounds i8, i8* %447, i32 1
  store i8* %448, i8** %446, align 8
  %449 = load i8, i8* %447, align 1
  %450 = sext i8 %449 to i32
  %451 = icmp ne i32 %450, 59
  %452 = zext i1 %451 to i32
  %453 = call i32 @PTS_ABORTIF(%struct.ParseTypedefData* %444, i32 %452)
  br label %454

454:                                              ; preds = %423, %406
  ret i32 0
}

declare dso_local i32 @PTS_ABORTIF(%struct.ParseTypedefData*, i32) #1

declare dso_local i32 @stabs_pts_read_number(%struct.ParseTypedefData*, i64*) #1

declare dso_local i32 @symt_set_udt_size(i32, %struct.symt_udt*, i64) #1

declare dso_local i32 @stabs_pts_read_type_def(%struct.ParseTypedefData*, i32*, %struct.symt**) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i32) #1

declare dso_local i32 @symt_get_name(%struct.symt*) #1

declare dso_local i32 @symt_get_info(i32, %struct.symt*, i32, i64*) #1

declare dso_local i32 @symt_add_udt_element(i32, %struct.symt_udt*, i8*, %struct.symt*, i64, i64) #1

declare dso_local i32 @stabs_read_type_enum(float**) #1

declare dso_local i32 @stabs_pts_read_id(%struct.ParseTypedefData*) #1

declare dso_local i32 @stabs_pts_read_method_info(%struct.ParseTypedefData*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
