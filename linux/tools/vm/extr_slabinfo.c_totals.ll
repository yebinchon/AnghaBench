; ModuleID = '/home/carl/AnghaBench/linux/tools/vm/extr_slabinfo.c_totals.c'
source_filename = "/home/carl/AnghaBench/linux/tools/vm/extr_slabinfo.c_totals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slabinfo = type { i32, i64, i64, i64, i32, i32 }

@slabinfo = common dso_local global %struct.slabinfo* null, align 8
@slabs = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"No objects\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"No slabs\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Slabcache Totals\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"----------------\0A\00", align 1
@.str.4 = private unnamed_addr constant [59 x i8] c"Slabcaches : %15d   Aliases  : %11d->%-3d  Active:    %3d\0A\00", align 1
@aliases = common dso_local global i32 0, align 4
@alias_targets = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [52 x i8] c"Memory used: %15s   # Loss   : %15s   MRatio:%6s%%\0A\00", align 1
@.str.6 = private unnamed_addr constant [52 x i8] c"# Objects  : %15s   # PartObj: %15s   ORatio:%6s%%\0A\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.8 = private unnamed_addr constant [78 x i8] c"Per Cache         Average              Min              Max            Total\0A\00", align 1
@.str.9 = private unnamed_addr constant [78 x i8] c"----------------------------------------------------------------------------\0A\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"#Objects  %15s  %15s  %15s  %15s\0A\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"#Slabs    %15s  %15s  %15s  %15s\0A\00", align 1
@.str.12 = private unnamed_addr constant [34 x i8] c"#PartSlab %15s  %15s  %15s  %15s\0A\00", align 1
@.str.13 = private unnamed_addr constant [39 x i8] c"%%PartSlab%15s%% %15s%% %15s%% %15s%%\0A\00", align 1
@.str.14 = private unnamed_addr constant [34 x i8] c"PartObjs  %15s  %15s  %15s  %15s\0A\00", align 1
@.str.15 = private unnamed_addr constant [39 x i8] c"%% PartObj%15s%% %15s%% %15s%% %15s%%\0A\00", align 1
@.str.16 = private unnamed_addr constant [34 x i8] c"Memory    %15s  %15s  %15s  %15s\0A\00", align 1
@.str.17 = private unnamed_addr constant [34 x i8] c"Used      %15s  %15s  %15s  %15s\0A\00", align 1
@.str.18 = private unnamed_addr constant [34 x i8] c"Loss      %15s  %15s  %15s  %15s\0A\00", align 1
@.str.19 = private unnamed_addr constant [61 x i8] c"Per Object        Average              Min              Max\0A\00", align 1
@.str.20 = private unnamed_addr constant [61 x i8] c"-----------------------------------------------------------\0A\00", align 1
@.str.21 = private unnamed_addr constant [28 x i8] c"Memory    %15s  %15s  %15s\0A\00", align 1
@.str.22 = private unnamed_addr constant [28 x i8] c"User      %15s  %15s  %15s\0A\00", align 1
@.str.23 = private unnamed_addr constant [28 x i8] c"Loss      %15s  %15s  %15s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @totals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @totals() #0 {
  %1 = alloca %struct.slabinfo*, align 8
  %2 = alloca i32, align 4
  %3 = alloca [20 x i8], align 16
  %4 = alloca [20 x i8], align 16
  %5 = alloca [20 x i8], align 16
  %6 = alloca [20 x i8], align 16
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca i64, align 8
  %35 = alloca i64, align 8
  %36 = alloca i64, align 8
  %37 = alloca i64, align 8
  %38 = alloca i64, align 8
  %39 = alloca i64, align 8
  %40 = alloca i64, align 8
  %41 = alloca i64, align 8
  %42 = alloca i64, align 8
  %43 = alloca i64, align 8
  %44 = alloca i64, align 8
  %45 = alloca i64, align 8
  %46 = alloca i64, align 8
  %47 = alloca i64, align 8
  %48 = alloca i64, align 8
  %49 = alloca i64, align 8
  %50 = alloca i64, align 8
  %51 = alloca i64, align 8
  %52 = alloca i64, align 8
  %53 = alloca i64, align 8
  %54 = alloca i64, align 8
  %55 = alloca i64, align 8
  %56 = alloca i64, align 8
  %57 = alloca i64, align 8
  %58 = alloca i64, align 8
  %59 = alloca i64, align 8
  %60 = alloca i64, align 8
  store i32 0, i32* %2, align 4
  store i64 -9223372036854775808, i64* %7, align 8
  %61 = load i64, i64* %7, align 8
  store i64 %61, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %62 = load i64, i64* %7, align 8
  store i64 %62, i64* %11, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %14, align 8
  %63 = load i64, i64* %7, align 8
  store i64 %63, i64* %15, align 8
  store i64 0, i64* %16, align 8
  store i64 0, i64* %18, align 8
  %64 = load i64, i64* %7, align 8
  store i64 %64, i64* %19, align 8
  store i64 0, i64* %20, align 8
  store i64 0, i64* %22, align 8
  %65 = load i64, i64* %7, align 8
  store i64 %65, i64* %23, align 8
  store i64 0, i64* %24, align 8
  store i64 0, i64* %26, align 8
  %66 = load i64, i64* %7, align 8
  store i64 %66, i64* %27, align 8
  store i64 0, i64* %28, align 8
  store i64 0, i64* %30, align 8
  %67 = load i64, i64* %7, align 8
  store i64 %67, i64* %31, align 8
  store i64 0, i64* %32, align 8
  store i64 0, i64* %34, align 8
  %68 = load i64, i64* %7, align 8
  store i64 %68, i64* %35, align 8
  store i64 0, i64* %36, align 8
  store i64 0, i64* %38, align 8
  %69 = load i64, i64* %7, align 8
  store i64 %69, i64* %39, align 8
  store i64 0, i64* %40, align 8
  store i64 0, i64* %42, align 8
  store i64 100, i64* %43, align 8
  store i64 0, i64* %44, align 8
  store i64 0, i64* %46, align 8
  %70 = load i64, i64* %7, align 8
  store i64 %70, i64* %47, align 8
  store i64 0, i64* %48, align 8
  store i64 0, i64* %50, align 8
  store i64 100, i64* %51, align 8
  store i64 0, i64* %52, align 8
  store i64 0, i64* %54, align 8
  %71 = load %struct.slabinfo*, %struct.slabinfo** @slabinfo, align 8
  store %struct.slabinfo* %71, %struct.slabinfo** %1, align 8
  br label %72

72:                                               ; preds = %396, %0
  %73 = load %struct.slabinfo*, %struct.slabinfo** %1, align 8
  %74 = load %struct.slabinfo*, %struct.slabinfo** @slabinfo, align 8
  %75 = load i32, i32* @slabs, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %74, i64 %76
  %78 = icmp ult %struct.slabinfo* %73, %77
  br i1 %78, label %79, label %399

79:                                               ; preds = %72
  %80 = load %struct.slabinfo*, %struct.slabinfo** %1, align 8
  %81 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %79
  %85 = load %struct.slabinfo*, %struct.slabinfo** %1, align 8
  %86 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %84, %79
  br label %396

90:                                               ; preds = %84
  %91 = load i32, i32* %2, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %2, align 4
  %93 = load %struct.slabinfo*, %struct.slabinfo** %1, align 8
  %94 = call i64 @slab_size(%struct.slabinfo* %93)
  store i64 %94, i64* %55, align 8
  %95 = load %struct.slabinfo*, %struct.slabinfo** %1, align 8
  %96 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.slabinfo*, %struct.slabinfo** %1, align 8
  %99 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = mul i64 %97, %100
  store i64 %101, i64* %56, align 8
  %102 = load i64, i64* %55, align 8
  %103 = load i64, i64* %56, align 8
  %104 = sub i64 %102, %103
  store i64 %104, i64* %57, align 8
  %105 = load %struct.slabinfo*, %struct.slabinfo** %1, align 8
  %106 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %105, i32 0, i32 3
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.slabinfo*, %struct.slabinfo** %1, align 8
  %109 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = sub i64 %107, %110
  store i64 %111, i64* %58, align 8
  %112 = load %struct.slabinfo*, %struct.slabinfo** %1, align 8
  %113 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 8
  %115 = mul nsw i32 %114, 100
  %116 = load %struct.slabinfo*, %struct.slabinfo** %1, align 8
  %117 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = sdiv i32 %115, %118
  %120 = sext i32 %119 to i64
  store i64 %120, i64* %59, align 8
  %121 = load i64, i64* %59, align 8
  %122 = icmp ugt i64 %121, 100
  br i1 %122, label %123, label %124

123:                                              ; preds = %90
  store i64 100, i64* %59, align 8
  br label %124

124:                                              ; preds = %123, %90
  %125 = load %struct.slabinfo*, %struct.slabinfo** %1, align 8
  %126 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %125, i32 0, i32 5
  %127 = load i32, i32* %126, align 4
  %128 = mul nsw i32 %127, 100
  %129 = sext i32 %128 to i64
  %130 = load %struct.slabinfo*, %struct.slabinfo** %1, align 8
  %131 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = udiv i64 %129, %132
  store i64 %133, i64* %60, align 8
  %134 = load i64, i64* %60, align 8
  %135 = icmp ugt i64 %134, 100
  br i1 %135, label %136, label %137

136:                                              ; preds = %124
  store i64 100, i64* %60, align 8
  br label %137

137:                                              ; preds = %136, %124
  %138 = load %struct.slabinfo*, %struct.slabinfo** %1, align 8
  %139 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %138, i32 0, i32 2
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* %8, align 8
  %142 = icmp ult i64 %140, %141
  br i1 %142, label %143, label %147

143:                                              ; preds = %137
  %144 = load %struct.slabinfo*, %struct.slabinfo** %1, align 8
  %145 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %144, i32 0, i32 2
  %146 = load i64, i64* %145, align 8
  store i64 %146, i64* %8, align 8
  br label %147

147:                                              ; preds = %143, %137
  %148 = load %struct.slabinfo*, %struct.slabinfo** %1, align 8
  %149 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %148, i32 0, i32 4
  %150 = load i32, i32* %149, align 8
  %151 = sext i32 %150 to i64
  %152 = load i64, i64* %11, align 8
  %153 = icmp ult i64 %151, %152
  br i1 %153, label %154, label %159

154:                                              ; preds = %147
  %155 = load %struct.slabinfo*, %struct.slabinfo** %1, align 8
  %156 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %155, i32 0, i32 4
  %157 = load i32, i32* %156, align 8
  %158 = sext i32 %157 to i64
  store i64 %158, i64* %11, align 8
  br label %159

159:                                              ; preds = %154, %147
  %160 = load %struct.slabinfo*, %struct.slabinfo** %1, align 8
  %161 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = sext i32 %162 to i64
  %164 = load i64, i64* %15, align 8
  %165 = icmp ult i64 %163, %164
  br i1 %165, label %166, label %171

166:                                              ; preds = %159
  %167 = load %struct.slabinfo*, %struct.slabinfo** %1, align 8
  %168 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = sext i32 %169 to i64
  store i64 %170, i64* %15, align 8
  br label %171

171:                                              ; preds = %166, %159
  %172 = load i64, i64* %55, align 8
  %173 = load i64, i64* %19, align 8
  %174 = icmp ult i64 %172, %173
  br i1 %174, label %175, label %177

175:                                              ; preds = %171
  %176 = load i64, i64* %55, align 8
  store i64 %176, i64* %19, align 8
  br label %177

177:                                              ; preds = %175, %171
  %178 = load i64, i64* %57, align 8
  %179 = load i64, i64* %27, align 8
  %180 = icmp ult i64 %178, %179
  br i1 %180, label %181, label %183

181:                                              ; preds = %177
  %182 = load i64, i64* %57, align 8
  store i64 %182, i64* %27, align 8
  br label %183

183:                                              ; preds = %181, %177
  %184 = load i64, i64* %58, align 8
  %185 = load i64, i64* %35, align 8
  %186 = icmp ult i64 %184, %185
  br i1 %186, label %187, label %189

187:                                              ; preds = %183
  %188 = load i64, i64* %58, align 8
  store i64 %188, i64* %35, align 8
  br label %189

189:                                              ; preds = %187, %183
  %190 = load %struct.slabinfo*, %struct.slabinfo** %1, align 8
  %191 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %190, i32 0, i32 1
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* %31, align 8
  %194 = icmp ult i64 %192, %193
  br i1 %194, label %195, label %199

195:                                              ; preds = %189
  %196 = load %struct.slabinfo*, %struct.slabinfo** %1, align 8
  %197 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %196, i32 0, i32 1
  %198 = load i64, i64* %197, align 8
  store i64 %198, i64* %31, align 8
  br label %199

199:                                              ; preds = %195, %189
  %200 = load i64, i64* %56, align 8
  %201 = load i64, i64* %23, align 8
  %202 = icmp ult i64 %200, %201
  br i1 %202, label %203, label %205

203:                                              ; preds = %199
  %204 = load i64, i64* %56, align 8
  store i64 %204, i64* %23, align 8
  br label %205

205:                                              ; preds = %203, %199
  %206 = load %struct.slabinfo*, %struct.slabinfo** %1, align 8
  %207 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %206, i32 0, i32 5
  %208 = load i32, i32* %207, align 4
  %209 = sext i32 %208 to i64
  %210 = load i64, i64* %47, align 8
  %211 = icmp ult i64 %209, %210
  br i1 %211, label %212, label %217

212:                                              ; preds = %205
  %213 = load %struct.slabinfo*, %struct.slabinfo** %1, align 8
  %214 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %213, i32 0, i32 5
  %215 = load i32, i32* %214, align 4
  %216 = sext i32 %215 to i64
  store i64 %216, i64* %47, align 8
  br label %217

217:                                              ; preds = %212, %205
  %218 = load i64, i64* %59, align 8
  %219 = load i64, i64* %43, align 8
  %220 = icmp ult i64 %218, %219
  br i1 %220, label %221, label %223

221:                                              ; preds = %217
  %222 = load i64, i64* %59, align 8
  store i64 %222, i64* %43, align 8
  br label %223

223:                                              ; preds = %221, %217
  %224 = load i64, i64* %60, align 8
  %225 = load i64, i64* %51, align 8
  %226 = icmp ult i64 %224, %225
  br i1 %226, label %227, label %229

227:                                              ; preds = %223
  %228 = load i64, i64* %60, align 8
  store i64 %228, i64* %51, align 8
  br label %229

229:                                              ; preds = %227, %223
  %230 = load %struct.slabinfo*, %struct.slabinfo** %1, align 8
  %231 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %230, i32 0, i32 3
  %232 = load i64, i64* %231, align 8
  %233 = load i64, i64* %39, align 8
  %234 = icmp ult i64 %232, %233
  br i1 %234, label %235, label %239

235:                                              ; preds = %229
  %236 = load %struct.slabinfo*, %struct.slabinfo** %1, align 8
  %237 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %236, i32 0, i32 3
  %238 = load i64, i64* %237, align 8
  store i64 %238, i64* %39, align 8
  br label %239

239:                                              ; preds = %235, %229
  %240 = load %struct.slabinfo*, %struct.slabinfo** %1, align 8
  %241 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %240, i32 0, i32 2
  %242 = load i64, i64* %241, align 8
  %243 = load i64, i64* %9, align 8
  %244 = icmp ugt i64 %242, %243
  br i1 %244, label %245, label %249

245:                                              ; preds = %239
  %246 = load %struct.slabinfo*, %struct.slabinfo** %1, align 8
  %247 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %246, i32 0, i32 2
  %248 = load i64, i64* %247, align 8
  store i64 %248, i64* %9, align 8
  br label %249

249:                                              ; preds = %245, %239
  %250 = load %struct.slabinfo*, %struct.slabinfo** %1, align 8
  %251 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %250, i32 0, i32 4
  %252 = load i32, i32* %251, align 8
  %253 = sext i32 %252 to i64
  %254 = load i64, i64* %12, align 8
  %255 = icmp ugt i64 %253, %254
  br i1 %255, label %256, label %261

256:                                              ; preds = %249
  %257 = load %struct.slabinfo*, %struct.slabinfo** %1, align 8
  %258 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %257, i32 0, i32 4
  %259 = load i32, i32* %258, align 8
  %260 = sext i32 %259 to i64
  store i64 %260, i64* %12, align 8
  br label %261

261:                                              ; preds = %256, %249
  %262 = load %struct.slabinfo*, %struct.slabinfo** %1, align 8
  %263 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = sext i32 %264 to i64
  %266 = load i64, i64* %16, align 8
  %267 = icmp ugt i64 %265, %266
  br i1 %267, label %268, label %273

268:                                              ; preds = %261
  %269 = load %struct.slabinfo*, %struct.slabinfo** %1, align 8
  %270 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = sext i32 %271 to i64
  store i64 %272, i64* %16, align 8
  br label %273

273:                                              ; preds = %268, %261
  %274 = load i64, i64* %55, align 8
  %275 = load i64, i64* %20, align 8
  %276 = icmp ugt i64 %274, %275
  br i1 %276, label %277, label %279

277:                                              ; preds = %273
  %278 = load i64, i64* %55, align 8
  store i64 %278, i64* %20, align 8
  br label %279

279:                                              ; preds = %277, %273
  %280 = load i64, i64* %57, align 8
  %281 = load i64, i64* %28, align 8
  %282 = icmp ugt i64 %280, %281
  br i1 %282, label %283, label %285

283:                                              ; preds = %279
  %284 = load i64, i64* %57, align 8
  store i64 %284, i64* %28, align 8
  br label %285

285:                                              ; preds = %283, %279
  %286 = load i64, i64* %58, align 8
  %287 = load i64, i64* %36, align 8
  %288 = icmp ugt i64 %286, %287
  br i1 %288, label %289, label %291

289:                                              ; preds = %285
  %290 = load i64, i64* %58, align 8
  store i64 %290, i64* %36, align 8
  br label %291

291:                                              ; preds = %289, %285
  %292 = load %struct.slabinfo*, %struct.slabinfo** %1, align 8
  %293 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %292, i32 0, i32 1
  %294 = load i64, i64* %293, align 8
  %295 = load i64, i64* %32, align 8
  %296 = icmp ugt i64 %294, %295
  br i1 %296, label %297, label %301

297:                                              ; preds = %291
  %298 = load %struct.slabinfo*, %struct.slabinfo** %1, align 8
  %299 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %298, i32 0, i32 1
  %300 = load i64, i64* %299, align 8
  store i64 %300, i64* %32, align 8
  br label %301

301:                                              ; preds = %297, %291
  %302 = load i64, i64* %56, align 8
  %303 = load i64, i64* %24, align 8
  %304 = icmp ugt i64 %302, %303
  br i1 %304, label %305, label %307

305:                                              ; preds = %301
  %306 = load i64, i64* %56, align 8
  store i64 %306, i64* %24, align 8
  br label %307

307:                                              ; preds = %305, %301
  %308 = load %struct.slabinfo*, %struct.slabinfo** %1, align 8
  %309 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %308, i32 0, i32 5
  %310 = load i32, i32* %309, align 4
  %311 = sext i32 %310 to i64
  %312 = load i64, i64* %48, align 8
  %313 = icmp ugt i64 %311, %312
  br i1 %313, label %314, label %319

314:                                              ; preds = %307
  %315 = load %struct.slabinfo*, %struct.slabinfo** %1, align 8
  %316 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %315, i32 0, i32 5
  %317 = load i32, i32* %316, align 4
  %318 = sext i32 %317 to i64
  store i64 %318, i64* %48, align 8
  br label %319

319:                                              ; preds = %314, %307
  %320 = load i64, i64* %59, align 8
  %321 = load i64, i64* %44, align 8
  %322 = icmp ugt i64 %320, %321
  br i1 %322, label %323, label %325

323:                                              ; preds = %319
  %324 = load i64, i64* %59, align 8
  store i64 %324, i64* %44, align 8
  br label %325

325:                                              ; preds = %323, %319
  %326 = load i64, i64* %60, align 8
  %327 = load i64, i64* %52, align 8
  %328 = icmp ugt i64 %326, %327
  br i1 %328, label %329, label %331

329:                                              ; preds = %325
  %330 = load i64, i64* %60, align 8
  store i64 %330, i64* %52, align 8
  br label %331

331:                                              ; preds = %329, %325
  %332 = load %struct.slabinfo*, %struct.slabinfo** %1, align 8
  %333 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %332, i32 0, i32 3
  %334 = load i64, i64* %333, align 8
  %335 = load i64, i64* %40, align 8
  %336 = icmp ugt i64 %334, %335
  br i1 %336, label %337, label %341

337:                                              ; preds = %331
  %338 = load %struct.slabinfo*, %struct.slabinfo** %1, align 8
  %339 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %338, i32 0, i32 3
  %340 = load i64, i64* %339, align 8
  store i64 %340, i64* %40, align 8
  br label %341

341:                                              ; preds = %337, %331
  %342 = load %struct.slabinfo*, %struct.slabinfo** %1, align 8
  %343 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %342, i32 0, i32 4
  %344 = load i32, i32* %343, align 8
  %345 = sext i32 %344 to i64
  %346 = load i64, i64* %14, align 8
  %347 = add i64 %346, %345
  store i64 %347, i64* %14, align 8
  %348 = load %struct.slabinfo*, %struct.slabinfo** %1, align 8
  %349 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %348, i32 0, i32 0
  %350 = load i32, i32* %349, align 8
  %351 = sext i32 %350 to i64
  %352 = load i64, i64* %18, align 8
  %353 = add i64 %352, %351
  store i64 %353, i64* %18, align 8
  %354 = load i64, i64* %55, align 8
  %355 = load i64, i64* %22, align 8
  %356 = add i64 %355, %354
  store i64 %356, i64* %22, align 8
  %357 = load i64, i64* %57, align 8
  %358 = load i64, i64* %30, align 8
  %359 = add i64 %358, %357
  store i64 %359, i64* %30, align 8
  %360 = load %struct.slabinfo*, %struct.slabinfo** %1, align 8
  %361 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %360, i32 0, i32 1
  %362 = load i64, i64* %361, align 8
  %363 = load i64, i64* %34, align 8
  %364 = add i64 %363, %362
  store i64 %364, i64* %34, align 8
  %365 = load i64, i64* %56, align 8
  %366 = load i64, i64* %26, align 8
  %367 = add i64 %366, %365
  store i64 %367, i64* %26, align 8
  %368 = load %struct.slabinfo*, %struct.slabinfo** %1, align 8
  %369 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %368, i32 0, i32 5
  %370 = load i32, i32* %369, align 4
  %371 = sext i32 %370 to i64
  %372 = load i64, i64* %50, align 8
  %373 = add i64 %372, %371
  store i64 %373, i64* %50, align 8
  %374 = load i64, i64* %59, align 8
  %375 = load i64, i64* %46, align 8
  %376 = add i64 %375, %374
  store i64 %376, i64* %46, align 8
  %377 = load i64, i64* %60, align 8
  %378 = load i64, i64* %54, align 8
  %379 = add i64 %378, %377
  store i64 %379, i64* %54, align 8
  %380 = load %struct.slabinfo*, %struct.slabinfo** %1, align 8
  %381 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %380, i32 0, i32 1
  %382 = load i64, i64* %381, align 8
  %383 = load i64, i64* %58, align 8
  %384 = mul i64 %382, %383
  %385 = load i64, i64* %38, align 8
  %386 = add i64 %385, %384
  store i64 %386, i64* %38, align 8
  %387 = load %struct.slabinfo*, %struct.slabinfo** %1, align 8
  %388 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %387, i32 0, i32 1
  %389 = load i64, i64* %388, align 8
  %390 = load %struct.slabinfo*, %struct.slabinfo** %1, align 8
  %391 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %390, i32 0, i32 3
  %392 = load i64, i64* %391, align 8
  %393 = mul i64 %389, %392
  %394 = load i64, i64* %42, align 8
  %395 = add i64 %394, %393
  store i64 %395, i64* %42, align 8
  br label %396

396:                                              ; preds = %341, %89
  %397 = load %struct.slabinfo*, %struct.slabinfo** %1, align 8
  %398 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %397, i32 1
  store %struct.slabinfo* %398, %struct.slabinfo** %1, align 8
  br label %72

399:                                              ; preds = %72
  %400 = load i64, i64* %34, align 8
  %401 = icmp ne i64 %400, 0
  br i1 %401, label %404, label %402

402:                                              ; preds = %399
  %403 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %702

404:                                              ; preds = %399
  %405 = load i32, i32* %2, align 4
  %406 = icmp ne i32 %405, 0
  br i1 %406, label %409, label %407

407:                                              ; preds = %404
  %408 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %702

409:                                              ; preds = %404
  %410 = load i64, i64* %14, align 8
  %411 = load i32, i32* %2, align 4
  %412 = sext i32 %411 to i64
  %413 = udiv i64 %410, %412
  store i64 %413, i64* %13, align 8
  %414 = load i64, i64* %18, align 8
  %415 = load i32, i32* %2, align 4
  %416 = sext i32 %415 to i64
  %417 = udiv i64 %414, %416
  store i64 %417, i64* %17, align 8
  %418 = load i64, i64* %22, align 8
  %419 = load i32, i32* %2, align 4
  %420 = sext i32 %419 to i64
  %421 = udiv i64 %418, %420
  store i64 %421, i64* %21, align 8
  %422 = load i64, i64* %30, align 8
  %423 = load i32, i32* %2, align 4
  %424 = sext i32 %423 to i64
  %425 = udiv i64 %422, %424
  store i64 %425, i64* %29, align 8
  %426 = load i64, i64* %34, align 8
  %427 = load i32, i32* %2, align 4
  %428 = sext i32 %427 to i64
  %429 = udiv i64 %426, %428
  store i64 %429, i64* %33, align 8
  %430 = load i64, i64* %26, align 8
  %431 = load i32, i32* %2, align 4
  %432 = sext i32 %431 to i64
  %433 = udiv i64 %430, %432
  store i64 %433, i64* %25, align 8
  %434 = load i64, i64* %50, align 8
  %435 = load i32, i32* %2, align 4
  %436 = sext i32 %435 to i64
  %437 = udiv i64 %434, %436
  store i64 %437, i64* %49, align 8
  %438 = load i64, i64* %46, align 8
  %439 = load i32, i32* %2, align 4
  %440 = sext i32 %439 to i64
  %441 = udiv i64 %438, %440
  store i64 %441, i64* %45, align 8
  %442 = load i64, i64* %54, align 8
  %443 = load i32, i32* %2, align 4
  %444 = sext i32 %443 to i64
  %445 = udiv i64 %442, %444
  store i64 %445, i64* %53, align 8
  %446 = load i64, i64* %26, align 8
  %447 = load i64, i64* %34, align 8
  %448 = udiv i64 %446, %447
  store i64 %448, i64* %10, align 8
  %449 = load i64, i64* %38, align 8
  %450 = load i64, i64* %34, align 8
  %451 = udiv i64 %449, %450
  store i64 %451, i64* %37, align 8
  %452 = load i64, i64* %50, align 8
  %453 = mul i64 %452, 100
  %454 = load i64, i64* %34, align 8
  %455 = udiv i64 %453, %454
  store i64 %455, i64* %49, align 8
  %456 = load i64, i64* %42, align 8
  %457 = load i64, i64* %34, align 8
  %458 = udiv i64 %456, %457
  store i64 %458, i64* %41, align 8
  %459 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %460 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %461 = load i32, i32* @slabs, align 4
  %462 = load i32, i32* @aliases, align 4
  %463 = load i32, i32* @alias_targets, align 4
  %464 = load i32, i32* %2, align 4
  %465 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i64 0, i64 0), i32 %461, i32 %462, i32 %463, i32 %464)
  %466 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 0
  %467 = load i64, i64* %22, align 8
  %468 = call i32 @store_size(i8* %466, i64 %467)
  %469 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 0
  %470 = load i64, i64* %30, align 8
  %471 = call i32 @store_size(i8* %469, i64 %470)
  %472 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0
  %473 = load i64, i64* %30, align 8
  %474 = mul i64 %473, 100
  %475 = load i64, i64* %26, align 8
  %476 = udiv i64 %474, %475
  %477 = call i32 @store_size(i8* %472, i64 %476)
  %478 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 0
  %479 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 0
  %480 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0
  %481 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0), i8* %478, i8* %479, i8* %480)
  %482 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 0
  %483 = load i64, i64* %34, align 8
  %484 = call i32 @store_size(i8* %482, i64 %483)
  %485 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 0
  %486 = load i64, i64* %50, align 8
  %487 = call i32 @store_size(i8* %485, i64 %486)
  %488 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0
  %489 = load i64, i64* %50, align 8
  %490 = mul i64 %489, 100
  %491 = load i64, i64* %34, align 8
  %492 = udiv i64 %490, %491
  %493 = call i32 @store_size(i8* %488, i64 %492)
  %494 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 0
  %495 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 0
  %496 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0
  %497 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0), i8* %494, i8* %495, i8* %496)
  %498 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %499 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.8, i64 0, i64 0))
  %500 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.9, i64 0, i64 0))
  %501 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 0
  %502 = load i64, i64* %33, align 8
  %503 = call i32 @store_size(i8* %501, i64 %502)
  %504 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 0
  %505 = load i64, i64* %31, align 8
  %506 = call i32 @store_size(i8* %504, i64 %505)
  %507 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0
  %508 = load i64, i64* %32, align 8
  %509 = call i32 @store_size(i8* %507, i64 %508)
  %510 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 0
  %511 = load i64, i64* %34, align 8
  %512 = call i32 @store_size(i8* %510, i64 %511)
  %513 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 0
  %514 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 0
  %515 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0
  %516 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 0
  %517 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0), i8* %513, i8* %514, i8* %515, i8* %516)
  %518 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 0
  %519 = load i64, i64* %17, align 8
  %520 = call i32 @store_size(i8* %518, i64 %519)
  %521 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 0
  %522 = load i64, i64* %15, align 8
  %523 = call i32 @store_size(i8* %521, i64 %522)
  %524 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0
  %525 = load i64, i64* %16, align 8
  %526 = call i32 @store_size(i8* %524, i64 %525)
  %527 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 0
  %528 = load i64, i64* %18, align 8
  %529 = call i32 @store_size(i8* %527, i64 %528)
  %530 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 0
  %531 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 0
  %532 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0
  %533 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 0
  %534 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i64 0, i64 0), i8* %530, i8* %531, i8* %532, i8* %533)
  %535 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 0
  %536 = load i64, i64* %13, align 8
  %537 = call i32 @store_size(i8* %535, i64 %536)
  %538 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 0
  %539 = load i64, i64* %11, align 8
  %540 = call i32 @store_size(i8* %538, i64 %539)
  %541 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0
  %542 = load i64, i64* %12, align 8
  %543 = call i32 @store_size(i8* %541, i64 %542)
  %544 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 0
  %545 = load i64, i64* %14, align 8
  %546 = call i32 @store_size(i8* %544, i64 %545)
  %547 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 0
  %548 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 0
  %549 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0
  %550 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 0
  %551 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i64 0, i64 0), i8* %547, i8* %548, i8* %549, i8* %550)
  %552 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 0
  %553 = load i64, i64* %45, align 8
  %554 = call i32 @store_size(i8* %552, i64 %553)
  %555 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 0
  %556 = load i64, i64* %43, align 8
  %557 = call i32 @store_size(i8* %555, i64 %556)
  %558 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0
  %559 = load i64, i64* %44, align 8
  %560 = call i32 @store_size(i8* %558, i64 %559)
  %561 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 0
  %562 = load i64, i64* %14, align 8
  %563 = mul i64 %562, 100
  %564 = load i64, i64* %18, align 8
  %565 = udiv i64 %563, %564
  %566 = call i32 @store_size(i8* %561, i64 %565)
  %567 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 0
  %568 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 0
  %569 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0
  %570 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 0
  %571 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.13, i64 0, i64 0), i8* %567, i8* %568, i8* %569, i8* %570)
  %572 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 0
  %573 = load i64, i64* %49, align 8
  %574 = call i32 @store_size(i8* %572, i64 %573)
  %575 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 0
  %576 = load i64, i64* %47, align 8
  %577 = call i32 @store_size(i8* %575, i64 %576)
  %578 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0
  %579 = load i64, i64* %48, align 8
  %580 = call i32 @store_size(i8* %578, i64 %579)
  %581 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 0
  %582 = load i64, i64* %50, align 8
  %583 = call i32 @store_size(i8* %581, i64 %582)
  %584 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 0
  %585 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 0
  %586 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0
  %587 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 0
  %588 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.14, i64 0, i64 0), i8* %584, i8* %585, i8* %586, i8* %587)
  %589 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 0
  %590 = load i64, i64* %53, align 8
  %591 = call i32 @store_size(i8* %589, i64 %590)
  %592 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 0
  %593 = load i64, i64* %51, align 8
  %594 = call i32 @store_size(i8* %592, i64 %593)
  %595 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0
  %596 = load i64, i64* %52, align 8
  %597 = call i32 @store_size(i8* %595, i64 %596)
  %598 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 0
  %599 = load i64, i64* %50, align 8
  %600 = mul i64 %599, 100
  %601 = load i64, i64* %34, align 8
  %602 = udiv i64 %600, %601
  %603 = call i32 @store_size(i8* %598, i64 %602)
  %604 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 0
  %605 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 0
  %606 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0
  %607 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 0
  %608 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.15, i64 0, i64 0), i8* %604, i8* %605, i8* %606, i8* %607)
  %609 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 0
  %610 = load i64, i64* %21, align 8
  %611 = call i32 @store_size(i8* %609, i64 %610)
  %612 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 0
  %613 = load i64, i64* %19, align 8
  %614 = call i32 @store_size(i8* %612, i64 %613)
  %615 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0
  %616 = load i64, i64* %20, align 8
  %617 = call i32 @store_size(i8* %615, i64 %616)
  %618 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 0
  %619 = load i64, i64* %22, align 8
  %620 = call i32 @store_size(i8* %618, i64 %619)
  %621 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 0
  %622 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 0
  %623 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0
  %624 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 0
  %625 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.16, i64 0, i64 0), i8* %621, i8* %622, i8* %623, i8* %624)
  %626 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 0
  %627 = load i64, i64* %25, align 8
  %628 = call i32 @store_size(i8* %626, i64 %627)
  %629 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 0
  %630 = load i64, i64* %23, align 8
  %631 = call i32 @store_size(i8* %629, i64 %630)
  %632 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0
  %633 = load i64, i64* %24, align 8
  %634 = call i32 @store_size(i8* %632, i64 %633)
  %635 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 0
  %636 = load i64, i64* %26, align 8
  %637 = call i32 @store_size(i8* %635, i64 %636)
  %638 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 0
  %639 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 0
  %640 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0
  %641 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 0
  %642 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.17, i64 0, i64 0), i8* %638, i8* %639, i8* %640, i8* %641)
  %643 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 0
  %644 = load i64, i64* %29, align 8
  %645 = call i32 @store_size(i8* %643, i64 %644)
  %646 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 0
  %647 = load i64, i64* %27, align 8
  %648 = call i32 @store_size(i8* %646, i64 %647)
  %649 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0
  %650 = load i64, i64* %28, align 8
  %651 = call i32 @store_size(i8* %649, i64 %650)
  %652 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 0
  %653 = load i64, i64* %30, align 8
  %654 = call i32 @store_size(i8* %652, i64 %653)
  %655 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 0
  %656 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 0
  %657 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0
  %658 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 0
  %659 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.18, i64 0, i64 0), i8* %655, i8* %656, i8* %657, i8* %658)
  %660 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %661 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.19, i64 0, i64 0))
  %662 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.20, i64 0, i64 0))
  %663 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 0
  %664 = load i64, i64* %41, align 8
  %665 = call i32 @store_size(i8* %663, i64 %664)
  %666 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 0
  %667 = load i64, i64* %39, align 8
  %668 = call i32 @store_size(i8* %666, i64 %667)
  %669 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0
  %670 = load i64, i64* %40, align 8
  %671 = call i32 @store_size(i8* %669, i64 %670)
  %672 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 0
  %673 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 0
  %674 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0
  %675 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.21, i64 0, i64 0), i8* %672, i8* %673, i8* %674)
  %676 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 0
  %677 = load i64, i64* %10, align 8
  %678 = call i32 @store_size(i8* %676, i64 %677)
  %679 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 0
  %680 = load i64, i64* %8, align 8
  %681 = call i32 @store_size(i8* %679, i64 %680)
  %682 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0
  %683 = load i64, i64* %9, align 8
  %684 = call i32 @store_size(i8* %682, i64 %683)
  %685 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 0
  %686 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 0
  %687 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0
  %688 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.22, i64 0, i64 0), i8* %685, i8* %686, i8* %687)
  %689 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 0
  %690 = load i64, i64* %37, align 8
  %691 = call i32 @store_size(i8* %689, i64 %690)
  %692 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 0
  %693 = load i64, i64* %35, align 8
  %694 = call i32 @store_size(i8* %692, i64 %693)
  %695 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0
  %696 = load i64, i64* %36, align 8
  %697 = call i32 @store_size(i8* %695, i64 %696)
  %698 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 0
  %699 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 0
  %700 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0
  %701 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.23, i64 0, i64 0), i8* %698, i8* %699, i8* %700)
  br label %702

702:                                              ; preds = %409, %407, %402
  ret void
}

declare dso_local i64 @slab_size(%struct.slabinfo*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @store_size(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
