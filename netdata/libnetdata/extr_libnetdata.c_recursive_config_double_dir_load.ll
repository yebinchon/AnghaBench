; ModuleID = '/home/carl/AnghaBench/netdata/libnetdata/extr_libnetdata.c_recursive_config_double_dir_load.c'
source_filename = "/home/carl/AnghaBench/netdata/libnetdata/extr_libnetdata.c_recursive_config_double_dir_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i64, i8* }

@.str = private unnamed_addr constant [96 x i8] c"CONFIG: Max directory depth reached while reading user path '%s', stock path '%s', subpath '%s'\00", align 1
@D_HEALTH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [74 x i8] c"CONFIG traversing user-config directory '%s', stock config directory '%s'\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"CONFIG cannot open user-config directory '%s'.\00", align 1
@DT_DIR = common dso_local global i64 0, align 8
@DT_LNK = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [46 x i8] c"CONFIG ignoring user-config directory '%s/%s'\00", align 1
@DT_UNKNOWN = common dso_local global i64 0, align 8
@DT_REG = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [6 x i8] c".conf\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"CONFIG calling callback for user file '%s'\00", align 1
@.str.6 = private unnamed_addr constant [52 x i8] c"CONFIG ignoring user-config file '%s/%s' of type %d\00", align 1
@.str.7 = private unnamed_addr constant [74 x i8] c"CONFIG traversing stock config directory '%s', user config directory '%s'\00", align 1
@.str.8 = private unnamed_addr constant [48 x i8] c"CONFIG cannot open stock config directory '%s'.\00", align 1
@.str.9 = private unnamed_addr constant [47 x i8] c"CONFIG ignoring stock config directory '%s/%s'\00", align 1
@.str.10 = private unnamed_addr constant [44 x i8] c"CONFIG calling callback for stock file '%s'\00", align 1
@.str.11 = private unnamed_addr constant [53 x i8] c"CONFIG ignoring stock-config file '%s/%s' of type %d\00", align 1
@.str.12 = private unnamed_addr constant [79 x i8] c"CONFIG done traversing user-config directory '%s', stock config directory '%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @recursive_config_double_dir_load(i8* %0, i8* %1, i8* %2, i32 (i8*, i8*)* %3, i8* %4, i64 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32 (i8*, i8*)*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.dirent*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %struct.dirent*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 (i8*, i8*)* %3, i32 (i8*, i8*)** %10, align 8
  store i8* %4, i8** %11, align 8
  store i64 %5, i64* %12, align 8
  %22 = load i64, i64* %12, align 8
  %23 = icmp ugt i64 %22, 3
  br i1 %23, label %24, label %29

24:                                               ; preds = %6
  %25 = load i8*, i8** %7, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = call i32 (i8*, i8*, ...) @error(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str, i64 0, i64 0), i8* %25, i8* %26, i8* %27)
  br label %403

29:                                               ; preds = %6
  %30 = load i8*, i8** %7, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = call i8* @strdupz_path_subpath(i8* %30, i8* %31)
  store i8* %32, i8** %13, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = call i8* @strdupz_path_subpath(i8* %33, i8* %34)
  store i8* %35, i8** %14, align 8
  %36 = load i32, i32* @D_HEALTH, align 4
  %37 = load i8*, i8** %13, align 8
  %38 = load i8*, i8** %14, align 8
  %39 = call i32 (i32, i8*, i8*, ...) @debug(i32 %36, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i8* %37, i8* %38)
  %40 = load i8*, i8** %13, align 8
  %41 = call i32* @opendir(i8* %40)
  store i32* %41, i32** %15, align 8
  %42 = load i32*, i32** %15, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %29
  %45 = load i8*, i8** %13, align 8
  %46 = call i32 (i8*, i8*, ...) @error(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i8* %45)
  br label %207

47:                                               ; preds = %29
  store %struct.dirent* null, %struct.dirent** %16, align 8
  br label %48

48:                                               ; preds = %193, %177, %125, %111, %47
  %49 = load i32*, i32** %15, align 8
  %50 = call %struct.dirent* @readdir(i32* %49)
  store %struct.dirent* %50, %struct.dirent** %16, align 8
  %51 = icmp ne %struct.dirent* %50, null
  br i1 %51, label %52, label %204

52:                                               ; preds = %48
  %53 = load %struct.dirent*, %struct.dirent** %16, align 8
  %54 = getelementptr inbounds %struct.dirent, %struct.dirent* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @DT_DIR, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %64, label %58

58:                                               ; preds = %52
  %59 = load %struct.dirent*, %struct.dirent** %16, align 8
  %60 = getelementptr inbounds %struct.dirent, %struct.dirent* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @DT_LNK, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %136

64:                                               ; preds = %58, %52
  %65 = load %struct.dirent*, %struct.dirent** %16, align 8
  %66 = getelementptr inbounds %struct.dirent, %struct.dirent* %65, i32 0, i32 1
  %67 = load i8*, i8** %66, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 0
  %69 = load i8, i8* %68, align 1
  %70 = icmp ne i8 %69, 0
  br i1 %70, label %71, label %111

71:                                               ; preds = %64
  %72 = load %struct.dirent*, %struct.dirent** %16, align 8
  %73 = getelementptr inbounds %struct.dirent, %struct.dirent* %72, i32 0, i32 1
  %74 = load i8*, i8** %73, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 0
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 46
  br i1 %78, label %79, label %87

79:                                               ; preds = %71
  %80 = load %struct.dirent*, %struct.dirent** %16, align 8
  %81 = getelementptr inbounds %struct.dirent, %struct.dirent* %80, i32 0, i32 1
  %82 = load i8*, i8** %81, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 1
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %111, label %87

87:                                               ; preds = %79, %71
  %88 = load %struct.dirent*, %struct.dirent** %16, align 8
  %89 = getelementptr inbounds %struct.dirent, %struct.dirent* %88, i32 0, i32 1
  %90 = load i8*, i8** %89, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 0
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp eq i32 %93, 46
  br i1 %94, label %95, label %118

95:                                               ; preds = %87
  %96 = load %struct.dirent*, %struct.dirent** %16, align 8
  %97 = getelementptr inbounds %struct.dirent, %struct.dirent* %96, i32 0, i32 1
  %98 = load i8*, i8** %97, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 1
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp eq i32 %101, 46
  br i1 %102, label %103, label %118

103:                                              ; preds = %95
  %104 = load %struct.dirent*, %struct.dirent** %16, align 8
  %105 = getelementptr inbounds %struct.dirent, %struct.dirent* %104, i32 0, i32 1
  %106 = load i8*, i8** %105, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 2
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %118

111:                                              ; preds = %103, %79, %64
  %112 = load i32, i32* @D_HEALTH, align 4
  %113 = load i8*, i8** %13, align 8
  %114 = load %struct.dirent*, %struct.dirent** %16, align 8
  %115 = getelementptr inbounds %struct.dirent, %struct.dirent* %114, i32 0, i32 1
  %116 = load i8*, i8** %115, align 8
  %117 = call i32 (i32, i8*, i8*, ...) @debug(i32 %112, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i8* %113, i8* %116)
  br label %48

118:                                              ; preds = %103, %95, %87
  %119 = load i8*, i8** %13, align 8
  %120 = load %struct.dirent*, %struct.dirent** %16, align 8
  %121 = getelementptr inbounds %struct.dirent, %struct.dirent* %120, i32 0, i32 1
  %122 = load i8*, i8** %121, align 8
  %123 = call i64 @path_is_dir(i8* %119, i8* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %135

125:                                              ; preds = %118
  %126 = load i8*, i8** %13, align 8
  %127 = load i8*, i8** %14, align 8
  %128 = load %struct.dirent*, %struct.dirent** %16, align 8
  %129 = getelementptr inbounds %struct.dirent, %struct.dirent* %128, i32 0, i32 1
  %130 = load i8*, i8** %129, align 8
  %131 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %10, align 8
  %132 = load i8*, i8** %11, align 8
  %133 = load i64, i64* %12, align 8
  %134 = add i64 %133, 1
  call void @recursive_config_double_dir_load(i8* %126, i8* %127, i8* %130, i32 (i8*, i8*)* %131, i8* %132, i64 %134)
  br label %48

135:                                              ; preds = %118
  br label %136

136:                                              ; preds = %135, %58
  %137 = load %struct.dirent*, %struct.dirent** %16, align 8
  %138 = getelementptr inbounds %struct.dirent, %struct.dirent* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @DT_UNKNOWN, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %154, label %142

142:                                              ; preds = %136
  %143 = load %struct.dirent*, %struct.dirent** %16, align 8
  %144 = getelementptr inbounds %struct.dirent, %struct.dirent* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @DT_REG, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %154, label %148

148:                                              ; preds = %142
  %149 = load %struct.dirent*, %struct.dirent** %16, align 8
  %150 = getelementptr inbounds %struct.dirent, %struct.dirent* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @DT_LNK, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %193

154:                                              ; preds = %148, %142, %136
  %155 = load %struct.dirent*, %struct.dirent** %16, align 8
  %156 = getelementptr inbounds %struct.dirent, %struct.dirent* %155, i32 0, i32 1
  %157 = load i8*, i8** %156, align 8
  %158 = call i64 @strlen(i8* %157)
  store i64 %158, i64* %17, align 8
  %159 = load i8*, i8** %13, align 8
  %160 = load %struct.dirent*, %struct.dirent** %16, align 8
  %161 = getelementptr inbounds %struct.dirent, %struct.dirent* %160, i32 0, i32 1
  %162 = load i8*, i8** %161, align 8
  %163 = call i64 @path_is_file(i8* %159, i8* %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %192

165:                                              ; preds = %154
  %166 = load i64, i64* %17, align 8
  %167 = icmp ugt i64 %166, 5
  br i1 %167, label %168, label %192

168:                                              ; preds = %165
  %169 = load %struct.dirent*, %struct.dirent** %16, align 8
  %170 = getelementptr inbounds %struct.dirent, %struct.dirent* %169, i32 0, i32 1
  %171 = load i8*, i8** %170, align 8
  %172 = load i64, i64* %17, align 8
  %173 = sub i64 %172, 5
  %174 = getelementptr inbounds i8, i8* %171, i64 %173
  %175 = call i32 @strcmp(i8* %174, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %192, label %177

177:                                              ; preds = %168
  %178 = load i8*, i8** %13, align 8
  %179 = load %struct.dirent*, %struct.dirent** %16, align 8
  %180 = getelementptr inbounds %struct.dirent, %struct.dirent* %179, i32 0, i32 1
  %181 = load i8*, i8** %180, align 8
  %182 = call i8* @strdupz_path_subpath(i8* %178, i8* %181)
  store i8* %182, i8** %18, align 8
  %183 = load i32, i32* @D_HEALTH, align 4
  %184 = load i8*, i8** %18, align 8
  %185 = call i32 (i32, i8*, i8*, ...) @debug(i32 %183, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i8* %184)
  %186 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %10, align 8
  %187 = load i8*, i8** %18, align 8
  %188 = load i8*, i8** %11, align 8
  %189 = call i32 %186(i8* %187, i8* %188)
  %190 = load i8*, i8** %18, align 8
  %191 = call i32 @freez(i8* %190)
  br label %48

192:                                              ; preds = %168, %165, %154
  br label %193

193:                                              ; preds = %192, %148
  %194 = load i32, i32* @D_HEALTH, align 4
  %195 = load i8*, i8** %13, align 8
  %196 = load %struct.dirent*, %struct.dirent** %16, align 8
  %197 = getelementptr inbounds %struct.dirent, %struct.dirent* %196, i32 0, i32 1
  %198 = load i8*, i8** %197, align 8
  %199 = load %struct.dirent*, %struct.dirent** %16, align 8
  %200 = getelementptr inbounds %struct.dirent, %struct.dirent* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = trunc i64 %201 to i32
  %203 = call i32 (i32, i8*, i8*, ...) @debug(i32 %194, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0), i8* %195, i8* %198, i32 %202)
  br label %48

204:                                              ; preds = %48
  %205 = load i32*, i32** %15, align 8
  %206 = call i32 @closedir(i32* %205)
  br label %207

207:                                              ; preds = %204, %44
  %208 = load i32, i32* @D_HEALTH, align 4
  %209 = load i8*, i8** %14, align 8
  %210 = load i8*, i8** %13, align 8
  %211 = call i32 (i32, i8*, i8*, ...) @debug(i32 %208, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.7, i64 0, i64 0), i8* %209, i8* %210)
  %212 = load i8*, i8** %14, align 8
  %213 = call i32* @opendir(i8* %212)
  store i32* %213, i32** %15, align 8
  %214 = load i32*, i32** %15, align 8
  %215 = icmp ne i32* %214, null
  br i1 %215, label %219, label %216

216:                                              ; preds = %207
  %217 = load i8*, i8** %14, align 8
  %218 = call i32 (i8*, i8*, ...) @error(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.8, i64 0, i64 0), i8* %217)
  br label %394

219:                                              ; preds = %207
  store %struct.dirent* null, %struct.dirent** %19, align 8
  br label %220

220:                                              ; preds = %380, %364, %314, %283, %219
  %221 = load i32*, i32** %15, align 8
  %222 = call %struct.dirent* @readdir(i32* %221)
  store %struct.dirent* %222, %struct.dirent** %19, align 8
  %223 = icmp ne %struct.dirent* %222, null
  br i1 %223, label %224, label %391

224:                                              ; preds = %220
  %225 = load %struct.dirent*, %struct.dirent** %19, align 8
  %226 = getelementptr inbounds %struct.dirent, %struct.dirent* %225, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = load i64, i64* @DT_DIR, align 8
  %229 = icmp eq i64 %227, %228
  br i1 %229, label %236, label %230

230:                                              ; preds = %224
  %231 = load %struct.dirent*, %struct.dirent** %19, align 8
  %232 = getelementptr inbounds %struct.dirent, %struct.dirent* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  %234 = load i64, i64* @DT_LNK, align 8
  %235 = icmp eq i64 %233, %234
  br i1 %235, label %236, label %316

236:                                              ; preds = %230, %224
  %237 = load %struct.dirent*, %struct.dirent** %19, align 8
  %238 = getelementptr inbounds %struct.dirent, %struct.dirent* %237, i32 0, i32 1
  %239 = load i8*, i8** %238, align 8
  %240 = getelementptr inbounds i8, i8* %239, i64 0
  %241 = load i8, i8* %240, align 1
  %242 = icmp ne i8 %241, 0
  br i1 %242, label %243, label %283

243:                                              ; preds = %236
  %244 = load %struct.dirent*, %struct.dirent** %19, align 8
  %245 = getelementptr inbounds %struct.dirent, %struct.dirent* %244, i32 0, i32 1
  %246 = load i8*, i8** %245, align 8
  %247 = getelementptr inbounds i8, i8* %246, i64 0
  %248 = load i8, i8* %247, align 1
  %249 = sext i8 %248 to i32
  %250 = icmp eq i32 %249, 46
  br i1 %250, label %251, label %259

251:                                              ; preds = %243
  %252 = load %struct.dirent*, %struct.dirent** %19, align 8
  %253 = getelementptr inbounds %struct.dirent, %struct.dirent* %252, i32 0, i32 1
  %254 = load i8*, i8** %253, align 8
  %255 = getelementptr inbounds i8, i8* %254, i64 1
  %256 = load i8, i8* %255, align 1
  %257 = sext i8 %256 to i32
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %283, label %259

259:                                              ; preds = %251, %243
  %260 = load %struct.dirent*, %struct.dirent** %19, align 8
  %261 = getelementptr inbounds %struct.dirent, %struct.dirent* %260, i32 0, i32 1
  %262 = load i8*, i8** %261, align 8
  %263 = getelementptr inbounds i8, i8* %262, i64 0
  %264 = load i8, i8* %263, align 1
  %265 = sext i8 %264 to i32
  %266 = icmp eq i32 %265, 46
  br i1 %266, label %267, label %290

267:                                              ; preds = %259
  %268 = load %struct.dirent*, %struct.dirent** %19, align 8
  %269 = getelementptr inbounds %struct.dirent, %struct.dirent* %268, i32 0, i32 1
  %270 = load i8*, i8** %269, align 8
  %271 = getelementptr inbounds i8, i8* %270, i64 1
  %272 = load i8, i8* %271, align 1
  %273 = sext i8 %272 to i32
  %274 = icmp eq i32 %273, 46
  br i1 %274, label %275, label %290

275:                                              ; preds = %267
  %276 = load %struct.dirent*, %struct.dirent** %19, align 8
  %277 = getelementptr inbounds %struct.dirent, %struct.dirent* %276, i32 0, i32 1
  %278 = load i8*, i8** %277, align 8
  %279 = getelementptr inbounds i8, i8* %278, i64 2
  %280 = load i8, i8* %279, align 1
  %281 = sext i8 %280 to i32
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %283, label %290

283:                                              ; preds = %275, %251, %236
  %284 = load i32, i32* @D_HEALTH, align 4
  %285 = load i8*, i8** %14, align 8
  %286 = load %struct.dirent*, %struct.dirent** %19, align 8
  %287 = getelementptr inbounds %struct.dirent, %struct.dirent* %286, i32 0, i32 1
  %288 = load i8*, i8** %287, align 8
  %289 = call i32 (i32, i8*, i8*, ...) @debug(i32 %284, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.9, i64 0, i64 0), i8* %285, i8* %288)
  br label %220

290:                                              ; preds = %275, %267, %259
  %291 = load i8*, i8** %14, align 8
  %292 = load %struct.dirent*, %struct.dirent** %19, align 8
  %293 = getelementptr inbounds %struct.dirent, %struct.dirent* %292, i32 0, i32 1
  %294 = load i8*, i8** %293, align 8
  %295 = call i64 @path_is_dir(i8* %291, i8* %294)
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %297, label %315

297:                                              ; preds = %290
  %298 = load i8*, i8** %13, align 8
  %299 = load %struct.dirent*, %struct.dirent** %19, align 8
  %300 = getelementptr inbounds %struct.dirent, %struct.dirent* %299, i32 0, i32 1
  %301 = load i8*, i8** %300, align 8
  %302 = call i64 @path_is_dir(i8* %298, i8* %301)
  %303 = icmp ne i64 %302, 0
  br i1 %303, label %314, label %304

304:                                              ; preds = %297
  %305 = load i8*, i8** %13, align 8
  %306 = load i8*, i8** %14, align 8
  %307 = load %struct.dirent*, %struct.dirent** %19, align 8
  %308 = getelementptr inbounds %struct.dirent, %struct.dirent* %307, i32 0, i32 1
  %309 = load i8*, i8** %308, align 8
  %310 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %10, align 8
  %311 = load i8*, i8** %11, align 8
  %312 = load i64, i64* %12, align 8
  %313 = add i64 %312, 1
  call void @recursive_config_double_dir_load(i8* %305, i8* %306, i8* %309, i32 (i8*, i8*)* %310, i8* %311, i64 %313)
  br label %314

314:                                              ; preds = %304, %297
  br label %220

315:                                              ; preds = %290
  br label %316

316:                                              ; preds = %315, %230
  %317 = load %struct.dirent*, %struct.dirent** %19, align 8
  %318 = getelementptr inbounds %struct.dirent, %struct.dirent* %317, i32 0, i32 0
  %319 = load i64, i64* %318, align 8
  %320 = load i64, i64* @DT_UNKNOWN, align 8
  %321 = icmp eq i64 %319, %320
  br i1 %321, label %334, label %322

322:                                              ; preds = %316
  %323 = load %struct.dirent*, %struct.dirent** %19, align 8
  %324 = getelementptr inbounds %struct.dirent, %struct.dirent* %323, i32 0, i32 0
  %325 = load i64, i64* %324, align 8
  %326 = load i64, i64* @DT_REG, align 8
  %327 = icmp eq i64 %325, %326
  br i1 %327, label %334, label %328

328:                                              ; preds = %322
  %329 = load %struct.dirent*, %struct.dirent** %19, align 8
  %330 = getelementptr inbounds %struct.dirent, %struct.dirent* %329, i32 0, i32 0
  %331 = load i64, i64* %330, align 8
  %332 = load i64, i64* @DT_LNK, align 8
  %333 = icmp eq i64 %331, %332
  br i1 %333, label %334, label %380

334:                                              ; preds = %328, %322, %316
  %335 = load %struct.dirent*, %struct.dirent** %19, align 8
  %336 = getelementptr inbounds %struct.dirent, %struct.dirent* %335, i32 0, i32 1
  %337 = load i8*, i8** %336, align 8
  %338 = call i64 @strlen(i8* %337)
  store i64 %338, i64* %20, align 8
  %339 = load i8*, i8** %14, align 8
  %340 = load %struct.dirent*, %struct.dirent** %19, align 8
  %341 = getelementptr inbounds %struct.dirent, %struct.dirent* %340, i32 0, i32 1
  %342 = load i8*, i8** %341, align 8
  %343 = call i64 @path_is_file(i8* %339, i8* %342)
  %344 = icmp ne i64 %343, 0
  br i1 %344, label %345, label %379

345:                                              ; preds = %334
  %346 = load i8*, i8** %13, align 8
  %347 = load %struct.dirent*, %struct.dirent** %19, align 8
  %348 = getelementptr inbounds %struct.dirent, %struct.dirent* %347, i32 0, i32 1
  %349 = load i8*, i8** %348, align 8
  %350 = call i64 @path_is_file(i8* %346, i8* %349)
  %351 = icmp ne i64 %350, 0
  br i1 %351, label %379, label %352

352:                                              ; preds = %345
  %353 = load i64, i64* %20, align 8
  %354 = icmp ugt i64 %353, 5
  br i1 %354, label %355, label %379

355:                                              ; preds = %352
  %356 = load %struct.dirent*, %struct.dirent** %19, align 8
  %357 = getelementptr inbounds %struct.dirent, %struct.dirent* %356, i32 0, i32 1
  %358 = load i8*, i8** %357, align 8
  %359 = load i64, i64* %20, align 8
  %360 = sub i64 %359, 5
  %361 = getelementptr inbounds i8, i8* %358, i64 %360
  %362 = call i32 @strcmp(i8* %361, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %379, label %364

364:                                              ; preds = %355
  %365 = load i8*, i8** %14, align 8
  %366 = load %struct.dirent*, %struct.dirent** %19, align 8
  %367 = getelementptr inbounds %struct.dirent, %struct.dirent* %366, i32 0, i32 1
  %368 = load i8*, i8** %367, align 8
  %369 = call i8* @strdupz_path_subpath(i8* %365, i8* %368)
  store i8* %369, i8** %21, align 8
  %370 = load i32, i32* @D_HEALTH, align 4
  %371 = load i8*, i8** %21, align 8
  %372 = call i32 (i32, i8*, i8*, ...) @debug(i32 %370, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10, i64 0, i64 0), i8* %371)
  %373 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %10, align 8
  %374 = load i8*, i8** %21, align 8
  %375 = load i8*, i8** %11, align 8
  %376 = call i32 %373(i8* %374, i8* %375)
  %377 = load i8*, i8** %21, align 8
  %378 = call i32 @freez(i8* %377)
  br label %220

379:                                              ; preds = %355, %352, %345, %334
  br label %380

380:                                              ; preds = %379, %328
  %381 = load i32, i32* @D_HEALTH, align 4
  %382 = load i8*, i8** %13, align 8
  %383 = load %struct.dirent*, %struct.dirent** %19, align 8
  %384 = getelementptr inbounds %struct.dirent, %struct.dirent* %383, i32 0, i32 1
  %385 = load i8*, i8** %384, align 8
  %386 = load %struct.dirent*, %struct.dirent** %19, align 8
  %387 = getelementptr inbounds %struct.dirent, %struct.dirent* %386, i32 0, i32 0
  %388 = load i64, i64* %387, align 8
  %389 = trunc i64 %388 to i32
  %390 = call i32 (i32, i8*, i8*, ...) @debug(i32 %381, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.11, i64 0, i64 0), i8* %382, i8* %385, i32 %389)
  br label %220

391:                                              ; preds = %220
  %392 = load i32*, i32** %15, align 8
  %393 = call i32 @closedir(i32* %392)
  br label %394

394:                                              ; preds = %391, %216
  %395 = load i32, i32* @D_HEALTH, align 4
  %396 = load i8*, i8** %13, align 8
  %397 = load i8*, i8** %14, align 8
  %398 = call i32 (i32, i8*, i8*, ...) @debug(i32 %395, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.12, i64 0, i64 0), i8* %396, i8* %397)
  %399 = load i8*, i8** %13, align 8
  %400 = call i32 @freez(i8* %399)
  %401 = load i8*, i8** %14, align 8
  %402 = call i32 @freez(i8* %401)
  br label %403

403:                                              ; preds = %394, %24
  ret void
}

declare dso_local i32 @error(i8*, i8*, ...) #1

declare dso_local i8* @strdupz_path_subpath(i8*, i8*) #1

declare dso_local i32 @debug(i32, i8*, i8*, ...) #1

declare dso_local i32* @opendir(i8*) #1

declare dso_local %struct.dirent* @readdir(i32*) #1

declare dso_local i64 @path_is_dir(i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @path_is_file(i8*, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @freez(i8*) #1

declare dso_local i32 @closedir(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
