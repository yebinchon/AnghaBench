; ModuleID = '/home/carl/AnghaBench/linux/tools/usb/usbip/libsrc/extr_names.c_parse.c'
source_filename = "/home/carl/AnghaBench/linux/tools/usb/usbip/libsrc/extr_names.c_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [30 x i8] c"Invalid class spec at line %u\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"Duplicate class spec at line %u class %04x %s\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"line %5u class %02x %s\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Invalid vendor spec at line %u\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"Duplicate vendor spec at line %u vendor %04x %s\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"line %5u vendor %04x %s\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"Invalid product/subclass spec at line %u\00", align 1
@.str.7 = private unnamed_addr constant [55 x i8] c"Duplicate product spec at line %u product %04x:%04x %s\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"line %5u product %04x:%04x %s\00", align 1
@.str.9 = private unnamed_addr constant [54 x i8] c"Duplicate subclass spec at line %u class %02x:%02x %s\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"line %5u subclass %02x:%02x %s\00", align 1
@.str.11 = private unnamed_addr constant [65 x i8] c"Product/Subclass spec without prior Vendor/Class spec at line %u\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"Invalid protocol spec at line %u\00", align 1
@.str.13 = private unnamed_addr constant [59 x i8] c"Duplicate protocol spec at line %u class %02x:%02x:%02x %s\00", align 1
@.str.14 = private unnamed_addr constant [36 x i8] c"line %5u protocol %02x:%02x:%02x %s\00", align 1
@.str.15 = private unnamed_addr constant [63 x i8] c"Protocol spec without prior Class and Subclass spec at line %u\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"Unknown line at line %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca [512 x i8], align 16
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %5, align 4
  store i32 -1, i32* %6, align 4
  store i32 -1, i32* %7, align 4
  store i32 -1, i32* %8, align 4
  store i32 -1, i32* %9, align 4
  store i32 -1, i32* %10, align 4
  br label %12

12:                                               ; preds = %493, %492, %481, %470, %449, %426, %419, %396, %362, %361, %357, %347, %326, %308, %276, %263, %242, %221, %200, %187, %169, %142, %131, %105, %84, %42, %1
  %13 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 0
  %14 = load i32*, i32** %2, align 8
  %15 = call i64 @fgets(i8* %13, i32 512, i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %496

17:                                               ; preds = %12
  %18 = load i32, i32* %5, align 4
  %19 = add i32 %18, 1
  store i32 %19, i32* %5, align 4
  %20 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 0
  %21 = call i8* @strchr(i8* %20, i8 signext 13)
  store i8* %21, i8** %4, align 8
  %22 = load i8*, i8** %4, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load i8*, i8** %4, align 8
  store i8 0, i8* %25, align 1
  br label %26

26:                                               ; preds = %24, %17
  %27 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 0
  %28 = call i8* @strchr(i8* %27, i8 signext 10)
  store i8* %28, i8** %4, align 8
  %29 = load i8*, i8** %4, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i8*, i8** %4, align 8
  store i8 0, i8* %32, align 1
  br label %33

33:                                               ; preds = %31, %26
  %34 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 0
  %35 = load i8, i8* %34, align 16
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 35
  br i1 %37, label %42, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 0
  %40 = load i8, i8* %39, align 16
  %41 = icmp ne i8 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %38, %33
  br label %12

43:                                               ; preds = %38
  %44 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 0
  store i8* %44, i8** %4, align 8
  %45 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 0
  %46 = load i8, i8* %45, align 16
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 80
  br i1 %48, label %49, label %85

49:                                               ; preds = %43
  %50 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 1
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 72
  br i1 %53, label %54, label %85

54:                                               ; preds = %49
  %55 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 2
  %56 = load i8, i8* %55, align 2
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 89
  br i1 %58, label %59, label %85

59:                                               ; preds = %54
  %60 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 3
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 83
  br i1 %63, label %64, label %85

64:                                               ; preds = %59
  %65 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 4
  %66 = load i8, i8* %65, align 4
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 68
  br i1 %68, label %69, label %85

69:                                               ; preds = %64
  %70 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 5
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 69
  br i1 %73, label %74, label %85

74:                                               ; preds = %69
  %75 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 6
  %76 = load i8, i8* %75, align 2
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 83
  br i1 %78, label %79, label %85

79:                                               ; preds = %74
  %80 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 7
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 32
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  br label %12

85:                                               ; preds = %79, %74, %69, %64, %59, %54, %49, %43
  %86 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 0
  %87 = load i8, i8* %86, align 16
  %88 = sext i8 %87 to i32
  %89 = icmp eq i32 %88, 80
  br i1 %89, label %90, label %106

90:                                               ; preds = %85
  %91 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 1
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp eq i32 %93, 72
  br i1 %94, label %95, label %106

95:                                               ; preds = %90
  %96 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 2
  %97 = load i8, i8* %96, align 2
  %98 = sext i8 %97 to i32
  %99 = icmp eq i32 %98, 89
  br i1 %99, label %100, label %106

100:                                              ; preds = %95
  %101 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 3
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp eq i32 %103, 32
  br i1 %104, label %105, label %106

105:                                              ; preds = %100
  br label %12

106:                                              ; preds = %100, %95, %90, %85
  %107 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 0
  %108 = load i8, i8* %107, align 16
  %109 = sext i8 %108 to i32
  %110 = icmp eq i32 %109, 66
  br i1 %110, label %111, label %132

111:                                              ; preds = %106
  %112 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 1
  %113 = load i8, i8* %112, align 1
  %114 = sext i8 %113 to i32
  %115 = icmp eq i32 %114, 73
  br i1 %115, label %116, label %132

116:                                              ; preds = %111
  %117 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 2
  %118 = load i8, i8* %117, align 2
  %119 = sext i8 %118 to i32
  %120 = icmp eq i32 %119, 65
  br i1 %120, label %121, label %132

121:                                              ; preds = %116
  %122 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 3
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp eq i32 %124, 83
  br i1 %125, label %126, label %132

126:                                              ; preds = %121
  %127 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 4
  %128 = load i8, i8* %127, align 4
  %129 = sext i8 %128 to i32
  %130 = icmp eq i32 %129, 32
  br i1 %130, label %131, label %132

131:                                              ; preds = %126
  br label %12

132:                                              ; preds = %126, %121, %116, %111, %106
  %133 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 0
  %134 = load i8, i8* %133, align 16
  %135 = sext i8 %134 to i32
  %136 = icmp eq i32 %135, 76
  br i1 %136, label %137, label %143

137:                                              ; preds = %132
  %138 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 1
  %139 = load i8, i8* %138, align 1
  %140 = sext i8 %139 to i32
  %141 = icmp eq i32 %140, 32
  br i1 %141, label %142, label %143

142:                                              ; preds = %137
  store i32 -1, i32* %8, align 4
  store i32 -1, i32* %6, align 4
  store i32 -1, i32* %7, align 4
  store i32 -1, i32* %9, align 4
  store i32 1, i32* %10, align 4
  br label %12

143:                                              ; preds = %137, %132
  %144 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 0
  %145 = load i8, i8* %144, align 16
  %146 = sext i8 %145 to i32
  %147 = icmp eq i32 %146, 67
  br i1 %147, label %148, label %206

148:                                              ; preds = %143
  %149 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 1
  %150 = load i8, i8* %149, align 1
  %151 = sext i8 %150 to i32
  %152 = icmp eq i32 %151, 32
  br i1 %152, label %153, label %206

153:                                              ; preds = %148
  %154 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 0
  %155 = getelementptr inbounds i8, i8* %154, i64 2
  store i8* %155, i8** %4, align 8
  br label %156

156:                                              ; preds = %161, %153
  %157 = load i8*, i8** %4, align 8
  %158 = load i8, i8* %157, align 1
  %159 = call i64 @isspace(i8 signext %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %156
  %162 = load i8*, i8** %4, align 8
  %163 = getelementptr inbounds i8, i8* %162, i32 1
  store i8* %163, i8** %4, align 8
  br label %156

164:                                              ; preds = %156
  %165 = load i8*, i8** %4, align 8
  %166 = load i8, i8* %165, align 1
  %167 = call i64 @isxdigit(i8 signext %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %172, label %169

169:                                              ; preds = %164
  %170 = load i32, i32* %5, align 4
  %171 = call i32 (i8*, i32, ...) @err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %170)
  br label %12

172:                                              ; preds = %164
  %173 = load i8*, i8** %4, align 8
  %174 = call i32 @strtoul(i8* %173, i8** %4, i32 16)
  store i32 %174, i32* %11, align 4
  br label %175

175:                                              ; preds = %180, %172
  %176 = load i8*, i8** %4, align 8
  %177 = load i8, i8* %176, align 1
  %178 = call i64 @isspace(i8 signext %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %183

180:                                              ; preds = %175
  %181 = load i8*, i8** %4, align 8
  %182 = getelementptr inbounds i8, i8* %181, i32 1
  store i8* %182, i8** %4, align 8
  br label %175

183:                                              ; preds = %175
  %184 = load i8*, i8** %4, align 8
  %185 = load i8, i8* %184, align 1
  %186 = icmp ne i8 %185, 0
  br i1 %186, label %190, label %187

187:                                              ; preds = %183
  %188 = load i32, i32* %5, align 4
  %189 = call i32 (i8*, i32, ...) @err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %188)
  br label %12

190:                                              ; preds = %183
  %191 = load i8*, i8** %4, align 8
  %192 = load i32, i32* %11, align 4
  %193 = call i64 @new_class(i8* %191, i32 %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %200

195:                                              ; preds = %190
  %196 = load i32, i32* %5, align 4
  %197 = load i32, i32* %11, align 4
  %198 = load i8*, i8** %4, align 8
  %199 = call i32 (i8*, i32, ...) @err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %196, i32 %197, i8* %198)
  br label %200

200:                                              ; preds = %195, %190
  %201 = load i32, i32* %5, align 4
  %202 = load i32, i32* %11, align 4
  %203 = load i8*, i8** %4, align 8
  %204 = call i32 (i8*, i32, i32, ...) @dbg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %201, i32 %202, i8* %203)
  store i32 -1, i32* %8, align 4
  store i32 -1, i32* %6, align 4
  store i32 -1, i32* %10, align 4
  store i32 -1, i32* %9, align 4
  %205 = load i32, i32* %11, align 4
  store i32 %205, i32* %7, align 4
  br label %12

206:                                              ; preds = %148, %143
  %207 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 0
  %208 = load i8, i8* %207, align 16
  %209 = sext i8 %208 to i32
  %210 = icmp eq i32 %209, 65
  br i1 %210, label %211, label %222

211:                                              ; preds = %206
  %212 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 1
  %213 = load i8, i8* %212, align 1
  %214 = sext i8 %213 to i32
  %215 = icmp eq i32 %214, 84
  br i1 %215, label %216, label %222

216:                                              ; preds = %211
  %217 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 2
  %218 = load i8, i8* %217, align 2
  %219 = call i64 @isspace(i8 signext %218)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %222

221:                                              ; preds = %216
  br label %12

222:                                              ; preds = %216, %211, %206
  %223 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 0
  %224 = load i8, i8* %223, align 16
  %225 = sext i8 %224 to i32
  %226 = icmp eq i32 %225, 72
  br i1 %226, label %227, label %243

227:                                              ; preds = %222
  %228 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 1
  %229 = load i8, i8* %228, align 1
  %230 = sext i8 %229 to i32
  %231 = icmp eq i32 %230, 67
  br i1 %231, label %232, label %243

232:                                              ; preds = %227
  %233 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 2
  %234 = load i8, i8* %233, align 2
  %235 = sext i8 %234 to i32
  %236 = icmp eq i32 %235, 67
  br i1 %236, label %237, label %243

237:                                              ; preds = %232
  %238 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 3
  %239 = load i8, i8* %238, align 1
  %240 = call i64 @isspace(i8 signext %239)
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %243

242:                                              ; preds = %237
  br label %12

243:                                              ; preds = %237, %232, %227, %222
  %244 = load i8*, i8** %4, align 8
  %245 = load i8, i8* %244, align 1
  %246 = call i64 @isxdigit(i8 signext %245)
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %282

248:                                              ; preds = %243
  %249 = load i8*, i8** %4, align 8
  %250 = call i32 @strtoul(i8* %249, i8** %4, i32 16)
  store i32 %250, i32* %11, align 4
  br label %251

251:                                              ; preds = %256, %248
  %252 = load i8*, i8** %4, align 8
  %253 = load i8, i8* %252, align 1
  %254 = call i64 @isspace(i8 signext %253)
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %259

256:                                              ; preds = %251
  %257 = load i8*, i8** %4, align 8
  %258 = getelementptr inbounds i8, i8* %257, i32 1
  store i8* %258, i8** %4, align 8
  br label %251

259:                                              ; preds = %251
  %260 = load i8*, i8** %4, align 8
  %261 = load i8, i8* %260, align 1
  %262 = icmp ne i8 %261, 0
  br i1 %262, label %266, label %263

263:                                              ; preds = %259
  %264 = load i32, i32* %5, align 4
  %265 = call i32 (i8*, i32, ...) @err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %264)
  br label %12

266:                                              ; preds = %259
  %267 = load i8*, i8** %4, align 8
  %268 = load i32, i32* %11, align 4
  %269 = call i64 @new_vendor(i8* %267, i32 %268)
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %271, label %276

271:                                              ; preds = %266
  %272 = load i32, i32* %5, align 4
  %273 = load i32, i32* %11, align 4
  %274 = load i8*, i8** %4, align 8
  %275 = call i32 (i8*, i32, ...) @err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0), i32 %272, i32 %273, i8* %274)
  br label %276

276:                                              ; preds = %271, %266
  %277 = load i32, i32* %5, align 4
  %278 = load i32, i32* %11, align 4
  %279 = load i8*, i8** %4, align 8
  %280 = call i32 (i8*, i32, i32, ...) @dbg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %277, i32 %278, i8* %279)
  %281 = load i32, i32* %11, align 4
  store i32 %281, i32* %6, align 4
  store i32 -1, i32* %8, align 4
  store i32 -1, i32* %7, align 4
  store i32 -1, i32* %10, align 4
  store i32 -1, i32* %9, align 4
  br label %12

282:                                              ; preds = %243
  %283 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 0
  %284 = load i8, i8* %283, align 16
  %285 = sext i8 %284 to i32
  %286 = icmp eq i32 %285, 9
  br i1 %286, label %287, label %365

287:                                              ; preds = %282
  %288 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 1
  %289 = load i8, i8* %288, align 1
  %290 = call i64 @isxdigit(i8 signext %289)
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %292, label %365

292:                                              ; preds = %287
  %293 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 0
  %294 = getelementptr inbounds i8, i8* %293, i64 1
  %295 = call i32 @strtoul(i8* %294, i8** %4, i32 16)
  store i32 %295, i32* %11, align 4
  br label %296

296:                                              ; preds = %301, %292
  %297 = load i8*, i8** %4, align 8
  %298 = load i8, i8* %297, align 1
  %299 = call i64 @isspace(i8 signext %298)
  %300 = icmp ne i64 %299, 0
  br i1 %300, label %301, label %304

301:                                              ; preds = %296
  %302 = load i8*, i8** %4, align 8
  %303 = getelementptr inbounds i8, i8* %302, i32 1
  store i8* %303, i8** %4, align 8
  br label %296

304:                                              ; preds = %296
  %305 = load i8*, i8** %4, align 8
  %306 = load i8, i8* %305, align 1
  %307 = icmp ne i8 %306, 0
  br i1 %307, label %311, label %308

308:                                              ; preds = %304
  %309 = load i32, i32* %5, align 4
  %310 = call i32 (i8*, i32, ...) @err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i32 %309)
  br label %12

311:                                              ; preds = %304
  %312 = load i32, i32* %6, align 4
  %313 = icmp ne i32 %312, -1
  br i1 %313, label %314, label %332

314:                                              ; preds = %311
  %315 = load i8*, i8** %4, align 8
  %316 = load i32, i32* %6, align 4
  %317 = load i32, i32* %11, align 4
  %318 = call i64 @new_product(i8* %315, i32 %316, i32 %317)
  %319 = icmp ne i64 %318, 0
  br i1 %319, label %320, label %326

320:                                              ; preds = %314
  %321 = load i32, i32* %5, align 4
  %322 = load i32, i32* %6, align 4
  %323 = load i32, i32* %11, align 4
  %324 = load i8*, i8** %4, align 8
  %325 = call i32 (i8*, i32, ...) @err(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.7, i64 0, i64 0), i32 %321, i32 %322, i32 %323, i8* %324)
  br label %326

326:                                              ; preds = %320, %314
  %327 = load i32, i32* %5, align 4
  %328 = load i32, i32* %6, align 4
  %329 = load i32, i32* %11, align 4
  %330 = load i8*, i8** %4, align 8
  %331 = call i32 (i8*, i32, i32, ...) @dbg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i32 %327, i32 %328, i32 %329, i8* %330)
  br label %12

332:                                              ; preds = %311
  %333 = load i32, i32* %7, align 4
  %334 = icmp ne i32 %333, -1
  br i1 %334, label %335, label %354

335:                                              ; preds = %332
  %336 = load i8*, i8** %4, align 8
  %337 = load i32, i32* %7, align 4
  %338 = load i32, i32* %11, align 4
  %339 = call i64 @new_subclass(i8* %336, i32 %337, i32 %338)
  %340 = icmp ne i64 %339, 0
  br i1 %340, label %341, label %347

341:                                              ; preds = %335
  %342 = load i32, i32* %5, align 4
  %343 = load i32, i32* %7, align 4
  %344 = load i32, i32* %11, align 4
  %345 = load i8*, i8** %4, align 8
  %346 = call i32 (i8*, i32, ...) @err(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.9, i64 0, i64 0), i32 %342, i32 %343, i32 %344, i8* %345)
  br label %347

347:                                              ; preds = %341, %335
  %348 = load i32, i32* %5, align 4
  %349 = load i32, i32* %7, align 4
  %350 = load i32, i32* %11, align 4
  %351 = load i8*, i8** %4, align 8
  %352 = call i32 (i8*, i32, i32, ...) @dbg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0), i32 %348, i32 %349, i32 %350, i8* %351)
  %353 = load i32, i32* %11, align 4
  store i32 %353, i32* %8, align 4
  br label %12

354:                                              ; preds = %332
  %355 = load i32, i32* %9, align 4
  %356 = icmp ne i32 %355, -1
  br i1 %356, label %357, label %358

357:                                              ; preds = %354
  br label %12

358:                                              ; preds = %354
  %359 = load i32, i32* %10, align 4
  %360 = icmp ne i32 %359, -1
  br i1 %360, label %361, label %362

361:                                              ; preds = %358
  br label %12

362:                                              ; preds = %358
  %363 = load i32, i32* %5, align 4
  %364 = call i32 (i8*, i32, ...) @err(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.11, i64 0, i64 0), i32 %363)
  br label %12

365:                                              ; preds = %287, %282
  %366 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 0
  %367 = load i8, i8* %366, align 16
  %368 = sext i8 %367 to i32
  %369 = icmp eq i32 %368, 9
  br i1 %369, label %370, label %429

370:                                              ; preds = %365
  %371 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 1
  %372 = load i8, i8* %371, align 1
  %373 = sext i8 %372 to i32
  %374 = icmp eq i32 %373, 9
  br i1 %374, label %375, label %429

375:                                              ; preds = %370
  %376 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 2
  %377 = load i8, i8* %376, align 2
  %378 = call i64 @isxdigit(i8 signext %377)
  %379 = icmp ne i64 %378, 0
  br i1 %379, label %380, label %429

380:                                              ; preds = %375
  %381 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 0
  %382 = getelementptr inbounds i8, i8* %381, i64 2
  %383 = call i32 @strtoul(i8* %382, i8** %4, i32 16)
  store i32 %383, i32* %11, align 4
  br label %384

384:                                              ; preds = %389, %380
  %385 = load i8*, i8** %4, align 8
  %386 = load i8, i8* %385, align 1
  %387 = call i64 @isspace(i8 signext %386)
  %388 = icmp ne i64 %387, 0
  br i1 %388, label %389, label %392

389:                                              ; preds = %384
  %390 = load i8*, i8** %4, align 8
  %391 = getelementptr inbounds i8, i8* %390, i32 1
  store i8* %391, i8** %4, align 8
  br label %384

392:                                              ; preds = %384
  %393 = load i8*, i8** %4, align 8
  %394 = load i8, i8* %393, align 1
  %395 = icmp ne i8 %394, 0
  br i1 %395, label %399, label %396

396:                                              ; preds = %392
  %397 = load i32, i32* %5, align 4
  %398 = call i32 (i8*, i32, ...) @err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i64 0, i64 0), i32 %397)
  br label %12

399:                                              ; preds = %392
  %400 = load i32, i32* %7, align 4
  %401 = icmp ne i32 %400, -1
  br i1 %401, label %402, label %426

402:                                              ; preds = %399
  %403 = load i32, i32* %8, align 4
  %404 = icmp ne i32 %403, -1
  br i1 %404, label %405, label %426

405:                                              ; preds = %402
  %406 = load i8*, i8** %4, align 8
  %407 = load i32, i32* %7, align 4
  %408 = load i32, i32* %8, align 4
  %409 = load i32, i32* %11, align 4
  %410 = call i64 @new_protocol(i8* %406, i32 %407, i32 %408, i32 %409)
  %411 = icmp ne i64 %410, 0
  br i1 %411, label %412, label %419

412:                                              ; preds = %405
  %413 = load i32, i32* %5, align 4
  %414 = load i32, i32* %7, align 4
  %415 = load i32, i32* %8, align 4
  %416 = load i32, i32* %11, align 4
  %417 = load i8*, i8** %4, align 8
  %418 = call i32 (i8*, i32, ...) @err(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.13, i64 0, i64 0), i32 %413, i32 %414, i32 %415, i32 %416, i8* %417)
  br label %419

419:                                              ; preds = %412, %405
  %420 = load i32, i32* %5, align 4
  %421 = load i32, i32* %7, align 4
  %422 = load i32, i32* %8, align 4
  %423 = load i32, i32* %11, align 4
  %424 = load i8*, i8** %4, align 8
  %425 = call i32 (i8*, i32, i32, ...) @dbg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.14, i64 0, i64 0), i32 %420, i32 %421, i32 %422, i32 %423, i8* %424)
  br label %12

426:                                              ; preds = %402, %399
  %427 = load i32, i32* %5, align 4
  %428 = call i32 (i8*, i32, ...) @err(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.15, i64 0, i64 0), i32 %427)
  br label %12

429:                                              ; preds = %375, %370, %365
  %430 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 0
  %431 = load i8, i8* %430, align 16
  %432 = sext i8 %431 to i32
  %433 = icmp eq i32 %432, 72
  br i1 %433, label %434, label %450

434:                                              ; preds = %429
  %435 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 1
  %436 = load i8, i8* %435, align 1
  %437 = sext i8 %436 to i32
  %438 = icmp eq i32 %437, 73
  br i1 %438, label %439, label %450

439:                                              ; preds = %434
  %440 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 2
  %441 = load i8, i8* %440, align 2
  %442 = sext i8 %441 to i32
  %443 = icmp eq i32 %442, 68
  br i1 %443, label %444, label %450

444:                                              ; preds = %439
  %445 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 3
  %446 = load i8, i8* %445, align 1
  %447 = sext i8 %446 to i32
  %448 = icmp eq i32 %447, 32
  br i1 %448, label %449, label %450

449:                                              ; preds = %444
  br label %12

450:                                              ; preds = %444, %439, %434, %429
  %451 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 0
  %452 = load i8, i8* %451, align 16
  %453 = sext i8 %452 to i32
  %454 = icmp eq i32 %453, 72
  br i1 %454, label %455, label %471

455:                                              ; preds = %450
  %456 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 1
  %457 = load i8, i8* %456, align 1
  %458 = sext i8 %457 to i32
  %459 = icmp eq i32 %458, 85
  br i1 %459, label %460, label %471

460:                                              ; preds = %455
  %461 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 2
  %462 = load i8, i8* %461, align 2
  %463 = sext i8 %462 to i32
  %464 = icmp eq i32 %463, 84
  br i1 %464, label %465, label %471

465:                                              ; preds = %460
  %466 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 3
  %467 = load i8, i8* %466, align 1
  %468 = sext i8 %467 to i32
  %469 = icmp eq i32 %468, 32
  br i1 %469, label %470, label %471

470:                                              ; preds = %465
  store i32 -1, i32* %8, align 4
  store i32 -1, i32* %6, align 4
  store i32 -1, i32* %7, align 4
  store i32 -1, i32* %10, align 4
  store i32 1, i32* %9, align 4
  br label %12

471:                                              ; preds = %465, %460, %455, %450
  %472 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 0
  %473 = load i8, i8* %472, align 16
  %474 = sext i8 %473 to i32
  %475 = icmp eq i32 %474, 82
  br i1 %475, label %476, label %482

476:                                              ; preds = %471
  %477 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 1
  %478 = load i8, i8* %477, align 1
  %479 = sext i8 %478 to i32
  %480 = icmp eq i32 %479, 32
  br i1 %480, label %481, label %482

481:                                              ; preds = %476
  br label %12

482:                                              ; preds = %476, %471
  %483 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 0
  %484 = load i8, i8* %483, align 16
  %485 = sext i8 %484 to i32
  %486 = icmp eq i32 %485, 86
  br i1 %486, label %487, label %493

487:                                              ; preds = %482
  %488 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 1
  %489 = load i8, i8* %488, align 1
  %490 = sext i8 %489 to i32
  %491 = icmp eq i32 %490, 84
  br i1 %491, label %492, label %493

492:                                              ; preds = %487
  br label %12

493:                                              ; preds = %487, %482
  %494 = load i32, i32* %5, align 4
  %495 = call i32 (i8*, i32, ...) @err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0), i32 %494)
  br label %12

496:                                              ; preds = %12
  ret void
}

declare dso_local i64 @fgets(i8*, i32, i32*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i64 @isxdigit(i8 signext) #1

declare dso_local i32 @err(i8*, i32, ...) #1

declare dso_local i32 @strtoul(i8*, i8**, i32) #1

declare dso_local i64 @new_class(i8*, i32) #1

declare dso_local i32 @dbg(i8*, i32, i32, ...) #1

declare dso_local i64 @new_vendor(i8*, i32) #1

declare dso_local i64 @new_product(i8*, i32, i32) #1

declare dso_local i64 @new_subclass(i8*, i32, i32) #1

declare dso_local i64 @new_protocol(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
