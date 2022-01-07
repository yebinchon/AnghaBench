; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/x86/extr_ldt_gdt.c_do_simple_tests.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/x86/extr_ldt_gdt.c_do_simple_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.user_desc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@AR_DPL3 = common dso_local global i32 0, align 4
@AR_TYPE_XRCODE = common dso_local global i32 0, align 4
@AR_S = common dso_local global i32 0, align 4
@AR_P = common dso_local global i32 0, align 4
@AR_DB = common dso_local global i32 0, align 4
@AR_G = common dso_local global i32 0, align 4
@AR_AVL = common dso_local global i32 0, align 4
@AR_TYPE_RWDATA = common dso_local global i32 0, align 4
@AR_TYPE_RODATA = common dso_local global i32 0, align 4
@AR_TYPE_RODATA_EXPDOWN = common dso_local global i32 0, align 4
@AR_TYPE_RWDATA_EXPDOWN = common dso_local global i32 0, align 4
@AR_TYPE_XRCODE_CONF = common dso_local global i32 0, align 4
@AR_TYPE_XOCODE_CONF = common dso_local global i32 0, align 4
@AR_TYPE_XOCODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"[RUN]\09Test fork\0A\00", align 1
@nerrs = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"[FAIL]\09Child died\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"[FAIL]\09Child failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"[OK]\09Child succeeded\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"[RUN]\09Test size\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"[FAIL]\09Failed to install entry %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"[DONE]\09Size test\0A\00", align 1
@.str.7 = private unnamed_addr constant [60 x i8] c"[SKIP]\09Skipping fork and size tests because we have no LDT\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @do_simple_tests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_simple_tests() #0 {
  %1 = alloca %struct.user_desc, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = bitcast %struct.user_desc* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %7, i8 0, i64 40, i1 false)
  %8 = bitcast i8* %7 to %struct.user_desc*
  %9 = getelementptr inbounds %struct.user_desc, %struct.user_desc* %8, i32 0, i32 2
  store i32 10, i32* %9, align 4
  %10 = getelementptr inbounds %struct.user_desc, %struct.user_desc* %8, i32 0, i32 3
  store i32 1, i32* %10, align 4
  %11 = getelementptr inbounds %struct.user_desc, %struct.user_desc* %8, i32 0, i32 4
  store i32 2, i32* %11, align 4
  %12 = load i32, i32* @AR_DPL3, align 4
  %13 = load i32, i32* @AR_TYPE_XRCODE, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @AR_S, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @AR_P, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @AR_DB, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @install_valid(%struct.user_desc* %1, i32 %20)
  %22 = getelementptr inbounds %struct.user_desc, %struct.user_desc* %1, i32 0, i32 6
  store i32 1, i32* %22, align 4
  %23 = load i32, i32* @AR_DPL3, align 4
  %24 = load i32, i32* @AR_TYPE_XRCODE, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @AR_S, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @AR_P, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @AR_DB, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @AR_G, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @install_valid(%struct.user_desc* %1, i32 %33)
  %35 = call i32 @check_invalid_segment(i32 1, i32 1)
  %36 = getelementptr inbounds %struct.user_desc, %struct.user_desc* %1, i32 0, i32 0
  store i32 2, i32* %36, align 4
  %37 = load i32, i32* @AR_DPL3, align 4
  %38 = load i32, i32* @AR_TYPE_XRCODE, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @AR_S, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @AR_P, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @AR_DB, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @AR_G, align 4
  %47 = or i32 %45, %46
  %48 = call i32 @install_valid(%struct.user_desc* %1, i32 %47)
  %49 = call i32 @check_invalid_segment(i32 1, i32 1)
  %50 = getelementptr inbounds %struct.user_desc, %struct.user_desc* %1, i32 0, i32 1
  store i32 -268435456, i32* %50, align 4
  %51 = load i32, i32* @AR_DPL3, align 4
  %52 = load i32, i32* @AR_TYPE_XRCODE, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @AR_S, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @AR_P, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @AR_DB, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @AR_G, align 4
  %61 = or i32 %59, %60
  %62 = call i32 @install_valid(%struct.user_desc* %1, i32 %61)
  %63 = getelementptr inbounds %struct.user_desc, %struct.user_desc* %1, i32 0, i32 8
  store i32 1, i32* %63, align 4
  %64 = load i32, i32* @AR_DPL3, align 4
  %65 = load i32, i32* @AR_TYPE_XRCODE, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @AR_S, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @AR_P, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @AR_DB, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @AR_G, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @AR_AVL, align 4
  %76 = or i32 %74, %75
  %77 = call i32 @install_valid(%struct.user_desc* %1, i32 %76)
  %78 = getelementptr inbounds %struct.user_desc, %struct.user_desc* %1, i32 0, i32 7
  store i32 1, i32* %78, align 4
  %79 = load i32, i32* @AR_DPL3, align 4
  %80 = load i32, i32* @AR_TYPE_XRCODE, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @AR_S, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @AR_DB, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @AR_G, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* @AR_AVL, align 4
  %89 = or i32 %87, %88
  %90 = call i32 @install_valid(%struct.user_desc* %1, i32 %89)
  %91 = getelementptr inbounds %struct.user_desc, %struct.user_desc* %1, i32 0, i32 3
  store i32 0, i32* %91, align 4
  %92 = load i32, i32* @AR_DPL3, align 4
  %93 = load i32, i32* @AR_TYPE_XRCODE, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* @AR_S, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* @AR_G, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* @AR_AVL, align 4
  %100 = or i32 %98, %99
  %101 = call i32 @install_valid(%struct.user_desc* %1, i32 %100)
  %102 = getelementptr inbounds %struct.user_desc, %struct.user_desc* %1, i32 0, i32 3
  store i32 1, i32* %102, align 4
  %103 = getelementptr inbounds %struct.user_desc, %struct.user_desc* %1, i32 0, i32 4
  store i32 0, i32* %103, align 4
  %104 = load i32, i32* @AR_DPL3, align 4
  %105 = load i32, i32* @AR_TYPE_RWDATA, align 4
  %106 = or i32 %104, %105
  %107 = load i32, i32* @AR_S, align 4
  %108 = or i32 %106, %107
  %109 = load i32, i32* @AR_DB, align 4
  %110 = or i32 %108, %109
  %111 = load i32, i32* @AR_G, align 4
  %112 = or i32 %110, %111
  %113 = load i32, i32* @AR_AVL, align 4
  %114 = or i32 %112, %113
  %115 = call i32 @install_valid(%struct.user_desc* %1, i32 %114)
  %116 = getelementptr inbounds %struct.user_desc, %struct.user_desc* %1, i32 0, i32 5
  store i32 1, i32* %116, align 4
  %117 = load i32, i32* @AR_DPL3, align 4
  %118 = load i32, i32* @AR_TYPE_RODATA, align 4
  %119 = or i32 %117, %118
  %120 = load i32, i32* @AR_S, align 4
  %121 = or i32 %119, %120
  %122 = load i32, i32* @AR_DB, align 4
  %123 = or i32 %121, %122
  %124 = load i32, i32* @AR_G, align 4
  %125 = or i32 %123, %124
  %126 = load i32, i32* @AR_AVL, align 4
  %127 = or i32 %125, %126
  %128 = call i32 @install_valid(%struct.user_desc* %1, i32 %127)
  %129 = getelementptr inbounds %struct.user_desc, %struct.user_desc* %1, i32 0, i32 4
  store i32 1, i32* %129, align 4
  %130 = load i32, i32* @AR_DPL3, align 4
  %131 = load i32, i32* @AR_TYPE_RODATA_EXPDOWN, align 4
  %132 = or i32 %130, %131
  %133 = load i32, i32* @AR_S, align 4
  %134 = or i32 %132, %133
  %135 = load i32, i32* @AR_DB, align 4
  %136 = or i32 %134, %135
  %137 = load i32, i32* @AR_G, align 4
  %138 = or i32 %136, %137
  %139 = load i32, i32* @AR_AVL, align 4
  %140 = or i32 %138, %139
  %141 = call i32 @install_valid(%struct.user_desc* %1, i32 %140)
  %142 = getelementptr inbounds %struct.user_desc, %struct.user_desc* %1, i32 0, i32 5
  store i32 0, i32* %142, align 4
  %143 = getelementptr inbounds %struct.user_desc, %struct.user_desc* %1, i32 0, i32 6
  store i32 0, i32* %143, align 4
  %144 = load i32, i32* @AR_DPL3, align 4
  %145 = load i32, i32* @AR_TYPE_RWDATA_EXPDOWN, align 4
  %146 = or i32 %144, %145
  %147 = load i32, i32* @AR_S, align 4
  %148 = or i32 %146, %147
  %149 = load i32, i32* @AR_DB, align 4
  %150 = or i32 %148, %149
  %151 = load i32, i32* @AR_AVL, align 4
  %152 = or i32 %150, %151
  %153 = call i32 @install_valid(%struct.user_desc* %1, i32 %152)
  %154 = getelementptr inbounds %struct.user_desc, %struct.user_desc* %1, i32 0, i32 4
  store i32 3, i32* %154, align 4
  %155 = load i32, i32* @AR_DPL3, align 4
  %156 = load i32, i32* @AR_TYPE_XRCODE_CONF, align 4
  %157 = or i32 %155, %156
  %158 = load i32, i32* @AR_S, align 4
  %159 = or i32 %157, %158
  %160 = load i32, i32* @AR_DB, align 4
  %161 = or i32 %159, %160
  %162 = load i32, i32* @AR_AVL, align 4
  %163 = or i32 %161, %162
  %164 = call i32 @install_valid(%struct.user_desc* %1, i32 %163)
  %165 = getelementptr inbounds %struct.user_desc, %struct.user_desc* %1, i32 0, i32 5
  store i32 1, i32* %165, align 4
  %166 = load i32, i32* @AR_DPL3, align 4
  %167 = load i32, i32* @AR_TYPE_XOCODE_CONF, align 4
  %168 = or i32 %166, %167
  %169 = load i32, i32* @AR_S, align 4
  %170 = or i32 %168, %169
  %171 = load i32, i32* @AR_DB, align 4
  %172 = or i32 %170, %171
  %173 = load i32, i32* @AR_AVL, align 4
  %174 = or i32 %172, %173
  %175 = call i32 @install_valid(%struct.user_desc* %1, i32 %174)
  %176 = getelementptr inbounds %struct.user_desc, %struct.user_desc* %1, i32 0, i32 5
  store i32 0, i32* %176, align 4
  %177 = getelementptr inbounds %struct.user_desc, %struct.user_desc* %1, i32 0, i32 4
  store i32 2, i32* %177, align 4
  %178 = load i32, i32* @AR_DPL3, align 4
  %179 = load i32, i32* @AR_TYPE_XRCODE, align 4
  %180 = or i32 %178, %179
  %181 = load i32, i32* @AR_S, align 4
  %182 = or i32 %180, %181
  %183 = load i32, i32* @AR_DB, align 4
  %184 = or i32 %182, %183
  %185 = load i32, i32* @AR_AVL, align 4
  %186 = or i32 %184, %185
  %187 = call i32 @install_valid(%struct.user_desc* %1, i32 %186)
  %188 = getelementptr inbounds %struct.user_desc, %struct.user_desc* %1, i32 0, i32 5
  store i32 1, i32* %188, align 4
  %189 = getelementptr inbounds %struct.user_desc, %struct.user_desc* %1, i32 0, i32 9
  store i32 1, i32* %189, align 4
  %190 = load i32, i32* @AR_DPL3, align 4
  %191 = load i32, i32* @AR_TYPE_XOCODE, align 4
  %192 = or i32 %190, %191
  %193 = load i32, i32* @AR_S, align 4
  %194 = or i32 %192, %193
  %195 = load i32, i32* @AR_DB, align 4
  %196 = or i32 %194, %195
  %197 = load i32, i32* @AR_AVL, align 4
  %198 = or i32 %196, %197
  %199 = call i32 @install_valid(%struct.user_desc* %1, i32 %198)
  %200 = getelementptr inbounds %struct.user_desc, %struct.user_desc* %1, i32 0, i32 9
  store i32 0, i32* %200, align 4
  %201 = load i32, i32* @AR_DPL3, align 4
  %202 = load i32, i32* @AR_TYPE_XOCODE, align 4
  %203 = or i32 %201, %202
  %204 = load i32, i32* @AR_S, align 4
  %205 = or i32 %203, %204
  %206 = load i32, i32* @AR_DB, align 4
  %207 = or i32 %205, %206
  %208 = load i32, i32* @AR_AVL, align 4
  %209 = or i32 %207, %208
  %210 = call i32 @install_valid(%struct.user_desc* %1, i32 %209)
  store i32 %210, i32* %2, align 4
  %211 = load i32, i32* %2, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %308

213:                                              ; preds = %0
  %214 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %215 = call i64 (...) @fork()
  store i64 %215, i64* %3, align 8
  %216 = load i64, i64* %3, align 8
  %217 = icmp eq i64 %216, 0
  br i1 %217, label %218, label %239

218:                                              ; preds = %213
  store i64 0, i64* @nerrs, align 8
  %219 = getelementptr inbounds %struct.user_desc, %struct.user_desc* %1, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = load i32, i32* @AR_DPL3, align 4
  %222 = load i32, i32* @AR_TYPE_XOCODE, align 4
  %223 = or i32 %221, %222
  %224 = load i32, i32* @AR_S, align 4
  %225 = or i32 %223, %224
  %226 = load i32, i32* @AR_DB, align 4
  %227 = or i32 %225, %226
  %228 = load i32, i32* @AR_AVL, align 4
  %229 = or i32 %227, %228
  %230 = getelementptr inbounds %struct.user_desc, %struct.user_desc* %1, i32 0, i32 2
  %231 = load i32, i32* %230, align 4
  %232 = call i32 @check_valid_segment(i32 %220, i32 1, i32 %229, i32 %231, i32 1)
  %233 = call i32 @check_invalid_segment(i32 1, i32 1)
  %234 = load i64, i64* @nerrs, align 8
  %235 = icmp ne i64 %234, 0
  %236 = zext i1 %235 to i64
  %237 = select i1 %235, i32 1, i32 0
  %238 = call i32 @exit(i32 %237) #4
  unreachable

239:                                              ; preds = %213
  %240 = load i64, i64* %3, align 8
  %241 = call i64 @waitpid(i64 %240, i32* %4, i32 0)
  %242 = load i64, i64* %3, align 8
  %243 = icmp ne i64 %241, %242
  br i1 %243, label %248, label %244

244:                                              ; preds = %239
  %245 = load i32, i32* %4, align 4
  %246 = call i32 @WIFEXITED(i32 %245)
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %252, label %248

248:                                              ; preds = %244, %239
  %249 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %250 = load i64, i64* @nerrs, align 8
  %251 = add nsw i64 %250, 1
  store i64 %251, i64* @nerrs, align 8
  br label %263

252:                                              ; preds = %244
  %253 = load i32, i32* %4, align 4
  %254 = call i64 @WEXITSTATUS(i32 %253)
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %260

256:                                              ; preds = %252
  %257 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %258 = load i64, i64* @nerrs, align 8
  %259 = add nsw i64 %258, 1
  store i64 %259, i64* @nerrs, align 8
  br label %262

260:                                              ; preds = %252
  %261 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  br label %262

262:                                              ; preds = %260, %256
  br label %263

263:                                              ; preds = %262, %248
  br label %264

264:                                              ; preds = %263
  %265 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %266

266:                                              ; preds = %282, %264
  %267 = load i32, i32* %5, align 4
  %268 = icmp slt i32 %267, 8192
  br i1 %268, label %269, label %285

269:                                              ; preds = %266
  %270 = load i32, i32* %5, align 4
  %271 = getelementptr inbounds %struct.user_desc, %struct.user_desc* %1, i32 0, i32 0
  store i32 %270, i32* %271, align 4
  %272 = load i32, i32* %5, align 4
  %273 = getelementptr inbounds %struct.user_desc, %struct.user_desc* %1, i32 0, i32 2
  store i32 %272, i32* %273, align 4
  %274 = call i64 @safe_modify_ldt(i32 17, %struct.user_desc* %1, i32 40)
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %276, label %281

276:                                              ; preds = %269
  %277 = load i32, i32* %5, align 4
  %278 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32 %277)
  %279 = load i64, i64* @nerrs, align 8
  %280 = add nsw i64 %279, 1
  store i64 %280, i64* @nerrs, align 8
  br label %285

281:                                              ; preds = %269
  br label %282

282:                                              ; preds = %281
  %283 = load i32, i32* %5, align 4
  %284 = add nsw i32 %283, 1
  store i32 %284, i32* %5, align 4
  br label %266

285:                                              ; preds = %276, %266
  store i32 0, i32* %6, align 4
  br label %286

286:                                              ; preds = %303, %285
  %287 = load i32, i32* %6, align 4
  %288 = load i32, i32* %5, align 4
  %289 = icmp slt i32 %287, %288
  br i1 %289, label %290, label %306

290:                                              ; preds = %286
  %291 = load i32, i32* %6, align 4
  %292 = load i32, i32* @AR_DPL3, align 4
  %293 = load i32, i32* @AR_TYPE_XOCODE, align 4
  %294 = or i32 %292, %293
  %295 = load i32, i32* @AR_S, align 4
  %296 = or i32 %294, %295
  %297 = load i32, i32* @AR_DB, align 4
  %298 = or i32 %296, %297
  %299 = load i32, i32* @AR_AVL, align 4
  %300 = or i32 %298, %299
  %301 = load i32, i32* %6, align 4
  %302 = call i32 @check_valid_segment(i32 %291, i32 1, i32 %300, i32 %301, i32 0)
  br label %303

303:                                              ; preds = %290
  %304 = load i32, i32* %6, align 4
  %305 = add nsw i32 %304, 1
  store i32 %305, i32* %6, align 4
  br label %286

306:                                              ; preds = %286
  %307 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  br label %310

308:                                              ; preds = %0
  %309 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.7, i64 0, i64 0))
  br label %310

310:                                              ; preds = %308, %306
  %311 = getelementptr inbounds %struct.user_desc, %struct.user_desc* %1, i32 0, i32 0
  store i32 8192, i32* %311, align 4
  %312 = call i32 @fail_install(%struct.user_desc* %1)
  %313 = call i32 @memset(%struct.user_desc* %1, i32 0, i32 40)
  %314 = load i32, i32* @AR_DPL3, align 4
  %315 = load i32, i32* @AR_TYPE_RWDATA, align 4
  %316 = or i32 %314, %315
  %317 = load i32, i32* @AR_S, align 4
  %318 = or i32 %316, %317
  %319 = load i32, i32* @AR_P, align 4
  %320 = or i32 %318, %319
  %321 = call i32 @install_valid(%struct.user_desc* %1, i32 %320)
  %322 = getelementptr inbounds %struct.user_desc, %struct.user_desc* %1, i32 0, i32 7
  store i32 1, i32* %322, align 4
  %323 = load i32, i32* @AR_DPL3, align 4
  %324 = load i32, i32* @AR_TYPE_RWDATA, align 4
  %325 = or i32 %323, %324
  %326 = load i32, i32* @AR_S, align 4
  %327 = or i32 %325, %326
  %328 = call i32 @install_valid(%struct.user_desc* %1, i32 %327)
  %329 = getelementptr inbounds %struct.user_desc, %struct.user_desc* %1, i32 0, i32 7
  store i32 0, i32* %329, align 4
  %330 = getelementptr inbounds %struct.user_desc, %struct.user_desc* %1, i32 0, i32 5
  store i32 1, i32* %330, align 4
  %331 = load i32, i32* @AR_DPL3, align 4
  %332 = load i32, i32* @AR_TYPE_RODATA, align 4
  %333 = or i32 %331, %332
  %334 = load i32, i32* @AR_S, align 4
  %335 = or i32 %333, %334
  %336 = load i32, i32* @AR_P, align 4
  %337 = or i32 %335, %336
  %338 = call i32 @install_valid(%struct.user_desc* %1, i32 %337)
  %339 = getelementptr inbounds %struct.user_desc, %struct.user_desc* %1, i32 0, i32 5
  store i32 0, i32* %339, align 4
  %340 = getelementptr inbounds %struct.user_desc, %struct.user_desc* %1, i32 0, i32 7
  store i32 1, i32* %340, align 4
  %341 = load i32, i32* @AR_DPL3, align 4
  %342 = load i32, i32* @AR_TYPE_RWDATA, align 4
  %343 = or i32 %341, %342
  %344 = load i32, i32* @AR_S, align 4
  %345 = or i32 %343, %344
  %346 = call i32 @install_valid(%struct.user_desc* %1, i32 %345)
  %347 = getelementptr inbounds %struct.user_desc, %struct.user_desc* %1, i32 0, i32 5
  store i32 1, i32* %347, align 4
  %348 = getelementptr inbounds %struct.user_desc, %struct.user_desc* %1, i32 0, i32 2
  store i32 1, i32* %348, align 4
  %349 = load i32, i32* @AR_DPL3, align 4
  %350 = load i32, i32* @AR_TYPE_RODATA, align 4
  %351 = or i32 %349, %350
  %352 = load i32, i32* @AR_S, align 4
  %353 = or i32 %351, %352
  %354 = call i32 @install_valid(%struct.user_desc* %1, i32 %353)
  %355 = getelementptr inbounds %struct.user_desc, %struct.user_desc* %1, i32 0, i32 2
  store i32 0, i32* %355, align 4
  %356 = getelementptr inbounds %struct.user_desc, %struct.user_desc* %1, i32 0, i32 1
  store i32 1, i32* %356, align 4
  %357 = load i32, i32* @AR_DPL3, align 4
  %358 = load i32, i32* @AR_TYPE_RODATA, align 4
  %359 = or i32 %357, %358
  %360 = load i32, i32* @AR_S, align 4
  %361 = or i32 %359, %360
  %362 = call i32 @install_valid(%struct.user_desc* %1, i32 %361)
  %363 = getelementptr inbounds %struct.user_desc, %struct.user_desc* %1, i32 0, i32 1
  store i32 0, i32* %363, align 4
  %364 = call i32 @install_invalid(%struct.user_desc* %1, i32 0)
  %365 = getelementptr inbounds %struct.user_desc, %struct.user_desc* %1, i32 0, i32 7
  store i32 0, i32* %365, align 4
  %366 = getelementptr inbounds %struct.user_desc, %struct.user_desc* %1, i32 0, i32 3
  store i32 1, i32* %366, align 4
  %367 = getelementptr inbounds %struct.user_desc, %struct.user_desc* %1, i32 0, i32 5
  store i32 0, i32* %367, align 4
  %368 = getelementptr inbounds %struct.user_desc, %struct.user_desc* %1, i32 0, i32 2
  store i32 1048575, i32* %368, align 4
  %369 = load i32, i32* @AR_DPL3, align 4
  %370 = load i32, i32* @AR_TYPE_RWDATA, align 4
  %371 = or i32 %369, %370
  %372 = load i32, i32* @AR_S, align 4
  %373 = or i32 %371, %372
  %374 = load i32, i32* @AR_P, align 4
  %375 = or i32 %373, %374
  %376 = load i32, i32* @AR_DB, align 4
  %377 = or i32 %375, %376
  %378 = call i32 @install_valid(%struct.user_desc* %1, i32 %377)
  %379 = getelementptr inbounds %struct.user_desc, %struct.user_desc* %1, i32 0, i32 6
  store i32 1, i32* %379, align 4
  %380 = load i32, i32* @AR_DPL3, align 4
  %381 = load i32, i32* @AR_TYPE_RWDATA, align 4
  %382 = or i32 %380, %381
  %383 = load i32, i32* @AR_S, align 4
  %384 = or i32 %382, %383
  %385 = load i32, i32* @AR_P, align 4
  %386 = or i32 %384, %385
  %387 = load i32, i32* @AR_DB, align 4
  %388 = or i32 %386, %387
  %389 = load i32, i32* @AR_G, align 4
  %390 = or i32 %388, %389
  %391 = call i32 @install_valid(%struct.user_desc* %1, i32 %390)
  %392 = getelementptr inbounds %struct.user_desc, %struct.user_desc* %1, i32 0, i32 5
  store i32 1, i32* %392, align 4
  %393 = load i32, i32* @AR_DPL3, align 4
  %394 = load i32, i32* @AR_TYPE_RODATA, align 4
  %395 = or i32 %393, %394
  %396 = load i32, i32* @AR_S, align 4
  %397 = or i32 %395, %396
  %398 = load i32, i32* @AR_P, align 4
  %399 = or i32 %397, %398
  %400 = load i32, i32* @AR_DB, align 4
  %401 = or i32 %399, %400
  %402 = load i32, i32* @AR_G, align 4
  %403 = or i32 %401, %402
  %404 = call i32 @install_valid(%struct.user_desc* %1, i32 %403)
  %405 = getelementptr inbounds %struct.user_desc, %struct.user_desc* %1, i32 0, i32 4
  store i32 1, i32* %405, align 4
  %406 = getelementptr inbounds %struct.user_desc, %struct.user_desc* %1, i32 0, i32 5
  store i32 0, i32* %406, align 4
  %407 = load i32, i32* @AR_DPL3, align 4
  %408 = load i32, i32* @AR_TYPE_RWDATA_EXPDOWN, align 4
  %409 = or i32 %407, %408
  %410 = load i32, i32* @AR_S, align 4
  %411 = or i32 %409, %410
  %412 = load i32, i32* @AR_P, align 4
  %413 = or i32 %411, %412
  %414 = load i32, i32* @AR_DB, align 4
  %415 = or i32 %413, %414
  %416 = load i32, i32* @AR_G, align 4
  %417 = or i32 %415, %416
  %418 = call i32 @install_valid(%struct.user_desc* %1, i32 %417)
  %419 = getelementptr inbounds %struct.user_desc, %struct.user_desc* %1, i32 0, i32 5
  store i32 1, i32* %419, align 4
  %420 = load i32, i32* @AR_DPL3, align 4
  %421 = load i32, i32* @AR_TYPE_RODATA_EXPDOWN, align 4
  %422 = or i32 %420, %421
  %423 = load i32, i32* @AR_S, align 4
  %424 = or i32 %422, %423
  %425 = load i32, i32* @AR_P, align 4
  %426 = or i32 %424, %425
  %427 = load i32, i32* @AR_DB, align 4
  %428 = or i32 %426, %427
  %429 = load i32, i32* @AR_G, align 4
  %430 = or i32 %428, %429
  %431 = call i32 @install_valid(%struct.user_desc* %1, i32 %430)
  %432 = getelementptr inbounds %struct.user_desc, %struct.user_desc* %1, i32 0, i32 2
  store i32 0, i32* %432, align 4
  %433 = call i32 @install_invalid(%struct.user_desc* %1, i32 1)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @install_valid(%struct.user_desc*, i32) #2

declare dso_local i32 @check_invalid_segment(i32, i32) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i64 @fork(...) #2

declare dso_local i32 @check_valid_segment(i32, i32, i32, i32, i32) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i64 @waitpid(i64, i32*, i32) #2

declare dso_local i32 @WIFEXITED(i32) #2

declare dso_local i64 @WEXITSTATUS(i32) #2

declare dso_local i64 @safe_modify_ldt(i32, %struct.user_desc*, i32) #2

declare dso_local i32 @fail_install(%struct.user_desc*) #2

declare dso_local i32 @memset(%struct.user_desc*, i32, i32) #2

declare dso_local i32 @install_invalid(%struct.user_desc*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
