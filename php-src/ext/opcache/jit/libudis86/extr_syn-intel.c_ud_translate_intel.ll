; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/jit/libudis86/extr_syn-intel.c_ud_translate_intel.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/jit/libudis86/extr_syn-intel.c_ud_translate_intel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ud = type { i32, i64, i32, %struct.TYPE_5__*, i64, i64, i64, i64, i64, %struct.TYPE_4__*, i64 }
%struct.TYPE_5__ = type { i64, i64, i64 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"o32 \00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"o16 \00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"a32 \00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"a16 \00", align 1
@UD_OP_MEM = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@ud_reg_tab = common dso_local global i32* null, align 8
@UD_R_AL = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [6 x i8] c"lock \00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"rep \00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"repe \00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"repne \00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@UD_NONE = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [2 x i8] c" \00", align 1
@UD_OP_IMM = common dso_local global i64 0, align 8
@UD_OP_CONST = common dso_local global i64 0, align 8
@UD_OP_REG = common dso_local global i64 0, align 8
@UD_R_CL = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [3 x i8] c", \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ud_translate_intel(%struct.ud* %0) #0 {
  %2 = alloca %struct.ud*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ud* %0, %struct.ud** %2, align 8
  %6 = load %struct.ud*, %struct.ud** %2, align 8
  %7 = getelementptr inbounds %struct.ud, %struct.ud* %6, i32 0, i32 9
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @P_OSO(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %29, label %13

13:                                               ; preds = %1
  %14 = load %struct.ud*, %struct.ud** %2, align 8
  %15 = getelementptr inbounds %struct.ud, %struct.ud* %14, i32 0, i32 10
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %13
  %19 = load %struct.ud*, %struct.ud** %2, align 8
  %20 = getelementptr inbounds %struct.ud, %struct.ud* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  switch i32 %21, label %28 [
    i32 16, label %22
    i32 32, label %25
    i32 64, label %25
  ]

22:                                               ; preds = %18
  %23 = load %struct.ud*, %struct.ud** %2, align 8
  %24 = call i32 (%struct.ud*, i8*, ...) @ud_asmprintf(%struct.ud* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %28

25:                                               ; preds = %18, %18
  %26 = load %struct.ud*, %struct.ud** %2, align 8
  %27 = call i32 (%struct.ud*, i8*, ...) @ud_asmprintf(%struct.ud* %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %28

28:                                               ; preds = %18, %25, %22
  br label %29

29:                                               ; preds = %28, %13, %1
  %30 = load %struct.ud*, %struct.ud** %2, align 8
  %31 = getelementptr inbounds %struct.ud, %struct.ud* %30, i32 0, i32 9
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @P_ASO(i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %56, label %37

37:                                               ; preds = %29
  %38 = load %struct.ud*, %struct.ud** %2, align 8
  %39 = getelementptr inbounds %struct.ud, %struct.ud* %38, i32 0, i32 8
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %56

42:                                               ; preds = %37
  %43 = load %struct.ud*, %struct.ud** %2, align 8
  %44 = getelementptr inbounds %struct.ud, %struct.ud* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  switch i32 %45, label %55 [
    i32 16, label %46
    i32 32, label %49
    i32 64, label %52
  ]

46:                                               ; preds = %42
  %47 = load %struct.ud*, %struct.ud** %2, align 8
  %48 = call i32 (%struct.ud*, i8*, ...) @ud_asmprintf(%struct.ud* %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %55

49:                                               ; preds = %42
  %50 = load %struct.ud*, %struct.ud** %2, align 8
  %51 = call i32 (%struct.ud*, i8*, ...) @ud_asmprintf(%struct.ud* %50, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %55

52:                                               ; preds = %42
  %53 = load %struct.ud*, %struct.ud** %2, align 8
  %54 = call i32 (%struct.ud*, i8*, ...) @ud_asmprintf(%struct.ud* %53, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %55

55:                                               ; preds = %42, %52, %49, %46
  br label %56

56:                                               ; preds = %55, %37, %29
  %57 = load %struct.ud*, %struct.ud** %2, align 8
  %58 = getelementptr inbounds %struct.ud, %struct.ud* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %90

61:                                               ; preds = %56
  %62 = load %struct.ud*, %struct.ud** %2, align 8
  %63 = getelementptr inbounds %struct.ud, %struct.ud* %62, i32 0, i32 3
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i64 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @UD_OP_MEM, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %90

70:                                               ; preds = %61
  %71 = load %struct.ud*, %struct.ud** %2, align 8
  %72 = getelementptr inbounds %struct.ud, %struct.ud* %71, i32 0, i32 3
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i64 1
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @UD_OP_MEM, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %90

79:                                               ; preds = %70
  %80 = load %struct.ud*, %struct.ud** %2, align 8
  %81 = load i32*, i32** @ud_reg_tab, align 8
  %82 = load %struct.ud*, %struct.ud** %2, align 8
  %83 = getelementptr inbounds %struct.ud, %struct.ud* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @UD_R_AL, align 8
  %86 = sub i64 %84, %85
  %87 = getelementptr inbounds i32, i32* %81, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = call i32 (%struct.ud*, i8*, ...) @ud_asmprintf(%struct.ud* %80, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %88)
  br label %90

90:                                               ; preds = %79, %70, %61, %56
  %91 = load %struct.ud*, %struct.ud** %2, align 8
  %92 = getelementptr inbounds %struct.ud, %struct.ud* %91, i32 0, i32 7
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %90
  %96 = load %struct.ud*, %struct.ud** %2, align 8
  %97 = call i32 (%struct.ud*, i8*, ...) @ud_asmprintf(%struct.ud* %96, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  br label %98

98:                                               ; preds = %95, %90
  %99 = load %struct.ud*, %struct.ud** %2, align 8
  %100 = getelementptr inbounds %struct.ud, %struct.ud* %99, i32 0, i32 6
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %98
  %104 = load %struct.ud*, %struct.ud** %2, align 8
  %105 = call i32 (%struct.ud*, i8*, ...) @ud_asmprintf(%struct.ud* %104, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  br label %124

106:                                              ; preds = %98
  %107 = load %struct.ud*, %struct.ud** %2, align 8
  %108 = getelementptr inbounds %struct.ud, %struct.ud* %107, i32 0, i32 5
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %106
  %112 = load %struct.ud*, %struct.ud** %2, align 8
  %113 = call i32 (%struct.ud*, i8*, ...) @ud_asmprintf(%struct.ud* %112, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  br label %123

114:                                              ; preds = %106
  %115 = load %struct.ud*, %struct.ud** %2, align 8
  %116 = getelementptr inbounds %struct.ud, %struct.ud* %115, i32 0, i32 4
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %114
  %120 = load %struct.ud*, %struct.ud** %2, align 8
  %121 = call i32 (%struct.ud*, i8*, ...) @ud_asmprintf(%struct.ud* %120, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  br label %122

122:                                              ; preds = %119, %114
  br label %123

123:                                              ; preds = %122, %111
  br label %124

124:                                              ; preds = %123, %103
  %125 = load %struct.ud*, %struct.ud** %2, align 8
  %126 = load %struct.ud*, %struct.ud** %2, align 8
  %127 = getelementptr inbounds %struct.ud, %struct.ud* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @ud_lookup_mnemonic(i32 %128)
  %130 = call i32 (%struct.ud*, i8*, ...) @ud_asmprintf(%struct.ud* %125, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i32 %129)
  %131 = load %struct.ud*, %struct.ud** %2, align 8
  %132 = getelementptr inbounds %struct.ud, %struct.ud* %131, i32 0, i32 3
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i64 0
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @UD_NONE, align 8
  %138 = icmp ne i64 %136, %137
  br i1 %138, label %139, label %227

139:                                              ; preds = %124
  store i32 0, i32* %3, align 4
  %140 = load %struct.ud*, %struct.ud** %2, align 8
  %141 = call i32 (%struct.ud*, i8*, ...) @ud_asmprintf(%struct.ud* %140, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  %142 = load %struct.ud*, %struct.ud** %2, align 8
  %143 = getelementptr inbounds %struct.ud, %struct.ud* %142, i32 0, i32 3
  %144 = load %struct.TYPE_5__*, %struct.TYPE_5__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i64 0
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @UD_OP_MEM, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %150, label %219

150:                                              ; preds = %139
  %151 = load %struct.ud*, %struct.ud** %2, align 8
  %152 = getelementptr inbounds %struct.ud, %struct.ud* %151, i32 0, i32 3
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i64 1
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @UD_OP_IMM, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %191, label %159

159:                                              ; preds = %150
  %160 = load %struct.ud*, %struct.ud** %2, align 8
  %161 = getelementptr inbounds %struct.ud, %struct.ud* %160, i32 0, i32 3
  %162 = load %struct.TYPE_5__*, %struct.TYPE_5__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i64 1
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @UD_OP_CONST, align 8
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %191, label %168

168:                                              ; preds = %159
  %169 = load %struct.ud*, %struct.ud** %2, align 8
  %170 = getelementptr inbounds %struct.ud, %struct.ud* %169, i32 0, i32 3
  %171 = load %struct.TYPE_5__*, %struct.TYPE_5__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i64 1
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* @UD_NONE, align 8
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %191, label %177

177:                                              ; preds = %168
  %178 = load %struct.ud*, %struct.ud** %2, align 8
  %179 = getelementptr inbounds %struct.ud, %struct.ud* %178, i32 0, i32 3
  %180 = load %struct.TYPE_5__*, %struct.TYPE_5__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %180, i64 0
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = load %struct.ud*, %struct.ud** %2, align 8
  %185 = getelementptr inbounds %struct.ud, %struct.ud* %184, i32 0, i32 3
  %186 = load %struct.TYPE_5__*, %struct.TYPE_5__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i64 1
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = icmp ne i64 %183, %189
  br i1 %190, label %191, label %192

191:                                              ; preds = %177, %168, %159, %150
  store i32 1, i32* %3, align 4
  br label %218

192:                                              ; preds = %177
  %193 = load %struct.ud*, %struct.ud** %2, align 8
  %194 = getelementptr inbounds %struct.ud, %struct.ud* %193, i32 0, i32 3
  %195 = load %struct.TYPE_5__*, %struct.TYPE_5__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %195, i64 1
  %197 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = load i64, i64* @UD_OP_REG, align 8
  %200 = icmp eq i64 %198, %199
  br i1 %200, label %201, label %217

201:                                              ; preds = %192
  %202 = load %struct.ud*, %struct.ud** %2, align 8
  %203 = getelementptr inbounds %struct.ud, %struct.ud* %202, i32 0, i32 3
  %204 = load %struct.TYPE_5__*, %struct.TYPE_5__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %204, i64 1
  %206 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %205, i32 0, i32 2
  %207 = load i64, i64* %206, align 8
  %208 = load i64, i64* @UD_R_CL, align 8
  %209 = icmp eq i64 %207, %208
  br i1 %209, label %210, label %217

210:                                              ; preds = %201
  %211 = load %struct.ud*, %struct.ud** %2, align 8
  %212 = getelementptr inbounds %struct.ud, %struct.ud* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 8
  switch i32 %213, label %215 [
    i32 134, label %214
    i32 132, label %214
    i32 131, label %214
    i32 133, label %214
    i32 129, label %214
    i32 128, label %214
    i32 130, label %214
  ]

214:                                              ; preds = %210, %210, %210, %210, %210, %210, %210
  store i32 1, i32* %3, align 4
  br label %216

215:                                              ; preds = %210
  br label %216

216:                                              ; preds = %215, %214
  br label %217

217:                                              ; preds = %216, %201, %192
  br label %218

218:                                              ; preds = %217, %191
  br label %219

219:                                              ; preds = %218, %139
  %220 = load %struct.ud*, %struct.ud** %2, align 8
  %221 = load %struct.ud*, %struct.ud** %2, align 8
  %222 = getelementptr inbounds %struct.ud, %struct.ud* %221, i32 0, i32 3
  %223 = load %struct.TYPE_5__*, %struct.TYPE_5__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %223, i64 0
  %225 = load i32, i32* %3, align 4
  %226 = call i32 @gen_operand(%struct.ud* %220, %struct.TYPE_5__* %224, i32 %225)
  br label %227

227:                                              ; preds = %219, %124
  %228 = load %struct.ud*, %struct.ud** %2, align 8
  %229 = getelementptr inbounds %struct.ud, %struct.ud* %228, i32 0, i32 3
  %230 = load %struct.TYPE_5__*, %struct.TYPE_5__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %230, i64 1
  %232 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  %234 = load i64, i64* @UD_NONE, align 8
  %235 = icmp ne i64 %233, %234
  br i1 %235, label %236, label %277

236:                                              ; preds = %227
  store i32 0, i32* %4, align 4
  %237 = load %struct.ud*, %struct.ud** %2, align 8
  %238 = call i32 (%struct.ud*, i8*, ...) @ud_asmprintf(%struct.ud* %237, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0))
  %239 = load %struct.ud*, %struct.ud** %2, align 8
  %240 = getelementptr inbounds %struct.ud, %struct.ud* %239, i32 0, i32 3
  %241 = load %struct.TYPE_5__*, %struct.TYPE_5__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %241, i64 1
  %243 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %242, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = load i64, i64* @UD_OP_MEM, align 8
  %246 = icmp eq i64 %244, %245
  br i1 %246, label %247, label %269

247:                                              ; preds = %236
  %248 = load %struct.ud*, %struct.ud** %2, align 8
  %249 = getelementptr inbounds %struct.ud, %struct.ud* %248, i32 0, i32 3
  %250 = load %struct.TYPE_5__*, %struct.TYPE_5__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %250, i64 0
  %252 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %251, i32 0, i32 1
  %253 = load i64, i64* %252, align 8
  %254 = load %struct.ud*, %struct.ud** %2, align 8
  %255 = getelementptr inbounds %struct.ud, %struct.ud* %254, i32 0, i32 3
  %256 = load %struct.TYPE_5__*, %struct.TYPE_5__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %256, i64 1
  %258 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %257, i32 0, i32 1
  %259 = load i64, i64* %258, align 8
  %260 = icmp ne i64 %253, %259
  br i1 %260, label %261, label %269

261:                                              ; preds = %247
  %262 = load %struct.ud*, %struct.ud** %2, align 8
  %263 = getelementptr inbounds %struct.ud, %struct.ud* %262, i32 0, i32 3
  %264 = load %struct.TYPE_5__*, %struct.TYPE_5__** %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %264, i64 0
  %266 = call i32 @ud_opr_is_sreg(%struct.TYPE_5__* %265)
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %269, label %268

268:                                              ; preds = %261
  store i32 1, i32* %4, align 4
  br label %269

269:                                              ; preds = %268, %261, %247, %236
  %270 = load %struct.ud*, %struct.ud** %2, align 8
  %271 = load %struct.ud*, %struct.ud** %2, align 8
  %272 = getelementptr inbounds %struct.ud, %struct.ud* %271, i32 0, i32 3
  %273 = load %struct.TYPE_5__*, %struct.TYPE_5__** %272, align 8
  %274 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %273, i64 1
  %275 = load i32, i32* %4, align 4
  %276 = call i32 @gen_operand(%struct.ud* %270, %struct.TYPE_5__* %274, i32 %275)
  br label %277

277:                                              ; preds = %269, %227
  %278 = load %struct.ud*, %struct.ud** %2, align 8
  %279 = getelementptr inbounds %struct.ud, %struct.ud* %278, i32 0, i32 3
  %280 = load %struct.TYPE_5__*, %struct.TYPE_5__** %279, align 8
  %281 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %280, i64 2
  %282 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %281, i32 0, i32 0
  %283 = load i64, i64* %282, align 8
  %284 = load i64, i64* @UD_NONE, align 8
  %285 = icmp ne i64 %283, %284
  br i1 %285, label %286, label %320

286:                                              ; preds = %277
  store i32 0, i32* %5, align 4
  %287 = load %struct.ud*, %struct.ud** %2, align 8
  %288 = call i32 (%struct.ud*, i8*, ...) @ud_asmprintf(%struct.ud* %287, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0))
  %289 = load %struct.ud*, %struct.ud** %2, align 8
  %290 = getelementptr inbounds %struct.ud, %struct.ud* %289, i32 0, i32 3
  %291 = load %struct.TYPE_5__*, %struct.TYPE_5__** %290, align 8
  %292 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %291, i64 2
  %293 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %292, i32 0, i32 0
  %294 = load i64, i64* %293, align 8
  %295 = load i64, i64* @UD_OP_MEM, align 8
  %296 = icmp eq i64 %294, %295
  br i1 %296, label %297, label %312

297:                                              ; preds = %286
  %298 = load %struct.ud*, %struct.ud** %2, align 8
  %299 = getelementptr inbounds %struct.ud, %struct.ud* %298, i32 0, i32 3
  %300 = load %struct.TYPE_5__*, %struct.TYPE_5__** %299, align 8
  %301 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %300, i64 2
  %302 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %301, i32 0, i32 1
  %303 = load i64, i64* %302, align 8
  %304 = load %struct.ud*, %struct.ud** %2, align 8
  %305 = getelementptr inbounds %struct.ud, %struct.ud* %304, i32 0, i32 3
  %306 = load %struct.TYPE_5__*, %struct.TYPE_5__** %305, align 8
  %307 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %306, i64 1
  %308 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %307, i32 0, i32 1
  %309 = load i64, i64* %308, align 8
  %310 = icmp ne i64 %303, %309
  br i1 %310, label %311, label %312

311:                                              ; preds = %297
  store i32 1, i32* %5, align 4
  br label %312

312:                                              ; preds = %311, %297, %286
  %313 = load %struct.ud*, %struct.ud** %2, align 8
  %314 = load %struct.ud*, %struct.ud** %2, align 8
  %315 = getelementptr inbounds %struct.ud, %struct.ud* %314, i32 0, i32 3
  %316 = load %struct.TYPE_5__*, %struct.TYPE_5__** %315, align 8
  %317 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %316, i64 2
  %318 = load i32, i32* %5, align 4
  %319 = call i32 @gen_operand(%struct.ud* %313, %struct.TYPE_5__* %317, i32 %318)
  br label %320

320:                                              ; preds = %312, %277
  %321 = load %struct.ud*, %struct.ud** %2, align 8
  %322 = getelementptr inbounds %struct.ud, %struct.ud* %321, i32 0, i32 3
  %323 = load %struct.TYPE_5__*, %struct.TYPE_5__** %322, align 8
  %324 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %323, i64 3
  %325 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %324, i32 0, i32 0
  %326 = load i64, i64* %325, align 8
  %327 = load i64, i64* @UD_NONE, align 8
  %328 = icmp ne i64 %326, %327
  br i1 %328, label %329, label %338

329:                                              ; preds = %320
  %330 = load %struct.ud*, %struct.ud** %2, align 8
  %331 = call i32 (%struct.ud*, i8*, ...) @ud_asmprintf(%struct.ud* %330, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0))
  %332 = load %struct.ud*, %struct.ud** %2, align 8
  %333 = load %struct.ud*, %struct.ud** %2, align 8
  %334 = getelementptr inbounds %struct.ud, %struct.ud* %333, i32 0, i32 3
  %335 = load %struct.TYPE_5__*, %struct.TYPE_5__** %334, align 8
  %336 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %335, i64 3
  %337 = call i32 @gen_operand(%struct.ud* %332, %struct.TYPE_5__* %336, i32 0)
  br label %338

338:                                              ; preds = %329, %320
  ret void
}

declare dso_local i32 @P_OSO(i32) #1

declare dso_local i32 @ud_asmprintf(%struct.ud*, i8*, ...) #1

declare dso_local i32 @P_ASO(i32) #1

declare dso_local i32 @ud_lookup_mnemonic(i32) #1

declare dso_local i32 @gen_operand(%struct.ud*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @ud_opr_is_sreg(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
