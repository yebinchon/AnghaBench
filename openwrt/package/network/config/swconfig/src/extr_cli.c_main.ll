; ModuleID = '/home/carl/AnghaBench/openwrt/package/network/config/swconfig/src/extr_cli.c_main.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/network/config/swconfig/src/extr_cli.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switch_dev = type { i32, i32 }
%struct.switch_attr = type { i32 }
%struct.switch_val = type { i32 }

@CMD_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"list\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"dev\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"port\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"vlan\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"set\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"get\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"load\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"portmap\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"show\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [94 x i8] c"Failed to connect to the switch. Use the \22list\22 command to see which switches are available.\0A\00", align 1
@SWLIB_ATTR_GROUP_PORT = common dso_local global i32 0, align 4
@SWLIB_ATTR_GROUP_VLAN = common dso_local global i32 0, align 4
@SWLIB_ATTR_GROUP_GLOBAL = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [24 x i8] c"Unknown attribute \22%s\22\0A\00", align 1
@SWITCH_TYPE_NOVAL = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [24 x i8] c"Failed to set attribute\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"Failed to get attribute\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.switch_dev*, align 8
  %8 = alloca %struct.switch_attr*, align 8
  %9 = alloca %struct.switch_val, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  %19 = load i32, i32* @CMD_NONE, align 4
  store i32 %19, i32* %11, align 4
  store i8* null, i8** %12, align 8
  store i32 -1, i32* %13, align 4
  store i32 -1, i32* %14, align 4
  store i8* null, i8** %15, align 8
  store i8* null, i8** %16, align 8
  store i8* null, i8** %17, align 8
  %20 = load i32, i32* %4, align 4
  %21 = icmp eq i32 %20, 2
  br i1 %21, label %22, label %30

22:                                               ; preds = %2
  %23 = load i8**, i8*** %5, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 1
  %25 = load i8*, i8** %24, align 8
  %26 = call i64 @strcmp(i8* %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %22
  %29 = call i32 (...) @swlib_list()
  store i32 0, i32* %3, align 4
  br label %388

30:                                               ; preds = %22, %2
  %31 = load i32, i32* %4, align 4
  %32 = icmp slt i32 %31, 4
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = call i32 (...) @print_usage()
  br label %35

35:                                               ; preds = %33, %30
  %36 = load i8**, i8*** %5, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 1
  %38 = load i8*, i8** %37, align 8
  %39 = call i64 @strcmp(i8* %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = call i32 (...) @print_usage()
  br label %43

43:                                               ; preds = %41, %35
  %44 = load i8**, i8*** %5, align 8
  %45 = getelementptr inbounds i8*, i8** %44, i64 2
  %46 = load i8*, i8** %45, align 8
  store i8* %46, i8** %12, align 8
  store i32 3, i32* %10, align 4
  br label %47

47:                                               ; preds = %202, %43
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %205

51:                                               ; preds = %47
  %52 = load i8**, i8*** %5, align 8
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8*, i8** %52, i64 %54
  %56 = load i8*, i8** %55, align 8
  store i8* %56, i8** %18, align 8
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* @CMD_NONE, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %51
  %61 = call i32 (...) @print_usage()
  br label %201

62:                                               ; preds = %51
  %63 = load i8*, i8** %18, align 8
  %64 = call i64 @strcmp(i8* %63, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %79, label %66

66:                                               ; preds = %62
  %67 = load i32, i32* %10, align 4
  %68 = add nsw i32 %67, 1
  %69 = load i32, i32* %4, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %79

71:                                               ; preds = %66
  %72 = load i8**, i8*** %5, align 8
  %73 = load i32, i32* %10, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %10, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8*, i8** %72, i64 %75
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 @atoi(i8* %77)
  store i32 %78, i32* %13, align 4
  br label %200

79:                                               ; preds = %66, %62
  %80 = load i8*, i8** %18, align 8
  %81 = call i64 @strcmp(i8* %80, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %96, label %83

83:                                               ; preds = %79
  %84 = load i32, i32* %10, align 4
  %85 = add nsw i32 %84, 1
  %86 = load i32, i32* %4, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %96

88:                                               ; preds = %83
  %89 = load i8**, i8*** %5, align 8
  %90 = load i32, i32* %10, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %10, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8*, i8** %89, i64 %92
  %94 = load i8*, i8** %93, align 8
  %95 = call i32 @atoi(i8* %94)
  store i32 %95, i32* %14, align 4
  br label %199

96:                                               ; preds = %83, %79
  %97 = load i8*, i8** %18, align 8
  %98 = call i64 @strcmp(i8* %97, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %96
  store i32 132, i32* %11, align 4
  br label %198

101:                                              ; preds = %96
  %102 = load i8*, i8** %18, align 8
  %103 = call i64 @strcmp(i8* %102, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %129, label %105

105:                                              ; preds = %101
  %106 = load i32, i32* %10, align 4
  %107 = add nsw i32 %106, 1
  %108 = load i32, i32* %4, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %129

110:                                              ; preds = %105
  store i32 129, i32* %11, align 4
  %111 = load i8**, i8*** %5, align 8
  %112 = load i32, i32* %10, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %10, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8*, i8** %111, i64 %114
  %116 = load i8*, i8** %115, align 8
  store i8* %116, i8** %15, align 8
  %117 = load i32, i32* %10, align 4
  %118 = add nsw i32 %117, 1
  %119 = load i32, i32* %4, align 4
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %121, label %128

121:                                              ; preds = %110
  %122 = load i8**, i8*** %5, align 8
  %123 = load i32, i32* %10, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %10, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8*, i8** %122, i64 %125
  %127 = load i8*, i8** %126, align 8
  store i8* %127, i8** %16, align 8
  br label %128

128:                                              ; preds = %121, %110
  br label %197

129:                                              ; preds = %105, %101
  %130 = load i8*, i8** %18, align 8
  %131 = call i64 @strcmp(i8* %130, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %145, label %133

133:                                              ; preds = %129
  %134 = load i32, i32* %10, align 4
  %135 = add nsw i32 %134, 1
  %136 = load i32, i32* %4, align 4
  %137 = icmp slt i32 %135, %136
  br i1 %137, label %138, label %145

138:                                              ; preds = %133
  store i32 133, i32* %11, align 4
  %139 = load i8**, i8*** %5, align 8
  %140 = load i32, i32* %10, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %10, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i8*, i8** %139, i64 %142
  %144 = load i8*, i8** %143, align 8
  store i8* %144, i8** %15, align 8
  br label %196

145:                                              ; preds = %133, %129
  %146 = load i8*, i8** %18, align 8
  %147 = call i64 @strcmp(i8* %146, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %169, label %149

149:                                              ; preds = %145
  %150 = load i32, i32* %10, align 4
  %151 = add nsw i32 %150, 1
  %152 = load i32, i32* %4, align 4
  %153 = icmp slt i32 %151, %152
  br i1 %153, label %154, label %169

154:                                              ; preds = %149
  %155 = load i32, i32* %13, align 4
  %156 = icmp sge i32 %155, 0
  br i1 %156, label %160, label %157

157:                                              ; preds = %154
  %158 = load i32, i32* %14, align 4
  %159 = icmp sge i32 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %157, %154
  %161 = call i32 (...) @print_usage()
  br label %162

162:                                              ; preds = %160, %157
  store i32 131, i32* %11, align 4
  %163 = load i8**, i8*** %5, align 8
  %164 = load i32, i32* %10, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %10, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i8*, i8** %163, i64 %166
  %168 = load i8*, i8** %167, align 8
  store i8* %168, i8** %15, align 8
  br label %195

169:                                              ; preds = %149, %145
  %170 = load i8*, i8** %18, align 8
  %171 = call i64 @strcmp(i8* %170, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %186, label %173

173:                                              ; preds = %169
  %174 = load i32, i32* %10, align 4
  %175 = add nsw i32 %174, 1
  %176 = load i32, i32* %4, align 4
  %177 = icmp slt i32 %175, %176
  br i1 %177, label %178, label %185

178:                                              ; preds = %173
  %179 = load i8**, i8*** %5, align 8
  %180 = load i32, i32* %10, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %10, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i8*, i8** %179, i64 %182
  %184 = load i8*, i8** %183, align 8
  store i8* %184, i8** %17, align 8
  br label %185

185:                                              ; preds = %178, %173
  store i32 130, i32* %11, align 4
  br label %194

186:                                              ; preds = %169
  %187 = load i8*, i8** %18, align 8
  %188 = call i64 @strcmp(i8* %187, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %191, label %190

190:                                              ; preds = %186
  store i32 128, i32* %11, align 4
  br label %193

191:                                              ; preds = %186
  %192 = call i32 (...) @print_usage()
  br label %193

193:                                              ; preds = %191, %190
  br label %194

194:                                              ; preds = %193, %185
  br label %195

195:                                              ; preds = %194, %162
  br label %196

196:                                              ; preds = %195, %138
  br label %197

197:                                              ; preds = %196, %128
  br label %198

198:                                              ; preds = %197, %100
  br label %199

199:                                              ; preds = %198, %88
  br label %200

200:                                              ; preds = %199, %71
  br label %201

201:                                              ; preds = %200, %60
  br label %202

202:                                              ; preds = %201
  %203 = load i32, i32* %10, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %10, align 4
  br label %47

205:                                              ; preds = %47
  %206 = load i32, i32* %11, align 4
  %207 = load i32, i32* @CMD_NONE, align 4
  %208 = icmp eq i32 %206, %207
  br i1 %208, label %209, label %211

209:                                              ; preds = %205
  %210 = call i32 (...) @print_usage()
  br label %211

211:                                              ; preds = %209, %205
  %212 = load i32, i32* %13, align 4
  %213 = icmp sgt i32 %212, -1
  br i1 %213, label %214, label %219

214:                                              ; preds = %211
  %215 = load i32, i32* %14, align 4
  %216 = icmp sgt i32 %215, -1
  br i1 %216, label %217, label %219

217:                                              ; preds = %214
  %218 = call i32 (...) @print_usage()
  br label %219

219:                                              ; preds = %217, %214, %211
  %220 = load i8*, i8** %12, align 8
  %221 = call %struct.switch_dev* @swlib_connect(i8* %220)
  store %struct.switch_dev* %221, %struct.switch_dev** %7, align 8
  %222 = load %struct.switch_dev*, %struct.switch_dev** %7, align 8
  %223 = icmp ne %struct.switch_dev* %222, null
  br i1 %223, label %227, label %224

224:                                              ; preds = %219
  %225 = load i32, i32* @stderr, align 4
  %226 = call i32 (i32, i8*, ...) @fprintf(i32 %225, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.10, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %388

227:                                              ; preds = %219
  %228 = load %struct.switch_dev*, %struct.switch_dev** %7, align 8
  %229 = call i32 @swlib_scan(%struct.switch_dev* %228)
  %230 = load i32, i32* %11, align 4
  %231 = icmp eq i32 %230, 133
  br i1 %231, label %235, label %232

232:                                              ; preds = %227
  %233 = load i32, i32* %11, align 4
  %234 = icmp eq i32 %233, 129
  br i1 %234, label %235, label %265

235:                                              ; preds = %232, %227
  %236 = load i32, i32* %13, align 4
  %237 = icmp sgt i32 %236, -1
  br i1 %237, label %238, label %243

238:                                              ; preds = %235
  %239 = load %struct.switch_dev*, %struct.switch_dev** %7, align 8
  %240 = load i32, i32* @SWLIB_ATTR_GROUP_PORT, align 4
  %241 = load i8*, i8** %15, align 8
  %242 = call %struct.switch_attr* @swlib_lookup_attr(%struct.switch_dev* %239, i32 %240, i8* %241)
  store %struct.switch_attr* %242, %struct.switch_attr** %8, align 8
  br label %257

243:                                              ; preds = %235
  %244 = load i32, i32* %14, align 4
  %245 = icmp sgt i32 %244, -1
  br i1 %245, label %246, label %251

246:                                              ; preds = %243
  %247 = load %struct.switch_dev*, %struct.switch_dev** %7, align 8
  %248 = load i32, i32* @SWLIB_ATTR_GROUP_VLAN, align 4
  %249 = load i8*, i8** %15, align 8
  %250 = call %struct.switch_attr* @swlib_lookup_attr(%struct.switch_dev* %247, i32 %248, i8* %249)
  store %struct.switch_attr* %250, %struct.switch_attr** %8, align 8
  br label %256

251:                                              ; preds = %243
  %252 = load %struct.switch_dev*, %struct.switch_dev** %7, align 8
  %253 = load i32, i32* @SWLIB_ATTR_GROUP_GLOBAL, align 4
  %254 = load i8*, i8** %15, align 8
  %255 = call %struct.switch_attr* @swlib_lookup_attr(%struct.switch_dev* %252, i32 %253, i8* %254)
  store %struct.switch_attr* %255, %struct.switch_attr** %8, align 8
  br label %256

256:                                              ; preds = %251, %246
  br label %257

257:                                              ; preds = %256, %238
  %258 = load %struct.switch_attr*, %struct.switch_attr** %8, align 8
  %259 = icmp ne %struct.switch_attr* %258, null
  br i1 %259, label %264, label %260

260:                                              ; preds = %257
  %261 = load i32, i32* @stderr, align 4
  %262 = load i8*, i8** %15, align 8
  %263 = call i32 (i32, i8*, ...) @fprintf(i32 %261, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0), i8* %262)
  store i32 -1, i32* %6, align 4
  br label %384

264:                                              ; preds = %257
  br label %265

265:                                              ; preds = %264, %232
  %266 = load i32, i32* %11, align 4
  switch i32 %266, label %383 [
    i32 129, label %267
    i32 133, label %296
    i32 131, label %322
    i32 132, label %326
    i32 130, label %329
    i32 128, label %333
  ]

267:                                              ; preds = %265
  %268 = load %struct.switch_attr*, %struct.switch_attr** %8, align 8
  %269 = getelementptr inbounds %struct.switch_attr, %struct.switch_attr* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 4
  %271 = load i32, i32* @SWITCH_TYPE_NOVAL, align 4
  %272 = icmp ne i32 %270, %271
  br i1 %272, label %273, label %278

273:                                              ; preds = %267
  %274 = load i8*, i8** %16, align 8
  %275 = icmp eq i8* %274, null
  br i1 %275, label %276, label %278

276:                                              ; preds = %273
  %277 = call i32 (...) @print_usage()
  br label %278

278:                                              ; preds = %276, %273, %267
  %279 = load i32, i32* %14, align 4
  %280 = icmp sgt i32 %279, -1
  br i1 %280, label %281, label %283

281:                                              ; preds = %278
  %282 = load i32, i32* %14, align 4
  store i32 %282, i32* %13, align 4
  br label %283

283:                                              ; preds = %281, %278
  %284 = load %struct.switch_dev*, %struct.switch_dev** %7, align 8
  %285 = load %struct.switch_attr*, %struct.switch_attr** %8, align 8
  %286 = load i32, i32* %13, align 4
  %287 = load i8*, i8** %16, align 8
  %288 = call i32 @swlib_set_attr_string(%struct.switch_dev* %284, %struct.switch_attr* %285, i32 %286, i8* %287)
  store i32 %288, i32* %6, align 4
  %289 = load i32, i32* %6, align 4
  %290 = icmp slt i32 %289, 0
  br i1 %290, label %291, label %295

291:                                              ; preds = %283
  %292 = load i32, i32* %6, align 4
  %293 = sub nsw i32 0, %292
  %294 = call i32 @nl_perror(i32 %293, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0))
  br label %384

295:                                              ; preds = %283
  br label %383

296:                                              ; preds = %265
  %297 = load i32, i32* %14, align 4
  %298 = icmp sgt i32 %297, -1
  br i1 %298, label %299, label %302

299:                                              ; preds = %296
  %300 = load i32, i32* %14, align 4
  %301 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %9, i32 0, i32 0
  store i32 %300, i32* %301, align 4
  br label %302

302:                                              ; preds = %299, %296
  %303 = load i32, i32* %13, align 4
  %304 = icmp sgt i32 %303, -1
  br i1 %304, label %305, label %308

305:                                              ; preds = %302
  %306 = load i32, i32* %13, align 4
  %307 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %9, i32 0, i32 0
  store i32 %306, i32* %307, align 4
  br label %308

308:                                              ; preds = %305, %302
  %309 = load %struct.switch_dev*, %struct.switch_dev** %7, align 8
  %310 = load %struct.switch_attr*, %struct.switch_attr** %8, align 8
  %311 = call i32 @swlib_get_attr(%struct.switch_dev* %309, %struct.switch_attr* %310, %struct.switch_val* %9)
  store i32 %311, i32* %6, align 4
  %312 = load i32, i32* %6, align 4
  %313 = icmp slt i32 %312, 0
  br i1 %313, label %314, label %318

314:                                              ; preds = %308
  %315 = load i32, i32* %6, align 4
  %316 = sub nsw i32 0, %315
  %317 = call i32 @nl_perror(i32 %316, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0))
  br label %384

318:                                              ; preds = %308
  %319 = load %struct.switch_attr*, %struct.switch_attr** %8, align 8
  %320 = call i32 @print_attr_val(%struct.switch_attr* %319, %struct.switch_val* %9)
  %321 = call i32 @putchar(i8 signext 10)
  br label %383

322:                                              ; preds = %265
  %323 = load %struct.switch_dev*, %struct.switch_dev** %7, align 8
  %324 = load i8*, i8** %15, align 8
  %325 = call i32 @swconfig_load_uci(%struct.switch_dev* %323, i8* %324)
  br label %383

326:                                              ; preds = %265
  %327 = load %struct.switch_dev*, %struct.switch_dev** %7, align 8
  %328 = call i32 @list_attributes(%struct.switch_dev* %327)
  br label %383

329:                                              ; preds = %265
  %330 = load %struct.switch_dev*, %struct.switch_dev** %7, align 8
  %331 = load i8*, i8** %17, align 8
  %332 = call i32 @swlib_print_portmap(%struct.switch_dev* %330, i8* %331)
  br label %383

333:                                              ; preds = %265
  %334 = load i32, i32* %13, align 4
  %335 = icmp sge i32 %334, 0
  br i1 %335, label %339, label %336

336:                                              ; preds = %333
  %337 = load i32, i32* %14, align 4
  %338 = icmp sge i32 %337, 0
  br i1 %338, label %339, label %351

339:                                              ; preds = %336, %333
  %340 = load i32, i32* %13, align 4
  %341 = icmp sge i32 %340, 0
  br i1 %341, label %342, label %346

342:                                              ; preds = %339
  %343 = load %struct.switch_dev*, %struct.switch_dev** %7, align 8
  %344 = load i32, i32* %13, align 4
  %345 = call i32 @show_port(%struct.switch_dev* %343, i32 %344)
  br label %350

346:                                              ; preds = %339
  %347 = load %struct.switch_dev*, %struct.switch_dev** %7, align 8
  %348 = load i32, i32* %14, align 4
  %349 = call i32 @show_vlan(%struct.switch_dev* %347, i32 %348, i32 0)
  br label %350

350:                                              ; preds = %346, %342
  br label %382

351:                                              ; preds = %336
  %352 = load %struct.switch_dev*, %struct.switch_dev** %7, align 8
  %353 = call i32 @show_global(%struct.switch_dev* %352)
  store i32 0, i32* %10, align 4
  br label %354

354:                                              ; preds = %364, %351
  %355 = load i32, i32* %10, align 4
  %356 = load %struct.switch_dev*, %struct.switch_dev** %7, align 8
  %357 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %356, i32 0, i32 0
  %358 = load i32, i32* %357, align 4
  %359 = icmp slt i32 %355, %358
  br i1 %359, label %360, label %367

360:                                              ; preds = %354
  %361 = load %struct.switch_dev*, %struct.switch_dev** %7, align 8
  %362 = load i32, i32* %10, align 4
  %363 = call i32 @show_port(%struct.switch_dev* %361, i32 %362)
  br label %364

364:                                              ; preds = %360
  %365 = load i32, i32* %10, align 4
  %366 = add nsw i32 %365, 1
  store i32 %366, i32* %10, align 4
  br label %354

367:                                              ; preds = %354
  store i32 0, i32* %10, align 4
  br label %368

368:                                              ; preds = %378, %367
  %369 = load i32, i32* %10, align 4
  %370 = load %struct.switch_dev*, %struct.switch_dev** %7, align 8
  %371 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %370, i32 0, i32 1
  %372 = load i32, i32* %371, align 4
  %373 = icmp slt i32 %369, %372
  br i1 %373, label %374, label %381

374:                                              ; preds = %368
  %375 = load %struct.switch_dev*, %struct.switch_dev** %7, align 8
  %376 = load i32, i32* %10, align 4
  %377 = call i32 @show_vlan(%struct.switch_dev* %375, i32 %376, i32 1)
  br label %378

378:                                              ; preds = %374
  %379 = load i32, i32* %10, align 4
  %380 = add nsw i32 %379, 1
  store i32 %380, i32* %10, align 4
  br label %368

381:                                              ; preds = %368
  br label %382

382:                                              ; preds = %381, %350
  br label %383

383:                                              ; preds = %265, %382, %329, %326, %322, %318, %295
  br label %384

384:                                              ; preds = %383, %314, %291, %260
  %385 = load %struct.switch_dev*, %struct.switch_dev** %7, align 8
  %386 = call i32 @swlib_free_all(%struct.switch_dev* %385)
  %387 = load i32, i32* %6, align 4
  store i32 %387, i32* %3, align 4
  br label %388

388:                                              ; preds = %384, %224, %28
  %389 = load i32, i32* %3, align 4
  ret i32 %389
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @swlib_list(...) #1

declare dso_local i32 @print_usage(...) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local %struct.switch_dev* @swlib_connect(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @swlib_scan(%struct.switch_dev*) #1

declare dso_local %struct.switch_attr* @swlib_lookup_attr(%struct.switch_dev*, i32, i8*) #1

declare dso_local i32 @swlib_set_attr_string(%struct.switch_dev*, %struct.switch_attr*, i32, i8*) #1

declare dso_local i32 @nl_perror(i32, i8*) #1

declare dso_local i32 @swlib_get_attr(%struct.switch_dev*, %struct.switch_attr*, %struct.switch_val*) #1

declare dso_local i32 @print_attr_val(%struct.switch_attr*, %struct.switch_val*) #1

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local i32 @swconfig_load_uci(%struct.switch_dev*, i8*) #1

declare dso_local i32 @list_attributes(%struct.switch_dev*) #1

declare dso_local i32 @swlib_print_portmap(%struct.switch_dev*, i8*) #1

declare dso_local i32 @show_port(%struct.switch_dev*, i32) #1

declare dso_local i32 @show_vlan(%struct.switch_dev*, i32, i32) #1

declare dso_local i32 @show_global(%struct.switch_dev*) #1

declare dso_local i32 @swlib_free_all(%struct.switch_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
