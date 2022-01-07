; ModuleID = '/home/carl/AnghaBench/linux/tools/vm/extr_slabinfo.c_slab_stats.c'
source_filename = "/home/carl/AnghaBench/linux/tools/vm/extr_slabinfo.c_slab_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slabinfo = type { i32, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"Slab Perf Counter       Alloc     Free %%Al %%Fr\0A\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"--------------------------------------------------\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"Fastpath             %8lu %8lu %3lu %3lu\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"Slowpath             %8lu %8lu %3lu %3lu\0A\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"Page Alloc           %8lu %8lu %3lu %3lu\0A\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"Add partial          %8lu %8lu %3lu %3lu\0A\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"Remove partial       %8lu %8lu %3lu %3lu\0A\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"Cpu partial list     %8lu %8lu %3lu %3lu\0A\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"RemoteObj/SlabFrozen %8lu %8lu %3lu %3lu\0A\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"Total                %8lu %8lu\0A\0A\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"Flushes %8lu\0A\00", align 1
@.str.12 = private unnamed_addr constant [47 x i8] c"\0ASlab Deactivation             Occurrences %%\0A\00", align 1
@.str.13 = private unnamed_addr constant [51 x i8] c"-------------------------------------------------\0A\00", align 1
@.str.14 = private unnamed_addr constant [44 x i8] c"Slab full                     %7lu  %3lu%%\0A\00", align 1
@.str.15 = private unnamed_addr constant [44 x i8] c"Slab empty                    %7lu  %3lu%%\0A\00", align 1
@.str.16 = private unnamed_addr constant [44 x i8] c"Moved to head of partial list %7lu  %3lu%%\0A\00", align 1
@.str.17 = private unnamed_addr constant [44 x i8] c"Moved to tail of partial list %7lu  %3lu%%\0A\00", align 1
@.str.18 = private unnamed_addr constant [44 x i8] c"Deactivation bypass           %7lu  %3lu%%\0A\00", align 1
@.str.19 = private unnamed_addr constant [44 x i8] c"Refilled from foreign frees   %7lu  %3lu%%\0A\00", align 1
@.str.20 = private unnamed_addr constant [44 x i8] c"Node mismatch                 %7lu  %3lu%%\0A\00", align 1
@.str.21 = private unnamed_addr constant [50 x i8] c"\0ACmpxchg_double Looping\0A------------------------\0A\00", align 1
@.str.22 = private unnamed_addr constant [69 x i8] c"Locked Cmpxchg Double redos   %lu\0AUnlocked Cmpxchg Double redos %lu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.slabinfo*)* @slab_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @slab_stats(%struct.slabinfo* %0) #0 {
  %2 = alloca %struct.slabinfo*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.slabinfo* %0, %struct.slabinfo** %2, align 8
  %6 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %7 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %360

11:                                               ; preds = %1
  %12 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %13 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %16 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = add i64 %14, %17
  store i64 %18, i64* %3, align 8
  %19 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %20 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %23 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %22, i32 0, i32 4
  %24 = load i64, i64* %23, align 8
  %25 = add i64 %21, %24
  store i64 %25, i64* %4, align 8
  %26 = load i64, i64* %3, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %11
  br label %360

29:                                               ; preds = %11
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  %33 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %34 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %37 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %40 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = mul i64 %41, 100
  %43 = load i64, i64* %3, align 8
  %44 = udiv i64 %42, %43
  %45 = load i64, i64* %4, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %29
  %48 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %49 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = mul i64 %50, 100
  %52 = load i64, i64* %4, align 8
  %53 = udiv i64 %51, %52
  br label %55

54:                                               ; preds = %29
  br label %55

55:                                               ; preds = %54, %47
  %56 = phi i64 [ %53, %47 ], [ 0, %54 ]
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i64 %35, i64 %38, i64 %44, i64 %56)
  %58 = load i64, i64* %3, align 8
  %59 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %60 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = sub i64 %58, %61
  %63 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %64 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %63, i32 0, i32 4
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* %3, align 8
  %67 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %68 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = sub i64 %66, %69
  %71 = mul i64 %70, 100
  %72 = load i64, i64* %3, align 8
  %73 = udiv i64 %71, %72
  %74 = load i64, i64* %4, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %55
  %77 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %78 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %77, i32 0, i32 4
  %79 = load i64, i64* %78, align 8
  %80 = mul i64 %79, 100
  %81 = load i64, i64* %4, align 8
  %82 = udiv i64 %80, %81
  br label %84

83:                                               ; preds = %55
  br label %84

84:                                               ; preds = %83, %76
  %85 = phi i64 [ %82, %76 ], [ 0, %83 ]
  %86 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i64 %62, i64 %65, i64 %73, i64 %85)
  %87 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %88 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %91 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %94 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = mul nsw i32 %95, 100
  %97 = sext i32 %96 to i64
  %98 = load i64, i64* %3, align 8
  %99 = udiv i64 %97, %98
  %100 = load i64, i64* %4, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %110

102:                                              ; preds = %84
  %103 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %104 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %103, i32 0, i32 5
  %105 = load i32, i32* %104, align 8
  %106 = mul nsw i32 %105, 100
  %107 = sext i32 %106 to i64
  %108 = load i64, i64* %4, align 8
  %109 = udiv i64 %107, %108
  br label %111

110:                                              ; preds = %84
  br label %111

111:                                              ; preds = %110, %102
  %112 = phi i64 [ %109, %102 ], [ 0, %110 ]
  %113 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i32 %89, i32 %92, i64 %99, i64 %112)
  %114 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %115 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %114, i32 0, i32 6
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %118 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %117, i32 0, i32 7
  %119 = load i32, i32* %118, align 8
  %120 = add nsw i32 %116, %119
  %121 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %122 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %121, i32 0, i32 8
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %125 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %124, i32 0, i32 6
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %128 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %127, i32 0, i32 7
  %129 = load i32, i32* %128, align 8
  %130 = add nsw i32 %126, %129
  %131 = mul nsw i32 %130, 100
  %132 = sext i32 %131 to i64
  %133 = load i64, i64* %3, align 8
  %134 = udiv i64 %132, %133
  %135 = load i64, i64* %4, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %145

137:                                              ; preds = %111
  %138 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %139 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %138, i32 0, i32 8
  %140 = load i32, i32* %139, align 4
  %141 = mul nsw i32 %140, 100
  %142 = sext i32 %141 to i64
  %143 = load i64, i64* %4, align 8
  %144 = udiv i64 %142, %143
  br label %146

145:                                              ; preds = %111
  br label %146

146:                                              ; preds = %145, %137
  %147 = phi i64 [ %144, %137 ], [ 0, %145 ]
  %148 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), i32 %120, i32 %123, i64 %134, i64 %147)
  %149 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %150 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %149, i32 0, i32 9
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %153 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %152, i32 0, i32 10
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %156 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %155, i32 0, i32 9
  %157 = load i32, i32* %156, align 8
  %158 = mul nsw i32 %157, 100
  %159 = sext i32 %158 to i64
  %160 = load i64, i64* %3, align 8
  %161 = udiv i64 %159, %160
  %162 = load i64, i64* %4, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %172

164:                                              ; preds = %146
  %165 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %166 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %165, i32 0, i32 10
  %167 = load i32, i32* %166, align 4
  %168 = mul nsw i32 %167, 100
  %169 = sext i32 %168 to i64
  %170 = load i64, i64* %4, align 8
  %171 = udiv i64 %169, %170
  br label %173

172:                                              ; preds = %146
  br label %173

173:                                              ; preds = %172, %164
  %174 = phi i64 [ %171, %164 ], [ 0, %172 ]
  %175 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i32 %151, i32 %154, i64 %161, i64 %174)
  %176 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %177 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %176, i32 0, i32 11
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %180 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %179, i32 0, i32 12
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %183 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %182, i32 0, i32 11
  %184 = load i32, i32* %183, align 8
  %185 = mul nsw i32 %184, 100
  %186 = sext i32 %185 to i64
  %187 = load i64, i64* %3, align 8
  %188 = udiv i64 %186, %187
  %189 = load i64, i64* %4, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %199

191:                                              ; preds = %173
  %192 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %193 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %192, i32 0, i32 12
  %194 = load i32, i32* %193, align 4
  %195 = mul nsw i32 %194, 100
  %196 = sext i32 %195 to i64
  %197 = load i64, i64* %4, align 8
  %198 = udiv i64 %196, %197
  br label %200

199:                                              ; preds = %173
  br label %200

200:                                              ; preds = %199, %191
  %201 = phi i64 [ %198, %191 ], [ 0, %199 ]
  %202 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0), i32 %178, i32 %181, i64 %188, i64 %201)
  %203 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %204 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %203, i32 0, i32 13
  %205 = load i32, i32* %204, align 8
  %206 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %207 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %206, i32 0, i32 14
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %210 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %209, i32 0, i32 13
  %211 = load i32, i32* %210, align 8
  %212 = mul nsw i32 %211, 100
  %213 = sext i32 %212 to i64
  %214 = load i64, i64* %3, align 8
  %215 = udiv i64 %213, %214
  %216 = load i64, i64* %4, align 8
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %226

218:                                              ; preds = %200
  %219 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %220 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %219, i32 0, i32 14
  %221 = load i32, i32* %220, align 4
  %222 = mul nsw i32 %221, 100
  %223 = sext i32 %222 to i64
  %224 = load i64, i64* %4, align 8
  %225 = udiv i64 %223, %224
  br label %227

226:                                              ; preds = %200
  br label %227

227:                                              ; preds = %226, %218
  %228 = phi i64 [ %225, %218 ], [ 0, %226 ]
  %229 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0), i32 %205, i32 %208, i64 %215, i64 %228)
  %230 = load i64, i64* %3, align 8
  %231 = load i64, i64* %4, align 8
  %232 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0), i64 %230, i64 %231)
  %233 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %234 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %233, i32 0, i32 15
  %235 = load i64, i64* %234, align 8
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %242

237:                                              ; preds = %227
  %238 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %239 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %238, i32 0, i32 15
  %240 = load i64, i64* %239, align 8
  %241 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i64 %240)
  br label %242

242:                                              ; preds = %237, %227
  %243 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %244 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %243, i32 0, i32 16
  %245 = load i64, i64* %244, align 8
  %246 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %247 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %246, i32 0, i32 17
  %248 = load i64, i64* %247, align 8
  %249 = add i64 %245, %248
  %250 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %251 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %250, i32 0, i32 6
  %252 = load i32, i32* %251, align 4
  %253 = sext i32 %252 to i64
  %254 = add i64 %249, %253
  %255 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %256 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %255, i32 0, i32 7
  %257 = load i32, i32* %256, align 8
  %258 = sext i32 %257 to i64
  %259 = add i64 %254, %258
  %260 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %261 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %260, i32 0, i32 18
  %262 = load i64, i64* %261, align 8
  %263 = add i64 %259, %262
  store i64 %263, i64* %5, align 8
  %264 = load i64, i64* %5, align 8
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %341

266:                                              ; preds = %242
  %267 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.12, i64 0, i64 0))
  %268 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.13, i64 0, i64 0))
  %269 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %270 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %269, i32 0, i32 16
  %271 = load i64, i64* %270, align 8
  %272 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %273 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %272, i32 0, i32 16
  %274 = load i64, i64* %273, align 8
  %275 = mul i64 %274, 100
  %276 = load i64, i64* %5, align 8
  %277 = udiv i64 %275, %276
  %278 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.14, i64 0, i64 0), i64 %271, i64 %277)
  %279 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %280 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %279, i32 0, i32 17
  %281 = load i64, i64* %280, align 8
  %282 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %283 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %282, i32 0, i32 17
  %284 = load i64, i64* %283, align 8
  %285 = mul i64 %284, 100
  %286 = load i64, i64* %5, align 8
  %287 = udiv i64 %285, %286
  %288 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.15, i64 0, i64 0), i64 %281, i64 %287)
  %289 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %290 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %289, i32 0, i32 6
  %291 = load i32, i32* %290, align 4
  %292 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %293 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %292, i32 0, i32 6
  %294 = load i32, i32* %293, align 4
  %295 = mul nsw i32 %294, 100
  %296 = sext i32 %295 to i64
  %297 = load i64, i64* %5, align 8
  %298 = udiv i64 %296, %297
  %299 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.16, i64 0, i64 0), i32 %291, i64 %298)
  %300 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %301 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %300, i32 0, i32 7
  %302 = load i32, i32* %301, align 8
  %303 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %304 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %303, i32 0, i32 7
  %305 = load i32, i32* %304, align 8
  %306 = mul nsw i32 %305, 100
  %307 = sext i32 %306 to i64
  %308 = load i64, i64* %5, align 8
  %309 = udiv i64 %307, %308
  %310 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.17, i64 0, i64 0), i32 %302, i64 %309)
  %311 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %312 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %311, i32 0, i32 18
  %313 = load i64, i64* %312, align 8
  %314 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %315 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %314, i32 0, i32 18
  %316 = load i64, i64* %315, align 8
  %317 = mul i64 %316, 100
  %318 = load i64, i64* %5, align 8
  %319 = udiv i64 %317, %318
  %320 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.18, i64 0, i64 0), i64 %313, i64 %319)
  %321 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %322 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %321, i32 0, i32 19
  %323 = load i64, i64* %322, align 8
  %324 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %325 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %324, i32 0, i32 19
  %326 = load i64, i64* %325, align 8
  %327 = mul i64 %326, 100
  %328 = load i64, i64* %5, align 8
  %329 = udiv i64 %327, %328
  %330 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.19, i64 0, i64 0), i64 %323, i64 %329)
  %331 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %332 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %331, i32 0, i32 20
  %333 = load i64, i64* %332, align 8
  %334 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %335 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %334, i32 0, i32 20
  %336 = load i64, i64* %335, align 8
  %337 = mul i64 %336, 100
  %338 = load i64, i64* %5, align 8
  %339 = udiv i64 %337, %338
  %340 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.20, i64 0, i64 0), i64 %333, i64 %339)
  br label %341

341:                                              ; preds = %266, %242
  %342 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %343 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %342, i32 0, i32 21
  %344 = load i64, i64* %343, align 8
  %345 = icmp ne i64 %344, 0
  br i1 %345, label %351, label %346

346:                                              ; preds = %341
  %347 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %348 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %347, i32 0, i32 22
  %349 = load i32, i32* %348, align 8
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %351, label %360

351:                                              ; preds = %346, %341
  %352 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.21, i64 0, i64 0))
  %353 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %354 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %353, i32 0, i32 21
  %355 = load i64, i64* %354, align 8
  %356 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %357 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %356, i32 0, i32 22
  %358 = load i32, i32* %357, align 8
  %359 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.22, i64 0, i64 0), i64 %355, i32 %358)
  br label %360

360:                                              ; preds = %10, %28, %351, %346
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
