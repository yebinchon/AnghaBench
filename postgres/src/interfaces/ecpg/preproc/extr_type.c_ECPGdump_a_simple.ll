; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/preproc/extr_type.c_ECPGdump_a_simple.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/preproc/extr_type.c_ECPGdump_a_simple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ECPGt_NO_INDICATOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"\0A\09ECPGt_NO_INDICATOR, NULL , 0L, 0L, 0L, \00", align 1
@ECPGt_descriptor = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"\0A\09ECPGt_descriptor, %s, 1L, 1L, 1L, \00", align 1
@ECPGt_sqlda = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"\0A\09ECPGt_sqlda, &%s, 0L, 0L, 0L, \00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"sizeof(struct varchar_)\00", align 1
@CHAR_BIT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"(%s%s)\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"&(%s%s)\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"struct varchar\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"struct bytea\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"sizeof(%s_%d)\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"sizeof(%s)\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"char\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"char *\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"(%s)*sizeof(%s)\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"sizeof(numeric)\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"sizeof(interval)\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"sizeof(date)\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"sizeof(timestamp)\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"\22%s\22\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"strlen(\22%s\22)\00", align 1
@.str.22 = private unnamed_addr constant [31 x i8] c"\0A\09%s,%s,(long)%s,(long)%s,%s, \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i32, i8*, i8*, i8*, i8*, i32)* @ECPGdump_a_simple to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ECPGdump_a_simple(i32* %0, i8* %1, i32 %2, i8* %3, i8* %4, i8* %5, i8* %6, i32 %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  store i32* %0, i32** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i8* %5, i8** %14, align 8
  store i8* %6, i8** %15, align 8
  store i32 %7, i32* %16, align 4
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* @ECPGt_NO_INDICATOR, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %8
  %25 = load i32*, i32** %9, align 8
  %26 = call i32 (i32*, i8*, ...) @fprintf(i32* %25, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %345

27:                                               ; preds = %8
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* @ECPGt_descriptor, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load i32*, i32** %9, align 8
  %33 = load i8*, i8** %10, align 8
  %34 = call i32 (i32*, i8*, ...) @fprintf(i32* %32, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8* %33)
  br label %344

35:                                               ; preds = %27
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* @ECPGt_sqlda, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load i32*, i32** %9, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = call i32 (i32*, i8*, ...) @fprintf(i32* %40, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8* %41)
  br label %343

43:                                               ; preds = %35
  %44 = load i8*, i8** %10, align 8
  %45 = call i64 @strlen(i8* %44)
  %46 = load i8*, i8** %15, align 8
  %47 = icmp eq i8* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  br label %52

49:                                               ; preds = %43
  %50 = load i8*, i8** %15, align 8
  %51 = call i64 @strlen(i8* %50)
  br label %52

52:                                               ; preds = %49, %48
  %53 = phi i64 [ 0, %48 ], [ %51, %49 ]
  %54 = add nsw i64 %45, %53
  %55 = add nsw i64 %54, 4
  %56 = call i64 @mm_alloc(i64 %55)
  %57 = inttoptr i64 %56 to i8*
  store i8* %57, i8** %17, align 8
  %58 = load i8*, i8** %10, align 8
  %59 = call i64 @strlen(i8* %58)
  %60 = call i64 @strlen(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %61 = add nsw i64 %59, %60
  %62 = add nsw i64 %61, 1
  %63 = load i8*, i8** %12, align 8
  %64 = call i64 @strlen(i8* %63)
  %65 = add nsw i64 %62, %64
  %66 = load i32, i32* @CHAR_BIT, align 4
  %67 = sext i32 %66 to i64
  %68 = mul i64 4, %67
  %69 = mul i64 %68, 10
  %70 = udiv i64 %69, 3
  %71 = add i64 %65, %70
  %72 = call i64 @mm_alloc(i64 %71)
  %73 = inttoptr i64 %72 to i8*
  store i8* %73, i8** %18, align 8
  %74 = load i32, i32* %11, align 4
  switch i32 %74, label %261 [
    i32 128, label %75
    i32 138, label %75
    i32 137, label %130
    i32 129, label %130
    i32 136, label %130
    i32 131, label %130
    i32 132, label %202
    i32 133, label %215
    i32 134, label %228
    i32 130, label %241
    i32 135, label %254
  ]

75:                                               ; preds = %52, %52
  %76 = load i8*, i8** %13, align 8
  %77 = call i64 @atoi(i8* %76)
  %78 = icmp sgt i64 %77, 0
  br i1 %78, label %87, label %79

79:                                               ; preds = %75
  %80 = load i8*, i8** %13, align 8
  %81 = call i64 @atoi(i8* %80)
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %101

83:                                               ; preds = %79
  %84 = load i8*, i8** %13, align 8
  %85 = call i32 @strcmp(i8* %84, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %101

87:                                               ; preds = %83, %75
  %88 = load i8*, i8** %14, align 8
  %89 = icmp eq i8* %88, null
  br i1 %89, label %90, label %101

90:                                               ; preds = %87
  %91 = load i8*, i8** %17, align 8
  %92 = load i8*, i8** %15, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %94, label %96

94:                                               ; preds = %90
  %95 = load i8*, i8** %15, align 8
  br label %97

96:                                               ; preds = %90
  br label %97

97:                                               ; preds = %96, %94
  %98 = phi i8* [ %95, %94 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), %96 ]
  %99 = load i8*, i8** %10, align 8
  %100 = call i32 (i8*, i8*, ...) @sprintf(i8* %91, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* %98, i8* %99)
  br label %112

101:                                              ; preds = %87, %83, %79
  %102 = load i8*, i8** %17, align 8
  %103 = load i8*, i8** %15, align 8
  %104 = icmp ne i8* %103, null
  br i1 %104, label %105, label %107

105:                                              ; preds = %101
  %106 = load i8*, i8** %15, align 8
  br label %108

107:                                              ; preds = %101
  br label %108

108:                                              ; preds = %107, %105
  %109 = phi i8* [ %106, %105 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), %107 ]
  %110 = load i8*, i8** %10, align 8
  %111 = call i32 (i8*, i8*, ...) @sprintf(i8* %102, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* %109, i8* %110)
  br label %112

112:                                              ; preds = %108, %97
  %113 = load i32, i32* %11, align 4
  %114 = icmp eq i32 %113, 128
  br i1 %114, label %115, label %116

115:                                              ; preds = %112
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i8** %19, align 8
  br label %117

116:                                              ; preds = %112
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i8** %19, align 8
  br label %117

117:                                              ; preds = %116, %115
  %118 = load i32, i32* %16, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %117
  %121 = load i8*, i8** %18, align 8
  %122 = load i8*, i8** %19, align 8
  %123 = load i32, i32* %16, align 4
  %124 = call i32 (i8*, i8*, ...) @sprintf(i8* %121, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i8* %122, i32 %123)
  br label %129

125:                                              ; preds = %117
  %126 = load i8*, i8** %18, align 8
  %127 = load i8*, i8** %19, align 8
  %128 = call i32 (i8*, i8*, ...) @sprintf(i8* %126, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i8* %127)
  br label %129

129:                                              ; preds = %125, %120
  br label %303

130:                                              ; preds = %52, %52, %52, %52
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8** %20, align 8
  %131 = load i8*, i8** %12, align 8
  %132 = call i64 @atoi(i8* %131)
  %133 = icmp sgt i64 %132, 1
  br i1 %133, label %154, label %134

134:                                              ; preds = %130
  %135 = load i8*, i8** %13, align 8
  %136 = call i64 @atoi(i8* %135)
  %137 = icmp sgt i64 %136, 0
  br i1 %137, label %154, label %138

138:                                              ; preds = %134
  %139 = load i8*, i8** %12, align 8
  %140 = call i64 @atoi(i8* %139)
  %141 = icmp eq i64 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %138
  %143 = load i8*, i8** %12, align 8
  %144 = call i32 @strcmp(i8* %143, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %154, label %146

146:                                              ; preds = %142, %138
  %147 = load i8*, i8** %13, align 8
  %148 = call i64 @atoi(i8* %147)
  %149 = icmp eq i64 %148, 0
  br i1 %149, label %150, label %179

150:                                              ; preds = %146
  %151 = load i8*, i8** %13, align 8
  %152 = call i32 @strcmp(i8* %151, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %179

154:                                              ; preds = %150, %142, %134, %130
  %155 = load i8*, i8** %14, align 8
  %156 = icmp eq i8* %155, null
  br i1 %156, label %157, label %179

157:                                              ; preds = %154
  %158 = load i8*, i8** %17, align 8
  %159 = load i8*, i8** %15, align 8
  %160 = icmp ne i8* %159, null
  br i1 %160, label %161, label %163

161:                                              ; preds = %157
  %162 = load i8*, i8** %15, align 8
  br label %164

163:                                              ; preds = %157
  br label %164

164:                                              ; preds = %163, %161
  %165 = phi i8* [ %162, %161 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), %163 ]
  %166 = load i8*, i8** %10, align 8
  %167 = call i32 (i8*, i8*, ...) @sprintf(i8* %158, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* %165, i8* %166)
  %168 = load i32, i32* %11, align 4
  %169 = icmp eq i32 %168, 137
  br i1 %169, label %173, label %170

170:                                              ; preds = %164
  %171 = load i32, i32* %11, align 4
  %172 = icmp eq i32 %171, 129
  br i1 %172, label %173, label %178

173:                                              ; preds = %170, %164
  %174 = load i8*, i8** %12, align 8
  %175 = call i32 @strcmp(i8* %174, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %173
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i8** %20, align 8
  br label %178

178:                                              ; preds = %177, %173, %170
  br label %190

179:                                              ; preds = %154, %150, %146
  %180 = load i8*, i8** %17, align 8
  %181 = load i8*, i8** %15, align 8
  %182 = icmp ne i8* %181, null
  br i1 %182, label %183, label %185

183:                                              ; preds = %179
  %184 = load i8*, i8** %15, align 8
  br label %186

185:                                              ; preds = %179
  br label %186

186:                                              ; preds = %185, %183
  %187 = phi i8* [ %184, %183 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), %185 ]
  %188 = load i8*, i8** %10, align 8
  %189 = call i32 (i8*, i8*, ...) @sprintf(i8* %180, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* %187, i8* %188)
  br label %190

190:                                              ; preds = %186, %178
  %191 = load i8*, i8** %18, align 8
  %192 = load i8*, i8** %12, align 8
  %193 = call i32 @strcmp(i8* %192, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %190
  br label %198

196:                                              ; preds = %190
  %197 = load i8*, i8** %12, align 8
  br label %198

198:                                              ; preds = %196, %195
  %199 = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0), %195 ], [ %197, %196 ]
  %200 = load i8*, i8** %20, align 8
  %201 = call i32 (i8*, i8*, ...) @sprintf(i8* %191, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i8* %199, i8* %200)
  br label %303

202:                                              ; preds = %52
  %203 = load i8*, i8** %17, align 8
  %204 = load i8*, i8** %15, align 8
  %205 = icmp ne i8* %204, null
  br i1 %205, label %206, label %208

206:                                              ; preds = %202
  %207 = load i8*, i8** %15, align 8
  br label %209

208:                                              ; preds = %202
  br label %209

209:                                              ; preds = %208, %206
  %210 = phi i8* [ %207, %206 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), %208 ]
  %211 = load i8*, i8** %10, align 8
  %212 = call i32 (i8*, i8*, ...) @sprintf(i8* %203, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* %210, i8* %211)
  %213 = load i8*, i8** %18, align 8
  %214 = call i32 (i8*, i8*, ...) @sprintf(i8* %213, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0))
  br label %303

215:                                              ; preds = %52
  %216 = load i8*, i8** %17, align 8
  %217 = load i8*, i8** %15, align 8
  %218 = icmp ne i8* %217, null
  br i1 %218, label %219, label %221

219:                                              ; preds = %215
  %220 = load i8*, i8** %15, align 8
  br label %222

221:                                              ; preds = %215
  br label %222

222:                                              ; preds = %221, %219
  %223 = phi i8* [ %220, %219 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), %221 ]
  %224 = load i8*, i8** %10, align 8
  %225 = call i32 (i8*, i8*, ...) @sprintf(i8* %216, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* %223, i8* %224)
  %226 = load i8*, i8** %18, align 8
  %227 = call i32 (i8*, i8*, ...) @sprintf(i8* %226, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i64 0, i64 0))
  br label %303

228:                                              ; preds = %52
  %229 = load i8*, i8** %17, align 8
  %230 = load i8*, i8** %15, align 8
  %231 = icmp ne i8* %230, null
  br i1 %231, label %232, label %234

232:                                              ; preds = %228
  %233 = load i8*, i8** %15, align 8
  br label %235

234:                                              ; preds = %228
  br label %235

235:                                              ; preds = %234, %232
  %236 = phi i8* [ %233, %232 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), %234 ]
  %237 = load i8*, i8** %10, align 8
  %238 = call i32 (i8*, i8*, ...) @sprintf(i8* %229, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* %236, i8* %237)
  %239 = load i8*, i8** %18, align 8
  %240 = call i32 (i8*, i8*, ...) @sprintf(i8* %239, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0))
  br label %303

241:                                              ; preds = %52
  %242 = load i8*, i8** %17, align 8
  %243 = load i8*, i8** %15, align 8
  %244 = icmp ne i8* %243, null
  br i1 %244, label %245, label %247

245:                                              ; preds = %241
  %246 = load i8*, i8** %15, align 8
  br label %248

247:                                              ; preds = %241
  br label %248

248:                                              ; preds = %247, %245
  %249 = phi i8* [ %246, %245 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), %247 ]
  %250 = load i8*, i8** %10, align 8
  %251 = call i32 (i8*, i8*, ...) @sprintf(i8* %242, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* %249, i8* %250)
  %252 = load i8*, i8** %18, align 8
  %253 = call i32 (i8*, i8*, ...) @sprintf(i8* %252, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19, i64 0, i64 0))
  br label %303

254:                                              ; preds = %52
  %255 = load i8*, i8** %17, align 8
  %256 = load i8*, i8** %10, align 8
  %257 = call i32 (i8*, i8*, ...) @sprintf(i8* %255, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i8* %256)
  %258 = load i8*, i8** %18, align 8
  %259 = load i8*, i8** %10, align 8
  %260 = call i32 (i8*, i8*, ...) @sprintf(i8* %258, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i64 0, i64 0), i8* %259)
  br label %303

261:                                              ; preds = %52
  %262 = load i8*, i8** %13, align 8
  %263 = call i64 @atoi(i8* %262)
  %264 = icmp sgt i64 %263, 0
  br i1 %264, label %273, label %265

265:                                              ; preds = %261
  %266 = load i8*, i8** %13, align 8
  %267 = call i64 @atoi(i8* %266)
  %268 = icmp eq i64 %267, 0
  br i1 %268, label %269, label %287

269:                                              ; preds = %265
  %270 = load i8*, i8** %13, align 8
  %271 = call i32 @strcmp(i8* %270, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %287

273:                                              ; preds = %269, %261
  %274 = load i8*, i8** %14, align 8
  %275 = icmp eq i8* %274, null
  br i1 %275, label %276, label %287

276:                                              ; preds = %273
  %277 = load i8*, i8** %17, align 8
  %278 = load i8*, i8** %15, align 8
  %279 = icmp ne i8* %278, null
  br i1 %279, label %280, label %282

280:                                              ; preds = %276
  %281 = load i8*, i8** %15, align 8
  br label %283

282:                                              ; preds = %276
  br label %283

283:                                              ; preds = %282, %280
  %284 = phi i8* [ %281, %280 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), %282 ]
  %285 = load i8*, i8** %10, align 8
  %286 = call i32 (i8*, i8*, ...) @sprintf(i8* %277, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* %284, i8* %285)
  br label %298

287:                                              ; preds = %273, %269, %265
  %288 = load i8*, i8** %17, align 8
  %289 = load i8*, i8** %15, align 8
  %290 = icmp ne i8* %289, null
  br i1 %290, label %291, label %293

291:                                              ; preds = %287
  %292 = load i8*, i8** %15, align 8
  br label %294

293:                                              ; preds = %287
  br label %294

294:                                              ; preds = %293, %291
  %295 = phi i8* [ %292, %291 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), %293 ]
  %296 = load i8*, i8** %10, align 8
  %297 = call i32 (i8*, i8*, ...) @sprintf(i8* %288, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* %295, i8* %296)
  br label %298

298:                                              ; preds = %294, %283
  %299 = load i8*, i8** %18, align 8
  %300 = load i32, i32* %11, align 4
  %301 = call i8* @ecpg_type_name(i32 %300)
  %302 = call i32 (i8*, i8*, ...) @sprintf(i8* %299, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i8* %301)
  br label %303

303:                                              ; preds = %298, %254, %248, %235, %222, %209, %198, %129
  %304 = load i8*, i8** %13, align 8
  %305 = call i64 @atoi(i8* %304)
  %306 = icmp slt i64 %305, 0
  br i1 %306, label %307, label %313

307:                                              ; preds = %303
  %308 = load i8*, i8** %14, align 8
  %309 = icmp ne i8* %308, null
  br i1 %309, label %313, label %310

310:                                              ; preds = %307
  %311 = load i8*, i8** %13, align 8
  %312 = call i32 @strcpy(i8* %311, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0))
  br label %313

313:                                              ; preds = %310, %307, %303
  %314 = load i8*, i8** %14, align 8
  %315 = icmp eq i8* %314, null
  br i1 %315, label %320, label %316

316:                                              ; preds = %313
  %317 = load i8*, i8** %14, align 8
  %318 = call i64 @strlen(i8* %317)
  %319 = icmp eq i64 %318, 0
  br i1 %319, label %320, label %329

320:                                              ; preds = %316, %313
  %321 = load i32*, i32** %9, align 8
  %322 = load i32, i32* %11, align 4
  %323 = call i8* @get_type(i32 %322)
  %324 = load i8*, i8** %17, align 8
  %325 = load i8*, i8** %12, align 8
  %326 = load i8*, i8** %13, align 8
  %327 = load i8*, i8** %18, align 8
  %328 = call i32 (i32*, i8*, ...) @fprintf(i32* %321, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.22, i64 0, i64 0), i8* %323, i8* %324, i8* %325, i8* %326, i8* %327)
  br label %338

329:                                              ; preds = %316
  %330 = load i32*, i32** %9, align 8
  %331 = load i32, i32* %11, align 4
  %332 = call i8* @get_type(i32 %331)
  %333 = load i8*, i8** %17, align 8
  %334 = load i8*, i8** %12, align 8
  %335 = load i8*, i8** %13, align 8
  %336 = load i8*, i8** %14, align 8
  %337 = call i32 (i32*, i8*, ...) @fprintf(i32* %330, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.22, i64 0, i64 0), i8* %332, i8* %333, i8* %334, i8* %335, i8* %336)
  br label %338

338:                                              ; preds = %329, %320
  %339 = load i8*, i8** %17, align 8
  %340 = call i32 @free(i8* %339)
  %341 = load i8*, i8** %18, align 8
  %342 = call i32 @free(i8* %341)
  br label %343

343:                                              ; preds = %338, %39
  br label %344

344:                                              ; preds = %343, %31
  br label %345

345:                                              ; preds = %344, %24
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i64 @mm_alloc(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @atoi(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i8* @ecpg_type_name(i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i8* @get_type(i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
