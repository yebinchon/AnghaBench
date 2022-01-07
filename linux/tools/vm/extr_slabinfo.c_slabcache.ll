; ModuleID = '/home/carl/AnghaBench/linux/tools/vm/extr_slabinfo.c_slabcache.c'
source_filename = "/home/carl/AnghaBench/linux/tools/vm/extr_slabinfo.c_slabcache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slabinfo = type { i8*, i32, i32, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [2 x i8] c"*\00", align 1
@unreclaim_only = common dso_local global i64 0, align 8
@actual_slabs = common dso_local global i32 0, align 4
@skip_zero = common dso_local global i64 0, align 8
@show_empty = common dso_local global i64 0, align 8
@sort_loss = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"%lu/%lu/%d\00", align 1
@line = common dso_local global i32 0, align 4
@show_activity = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [53 x i8] c"%-21s %8ld %10ld %10ld %3ld %3ld %5ld %1d %4ld %4ld\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"%-21s %8ld %7d %15s %14s %4d %1d %3ld %3ld %s\0A\00", align 1
@page_size = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.slabinfo*)* @slabcache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @slabcache(%struct.slabinfo* %0) #0 {
  %2 = alloca %struct.slabinfo*, align 8
  %3 = alloca [20 x i8], align 16
  %4 = alloca [40 x i8], align 16
  %5 = alloca [20 x i8], align 16
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.slabinfo* %0, %struct.slabinfo** %2, align 8
  %9 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0
  store i8* %9, i8** %6, align 8
  %10 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %11 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = call i64 @strcmp(i8* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %286

16:                                               ; preds = %1
  %17 = load i64, i64* @unreclaim_only, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %16
  %20 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %21 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %20, i32 0, i32 18
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %286

25:                                               ; preds = %19, %16
  %26 = load i32, i32* @actual_slabs, align 4
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %30 = call i32 @report(%struct.slabinfo* %29)
  br label %286

31:                                               ; preds = %25
  %32 = load i64, i64* @skip_zero, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %31
  %35 = load i64, i64* @show_empty, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %34
  %38 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %39 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %37
  br label %286

43:                                               ; preds = %37, %34, %31
  %44 = load i64, i64* @show_empty, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %43
  %47 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %48 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %286

52:                                               ; preds = %46, %43
  %53 = load i64, i64* @sort_loss, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %52
  %56 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 0
  %57 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %58 = call i32 @slab_size(%struct.slabinfo* %57)
  %59 = call i32 @store_size(i8* %56, i32 %58)
  br label %65

60:                                               ; preds = %52
  %61 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 0
  %62 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %63 = call i32 @slab_waste(%struct.slabinfo* %62)
  %64 = call i32 @store_size(i8* %61, i32 %63)
  br label %65

65:                                               ; preds = %60, %55
  %66 = getelementptr inbounds [40 x i8], [40 x i8]* %4, i64 0, i64 0
  %67 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %68 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = sext i32 %69 to i64
  %71 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %72 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %71, i32 0, i32 23
  %73 = load i64, i64* %72, align 8
  %74 = sub nsw i64 %70, %73
  %75 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %76 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %79 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %78, i32 0, i32 23
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @snprintf(i8* %66, i32 40, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i64 %74, i32 %77, i64 %80)
  %82 = load i32, i32* @line, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* @line, align 4
  %84 = icmp ne i32 %82, 0
  br i1 %84, label %87, label %85

85:                                               ; preds = %65
  %86 = call i32 (...) @first_line()
  br label %87

87:                                               ; preds = %85, %65
  %88 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %89 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %88, i32 0, i32 22
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %87
  %93 = load i8*, i8** %6, align 8
  %94 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %94, i8** %6, align 8
  store i8 42, i8* %93, align 1
  br label %95

95:                                               ; preds = %92, %87
  %96 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %97 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %96, i32 0, i32 21
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %95
  %101 = load i8*, i8** %6, align 8
  %102 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %102, i8** %6, align 8
  store i8 100, i8* %101, align 1
  br label %103

103:                                              ; preds = %100, %95
  %104 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %105 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %104, i32 0, i32 20
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %103
  %109 = load i8*, i8** %6, align 8
  %110 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %110, i8** %6, align 8
  store i8 65, i8* %109, align 1
  br label %111

111:                                              ; preds = %108, %103
  %112 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %113 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %112, i32 0, i32 19
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %111
  %117 = load i8*, i8** %6, align 8
  %118 = getelementptr inbounds i8, i8* %117, i32 1
  store i8* %118, i8** %6, align 8
  store i8 80, i8* %117, align 1
  br label %119

119:                                              ; preds = %116, %111
  %120 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %121 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %120, i32 0, i32 18
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %119
  %125 = load i8*, i8** %6, align 8
  %126 = getelementptr inbounds i8, i8* %125, i32 1
  store i8* %126, i8** %6, align 8
  store i8 97, i8* %125, align 1
  br label %127

127:                                              ; preds = %124, %119
  %128 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %129 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %128, i32 0, i32 17
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %127
  %133 = load i8*, i8** %6, align 8
  %134 = getelementptr inbounds i8, i8* %133, i32 1
  store i8* %134, i8** %6, align 8
  store i8 90, i8* %133, align 1
  br label %135

135:                                              ; preds = %132, %127
  %136 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %137 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %136, i32 0, i32 16
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %135
  %141 = load i8*, i8** %6, align 8
  %142 = getelementptr inbounds i8, i8* %141, i32 1
  store i8* %142, i8** %6, align 8
  store i8 70, i8* %141, align 1
  br label %143

143:                                              ; preds = %140, %135
  %144 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %145 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %144, i32 0, i32 15
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %143
  %149 = load i8*, i8** %6, align 8
  %150 = getelementptr inbounds i8, i8* %149, i32 1
  store i8* %150, i8** %6, align 8
  store i8 85, i8* %149, align 1
  br label %151

151:                                              ; preds = %148, %143
  %152 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %153 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %152, i32 0, i32 14
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %151
  %157 = load i8*, i8** %6, align 8
  %158 = getelementptr inbounds i8, i8* %157, i32 1
  store i8* %158, i8** %6, align 8
  store i8 84, i8* %157, align 1
  br label %159

159:                                              ; preds = %156, %151
  %160 = load i8*, i8** %6, align 8
  store i8 0, i8* %160, align 1
  %161 = load i64, i64* @show_activity, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %224

163:                                              ; preds = %159
  %164 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %165 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %164, i32 0, i32 3
  %166 = load i64, i64* %165, align 8
  %167 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %168 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %167, i32 0, i32 4
  %169 = load i64, i64* %168, align 8
  %170 = add i64 %166, %169
  store i64 %170, i64* %7, align 8
  %171 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %172 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %171, i32 0, i32 5
  %173 = load i64, i64* %172, align 8
  %174 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %175 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %174, i32 0, i32 6
  %176 = load i64, i64* %175, align 8
  %177 = add i64 %173, %176
  store i64 %177, i64* %8, align 8
  %178 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %179 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %178, i32 0, i32 0
  %180 = load i8*, i8** %179, align 8
  %181 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %182 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %181, i32 0, i32 7
  %183 = load i32, i32* %182, align 8
  %184 = load i64, i64* %7, align 8
  %185 = trunc i64 %184 to i32
  %186 = load i64, i64* %8, align 8
  %187 = load i64, i64* %7, align 8
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %196

189:                                              ; preds = %163
  %190 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %191 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %190, i32 0, i32 3
  %192 = load i64, i64* %191, align 8
  %193 = mul i64 %192, 100
  %194 = load i64, i64* %7, align 8
  %195 = udiv i64 %193, %194
  br label %197

196:                                              ; preds = %163
  br label %197

197:                                              ; preds = %196, %189
  %198 = phi i64 [ %195, %189 ], [ 0, %196 ]
  %199 = load i64, i64* %8, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %208

201:                                              ; preds = %197
  %202 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %203 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %202, i32 0, i32 5
  %204 = load i64, i64* %203, align 8
  %205 = mul i64 %204, 100
  %206 = load i64, i64* %8, align 8
  %207 = udiv i64 %205, %206
  br label %209

208:                                              ; preds = %197
  br label %209

209:                                              ; preds = %208, %201
  %210 = phi i64 [ %207, %201 ], [ 0, %208 ]
  %211 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %212 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %211, i32 0, i32 13
  %213 = load i32, i32* %212, align 8
  %214 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %215 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %214, i32 0, i32 8
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %218 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %217, i32 0, i32 12
  %219 = load i32, i32* %218, align 4
  %220 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %221 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %220, i32 0, i32 11
  %222 = load i32, i32* %221, align 8
  %223 = call i32 (i8*, i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i8* %180, i32 %183, i32 %185, i64 %186, i64 %198, i64 %210, i32 %213, i32 %216, i32 %219, i32 %222)
  br label %286

224:                                              ; preds = %159
  %225 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %226 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %225, i32 0, i32 0
  %227 = load i8*, i8** %226, align 8
  %228 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %229 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %228, i32 0, i32 7
  %230 = load i32, i32* %229, align 8
  %231 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %232 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %231, i32 0, i32 9
  %233 = load i32, i32* %232, align 8
  %234 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 0
  %235 = getelementptr inbounds [40 x i8], [40 x i8]* %4, i64 0, i64 0
  %236 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %237 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %236, i32 0, i32 10
  %238 = load i32, i32* %237, align 4
  %239 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %240 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %239, i32 0, i32 8
  %241 = load i32, i32* %240, align 4
  %242 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %243 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 8
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %255

246:                                              ; preds = %224
  %247 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %248 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %247, i32 0, i32 2
  %249 = load i32, i32* %248, align 4
  %250 = mul nsw i32 %249, 100
  %251 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %252 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 8
  %254 = sdiv i32 %250, %253
  br label %256

255:                                              ; preds = %224
  br label %256

256:                                              ; preds = %255, %246
  %257 = phi i32 [ %254, %246 ], [ 100, %255 ]
  %258 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %259 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 8
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %281

262:                                              ; preds = %256
  %263 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %264 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %263, i32 0, i32 7
  %265 = load i32, i32* %264, align 8
  %266 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %267 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %266, i32 0, i32 9
  %268 = load i32, i32* %267, align 8
  %269 = mul nsw i32 %265, %268
  %270 = mul nsw i32 %269, 100
  %271 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %272 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 8
  %274 = load i32, i32* @page_size, align 4
  %275 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %276 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %275, i32 0, i32 8
  %277 = load i32, i32* %276, align 4
  %278 = shl i32 %274, %277
  %279 = mul nsw i32 %273, %278
  %280 = sdiv i32 %270, %279
  br label %282

281:                                              ; preds = %256
  br label %282

282:                                              ; preds = %281, %262
  %283 = phi i32 [ %280, %262 ], [ 100, %281 ]
  %284 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0
  %285 = call i32 (i8*, i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i8* %227, i32 %230, i32 %233, i8* %234, i8* %235, i32 %238, i32 %241, i32 %257, i32 %283, i8* %284)
  br label %286

286:                                              ; preds = %15, %24, %28, %42, %51, %282, %209
  ret void
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @report(%struct.slabinfo*) #1

declare dso_local i32 @store_size(i8*, i32) #1

declare dso_local i32 @slab_size(%struct.slabinfo*) #1

declare dso_local i32 @slab_waste(%struct.slabinfo*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i64, i32, i64) #1

declare dso_local i32 @first_line(...) #1

declare dso_local i32 @printf(i8*, i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
