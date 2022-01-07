; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_ppl.yy.c_make_number.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_ppl.yy.c_make_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64, i64, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"LUL\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Invalid constant suffix\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"LLU\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"ULL\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"LU\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"UL\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"LL\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"U\00", align 1
@errno = common dso_local global i64 0, align 8
@ULLONG_MAX = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [34 x i8] c"integer constant %s is too large\0A\00", align 1
@tULONGLONG = common dso_local global i32 0, align 4
@LLONG_MIN = common dso_local global i64 0, align 8
@LLONG_MAX = common dso_local global i64 0, align 8
@tSLONGLONG = common dso_local global i32 0, align 4
@ULONG_MAX = common dso_local global i64 0, align 8
@tULONG = common dso_local global i32 0, align 4
@LONG_MIN = common dso_local global i64 0, align 8
@LONG_MAX = common dso_local global i64 0, align 8
@tSLONG = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i64 0, align 8
@tUINT = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i64 0, align 8
@INT_MIN = common dso_local global i64 0, align 8
@tSINT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_3__*, i8*, i32)* @make_number to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @make_number(i32 %0, %struct.TYPE_3__* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [4 x i8], align 1
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %16 = getelementptr inbounds [4 x i8], [4 x i8]* %13, i64 0, i64 3
  store i8 0, i8* %16, align 1
  %17 = load i8*, i8** %8, align 8
  %18 = load i32, i32* %9, align 4
  %19 = sub nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %17, i64 %20
  %22 = load i8, i8* %21, align 1
  %23 = call signext i8 @toupper(i8 signext %22)
  %24 = getelementptr inbounds [4 x i8], [4 x i8]* %13, i64 0, i64 2
  store i8 %23, i8* %24, align 1
  %25 = load i32, i32* %9, align 4
  %26 = icmp sgt i32 %25, 1
  br i1 %26, label %27, label %36

27:                                               ; preds = %4
  %28 = load i8*, i8** %8, align 8
  %29 = load i32, i32* %9, align 4
  %30 = sub nsw i32 %29, 2
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %28, i64 %31
  %33 = load i8, i8* %32, align 1
  %34 = call signext i8 @toupper(i8 signext %33)
  %35 = sext i8 %34 to i32
  br label %37

36:                                               ; preds = %4
  br label %37

37:                                               ; preds = %36, %27
  %38 = phi i32 [ %35, %27 ], [ 32, %36 ]
  %39 = trunc i32 %38 to i8
  %40 = getelementptr inbounds [4 x i8], [4 x i8]* %13, i64 0, i64 1
  store i8 %39, i8* %40, align 1
  %41 = load i32, i32* %9, align 4
  %42 = icmp sgt i32 %41, 2
  br i1 %42, label %43, label %52

43:                                               ; preds = %37
  %44 = load i8*, i8** %8, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sub nsw i32 %45, 3
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %44, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = call signext i8 @toupper(i8 signext %49)
  %51 = sext i8 %50 to i32
  br label %53

52:                                               ; preds = %37
  br label %53

53:                                               ; preds = %52, %43
  %54 = phi i32 [ %51, %43 ], [ 32, %52 ]
  %55 = trunc i32 %54 to i8
  %56 = getelementptr inbounds [4 x i8], [4 x i8]* %13, i64 0, i64 0
  store i8 %55, i8* %56, align 1
  %57 = getelementptr inbounds [4 x i8], [4 x i8]* %13, i64 0, i64 0
  %58 = call i32 @strcmp(i8* %57, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %53
  %61 = call i32 (i8*, ...) @ppy_error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %305

62:                                               ; preds = %53
  %63 = getelementptr inbounds [4 x i8], [4 x i8]* %13, i64 0, i64 0
  %64 = call i32 @strcmp(i8* %63, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %62
  %67 = getelementptr inbounds [4 x i8], [4 x i8]* %13, i64 0, i64 0
  %68 = call i32 @strcmp(i8* %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %75, label %70

70:                                               ; preds = %66, %62
  %71 = load i32, i32* %11, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* %12, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %12, align 4
  br label %118

75:                                               ; preds = %66
  %76 = getelementptr inbounds [4 x i8], [4 x i8]* %13, i64 0, i64 0
  %77 = getelementptr inbounds i8, i8* %76, i64 1
  %78 = call i32 @strcmp(i8* %77, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %75
  %81 = getelementptr inbounds [4 x i8], [4 x i8]* %13, i64 0, i64 0
  %82 = getelementptr inbounds i8, i8* %81, i64 1
  %83 = call i32 @strcmp(i8* %82, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %90, label %85

85:                                               ; preds = %80, %75
  %86 = load i32, i32* %10, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %10, align 4
  %88 = load i32, i32* %12, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %12, align 4
  br label %117

90:                                               ; preds = %80
  %91 = getelementptr inbounds [4 x i8], [4 x i8]* %13, i64 0, i64 0
  %92 = getelementptr inbounds i8, i8* %91, i64 1
  %93 = call i32 @strcmp(i8* %92, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %98, label %95

95:                                               ; preds = %90
  %96 = load i32, i32* %11, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %11, align 4
  br label %116

98:                                               ; preds = %90
  %99 = getelementptr inbounds [4 x i8], [4 x i8]* %13, i64 0, i64 0
  %100 = getelementptr inbounds i8, i8* %99, i64 2
  %101 = call i32 @strcmp(i8* %100, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %98
  %104 = load i32, i32* %10, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %10, align 4
  br label %115

106:                                              ; preds = %98
  %107 = getelementptr inbounds [4 x i8], [4 x i8]* %13, i64 0, i64 0
  %108 = getelementptr inbounds i8, i8* %107, i64 2
  %109 = call i32 @strcmp(i8* %108, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %114, label %111

111:                                              ; preds = %106
  %112 = load i32, i32* %12, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %12, align 4
  br label %114

114:                                              ; preds = %111, %106
  br label %115

115:                                              ; preds = %114, %103
  br label %116

116:                                              ; preds = %115, %95
  br label %117

117:                                              ; preds = %116, %85
  br label %118

118:                                              ; preds = %117, %70
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %12, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %145

122:                                              ; preds = %119
  %123 = load i32, i32* %11, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %145

125:                                              ; preds = %122
  store i64 0, i64* @errno, align 8
  %126 = load i8*, i8** %8, align 8
  %127 = load i32, i32* %6, align 4
  %128 = call i64 @_strtoui64(i8* %126, i32* null, i32 %127)
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 0
  store i64 %128, i64* %130, align 8
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @ULLONG_MAX, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %143

136:                                              ; preds = %125
  %137 = load i64, i64* @errno, align 8
  %138 = load i64, i64* @ERANGE, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %143

140:                                              ; preds = %136
  %141 = load i8*, i8** %8, align 8
  %142 = call i32 (i8*, ...) @ppy_error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0), i8* %141)
  br label %143

143:                                              ; preds = %140, %136, %125
  %144 = load i32, i32* @tULONGLONG, align 4
  store i32 %144, i32* %5, align 4
  br label %305

145:                                              ; preds = %122, %119
  %146 = load i32, i32* %12, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %177, label %148

148:                                              ; preds = %145
  %149 = load i32, i32* %11, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %177

151:                                              ; preds = %148
  store i64 0, i64* @errno, align 8
  %152 = load i8*, i8** %8, align 8
  %153 = load i32, i32* %6, align 4
  %154 = call i64 @_strtoi64(i8* %152, i32* null, i32 %153)
  %155 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 1
  store i64 %154, i64* %156, align 8
  %157 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @LLONG_MIN, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %168, label %162

162:                                              ; preds = %151
  %163 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @LLONG_MAX, align 8
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %168, label %175

168:                                              ; preds = %162, %151
  %169 = load i64, i64* @errno, align 8
  %170 = load i64, i64* @ERANGE, align 8
  %171 = icmp eq i64 %169, %170
  br i1 %171, label %172, label %175

172:                                              ; preds = %168
  %173 = load i8*, i8** %8, align 8
  %174 = call i32 (i8*, ...) @ppy_error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0), i8* %173)
  br label %175

175:                                              ; preds = %172, %168, %162
  %176 = load i32, i32* @tSLONGLONG, align 4
  store i32 %176, i32* %5, align 4
  br label %305

177:                                              ; preds = %148, %145
  %178 = load i32, i32* %12, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %204

180:                                              ; preds = %177
  %181 = load i32, i32* %10, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %204

183:                                              ; preds = %180
  store i64 0, i64* @errno, align 8
  %184 = load i8*, i8** %8, align 8
  %185 = load i32, i32* %6, align 4
  %186 = call i8* @strtoul(i8* %184, i32* null, i32 %185)
  %187 = ptrtoint i8* %186 to i64
  %188 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %188, i32 0, i32 2
  store i64 %187, i64* %189, align 8
  %190 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %191 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %190, i32 0, i32 2
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* @ULONG_MAX, align 8
  %194 = icmp eq i64 %192, %193
  br i1 %194, label %195, label %202

195:                                              ; preds = %183
  %196 = load i64, i64* @errno, align 8
  %197 = load i64, i64* @ERANGE, align 8
  %198 = icmp eq i64 %196, %197
  br i1 %198, label %199, label %202

199:                                              ; preds = %195
  %200 = load i8*, i8** %8, align 8
  %201 = call i32 (i8*, ...) @ppy_error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0), i8* %200)
  br label %202

202:                                              ; preds = %199, %195, %183
  %203 = load i32, i32* @tULONG, align 4
  store i32 %203, i32* %5, align 4
  br label %305

204:                                              ; preds = %180, %177
  %205 = load i32, i32* %12, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %237, label %207

207:                                              ; preds = %204
  %208 = load i32, i32* %10, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %237

210:                                              ; preds = %207
  store i64 0, i64* @errno, align 8
  %211 = load i8*, i8** %8, align 8
  %212 = load i32, i32* %6, align 4
  %213 = call i8* @strtol(i8* %211, i32* null, i32 %212)
  %214 = ptrtoint i8* %213 to i64
  %215 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %216 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %215, i32 0, i32 3
  store i64 %214, i64* %216, align 8
  %217 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %218 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %217, i32 0, i32 3
  %219 = load i64, i64* %218, align 8
  %220 = load i64, i64* @LONG_MIN, align 8
  %221 = icmp eq i64 %219, %220
  br i1 %221, label %228, label %222

222:                                              ; preds = %210
  %223 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %224 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %223, i32 0, i32 3
  %225 = load i64, i64* %224, align 8
  %226 = load i64, i64* @LONG_MAX, align 8
  %227 = icmp eq i64 %225, %226
  br i1 %227, label %228, label %235

228:                                              ; preds = %222, %210
  %229 = load i64, i64* @errno, align 8
  %230 = load i64, i64* @ERANGE, align 8
  %231 = icmp eq i64 %229, %230
  br i1 %231, label %232, label %235

232:                                              ; preds = %228
  %233 = load i8*, i8** %8, align 8
  %234 = call i32 (i8*, ...) @ppy_error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0), i8* %233)
  br label %235

235:                                              ; preds = %232, %228, %222
  %236 = load i32, i32* @tSLONG, align 4
  store i32 %236, i32* %5, align 4
  br label %305

237:                                              ; preds = %207, %204
  %238 = load i32, i32* %12, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %268

240:                                              ; preds = %237
  %241 = load i32, i32* %10, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %268, label %243

243:                                              ; preds = %240
  store i64 0, i64* @errno, align 8
  %244 = load i8*, i8** %8, align 8
  %245 = load i32, i32* %6, align 4
  %246 = call i8* @strtoul(i8* %244, i32* null, i32 %245)
  %247 = ptrtoint i8* %246 to i64
  store i64 %247, i64* %15, align 8
  %248 = load i64, i64* %15, align 8
  %249 = load i64, i64* @ULONG_MAX, align 8
  %250 = icmp eq i64 %248, %249
  br i1 %250, label %251, label %255

251:                                              ; preds = %243
  %252 = load i64, i64* @errno, align 8
  %253 = load i64, i64* @ERANGE, align 8
  %254 = icmp eq i64 %252, %253
  br i1 %254, label %259, label %255

255:                                              ; preds = %251, %243
  %256 = load i64, i64* %15, align 8
  %257 = load i64, i64* @UINT_MAX, align 8
  %258 = icmp ugt i64 %256, %257
  br i1 %258, label %259, label %262

259:                                              ; preds = %255, %251
  %260 = load i8*, i8** %8, align 8
  %261 = call i32 (i8*, ...) @ppy_error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0), i8* %260)
  br label %262

262:                                              ; preds = %259, %255
  %263 = load i64, i64* %15, align 8
  %264 = trunc i64 %263 to i32
  %265 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %266 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %265, i32 0, i32 4
  store i32 %264, i32* %266, align 8
  %267 = load i32, i32* @tUINT, align 4
  store i32 %267, i32* %5, align 4
  br label %305

268:                                              ; preds = %240, %237
  br label %269

269:                                              ; preds = %268
  br label %270

270:                                              ; preds = %269
  br label %271

271:                                              ; preds = %270
  br label %272

272:                                              ; preds = %271
  store i64 0, i64* @errno, align 8
  %273 = load i8*, i8** %8, align 8
  %274 = load i32, i32* %6, align 4
  %275 = call i8* @strtol(i8* %273, i32* null, i32 %274)
  %276 = ptrtoint i8* %275 to i64
  store i64 %276, i64* %14, align 8
  %277 = load i64, i64* %14, align 8
  %278 = load i64, i64* @LONG_MIN, align 8
  %279 = icmp eq i64 %277, %278
  br i1 %279, label %284, label %280

280:                                              ; preds = %272
  %281 = load i64, i64* %14, align 8
  %282 = load i64, i64* @LONG_MAX, align 8
  %283 = icmp eq i64 %281, %282
  br i1 %283, label %284, label %288

284:                                              ; preds = %280, %272
  %285 = load i64, i64* @errno, align 8
  %286 = load i64, i64* @ERANGE, align 8
  %287 = icmp eq i64 %285, %286
  br i1 %287, label %296, label %288

288:                                              ; preds = %284, %280
  %289 = load i64, i64* %14, align 8
  %290 = load i64, i64* @INT_MAX, align 8
  %291 = icmp sgt i64 %289, %290
  br i1 %291, label %296, label %292

292:                                              ; preds = %288
  %293 = load i64, i64* %14, align 8
  %294 = load i64, i64* @INT_MIN, align 8
  %295 = icmp slt i64 %293, %294
  br i1 %295, label %296, label %299

296:                                              ; preds = %292, %288, %284
  %297 = load i8*, i8** %8, align 8
  %298 = call i32 (i8*, ...) @ppy_error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0), i8* %297)
  br label %299

299:                                              ; preds = %296, %292
  %300 = load i64, i64* %14, align 8
  %301 = trunc i64 %300 to i32
  %302 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %303 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %302, i32 0, i32 5
  store i32 %301, i32* %303, align 4
  %304 = load i32, i32* @tSINT, align 4
  store i32 %304, i32* %5, align 4
  br label %305

305:                                              ; preds = %299, %262, %235, %202, %175, %143, %60
  %306 = load i32, i32* %5, align 4
  ret i32 %306
}

declare dso_local signext i8 @toupper(i8 signext) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @ppy_error(i8*, ...) #1

declare dso_local i64 @_strtoui64(i8*, i32*, i32) #1

declare dso_local i64 @_strtoi64(i8*, i32*, i32) #1

declare dso_local i8* @strtoul(i8*, i32*, i32) #1

declare dso_local i8* @strtol(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
