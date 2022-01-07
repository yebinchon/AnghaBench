; ModuleID = '/home/carl/AnghaBench/netdata/tests/profile/extr_benchmark-line-parsing.c_check.c'
source_filename = "/home/carl/AnghaBench/netdata/tests/profile/extr_benchmark-line-parsing.c_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.base = type { i64, i64, %struct.entry*, %struct.entry* }
%struct.entry = type { i8*, i32, i64, %struct.entry*, %struct.entry*, i32, i32, i32 (i32, i32)* }

@.str = private unnamed_addr constant [7 x i8] c"ERROR\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"relinked '%s' after '%s' and before '%s': \00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"NONE\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.base*, i8*)* @check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check(%struct.base* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.base*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.entry*, align 8
  store %struct.base* %0, %struct.base** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call i64 @simple_hash2(i8* %8)
  store i64 %9, i64* %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = load %struct.base*, %struct.base** %4, align 8
  %12 = getelementptr inbounds %struct.base, %struct.base* %11, i32 0, i32 3
  %13 = load %struct.entry*, %struct.entry** %12, align 8
  %14 = getelementptr inbounds %struct.entry, %struct.entry* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = call i32 @strcmp(i8* %10, i8* %15)
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i64 @likely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %82

22:                                               ; preds = %2
  %23 = load %struct.base*, %struct.base** %4, align 8
  %24 = getelementptr inbounds %struct.base, %struct.base* %23, i32 0, i32 3
  %25 = load %struct.entry*, %struct.entry** %24, align 8
  %26 = getelementptr inbounds %struct.entry, %struct.entry* %25, i32 0, i32 1
  store i32 1, i32* %26, align 8
  %27 = load %struct.base*, %struct.base** %4, align 8
  %28 = getelementptr inbounds %struct.base, %struct.base* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %29, 1
  store i64 %30, i64* %28, align 8
  %31 = load %struct.base*, %struct.base** %4, align 8
  %32 = getelementptr inbounds %struct.base, %struct.base* %31, i32 0, i32 3
  %33 = load %struct.entry*, %struct.entry** %32, align 8
  %34 = getelementptr inbounds %struct.entry, %struct.entry* %33, i32 0, i32 7
  %35 = load i32 (i32, i32)*, i32 (i32, i32)** %34, align 8
  %36 = icmp ne i32 (i32, i32)* %35, null
  br i1 %36, label %37, label %54

37:                                               ; preds = %22
  %38 = load %struct.base*, %struct.base** %4, align 8
  %39 = getelementptr inbounds %struct.base, %struct.base* %38, i32 0, i32 3
  %40 = load %struct.entry*, %struct.entry** %39, align 8
  %41 = getelementptr inbounds %struct.entry, %struct.entry* %40, i32 0, i32 7
  %42 = load i32 (i32, i32)*, i32 (i32, i32)** %41, align 8
  %43 = load %struct.base*, %struct.base** %4, align 8
  %44 = getelementptr inbounds %struct.base, %struct.base* %43, i32 0, i32 3
  %45 = load %struct.entry*, %struct.entry** %44, align 8
  %46 = getelementptr inbounds %struct.entry, %struct.entry* %45, i32 0, i32 6
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.base*, %struct.base** %4, align 8
  %49 = getelementptr inbounds %struct.base, %struct.base* %48, i32 0, i32 3
  %50 = load %struct.entry*, %struct.entry** %49, align 8
  %51 = getelementptr inbounds %struct.entry, %struct.entry* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 8
  %53 = call i32 %42(i32 %47, i32 %52)
  br label %54

54:                                               ; preds = %37, %22
  %55 = load %struct.base*, %struct.base** %4, align 8
  %56 = getelementptr inbounds %struct.base, %struct.base* %55, i32 0, i32 3
  %57 = load %struct.entry*, %struct.entry** %56, align 8
  %58 = getelementptr inbounds %struct.entry, %struct.entry* %57, i32 0, i32 3
  %59 = load %struct.entry*, %struct.entry** %58, align 8
  %60 = load %struct.base*, %struct.base** %4, align 8
  %61 = getelementptr inbounds %struct.base, %struct.base* %60, i32 0, i32 3
  store %struct.entry* %59, %struct.entry** %61, align 8
  %62 = load %struct.base*, %struct.base** %4, align 8
  %63 = getelementptr inbounds %struct.base, %struct.base* %62, i32 0, i32 3
  %64 = load %struct.entry*, %struct.entry** %63, align 8
  %65 = icmp ne %struct.entry* %64, null
  br i1 %65, label %72, label %66

66:                                               ; preds = %54
  %67 = load %struct.base*, %struct.base** %4, align 8
  %68 = getelementptr inbounds %struct.base, %struct.base* %67, i32 0, i32 2
  %69 = load %struct.entry*, %struct.entry** %68, align 8
  %70 = load %struct.base*, %struct.base** %4, align 8
  %71 = getelementptr inbounds %struct.base, %struct.base* %70, i32 0, i32 3
  store %struct.entry* %69, %struct.entry** %71, align 8
  br label %72

72:                                               ; preds = %66, %54
  %73 = load %struct.base*, %struct.base** %4, align 8
  %74 = getelementptr inbounds %struct.base, %struct.base* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.base*, %struct.base** %4, align 8
  %77 = getelementptr inbounds %struct.base, %struct.base* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp eq i64 %75, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %72
  store i32 1, i32* %3, align 4
  br label %312

81:                                               ; preds = %72
  store i32 0, i32* %3, align 4
  br label %312

82:                                               ; preds = %2
  %83 = load %struct.base*, %struct.base** %4, align 8
  %84 = getelementptr inbounds %struct.base, %struct.base* %83, i32 0, i32 2
  %85 = load %struct.entry*, %struct.entry** %84, align 8
  store %struct.entry* %85, %struct.entry** %7, align 8
  br label %86

86:                                               ; preds = %104, %82
  %87 = load %struct.entry*, %struct.entry** %7, align 8
  %88 = icmp ne %struct.entry* %87, null
  br i1 %88, label %89, label %108

89:                                               ; preds = %86
  %90 = load %struct.entry*, %struct.entry** %7, align 8
  %91 = getelementptr inbounds %struct.entry, %struct.entry* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* %6, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %103

95:                                               ; preds = %89
  %96 = load %struct.entry*, %struct.entry** %7, align 8
  %97 = getelementptr inbounds %struct.entry, %struct.entry* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = load i8*, i8** %5, align 8
  %100 = call i32 @strcmp(i8* %98, i8* %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %95
  br label %108

103:                                              ; preds = %95, %89
  br label %104

104:                                              ; preds = %103
  %105 = load %struct.entry*, %struct.entry** %7, align 8
  %106 = getelementptr inbounds %struct.entry, %struct.entry* %105, i32 0, i32 3
  %107 = load %struct.entry*, %struct.entry** %106, align 8
  store %struct.entry* %107, %struct.entry** %7, align 8
  br label %86

108:                                              ; preds = %102, %86
  %109 = load %struct.entry*, %struct.entry** %7, align 8
  %110 = load %struct.base*, %struct.base** %4, align 8
  %111 = getelementptr inbounds %struct.base, %struct.base* %110, i32 0, i32 3
  %112 = load %struct.entry*, %struct.entry** %111, align 8
  %113 = icmp eq %struct.entry* %109, %112
  br i1 %113, label %114, label %117

114:                                              ; preds = %108
  %115 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %116 = call i32 @exit(i32 1) #3
  unreachable

117:                                              ; preds = %108
  %118 = load %struct.entry*, %struct.entry** %7, align 8
  %119 = icmp ne %struct.entry* %118, null
  br i1 %119, label %120, label %175

120:                                              ; preds = %117
  %121 = load %struct.entry*, %struct.entry** %7, align 8
  %122 = getelementptr inbounds %struct.entry, %struct.entry* %121, i32 0, i32 7
  %123 = load i32 (i32, i32)*, i32 (i32, i32)** %122, align 8
  %124 = icmp ne i32 (i32, i32)* %123, null
  br i1 %124, label %125, label %136

125:                                              ; preds = %120
  %126 = load %struct.entry*, %struct.entry** %7, align 8
  %127 = getelementptr inbounds %struct.entry, %struct.entry* %126, i32 0, i32 7
  %128 = load i32 (i32, i32)*, i32 (i32, i32)** %127, align 8
  %129 = load %struct.entry*, %struct.entry** %7, align 8
  %130 = getelementptr inbounds %struct.entry, %struct.entry* %129, i32 0, i32 6
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.entry*, %struct.entry** %7, align 8
  %133 = getelementptr inbounds %struct.entry, %struct.entry* %132, i32 0, i32 5
  %134 = load i32, i32* %133, align 8
  %135 = call i32 %128(i32 %131, i32 %134)
  br label %136

136:                                              ; preds = %125, %120
  %137 = load %struct.entry*, %struct.entry** %7, align 8
  %138 = getelementptr inbounds %struct.entry, %struct.entry* %137, i32 0, i32 3
  %139 = load %struct.entry*, %struct.entry** %138, align 8
  %140 = icmp ne %struct.entry* %139, null
  br i1 %140, label %141, label %149

141:                                              ; preds = %136
  %142 = load %struct.entry*, %struct.entry** %7, align 8
  %143 = getelementptr inbounds %struct.entry, %struct.entry* %142, i32 0, i32 4
  %144 = load %struct.entry*, %struct.entry** %143, align 8
  %145 = load %struct.entry*, %struct.entry** %7, align 8
  %146 = getelementptr inbounds %struct.entry, %struct.entry* %145, i32 0, i32 3
  %147 = load %struct.entry*, %struct.entry** %146, align 8
  %148 = getelementptr inbounds %struct.entry, %struct.entry* %147, i32 0, i32 4
  store %struct.entry* %144, %struct.entry** %148, align 8
  br label %149

149:                                              ; preds = %141, %136
  %150 = load %struct.entry*, %struct.entry** %7, align 8
  %151 = getelementptr inbounds %struct.entry, %struct.entry* %150, i32 0, i32 4
  %152 = load %struct.entry*, %struct.entry** %151, align 8
  %153 = icmp ne %struct.entry* %152, null
  br i1 %153, label %154, label %162

154:                                              ; preds = %149
  %155 = load %struct.entry*, %struct.entry** %7, align 8
  %156 = getelementptr inbounds %struct.entry, %struct.entry* %155, i32 0, i32 3
  %157 = load %struct.entry*, %struct.entry** %156, align 8
  %158 = load %struct.entry*, %struct.entry** %7, align 8
  %159 = getelementptr inbounds %struct.entry, %struct.entry* %158, i32 0, i32 4
  %160 = load %struct.entry*, %struct.entry** %159, align 8
  %161 = getelementptr inbounds %struct.entry, %struct.entry* %160, i32 0, i32 3
  store %struct.entry* %157, %struct.entry** %161, align 8
  br label %162

162:                                              ; preds = %154, %149
  %163 = load %struct.base*, %struct.base** %4, align 8
  %164 = getelementptr inbounds %struct.base, %struct.base* %163, i32 0, i32 2
  %165 = load %struct.entry*, %struct.entry** %164, align 8
  %166 = load %struct.entry*, %struct.entry** %7, align 8
  %167 = icmp eq %struct.entry* %165, %166
  br i1 %167, label %168, label %174

168:                                              ; preds = %162
  %169 = load %struct.entry*, %struct.entry** %7, align 8
  %170 = getelementptr inbounds %struct.entry, %struct.entry* %169, i32 0, i32 3
  %171 = load %struct.entry*, %struct.entry** %170, align 8
  %172 = load %struct.base*, %struct.base** %4, align 8
  %173 = getelementptr inbounds %struct.base, %struct.base* %172, i32 0, i32 2
  store %struct.entry* %171, %struct.entry** %173, align 8
  br label %174

174:                                              ; preds = %168, %162
  br label %184

175:                                              ; preds = %117
  %176 = call %struct.entry* @calloc(i32 1, i32 56)
  store %struct.entry* %176, %struct.entry** %7, align 8
  %177 = load i8*, i8** %5, align 8
  %178 = call i8* @strdup(i8* %177)
  %179 = load %struct.entry*, %struct.entry** %7, align 8
  %180 = getelementptr inbounds %struct.entry, %struct.entry* %179, i32 0, i32 0
  store i8* %178, i8** %180, align 8
  %181 = load i64, i64* %6, align 8
  %182 = load %struct.entry*, %struct.entry** %7, align 8
  %183 = getelementptr inbounds %struct.entry, %struct.entry* %182, i32 0, i32 2
  store i64 %181, i64* %183, align 8
  br label %184

184:                                              ; preds = %175, %174
  %185 = load %struct.base*, %struct.base** %4, align 8
  %186 = getelementptr inbounds %struct.base, %struct.base* %185, i32 0, i32 3
  %187 = load %struct.entry*, %struct.entry** %186, align 8
  %188 = load %struct.entry*, %struct.entry** %7, align 8
  %189 = getelementptr inbounds %struct.entry, %struct.entry* %188, i32 0, i32 3
  store %struct.entry* %187, %struct.entry** %189, align 8
  %190 = load %struct.base*, %struct.base** %4, align 8
  %191 = getelementptr inbounds %struct.base, %struct.base* %190, i32 0, i32 3
  %192 = load %struct.entry*, %struct.entry** %191, align 8
  %193 = icmp ne %struct.entry* %192, null
  br i1 %193, label %194, label %219

194:                                              ; preds = %184
  %195 = load %struct.base*, %struct.base** %4, align 8
  %196 = getelementptr inbounds %struct.base, %struct.base* %195, i32 0, i32 3
  %197 = load %struct.entry*, %struct.entry** %196, align 8
  %198 = getelementptr inbounds %struct.entry, %struct.entry* %197, i32 0, i32 4
  %199 = load %struct.entry*, %struct.entry** %198, align 8
  %200 = load %struct.entry*, %struct.entry** %7, align 8
  %201 = getelementptr inbounds %struct.entry, %struct.entry* %200, i32 0, i32 4
  store %struct.entry* %199, %struct.entry** %201, align 8
  %202 = load %struct.entry*, %struct.entry** %7, align 8
  %203 = load %struct.base*, %struct.base** %4, align 8
  %204 = getelementptr inbounds %struct.base, %struct.base* %203, i32 0, i32 3
  %205 = load %struct.entry*, %struct.entry** %204, align 8
  %206 = getelementptr inbounds %struct.entry, %struct.entry* %205, i32 0, i32 4
  store %struct.entry* %202, %struct.entry** %206, align 8
  %207 = load %struct.base*, %struct.base** %4, align 8
  %208 = getelementptr inbounds %struct.base, %struct.base* %207, i32 0, i32 2
  %209 = load %struct.entry*, %struct.entry** %208, align 8
  %210 = load %struct.base*, %struct.base** %4, align 8
  %211 = getelementptr inbounds %struct.base, %struct.base* %210, i32 0, i32 3
  %212 = load %struct.entry*, %struct.entry** %211, align 8
  %213 = icmp eq %struct.entry* %209, %212
  br i1 %213, label %214, label %218

214:                                              ; preds = %194
  %215 = load %struct.entry*, %struct.entry** %7, align 8
  %216 = load %struct.base*, %struct.base** %4, align 8
  %217 = getelementptr inbounds %struct.base, %struct.base* %216, i32 0, i32 2
  store %struct.entry* %215, %struct.entry** %217, align 8
  br label %218

218:                                              ; preds = %214, %194
  br label %222

219:                                              ; preds = %184
  %220 = load %struct.entry*, %struct.entry** %7, align 8
  %221 = getelementptr inbounds %struct.entry, %struct.entry* %220, i32 0, i32 4
  store %struct.entry* null, %struct.entry** %221, align 8
  br label %222

222:                                              ; preds = %219, %218
  %223 = load %struct.entry*, %struct.entry** %7, align 8
  %224 = getelementptr inbounds %struct.entry, %struct.entry* %223, i32 0, i32 4
  %225 = load %struct.entry*, %struct.entry** %224, align 8
  %226 = icmp ne %struct.entry* %225, null
  br i1 %226, label %227, label %233

227:                                              ; preds = %222
  %228 = load %struct.entry*, %struct.entry** %7, align 8
  %229 = load %struct.entry*, %struct.entry** %7, align 8
  %230 = getelementptr inbounds %struct.entry, %struct.entry* %229, i32 0, i32 4
  %231 = load %struct.entry*, %struct.entry** %230, align 8
  %232 = getelementptr inbounds %struct.entry, %struct.entry* %231, i32 0, i32 3
  store %struct.entry* %228, %struct.entry** %232, align 8
  br label %233

233:                                              ; preds = %227, %222
  %234 = load %struct.entry*, %struct.entry** %7, align 8
  %235 = getelementptr inbounds %struct.entry, %struct.entry* %234, i32 0, i32 3
  %236 = load %struct.entry*, %struct.entry** %235, align 8
  %237 = load %struct.base*, %struct.base** %4, align 8
  %238 = getelementptr inbounds %struct.base, %struct.base* %237, i32 0, i32 3
  store %struct.entry* %236, %struct.entry** %238, align 8
  %239 = load %struct.base*, %struct.base** %4, align 8
  %240 = getelementptr inbounds %struct.base, %struct.base* %239, i32 0, i32 3
  %241 = load %struct.entry*, %struct.entry** %240, align 8
  %242 = icmp ne %struct.entry* %241, null
  br i1 %242, label %249, label %243

243:                                              ; preds = %233
  %244 = load %struct.base*, %struct.base** %4, align 8
  %245 = getelementptr inbounds %struct.base, %struct.base* %244, i32 0, i32 2
  %246 = load %struct.entry*, %struct.entry** %245, align 8
  %247 = load %struct.base*, %struct.base** %4, align 8
  %248 = getelementptr inbounds %struct.base, %struct.base* %247, i32 0, i32 3
  store %struct.entry* %246, %struct.entry** %248, align 8
  br label %249

249:                                              ; preds = %243, %233
  %250 = load %struct.entry*, %struct.entry** %7, align 8
  %251 = getelementptr inbounds %struct.entry, %struct.entry* %250, i32 0, i32 1
  store i32 1, i32* %251, align 8
  %252 = load %struct.base*, %struct.base** %4, align 8
  %253 = getelementptr inbounds %struct.base, %struct.base* %252, i32 0, i32 0
  %254 = load i64, i64* %253, align 8
  %255 = add nsw i64 %254, 1
  store i64 %255, i64* %253, align 8
  %256 = load %struct.base*, %struct.base** %4, align 8
  %257 = getelementptr inbounds %struct.base, %struct.base* %256, i32 0, i32 0
  %258 = load i64, i64* %257, align 8
  %259 = load %struct.base*, %struct.base** %4, align 8
  %260 = getelementptr inbounds %struct.base, %struct.base* %259, i32 0, i32 1
  %261 = load i64, i64* %260, align 8
  %262 = icmp eq i64 %258, %261
  br i1 %262, label %263, label %264

263:                                              ; preds = %249
  store i32 1, i32* %3, align 4
  br label %312

264:                                              ; preds = %249
  %265 = load %struct.entry*, %struct.entry** %7, align 8
  %266 = getelementptr inbounds %struct.entry, %struct.entry* %265, i32 0, i32 0
  %267 = load i8*, i8** %266, align 8
  %268 = load %struct.entry*, %struct.entry** %7, align 8
  %269 = getelementptr inbounds %struct.entry, %struct.entry* %268, i32 0, i32 4
  %270 = load %struct.entry*, %struct.entry** %269, align 8
  %271 = icmp ne %struct.entry* %270, null
  br i1 %271, label %272, label %278

272:                                              ; preds = %264
  %273 = load %struct.entry*, %struct.entry** %7, align 8
  %274 = getelementptr inbounds %struct.entry, %struct.entry* %273, i32 0, i32 4
  %275 = load %struct.entry*, %struct.entry** %274, align 8
  %276 = getelementptr inbounds %struct.entry, %struct.entry* %275, i32 0, i32 0
  %277 = load i8*, i8** %276, align 8
  br label %279

278:                                              ; preds = %264
  br label %279

279:                                              ; preds = %278, %272
  %280 = phi i8* [ %277, %272 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), %278 ]
  %281 = load %struct.entry*, %struct.entry** %7, align 8
  %282 = getelementptr inbounds %struct.entry, %struct.entry* %281, i32 0, i32 3
  %283 = load %struct.entry*, %struct.entry** %282, align 8
  %284 = icmp ne %struct.entry* %283, null
  br i1 %284, label %285, label %291

285:                                              ; preds = %279
  %286 = load %struct.entry*, %struct.entry** %7, align 8
  %287 = getelementptr inbounds %struct.entry, %struct.entry* %286, i32 0, i32 3
  %288 = load %struct.entry*, %struct.entry** %287, align 8
  %289 = getelementptr inbounds %struct.entry, %struct.entry* %288, i32 0, i32 0
  %290 = load i8*, i8** %289, align 8
  br label %292

291:                                              ; preds = %279
  br label %292

292:                                              ; preds = %291, %285
  %293 = phi i8* [ %290, %285 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), %291 ]
  %294 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i8* %267, i8* %280, i8* %293)
  %295 = load %struct.base*, %struct.base** %4, align 8
  %296 = getelementptr inbounds %struct.base, %struct.base* %295, i32 0, i32 2
  %297 = load %struct.entry*, %struct.entry** %296, align 8
  store %struct.entry* %297, %struct.entry** %7, align 8
  br label %298

298:                                              ; preds = %306, %292
  %299 = load %struct.entry*, %struct.entry** %7, align 8
  %300 = icmp ne %struct.entry* %299, null
  br i1 %300, label %301, label %310

301:                                              ; preds = %298
  %302 = load %struct.entry*, %struct.entry** %7, align 8
  %303 = getelementptr inbounds %struct.entry, %struct.entry* %302, i32 0, i32 0
  %304 = load i8*, i8** %303, align 8
  %305 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %304)
  br label %306

306:                                              ; preds = %301
  %307 = load %struct.entry*, %struct.entry** %7, align 8
  %308 = getelementptr inbounds %struct.entry, %struct.entry* %307, i32 0, i32 3
  %309 = load %struct.entry*, %struct.entry** %308, align 8
  store %struct.entry* %309, %struct.entry** %7, align 8
  br label %298

310:                                              ; preds = %298
  %311 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %312

312:                                              ; preds = %310, %263, %81, %80
  %313 = load i32, i32* %3, align 4
  ret i32 %313
}

declare dso_local i64 @simple_hash2(i8*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local %struct.entry* @calloc(i32, i32) #1

declare dso_local i8* @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
