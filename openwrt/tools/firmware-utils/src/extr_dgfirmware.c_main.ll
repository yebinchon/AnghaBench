; ModuleID = '/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_dgfirmware.c_main.c'
source_filename = "/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_dgfirmware.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@app_name = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"-h\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"-f\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"-x\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"%s: missing argument\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"-xk\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"-m\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"-k\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"-w\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"%s: too many arguments\0A\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"%s: conflictuous options\0A\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"** Read firmware file\0A\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"Firmware product: %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"Firmware version: 1.%02d.%02d\0A\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"** Write rootfs file\0A\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"** Write kernel file\0A\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"** Read rootfs file\0A\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"** Read kernel file\0A\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"image checksum = %04x\0A\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"real checksum  = %04x\0A\00", align 1
@.str.19 = private unnamed_addr constant [25 x i8] c"** Bad Checksum, fix it\0A\00", align 1
@.str.20 = private unnamed_addr constant [30 x i8] c"** Checksum is correct, good\0A\00", align 1
@.str.21 = private unnamed_addr constant [21 x i8] c"** Write image file\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i16, align 2
  %19 = alloca i16, align 2
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %6, align 8
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %20 = load i8**, i8*** %5, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 0
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** @app_name, align 8
  store i32 1, i32* %16, align 4
  br label %23

23:                                               ; preds = %197, %2
  %24 = load i32, i32* %16, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %200

27:                                               ; preds = %23
  %28 = load i8**, i8*** %5, align 8
  %29 = load i32, i32* %16, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8*, i8** %28, i64 %30
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @strcmp(i8* %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %27
  %36 = call i32 (...) @print_usage()
  store i32 0, i32* %3, align 4
  br label %309

37:                                               ; preds = %27
  %38 = load i8**, i8*** %5, align 8
  %39 = load i32, i32* %16, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8*, i8** %38, i64 %40
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @strcmp(i8* %42, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %37
  store i32 1, i32* %10, align 4
  br label %195

46:                                               ; preds = %37
  %47 = load i8**, i8*** %5, align 8
  %48 = load i32, i32* %16, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8*, i8** %47, i64 %49
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @strcmp(i8* %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %72, label %54

54:                                               ; preds = %46
  %55 = load i32, i32* %16, align 4
  %56 = add nsw i32 %55, 1
  %57 = load i32, i32* %4, align 4
  %58 = icmp sge i32 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load i32, i32* @stderr, align 4
  %61 = load i8*, i8** @app_name, align 8
  %62 = call i32 @fprintf(i32 %60, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* %61)
  store i32 -1, i32* %3, align 4
  br label %309

63:                                               ; preds = %54
  store i32 1, i32* %12, align 4
  %64 = load i8**, i8*** %5, align 8
  %65 = load i32, i32* %16, align 4
  %66 = add nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8*, i8** %64, i64 %67
  %69 = load i8*, i8** %68, align 8
  store i8* %69, i8** %7, align 8
  %70 = load i32, i32* %16, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %16, align 4
  br label %194

72:                                               ; preds = %46
  %73 = load i8**, i8*** %5, align 8
  %74 = load i32, i32* %16, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8*, i8** %73, i64 %75
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 @strcmp(i8* %77, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %98, label %80

80:                                               ; preds = %72
  %81 = load i32, i32* %16, align 4
  %82 = add nsw i32 %81, 1
  %83 = load i32, i32* %4, align 4
  %84 = icmp sge i32 %82, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %80
  %86 = load i32, i32* @stderr, align 4
  %87 = load i8*, i8** @app_name, align 8
  %88 = call i32 @fprintf(i32 %86, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* %87)
  store i32 -1, i32* %3, align 4
  br label %309

89:                                               ; preds = %80
  store i32 1, i32* %14, align 4
  %90 = load i8**, i8*** %5, align 8
  %91 = load i32, i32* %16, align 4
  %92 = add nsw i32 %91, 1
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8*, i8** %90, i64 %93
  %95 = load i8*, i8** %94, align 8
  store i8* %95, i8** %8, align 8
  %96 = load i32, i32* %16, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %16, align 4
  br label %193

98:                                               ; preds = %72
  %99 = load i8**, i8*** %5, align 8
  %100 = load i32, i32* %16, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8*, i8** %99, i64 %101
  %103 = load i8*, i8** %102, align 8
  %104 = call i32 @strcmp(i8* %103, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %124, label %106

106:                                              ; preds = %98
  %107 = load i32, i32* %16, align 4
  %108 = add nsw i32 %107, 1
  %109 = load i32, i32* %4, align 4
  %110 = icmp sge i32 %108, %109
  br i1 %110, label %111, label %115

111:                                              ; preds = %106
  %112 = load i32, i32* @stderr, align 4
  %113 = load i8*, i8** @app_name, align 8
  %114 = call i32 @fprintf(i32 %112, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* %113)
  store i32 -1, i32* %3, align 4
  br label %309

115:                                              ; preds = %106
  store i32 1, i32* %13, align 4
  %116 = load i8**, i8*** %5, align 8
  %117 = load i32, i32* %16, align 4
  %118 = add nsw i32 %117, 1
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8*, i8** %116, i64 %119
  %121 = load i8*, i8** %120, align 8
  store i8* %121, i8** %7, align 8
  %122 = load i32, i32* %16, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %16, align 4
  br label %192

124:                                              ; preds = %98
  %125 = load i8**, i8*** %5, align 8
  %126 = load i32, i32* %16, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8*, i8** %125, i64 %127
  %129 = load i8*, i8** %128, align 8
  %130 = call i32 @strcmp(i8* %129, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %150, label %132

132:                                              ; preds = %124
  %133 = load i32, i32* %16, align 4
  %134 = add nsw i32 %133, 1
  %135 = load i32, i32* %4, align 4
  %136 = icmp sge i32 %134, %135
  br i1 %136, label %137, label %141

137:                                              ; preds = %132
  %138 = load i32, i32* @stderr, align 4
  %139 = load i8*, i8** @app_name, align 8
  %140 = call i32 @fprintf(i32 %138, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* %139)
  store i32 -1, i32* %3, align 4
  br label %309

141:                                              ; preds = %132
  store i32 1, i32* %15, align 4
  %142 = load i8**, i8*** %5, align 8
  %143 = load i32, i32* %16, align 4
  %144 = add nsw i32 %143, 1
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8*, i8** %142, i64 %145
  %147 = load i8*, i8** %146, align 8
  store i8* %147, i8** %8, align 8
  %148 = load i32, i32* %16, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %16, align 4
  br label %191

150:                                              ; preds = %124
  %151 = load i8**, i8*** %5, align 8
  %152 = load i32, i32* %16, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i8*, i8** %151, i64 %153
  %155 = load i8*, i8** %154, align 8
  %156 = call i32 @strcmp(i8* %155, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %176, label %158

158:                                              ; preds = %150
  %159 = load i32, i32* %16, align 4
  %160 = add nsw i32 %159, 1
  %161 = load i32, i32* %4, align 4
  %162 = icmp sge i32 %160, %161
  br i1 %162, label %163, label %167

163:                                              ; preds = %158
  %164 = load i32, i32* @stderr, align 4
  %165 = load i8*, i8** @app_name, align 8
  %166 = call i32 @fprintf(i32 %164, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* %165)
  store i32 -1, i32* %3, align 4
  br label %309

167:                                              ; preds = %158
  store i32 1, i32* %11, align 4
  %168 = load i8**, i8*** %5, align 8
  %169 = load i32, i32* %16, align 4
  %170 = add nsw i32 %169, 1
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i8*, i8** %168, i64 %171
  %173 = load i8*, i8** %172, align 8
  store i8* %173, i8** %9, align 8
  %174 = load i32, i32* %16, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %16, align 4
  br label %190

176:                                              ; preds = %150
  %177 = load i8*, i8** %6, align 8
  %178 = icmp ne i8* %177, null
  br i1 %178, label %179, label %183

179:                                              ; preds = %176
  %180 = load i32, i32* @stderr, align 4
  %181 = load i8*, i8** @app_name, align 8
  %182 = call i32 @fprintf(i32 %180, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i8* %181)
  store i32 -1, i32* %3, align 4
  br label %309

183:                                              ; preds = %176
  %184 = load i8**, i8*** %5, align 8
  %185 = load i32, i32* %16, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i8*, i8** %184, i64 %186
  %188 = load i8*, i8** %187, align 8
  store i8* %188, i8** %6, align 8
  br label %189

189:                                              ; preds = %183
  br label %190

190:                                              ; preds = %189, %167
  br label %191

191:                                              ; preds = %190, %141
  br label %192

192:                                              ; preds = %191, %115
  br label %193

193:                                              ; preds = %192, %89
  br label %194

194:                                              ; preds = %193, %63
  br label %195

195:                                              ; preds = %194, %45
  br label %196

196:                                              ; preds = %195
  br label %197

197:                                              ; preds = %196
  %198 = load i32, i32* %16, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %16, align 4
  br label %23

200:                                              ; preds = %23
  %201 = load i8*, i8** %6, align 8
  %202 = icmp eq i8* %201, null
  br i1 %202, label %203, label %207

203:                                              ; preds = %200
  %204 = load i32, i32* @stderr, align 4
  %205 = load i8*, i8** @app_name, align 8
  %206 = call i32 @fprintf(i32 %204, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* %205)
  store i32 -1, i32* %3, align 4
  br label %309

207:                                              ; preds = %200
  %208 = load i32, i32* %13, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %213

210:                                              ; preds = %207
  %211 = load i32, i32* %12, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %219, label %213

213:                                              ; preds = %210, %207
  %214 = load i32, i32* %15, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %223

216:                                              ; preds = %213
  %217 = load i32, i32* %14, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %223

219:                                              ; preds = %216, %210
  %220 = load i32, i32* @stderr, align 4
  %221 = load i8*, i8** @app_name, align 8
  %222 = call i32 @fprintf(i32 %220, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i8* %221)
  store i32 -1, i32* %3, align 4
  br label %309

223:                                              ; preds = %216, %213
  %224 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0))
  %225 = load i8*, i8** %6, align 8
  %226 = call i8* @read_img(i8* %225)
  store i8* %226, i8** %17, align 8
  %227 = load i8*, i8** %17, align 8
  %228 = getelementptr inbounds i8, i8* %227, i64 4063165
  %229 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0), i8* %228)
  %230 = load i8*, i8** %17, align 8
  %231 = getelementptr inbounds i8, i8* %230, i64 4063211
  %232 = load i8, i8* %231, align 1
  %233 = zext i8 %232 to i32
  %234 = and i32 %233, 127
  %235 = load i8*, i8** %17, align 8
  %236 = getelementptr inbounds i8, i8* %235, i64 4063212
  %237 = load i8, i8* %236, align 1
  %238 = zext i8 %237 to i32
  %239 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0), i32 %234, i32 %238)
  %240 = load i32, i32* %12, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %247

242:                                              ; preds = %223
  %243 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0))
  %244 = load i8*, i8** %17, align 8
  %245 = load i8*, i8** %7, align 8
  %246 = call i32 @write_rootfs(i8* %244, i8* %245)
  br label %247

247:                                              ; preds = %242, %223
  %248 = load i32, i32* %14, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %255

250:                                              ; preds = %247
  %251 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0))
  %252 = load i8*, i8** %17, align 8
  %253 = load i8*, i8** %8, align 8
  %254 = call i32 @write_kernel(i8* %252, i8* %253)
  br label %255

255:                                              ; preds = %250, %247
  %256 = load i32, i32* %13, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %263

258:                                              ; preds = %255
  %259 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0))
  %260 = load i8*, i8** %17, align 8
  %261 = load i8*, i8** %7, align 8
  %262 = call i32 @read_rootfs(i8* %260, i8* %261)
  store i32 1, i32* %10, align 4
  br label %263

263:                                              ; preds = %258, %255
  %264 = load i32, i32* %15, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %271

266:                                              ; preds = %263
  %267 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0))
  %268 = load i8*, i8** %17, align 8
  %269 = load i8*, i8** %8, align 8
  %270 = call i32 @read_kernel(i8* %268, i8* %269)
  store i32 1, i32* %10, align 4
  br label %271

271:                                              ; preds = %266, %263
  %272 = load i8*, i8** %17, align 8
  %273 = call zeroext i16 @get_checksum(i8* %272)
  store i16 %273, i16* %18, align 2
  %274 = load i8*, i8** %17, align 8
  %275 = call zeroext i16 @compute_checksum(i8* %274)
  store i16 %275, i16* %19, align 2
  %276 = load i16, i16* %18, align 2
  %277 = zext i16 %276 to i32
  %278 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i64 0, i64 0), i32 %277)
  %279 = load i16, i16* %19, align 2
  %280 = zext i16 %279 to i32
  %281 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i64 0, i64 0), i32 %280)
  %282 = load i32, i32* %10, align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %298

284:                                              ; preds = %271
  %285 = load i16, i16* %18, align 2
  %286 = zext i16 %285 to i32
  %287 = load i16, i16* %19, align 2
  %288 = zext i16 %287 to i32
  %289 = icmp ne i32 %286, %288
  br i1 %289, label %290, label %295

290:                                              ; preds = %284
  %291 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.19, i64 0, i64 0))
  %292 = load i8*, i8** %17, align 8
  %293 = load i16, i16* %19, align 2
  %294 = call i32 @set_checksum(i8* %292, i16 zeroext %293)
  br label %297

295:                                              ; preds = %284
  %296 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.20, i64 0, i64 0))
  br label %297

297:                                              ; preds = %295, %290
  br label %298

298:                                              ; preds = %297, %271
  %299 = load i32, i32* %11, align 4
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %306

301:                                              ; preds = %298
  %302 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.21, i64 0, i64 0))
  %303 = load i8*, i8** %17, align 8
  %304 = load i8*, i8** %9, align 8
  %305 = call i32 @write_img(i8* %303, i8* %304)
  br label %306

306:                                              ; preds = %301, %298
  %307 = load i8*, i8** %17, align 8
  %308 = call i32 @free(i8* %307)
  store i32 0, i32* %3, align 4
  br label %309

309:                                              ; preds = %306, %219, %203, %179, %163, %137, %111, %85, %59, %35
  %310 = load i32, i32* %3, align 4
  ret i32 %310
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @print_usage(...) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @read_img(i8*) #1

declare dso_local i32 @write_rootfs(i8*, i8*) #1

declare dso_local i32 @write_kernel(i8*, i8*) #1

declare dso_local i32 @read_rootfs(i8*, i8*) #1

declare dso_local i32 @read_kernel(i8*, i8*) #1

declare dso_local zeroext i16 @get_checksum(i8*) #1

declare dso_local zeroext i16 @compute_checksum(i8*) #1

declare dso_local i32 @set_checksum(i8*, i16 zeroext) #1

declare dso_local i32 @write_img(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
