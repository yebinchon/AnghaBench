; ModuleID = '/home/carl/AnghaBench/radare2/libr/parse/p/extr_parse_x86_pseudo.c_parse.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/parse/p/extr_parse_x86_pseudo.c_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }

@.str = private unnamed_addr constant [4 x i8] c"mul\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"rax\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"eax\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"ax\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"al\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"ah\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"return %s\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"leave\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"pop\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"bp\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c" \00\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"ret\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i8*, i8*)* @parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse(%struct.TYPE_3__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [256 x i8], align 16
  %9 = alloca [256 x i8], align 16
  %10 = alloca [256 x i8], align 16
  %11 = alloca [256 x i8], align 16
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca [4 x i8*], align 16
  %20 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = call i32 @strlen(i8* %21)
  %23 = sext i32 %22 to i64
  store i64 %23, i64* %13, align 8
  store i32 32, i32* %14, align 4
  %24 = load i64, i64* %13, align 8
  %25 = icmp uge i64 %24, 256
  br i1 %25, label %30, label %26

26:                                               ; preds = %3
  %27 = load i32, i32* %14, align 4
  %28 = sext i32 %27 to i64
  %29 = icmp uge i64 %28, 256
  br i1 %29, label %30, label %31

30:                                               ; preds = %26, %3
  store i32 0, i32* %4, align 4
  br label %376

31:                                               ; preds = %26
  %32 = load i8*, i8** %6, align 8
  %33 = call i8* @strdup(i8* %32)
  store i8* %33, i8** %15, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  br label %376

36:                                               ; preds = %31
  %37 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  store i8 0, i8* %37, align 16
  %38 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  store i8 0, i8* %38, align 16
  %39 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  store i8 0, i8* %39, align 16
  %40 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  store i8 0, i8* %40, align 16
  %41 = load i8*, i8** %15, align 8
  %42 = load i8, i8* %41, align 1
  %43 = icmp ne i8 %42, 0
  br i1 %43, label %44, label %136

44:                                               ; preds = %36
  %45 = load i8*, i8** %15, align 8
  %46 = call i8* @strchr(i8* %45, i8 signext 0)
  store i8* %46, i8** %18, align 8
  %47 = load i8*, i8** %15, align 8
  %48 = call i8* @strchr(i8* %47, i8 signext 32)
  store i8* %48, i8** %16, align 8
  %49 = load i8*, i8** %16, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %44
  %52 = load i8*, i8** %15, align 8
  %53 = call i8* @strchr(i8* %52, i8 signext 9)
  store i8* %53, i8** %16, align 8
  br label %54

54:                                               ; preds = %51, %44
  %55 = load i8*, i8** %16, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %54
  %58 = load i8*, i8** %18, align 8
  store i8* %58, i8** %16, align 8
  br label %59

59:                                               ; preds = %57, %54
  %60 = load i8*, i8** %16, align 8
  store i8 0, i8* %60, align 1
  %61 = load i8*, i8** %16, align 8
  %62 = load i8*, i8** %18, align 8
  %63 = icmp ne i8* %61, %62
  br i1 %63, label %64, label %77

64:                                               ; preds = %59
  %65 = load i8*, i8** %16, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %16, align 8
  br label %67

67:                                               ; preds = %73, %64
  %68 = load i8*, i8** %16, align 8
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 32
  br i1 %71, label %72, label %76

72:                                               ; preds = %67
  br label %73

73:                                               ; preds = %72
  %74 = load i8*, i8** %16, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %16, align 8
  br label %67

76:                                               ; preds = %67
  br label %77

77:                                               ; preds = %76, %59
  %78 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %79 = load i8*, i8** %15, align 8
  %80 = call i32 @r_str_ncpy(i8* %78, i8* %79, i32 256)
  %81 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %82 = load i8*, i8** %16, align 8
  %83 = call i32 @r_str_ncpy(i8* %81, i8* %82, i32 256)
  %84 = load i8*, i8** %16, align 8
  store i8* %84, i8** %17, align 8
  %85 = load i8*, i8** %16, align 8
  %86 = call i8* @strchr(i8* %85, i8 signext 44)
  store i8* %86, i8** %16, align 8
  %87 = load i8*, i8** %16, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %89, label %135

89:                                               ; preds = %77
  %90 = load i8*, i8** %16, align 8
  store i8 0, i8* %90, align 1
  %91 = load i8*, i8** %16, align 8
  %92 = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %92, i8** %16, align 8
  br label %93

93:                                               ; preds = %99, %89
  %94 = load i8*, i8** %16, align 8
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp eq i32 %96, 32
  br i1 %97, label %98, label %102

98:                                               ; preds = %93
  br label %99

99:                                               ; preds = %98
  %100 = load i8*, i8** %16, align 8
  %101 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %101, i8** %16, align 8
  br label %93

102:                                              ; preds = %93
  %103 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %104 = load i8*, i8** %17, align 8
  %105 = call i32 @r_str_ncpy(i8* %103, i8* %104, i32 256)
  %106 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %107 = load i8*, i8** %16, align 8
  %108 = call i32 @r_str_ncpy(i8* %106, i8* %107, i32 256)
  %109 = load i8*, i8** %16, align 8
  store i8* %109, i8** %17, align 8
  %110 = load i8*, i8** %16, align 8
  %111 = call i8* @strchr(i8* %110, i8 signext 44)
  store i8* %111, i8** %16, align 8
  %112 = load i8*, i8** %16, align 8
  %113 = icmp ne i8* %112, null
  br i1 %113, label %114, label %134

114:                                              ; preds = %102
  %115 = load i8*, i8** %16, align 8
  store i8 0, i8* %115, align 1
  %116 = load i8*, i8** %16, align 8
  %117 = getelementptr inbounds i8, i8* %116, i32 1
  store i8* %117, i8** %16, align 8
  br label %118

118:                                              ; preds = %124, %114
  %119 = load i8*, i8** %16, align 8
  %120 = load i8, i8* %119, align 1
  %121 = sext i8 %120 to i32
  %122 = icmp eq i32 %121, 32
  br i1 %122, label %123, label %127

123:                                              ; preds = %118
  br label %124

124:                                              ; preds = %123
  %125 = load i8*, i8** %16, align 8
  %126 = getelementptr inbounds i8, i8* %125, i32 1
  store i8* %126, i8** %16, align 8
  br label %118

127:                                              ; preds = %118
  %128 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %129 = load i8*, i8** %17, align 8
  %130 = call i32 @r_str_ncpy(i8* %128, i8* %129, i32 256)
  %131 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %132 = load i8*, i8** %16, align 8
  %133 = call i32 @r_str_ncpy(i8* %131, i8* %132, i32 256)
  br label %134

134:                                              ; preds = %127, %102
  br label %135

135:                                              ; preds = %134, %77
  br label %136

136:                                              ; preds = %135, %36
  %137 = getelementptr inbounds [4 x i8*], [4 x i8*]* %19, i64 0, i64 0
  %138 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  store i8* %138, i8** %137, align 8
  %139 = getelementptr inbounds i8*, i8** %137, i64 1
  %140 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  store i8* %140, i8** %139, align 8
  %141 = getelementptr inbounds i8*, i8** %139, i64 1
  %142 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  store i8* %142, i8** %141, align 8
  %143 = getelementptr inbounds i8*, i8** %141, i64 1
  %144 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  store i8* %144, i8** %143, align 8
  store i32 0, i32* %20, align 4
  store i32 0, i32* %12, align 4
  br label %145

145:                                              ; preds = %161, %136
  %146 = load i32, i32* %12, align 4
  %147 = icmp slt i32 %146, 4
  br i1 %147, label %148, label %164

148:                                              ; preds = %145
  %149 = load i32, i32* %12, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds [4 x i8*], [4 x i8*]* %19, i64 0, i64 %150
  %152 = load i8*, i8** %151, align 8
  %153 = getelementptr inbounds i8, i8* %152, i64 0
  %154 = load i8, i8* %153, align 1
  %155 = sext i8 %154 to i32
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %148
  %158 = load i32, i32* %20, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %20, align 4
  br label %160

160:                                              ; preds = %157, %148
  br label %161

161:                                              ; preds = %160
  %162 = load i32, i32* %12, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %12, align 4
  br label %145

164:                                              ; preds = %145
  %165 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %166 = call i64 @strstr(i8* %165, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %266

168:                                              ; preds = %164
  %169 = load i32, i32* %20, align 4
  %170 = icmp eq i32 %169, 2
  br i1 %170, label %171, label %246

171:                                              ; preds = %168
  %172 = getelementptr inbounds [4 x i8*], [4 x i8*]* %19, i64 0, i64 3
  %173 = load i8*, i8** %172, align 8
  %174 = getelementptr inbounds [4 x i8*], [4 x i8*]* %19, i64 0, i64 1
  %175 = load i8*, i8** %174, align 8
  %176 = call i32 @r_str_ncpy(i8* %173, i8* %175, i32 256)
  %177 = getelementptr inbounds [4 x i8*], [4 x i8*]* %19, i64 0, i64 3
  %178 = load i8*, i8** %177, align 8
  %179 = getelementptr inbounds i8, i8* %178, i64 0
  %180 = load i8, i8* %179, align 1
  %181 = sext i8 %180 to i32
  switch i32 %181, label %202 [
    i32 113, label %182
    i32 114, label %182
    i32 100, label %189
    i32 101, label %189
  ]

182:                                              ; preds = %171, %171
  %183 = getelementptr inbounds [4 x i8*], [4 x i8*]* %19, i64 0, i64 1
  %184 = load i8*, i8** %183, align 8
  %185 = call i32 @r_str_ncpy(i8* %184, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 256)
  %186 = getelementptr inbounds [4 x i8*], [4 x i8*]* %19, i64 0, i64 2
  %187 = load i8*, i8** %186, align 16
  %188 = call i32 @r_str_ncpy(i8* %187, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 256)
  br label %245

189:                                              ; preds = %171, %171
  %190 = getelementptr inbounds [4 x i8*], [4 x i8*]* %19, i64 0, i64 3
  %191 = load i8*, i8** %190, align 8
  %192 = call i32 @strlen(i8* %191)
  %193 = icmp sgt i32 %192, 2
  br i1 %193, label %194, label %201

194:                                              ; preds = %189
  %195 = getelementptr inbounds [4 x i8*], [4 x i8*]* %19, i64 0, i64 1
  %196 = load i8*, i8** %195, align 8
  %197 = call i32 @r_str_ncpy(i8* %196, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 256)
  %198 = getelementptr inbounds [4 x i8*], [4 x i8*]* %19, i64 0, i64 2
  %199 = load i8*, i8** %198, align 16
  %200 = call i32 @r_str_ncpy(i8* %199, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 256)
  br label %245

201:                                              ; preds = %189
  br label %202

202:                                              ; preds = %171, %201
  %203 = getelementptr inbounds [4 x i8*], [4 x i8*]* %19, i64 0, i64 3
  %204 = load i8*, i8** %203, align 8
  %205 = getelementptr inbounds i8, i8* %204, i64 1
  %206 = load i8, i8* %205, align 1
  %207 = sext i8 %206 to i32
  %208 = icmp eq i32 %207, 120
  br i1 %208, label %230, label %209

209:                                              ; preds = %202
  %210 = getelementptr inbounds [4 x i8*], [4 x i8*]* %19, i64 0, i64 3
  %211 = load i8*, i8** %210, align 8
  %212 = getelementptr inbounds i8, i8* %211, i64 1
  %213 = load i8, i8* %212, align 1
  %214 = sext i8 %213 to i32
  %215 = icmp eq i32 %214, 112
  br i1 %215, label %230, label %216

216:                                              ; preds = %209
  %217 = getelementptr inbounds [4 x i8*], [4 x i8*]* %19, i64 0, i64 3
  %218 = load i8*, i8** %217, align 8
  %219 = getelementptr inbounds i8, i8* %218, i64 1
  %220 = load i8, i8* %219, align 1
  %221 = sext i8 %220 to i32
  %222 = icmp eq i32 %221, 105
  br i1 %222, label %230, label %223

223:                                              ; preds = %216
  %224 = getelementptr inbounds [4 x i8*], [4 x i8*]* %19, i64 0, i64 3
  %225 = load i8*, i8** %224, align 8
  %226 = getelementptr inbounds i8, i8* %225, i64 0
  %227 = load i8, i8* %226, align 1
  %228 = sext i8 %227 to i32
  %229 = icmp eq i32 %228, 119
  br i1 %229, label %230, label %237

230:                                              ; preds = %223, %216, %209, %202
  %231 = getelementptr inbounds [4 x i8*], [4 x i8*]* %19, i64 0, i64 1
  %232 = load i8*, i8** %231, align 8
  %233 = call i32 @r_str_ncpy(i8* %232, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 256)
  %234 = getelementptr inbounds [4 x i8*], [4 x i8*]* %19, i64 0, i64 2
  %235 = load i8*, i8** %234, align 16
  %236 = call i32 @r_str_ncpy(i8* %235, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 256)
  br label %244

237:                                              ; preds = %223
  %238 = getelementptr inbounds [4 x i8*], [4 x i8*]* %19, i64 0, i64 1
  %239 = load i8*, i8** %238, align 8
  %240 = call i32 @r_str_ncpy(i8* %239, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 256)
  %241 = getelementptr inbounds [4 x i8*], [4 x i8*]* %19, i64 0, i64 2
  %242 = load i8*, i8** %241, align 16
  %243 = call i32 @r_str_ncpy(i8* %242, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 256)
  br label %244

244:                                              ; preds = %237, %230
  br label %245

245:                                              ; preds = %244, %194, %182
  br label %261

246:                                              ; preds = %168
  %247 = load i32, i32* %20, align 4
  %248 = icmp eq i32 %247, 3
  br i1 %248, label %249, label %260

249:                                              ; preds = %246
  %250 = getelementptr inbounds [4 x i8*], [4 x i8*]* %19, i64 0, i64 3
  %251 = load i8*, i8** %250, align 8
  %252 = getelementptr inbounds [4 x i8*], [4 x i8*]* %19, i64 0, i64 2
  %253 = load i8*, i8** %252, align 16
  %254 = call i32 @r_str_ncpy(i8* %251, i8* %253, i32 256)
  %255 = getelementptr inbounds [4 x i8*], [4 x i8*]* %19, i64 0, i64 2
  %256 = load i8*, i8** %255, align 16
  %257 = getelementptr inbounds [4 x i8*], [4 x i8*]* %19, i64 0, i64 1
  %258 = load i8*, i8** %257, align 8
  %259 = call i32 @r_str_ncpy(i8* %256, i8* %258, i32 256)
  br label %260

260:                                              ; preds = %249, %246
  br label %261

261:                                              ; preds = %260, %245
  %262 = load i32, i32* %20, align 4
  %263 = getelementptr inbounds [4 x i8*], [4 x i8*]* %19, i64 0, i64 0
  %264 = load i8*, i8** %7, align 8
  %265 = call i32 @replace(i32 %262, i8** %263, i8* %264)
  br label %373

266:                                              ; preds = %164
  %267 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %268 = call i64 @strstr(i8* %267, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %278, label %270

270:                                              ; preds = %266
  %271 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %272 = call i64 @strstr(i8* %271, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %273 = icmp ne i64 %272, 0
  br i1 %273, label %278, label %274

274:                                              ; preds = %270
  %275 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %276 = call i64 @strstr(i8* %275, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %278, label %302

278:                                              ; preds = %274, %270, %266
  %279 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %280 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %279, i32 0, i32 0
  %281 = load i8*, i8** %280, align 8
  %282 = icmp ne i8* %281, null
  br i1 %282, label %302, label %283

283:                                              ; preds = %278
  %284 = load i32, i32* %14, align 4
  %285 = call i64 @malloc(i32 %284)
  %286 = inttoptr i64 %285 to i8*
  %287 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %288 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %287, i32 0, i32 0
  store i8* %286, i8** %288, align 8
  %289 = icmp ne i8* %286, null
  br i1 %289, label %291, label %290

290:                                              ; preds = %283
  store i32 0, i32* %4, align 4
  br label %376

291:                                              ; preds = %283
  %292 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %293 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %292, i32 0, i32 0
  %294 = load i8*, i8** %293, align 8
  %295 = load i32, i32* %14, align 4
  %296 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %297 = call i32 @r_snprintf(i8* %294, i32 %295, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* %296)
  %298 = load i32, i32* %20, align 4
  %299 = getelementptr inbounds [4 x i8*], [4 x i8*]* %19, i64 0, i64 0
  %300 = load i8*, i8** %7, align 8
  %301 = call i32 @replace(i32 %298, i8** %299, i8* %300)
  br label %372

302:                                              ; preds = %278, %274
  %303 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %304 = call i64 @strstr(i8* %303, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %305 = icmp ne i64 %304, 0
  br i1 %305, label %306, label %311

306:                                              ; preds = %302
  %307 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %308 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %307, i32 0, i32 0
  %309 = load i8*, i8** %308, align 8
  %310 = icmp ne i8* %309, null
  br i1 %310, label %319, label %311

311:                                              ; preds = %306, %302
  %312 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %313 = call i64 @strstr(i8* %312, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %314 = icmp ne i64 %313, 0
  br i1 %314, label %315, label %330

315:                                              ; preds = %311
  %316 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %317 = call i64 @strstr(i8* %316, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  %318 = icmp ne i64 %317, 0
  br i1 %318, label %319, label %330

319:                                              ; preds = %315, %306
  %320 = getelementptr inbounds [4 x i8*], [4 x i8*]* %19, i64 0, i64 0
  %321 = load i8*, i8** %320, align 16
  %322 = call i32 @r_str_ncpy(i8* %321, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i32 2)
  %323 = getelementptr inbounds [4 x i8*], [4 x i8*]* %19, i64 0, i64 1
  %324 = load i8*, i8** %323, align 8
  %325 = call i32 @r_str_ncpy(i8* %324, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i32 2)
  %326 = load i32, i32* %20, align 4
  %327 = getelementptr inbounds [4 x i8*], [4 x i8*]* %19, i64 0, i64 0
  %328 = load i8*, i8** %7, align 8
  %329 = call i32 @replace(i32 %326, i8** %327, i8* %328)
  br label %371

330:                                              ; preds = %315, %311
  %331 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %332 = call i64 @strstr(i8* %331, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0))
  %333 = icmp ne i64 %332, 0
  br i1 %333, label %334, label %350

334:                                              ; preds = %330
  %335 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %336 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %335, i32 0, i32 0
  %337 = load i8*, i8** %336, align 8
  %338 = icmp ne i8* %337, null
  br i1 %338, label %339, label %350

339:                                              ; preds = %334
  %340 = load i8*, i8** %7, align 8
  %341 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %342 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %341, i32 0, i32 0
  %343 = load i8*, i8** %342, align 8
  %344 = load i32, i32* %14, align 4
  %345 = call i32 @r_str_ncpy(i8* %340, i8* %343, i32 %344)
  %346 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %347 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %346, i32 0, i32 0
  %348 = load i8*, i8** %347, align 8
  %349 = call i32 @R_FREE(i8* %348)
  br label %370

350:                                              ; preds = %334, %330
  %351 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %352 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %351, i32 0, i32 0
  %353 = load i8*, i8** %352, align 8
  %354 = icmp ne i8* %353, null
  br i1 %354, label %355, label %364

355:                                              ; preds = %350
  %356 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %357 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %356, i32 0, i32 0
  %358 = load i8*, i8** %357, align 8
  %359 = call i32 @R_FREE(i8* %358)
  %360 = load i32, i32* %20, align 4
  %361 = getelementptr inbounds [4 x i8*], [4 x i8*]* %19, i64 0, i64 0
  %362 = load i8*, i8** %7, align 8
  %363 = call i32 @replace(i32 %360, i8** %361, i8* %362)
  br label %369

364:                                              ; preds = %350
  %365 = load i32, i32* %20, align 4
  %366 = getelementptr inbounds [4 x i8*], [4 x i8*]* %19, i64 0, i64 0
  %367 = load i8*, i8** %7, align 8
  %368 = call i32 @replace(i32 %365, i8** %366, i8* %367)
  br label %369

369:                                              ; preds = %364, %355
  br label %370

370:                                              ; preds = %369, %339
  br label %371

371:                                              ; preds = %370, %319
  br label %372

372:                                              ; preds = %371, %291
  br label %373

373:                                              ; preds = %372, %261
  %374 = load i8*, i8** %15, align 8
  %375 = call i32 @free(i8* %374)
  store i32 1, i32* %4, align 4
  br label %376

376:                                              ; preds = %373, %290, %35, %30
  %377 = load i32, i32* %4, align 4
  ret i32 %377
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @r_str_ncpy(i8*, i8*, i32) #1

declare dso_local i64 @strstr(i8*, i8*) #1

declare dso_local i32 @replace(i32, i8**, i8*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @r_snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @R_FREE(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
