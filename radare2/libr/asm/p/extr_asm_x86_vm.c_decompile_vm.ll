; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/p/extr_asm_x86_vm.c_decompile_vm.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/p/extr_asm_x86_vm.c_decompile_vm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"invalid\00", align 1
@R_ASM_SYNTAX_ATT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"vpcext $0x%x, $0x%x\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"vpcext %xh, %xh\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"vmgetinfo\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"vmsetinfo\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"vmdxdsbl\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"vmdxenbl\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"vmcpuid\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"vmhlt\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"vmsplaf\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"vmpushfd\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"vmpopfd\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"vmcli\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"vmsti\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"vmiretd\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"vmsgdt\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"vmsidt\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"vmsldt\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"vmstr\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"vmsdte\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @decompile_vm(%struct.TYPE_7__* %0, %struct.TYPE_6__* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  %10 = load i32, i32* %8, align 4
  %11 = icmp sgt i32 %10, 3
  br i1 %11, label %12, label %67

12:                                               ; preds = %4
  %13 = load i32*, i32** %7, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %15, 15
  br i1 %16, label %17, label %67

17:                                               ; preds = %12
  %18 = load i32*, i32** %7, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, 63
  br i1 %21, label %22, label %67

22:                                               ; preds = %17
  %23 = load i32*, i32** %7, align 8
  %24 = call i64 @VPCEXT2(i32* %23, i32 1)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %42, label %26

26:                                               ; preds = %22
  %27 = load i32*, i32** %7, align 8
  %28 = call i64 @VPCEXT2(i32* %27, i32 5)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %42, label %30

30:                                               ; preds = %26
  %31 = load i32*, i32** %7, align 8
  %32 = call i64 @VPCEXT2(i32* %31, i32 7)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %30
  %35 = load i32*, i32** %7, align 8
  %36 = call i64 @VPCEXT2(i32* %35, i32 13)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = load i32*, i32** %7, align 8
  %40 = call i64 @VPCEXT2(i32* %39, i32 16)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %67

42:                                               ; preds = %38, %34, %30, %26, %22
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @R_ASM_SYNTAX_ATT, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %42
  %49 = load i32*, i32** %7, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 3
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %7, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 2
  %54 = load i32, i32* %53, align 4
  %55 = call i8* @sdb_fmt(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %51, i32 %54)
  store i8* %55, i8** %9, align 8
  br label %64

56:                                               ; preds = %42
  %57 = load i32*, i32** %7, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 2
  %59 = load i32, i32* %58, align 4
  %60 = load i32*, i32** %7, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 3
  %62 = load i32, i32* %61, align 4
  %63 = call i8* @sdb_fmt(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %59, i32 %62)
  store i8* %63, i8** %9, align 8
  br label %64

64:                                               ; preds = %56, %48
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  store i32 4, i32* %66, align 4
  br label %611

67:                                               ; preds = %38, %17, %12, %4
  %68 = load i32, i32* %8, align 4
  %69 = icmp sgt i32 %68, 4
  br i1 %69, label %70, label %98

70:                                               ; preds = %67
  %71 = load i32*, i32** %7, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp eq i32 %73, 15
  br i1 %74, label %75, label %98

75:                                               ; preds = %70
  %76 = load i32*, i32** %7, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 1
  %78 = load i32, i32* %77, align 4
  %79 = icmp eq i32 %78, 198
  br i1 %79, label %80, label %98

80:                                               ; preds = %75
  %81 = load i32*, i32** %7, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 2
  %83 = load i32, i32* %82, align 4
  %84 = icmp eq i32 %83, 40
  br i1 %84, label %85, label %98

85:                                               ; preds = %80
  %86 = load i32*, i32** %7, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 3
  %88 = load i32, i32* %87, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %85
  %91 = load i32*, i32** %7, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 4
  %93 = load i32, i32* %92, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %90
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8** %9, align 8
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  store i32 5, i32* %97, align 4
  br label %610

98:                                               ; preds = %90, %85, %80, %75, %70, %67
  %99 = load i32, i32* %8, align 4
  %100 = icmp sgt i32 %99, 4
  br i1 %100, label %101, label %129

101:                                              ; preds = %98
  %102 = load i32*, i32** %7, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 0
  %104 = load i32, i32* %103, align 4
  %105 = icmp eq i32 %104, 15
  br i1 %105, label %106, label %129

106:                                              ; preds = %101
  %107 = load i32*, i32** %7, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 1
  %109 = load i32, i32* %108, align 4
  %110 = icmp eq i32 %109, 198
  br i1 %110, label %111, label %129

111:                                              ; preds = %106
  %112 = load i32*, i32** %7, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 2
  %114 = load i32, i32* %113, align 4
  %115 = icmp eq i32 %114, 40
  br i1 %115, label %116, label %129

116:                                              ; preds = %111
  %117 = load i32*, i32** %7, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 3
  %119 = load i32, i32* %118, align 4
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %129

121:                                              ; preds = %116
  %122 = load i32*, i32** %7, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 4
  %124 = load i32, i32* %123, align 4
  %125 = icmp eq i32 %124, 1
  br i1 %125, label %126, label %129

126:                                              ; preds = %121
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8** %9, align 8
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  store i32 5, i32* %128, align 4
  br label %609

129:                                              ; preds = %121, %116, %111, %106, %101, %98
  %130 = load i32, i32* %8, align 4
  %131 = icmp sgt i32 %130, 4
  br i1 %131, label %132, label %160

132:                                              ; preds = %129
  %133 = load i32*, i32** %7, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 0
  %135 = load i32, i32* %134, align 4
  %136 = icmp eq i32 %135, 15
  br i1 %136, label %137, label %160

137:                                              ; preds = %132
  %138 = load i32*, i32** %7, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 1
  %140 = load i32, i32* %139, align 4
  %141 = icmp eq i32 %140, 198
  br i1 %141, label %142, label %160

142:                                              ; preds = %137
  %143 = load i32*, i32** %7, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 2
  %145 = load i32, i32* %144, align 4
  %146 = icmp eq i32 %145, 40
  br i1 %146, label %147, label %160

147:                                              ; preds = %142
  %148 = load i32*, i32** %7, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 3
  %150 = load i32, i32* %149, align 4
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %160

152:                                              ; preds = %147
  %153 = load i32*, i32** %7, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 4
  %155 = load i32, i32* %154, align 4
  %156 = icmp eq i32 %155, 2
  br i1 %156, label %157, label %160

157:                                              ; preds = %152
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8** %9, align 8
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 0
  store i32 5, i32* %159, align 4
  br label %608

160:                                              ; preds = %152, %147, %142, %137, %132, %129
  %161 = load i32, i32* %8, align 4
  %162 = icmp sgt i32 %161, 4
  br i1 %162, label %163, label %191

163:                                              ; preds = %160
  %164 = load i32*, i32** %7, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 0
  %166 = load i32, i32* %165, align 4
  %167 = icmp eq i32 %166, 15
  br i1 %167, label %168, label %191

168:                                              ; preds = %163
  %169 = load i32*, i32** %7, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 1
  %171 = load i32, i32* %170, align 4
  %172 = icmp eq i32 %171, 198
  br i1 %172, label %173, label %191

173:                                              ; preds = %168
  %174 = load i32*, i32** %7, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 2
  %176 = load i32, i32* %175, align 4
  %177 = icmp eq i32 %176, 40
  br i1 %177, label %178, label %191

178:                                              ; preds = %173
  %179 = load i32*, i32** %7, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 3
  %181 = load i32, i32* %180, align 4
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %191

183:                                              ; preds = %178
  %184 = load i32*, i32** %7, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 4
  %186 = load i32, i32* %185, align 4
  %187 = icmp eq i32 %186, 3
  br i1 %187, label %188, label %191

188:                                              ; preds = %183
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8** %9, align 8
  %189 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 0
  store i32 5, i32* %190, align 4
  br label %607

191:                                              ; preds = %183, %178, %173, %168, %163, %160
  %192 = load i32, i32* %8, align 4
  %193 = icmp sgt i32 %192, 4
  br i1 %193, label %194, label %222

194:                                              ; preds = %191
  %195 = load i32*, i32** %7, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 0
  %197 = load i32, i32* %196, align 4
  %198 = icmp eq i32 %197, 15
  br i1 %198, label %199, label %222

199:                                              ; preds = %194
  %200 = load i32*, i32** %7, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 1
  %202 = load i32, i32* %201, align 4
  %203 = icmp eq i32 %202, 198
  br i1 %203, label %204, label %222

204:                                              ; preds = %199
  %205 = load i32*, i32** %7, align 8
  %206 = getelementptr inbounds i32, i32* %205, i64 2
  %207 = load i32, i32* %206, align 4
  %208 = icmp eq i32 %207, 40
  br i1 %208, label %209, label %222

209:                                              ; preds = %204
  %210 = load i32*, i32** %7, align 8
  %211 = getelementptr inbounds i32, i32* %210, i64 3
  %212 = load i32, i32* %211, align 4
  %213 = icmp eq i32 %212, 1
  br i1 %213, label %214, label %222

214:                                              ; preds = %209
  %215 = load i32*, i32** %7, align 8
  %216 = getelementptr inbounds i32, i32* %215, i64 4
  %217 = load i32, i32* %216, align 4
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %219, label %222

219:                                              ; preds = %214
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8** %9, align 8
  %220 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %221 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %220, i32 0, i32 0
  store i32 5, i32* %221, align 4
  br label %606

222:                                              ; preds = %214, %209, %204, %199, %194, %191
  %223 = load i32, i32* %8, align 4
  %224 = icmp sgt i32 %223, 4
  br i1 %224, label %225, label %253

225:                                              ; preds = %222
  %226 = load i32*, i32** %7, align 8
  %227 = getelementptr inbounds i32, i32* %226, i64 0
  %228 = load i32, i32* %227, align 4
  %229 = icmp eq i32 %228, 15
  br i1 %229, label %230, label %253

230:                                              ; preds = %225
  %231 = load i32*, i32** %7, align 8
  %232 = getelementptr inbounds i32, i32* %231, i64 1
  %233 = load i32, i32* %232, align 4
  %234 = icmp eq i32 %233, 198
  br i1 %234, label %235, label %253

235:                                              ; preds = %230
  %236 = load i32*, i32** %7, align 8
  %237 = getelementptr inbounds i32, i32* %236, i64 2
  %238 = load i32, i32* %237, align 4
  %239 = icmp eq i32 %238, 40
  br i1 %239, label %240, label %253

240:                                              ; preds = %235
  %241 = load i32*, i32** %7, align 8
  %242 = getelementptr inbounds i32, i32* %241, i64 3
  %243 = load i32, i32* %242, align 4
  %244 = icmp eq i32 %243, 1
  br i1 %244, label %245, label %253

245:                                              ; preds = %240
  %246 = load i32*, i32** %7, align 8
  %247 = getelementptr inbounds i32, i32* %246, i64 4
  %248 = load i32, i32* %247, align 4
  %249 = icmp eq i32 %248, 1
  br i1 %249, label %250, label %253

250:                                              ; preds = %245
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8** %9, align 8
  %251 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %252 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %251, i32 0, i32 0
  store i32 5, i32* %252, align 4
  br label %605

253:                                              ; preds = %245, %240, %235, %230, %225, %222
  %254 = load i32, i32* %8, align 4
  %255 = icmp sgt i32 %254, 4
  br i1 %255, label %256, label %284

256:                                              ; preds = %253
  %257 = load i32*, i32** %7, align 8
  %258 = getelementptr inbounds i32, i32* %257, i64 0
  %259 = load i32, i32* %258, align 4
  %260 = icmp eq i32 %259, 15
  br i1 %260, label %261, label %284

261:                                              ; preds = %256
  %262 = load i32*, i32** %7, align 8
  %263 = getelementptr inbounds i32, i32* %262, i64 1
  %264 = load i32, i32* %263, align 4
  %265 = icmp eq i32 %264, 198
  br i1 %265, label %266, label %284

266:                                              ; preds = %261
  %267 = load i32*, i32** %7, align 8
  %268 = getelementptr inbounds i32, i32* %267, i64 2
  %269 = load i32, i32* %268, align 4
  %270 = icmp eq i32 %269, 40
  br i1 %270, label %271, label %284

271:                                              ; preds = %266
  %272 = load i32*, i32** %7, align 8
  %273 = getelementptr inbounds i32, i32* %272, i64 3
  %274 = load i32, i32* %273, align 4
  %275 = icmp eq i32 %274, 1
  br i1 %275, label %276, label %284

276:                                              ; preds = %271
  %277 = load i32*, i32** %7, align 8
  %278 = getelementptr inbounds i32, i32* %277, i64 4
  %279 = load i32, i32* %278, align 4
  %280 = icmp eq i32 %279, 2
  br i1 %280, label %281, label %284

281:                                              ; preds = %276
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8** %9, align 8
  %282 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %283 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %282, i32 0, i32 0
  store i32 5, i32* %283, align 4
  br label %604

284:                                              ; preds = %276, %271, %266, %261, %256, %253
  %285 = load i32, i32* %8, align 4
  %286 = icmp sgt i32 %285, 4
  br i1 %286, label %287, label %315

287:                                              ; preds = %284
  %288 = load i32*, i32** %7, align 8
  %289 = getelementptr inbounds i32, i32* %288, i64 0
  %290 = load i32, i32* %289, align 4
  %291 = icmp eq i32 %290, 15
  br i1 %291, label %292, label %315

292:                                              ; preds = %287
  %293 = load i32*, i32** %7, align 8
  %294 = getelementptr inbounds i32, i32* %293, i64 1
  %295 = load i32, i32* %294, align 4
  %296 = icmp eq i32 %295, 198
  br i1 %296, label %297, label %315

297:                                              ; preds = %292
  %298 = load i32*, i32** %7, align 8
  %299 = getelementptr inbounds i32, i32* %298, i64 2
  %300 = load i32, i32* %299, align 4
  %301 = icmp eq i32 %300, 40
  br i1 %301, label %302, label %315

302:                                              ; preds = %297
  %303 = load i32*, i32** %7, align 8
  %304 = getelementptr inbounds i32, i32* %303, i64 3
  %305 = load i32, i32* %304, align 4
  %306 = icmp eq i32 %305, 2
  br i1 %306, label %307, label %315

307:                                              ; preds = %302
  %308 = load i32*, i32** %7, align 8
  %309 = getelementptr inbounds i32, i32* %308, i64 4
  %310 = load i32, i32* %309, align 4
  %311 = icmp eq i32 %310, 0
  br i1 %311, label %312, label %315

312:                                              ; preds = %307
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i8** %9, align 8
  %313 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %314 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %313, i32 0, i32 0
  store i32 5, i32* %314, align 4
  br label %603

315:                                              ; preds = %307, %302, %297, %292, %287, %284
  %316 = load i32, i32* %8, align 4
  %317 = icmp sgt i32 %316, 4
  br i1 %317, label %318, label %346

318:                                              ; preds = %315
  %319 = load i32*, i32** %7, align 8
  %320 = getelementptr inbounds i32, i32* %319, i64 0
  %321 = load i32, i32* %320, align 4
  %322 = icmp eq i32 %321, 15
  br i1 %322, label %323, label %346

323:                                              ; preds = %318
  %324 = load i32*, i32** %7, align 8
  %325 = getelementptr inbounds i32, i32* %324, i64 1
  %326 = load i32, i32* %325, align 4
  %327 = icmp eq i32 %326, 198
  br i1 %327, label %328, label %346

328:                                              ; preds = %323
  %329 = load i32*, i32** %7, align 8
  %330 = getelementptr inbounds i32, i32* %329, i64 2
  %331 = load i32, i32* %330, align 4
  %332 = icmp eq i32 %331, 40
  br i1 %332, label %333, label %346

333:                                              ; preds = %328
  %334 = load i32*, i32** %7, align 8
  %335 = getelementptr inbounds i32, i32* %334, i64 3
  %336 = load i32, i32* %335, align 4
  %337 = icmp eq i32 %336, 2
  br i1 %337, label %338, label %346

338:                                              ; preds = %333
  %339 = load i32*, i32** %7, align 8
  %340 = getelementptr inbounds i32, i32* %339, i64 4
  %341 = load i32, i32* %340, align 4
  %342 = icmp eq i32 %341, 1
  br i1 %342, label %343, label %346

343:                                              ; preds = %338
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i8** %9, align 8
  %344 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %345 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %344, i32 0, i32 0
  store i32 5, i32* %345, align 4
  br label %602

346:                                              ; preds = %338, %333, %328, %323, %318, %315
  %347 = load i32, i32* %8, align 4
  %348 = icmp sgt i32 %347, 4
  br i1 %348, label %349, label %377

349:                                              ; preds = %346
  %350 = load i32*, i32** %7, align 8
  %351 = getelementptr inbounds i32, i32* %350, i64 0
  %352 = load i32, i32* %351, align 4
  %353 = icmp eq i32 %352, 15
  br i1 %353, label %354, label %377

354:                                              ; preds = %349
  %355 = load i32*, i32** %7, align 8
  %356 = getelementptr inbounds i32, i32* %355, i64 1
  %357 = load i32, i32* %356, align 4
  %358 = icmp eq i32 %357, 198
  br i1 %358, label %359, label %377

359:                                              ; preds = %354
  %360 = load i32*, i32** %7, align 8
  %361 = getelementptr inbounds i32, i32* %360, i64 2
  %362 = load i32, i32* %361, align 4
  %363 = icmp eq i32 %362, 40
  br i1 %363, label %364, label %377

364:                                              ; preds = %359
  %365 = load i32*, i32** %7, align 8
  %366 = getelementptr inbounds i32, i32* %365, i64 3
  %367 = load i32, i32* %366, align 4
  %368 = icmp eq i32 %367, 2
  br i1 %368, label %369, label %377

369:                                              ; preds = %364
  %370 = load i32*, i32** %7, align 8
  %371 = getelementptr inbounds i32, i32* %370, i64 4
  %372 = load i32, i32* %371, align 4
  %373 = icmp eq i32 %372, 2
  br i1 %373, label %374, label %377

374:                                              ; preds = %369
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8** %9, align 8
  %375 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %376 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %375, i32 0, i32 0
  store i32 5, i32* %376, align 4
  br label %601

377:                                              ; preds = %369, %364, %359, %354, %349, %346
  %378 = load i32, i32* %8, align 4
  %379 = icmp sgt i32 %378, 4
  br i1 %379, label %380, label %408

380:                                              ; preds = %377
  %381 = load i32*, i32** %7, align 8
  %382 = getelementptr inbounds i32, i32* %381, i64 0
  %383 = load i32, i32* %382, align 4
  %384 = icmp eq i32 %383, 15
  br i1 %384, label %385, label %408

385:                                              ; preds = %380
  %386 = load i32*, i32** %7, align 8
  %387 = getelementptr inbounds i32, i32* %386, i64 1
  %388 = load i32, i32* %387, align 4
  %389 = icmp eq i32 %388, 198
  br i1 %389, label %390, label %408

390:                                              ; preds = %385
  %391 = load i32*, i32** %7, align 8
  %392 = getelementptr inbounds i32, i32* %391, i64 2
  %393 = load i32, i32* %392, align 4
  %394 = icmp eq i32 %393, 40
  br i1 %394, label %395, label %408

395:                                              ; preds = %390
  %396 = load i32*, i32** %7, align 8
  %397 = getelementptr inbounds i32, i32* %396, i64 3
  %398 = load i32, i32* %397, align 4
  %399 = icmp eq i32 %398, 2
  br i1 %399, label %400, label %408

400:                                              ; preds = %395
  %401 = load i32*, i32** %7, align 8
  %402 = getelementptr inbounds i32, i32* %401, i64 4
  %403 = load i32, i32* %402, align 4
  %404 = icmp eq i32 %403, 3
  br i1 %404, label %405, label %408

405:                                              ; preds = %400
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i8** %9, align 8
  %406 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %407 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %406, i32 0, i32 0
  store i32 5, i32* %407, align 4
  br label %600

408:                                              ; preds = %400, %395, %390, %385, %380, %377
  %409 = load i32, i32* %8, align 4
  %410 = icmp sgt i32 %409, 4
  br i1 %410, label %411, label %439

411:                                              ; preds = %408
  %412 = load i32*, i32** %7, align 8
  %413 = getelementptr inbounds i32, i32* %412, i64 0
  %414 = load i32, i32* %413, align 4
  %415 = icmp eq i32 %414, 15
  br i1 %415, label %416, label %439

416:                                              ; preds = %411
  %417 = load i32*, i32** %7, align 8
  %418 = getelementptr inbounds i32, i32* %417, i64 1
  %419 = load i32, i32* %418, align 4
  %420 = icmp eq i32 %419, 198
  br i1 %420, label %421, label %439

421:                                              ; preds = %416
  %422 = load i32*, i32** %7, align 8
  %423 = getelementptr inbounds i32, i32* %422, i64 2
  %424 = load i32, i32* %423, align 4
  %425 = icmp eq i32 %424, 40
  br i1 %425, label %426, label %439

426:                                              ; preds = %421
  %427 = load i32*, i32** %7, align 8
  %428 = getelementptr inbounds i32, i32* %427, i64 3
  %429 = load i32, i32* %428, align 4
  %430 = icmp eq i32 %429, 2
  br i1 %430, label %431, label %439

431:                                              ; preds = %426
  %432 = load i32*, i32** %7, align 8
  %433 = getelementptr inbounds i32, i32* %432, i64 4
  %434 = load i32, i32* %433, align 4
  %435 = icmp eq i32 %434, 4
  br i1 %435, label %436, label %439

436:                                              ; preds = %431
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i8** %9, align 8
  %437 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %438 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %437, i32 0, i32 0
  store i32 5, i32* %438, align 4
  br label %599

439:                                              ; preds = %431, %426, %421, %416, %411, %408
  %440 = load i32, i32* %8, align 4
  %441 = icmp sgt i32 %440, 4
  br i1 %441, label %442, label %470

442:                                              ; preds = %439
  %443 = load i32*, i32** %7, align 8
  %444 = getelementptr inbounds i32, i32* %443, i64 0
  %445 = load i32, i32* %444, align 4
  %446 = icmp eq i32 %445, 15
  br i1 %446, label %447, label %470

447:                                              ; preds = %442
  %448 = load i32*, i32** %7, align 8
  %449 = getelementptr inbounds i32, i32* %448, i64 1
  %450 = load i32, i32* %449, align 4
  %451 = icmp eq i32 %450, 198
  br i1 %451, label %452, label %470

452:                                              ; preds = %447
  %453 = load i32*, i32** %7, align 8
  %454 = getelementptr inbounds i32, i32* %453, i64 2
  %455 = load i32, i32* %454, align 4
  %456 = icmp eq i32 %455, 40
  br i1 %456, label %457, label %470

457:                                              ; preds = %452
  %458 = load i32*, i32** %7, align 8
  %459 = getelementptr inbounds i32, i32* %458, i64 3
  %460 = load i32, i32* %459, align 4
  %461 = icmp eq i32 %460, 3
  br i1 %461, label %462, label %470

462:                                              ; preds = %457
  %463 = load i32*, i32** %7, align 8
  %464 = getelementptr inbounds i32, i32* %463, i64 4
  %465 = load i32, i32* %464, align 4
  %466 = icmp eq i32 %465, 0
  br i1 %466, label %467, label %470

467:                                              ; preds = %462
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i8** %9, align 8
  %468 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %469 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %468, i32 0, i32 0
  store i32 5, i32* %469, align 4
  br label %598

470:                                              ; preds = %462, %457, %452, %447, %442, %439
  %471 = load i32, i32* %8, align 4
  %472 = icmp sgt i32 %471, 4
  br i1 %472, label %473, label %501

473:                                              ; preds = %470
  %474 = load i32*, i32** %7, align 8
  %475 = getelementptr inbounds i32, i32* %474, i64 0
  %476 = load i32, i32* %475, align 4
  %477 = icmp eq i32 %476, 15
  br i1 %477, label %478, label %501

478:                                              ; preds = %473
  %479 = load i32*, i32** %7, align 8
  %480 = getelementptr inbounds i32, i32* %479, i64 1
  %481 = load i32, i32* %480, align 4
  %482 = icmp eq i32 %481, 198
  br i1 %482, label %483, label %501

483:                                              ; preds = %478
  %484 = load i32*, i32** %7, align 8
  %485 = getelementptr inbounds i32, i32* %484, i64 2
  %486 = load i32, i32* %485, align 4
  %487 = icmp eq i32 %486, 40
  br i1 %487, label %488, label %501

488:                                              ; preds = %483
  %489 = load i32*, i32** %7, align 8
  %490 = getelementptr inbounds i32, i32* %489, i64 3
  %491 = load i32, i32* %490, align 4
  %492 = icmp eq i32 %491, 3
  br i1 %492, label %493, label %501

493:                                              ; preds = %488
  %494 = load i32*, i32** %7, align 8
  %495 = getelementptr inbounds i32, i32* %494, i64 4
  %496 = load i32, i32* %495, align 4
  %497 = icmp eq i32 %496, 1
  br i1 %497, label %498, label %501

498:                                              ; preds = %493
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0), i8** %9, align 8
  %499 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %500 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %499, i32 0, i32 0
  store i32 5, i32* %500, align 4
  br label %597

501:                                              ; preds = %493, %488, %483, %478, %473, %470
  %502 = load i32, i32* %8, align 4
  %503 = icmp sgt i32 %502, 4
  br i1 %503, label %504, label %532

504:                                              ; preds = %501
  %505 = load i32*, i32** %7, align 8
  %506 = getelementptr inbounds i32, i32* %505, i64 0
  %507 = load i32, i32* %506, align 4
  %508 = icmp eq i32 %507, 15
  br i1 %508, label %509, label %532

509:                                              ; preds = %504
  %510 = load i32*, i32** %7, align 8
  %511 = getelementptr inbounds i32, i32* %510, i64 1
  %512 = load i32, i32* %511, align 4
  %513 = icmp eq i32 %512, 198
  br i1 %513, label %514, label %532

514:                                              ; preds = %509
  %515 = load i32*, i32** %7, align 8
  %516 = getelementptr inbounds i32, i32* %515, i64 2
  %517 = load i32, i32* %516, align 4
  %518 = icmp eq i32 %517, 40
  br i1 %518, label %519, label %532

519:                                              ; preds = %514
  %520 = load i32*, i32** %7, align 8
  %521 = getelementptr inbounds i32, i32* %520, i64 3
  %522 = load i32, i32* %521, align 4
  %523 = icmp eq i32 %522, 3
  br i1 %523, label %524, label %532

524:                                              ; preds = %519
  %525 = load i32*, i32** %7, align 8
  %526 = getelementptr inbounds i32, i32* %525, i64 4
  %527 = load i32, i32* %526, align 4
  %528 = icmp eq i32 %527, 2
  br i1 %528, label %529, label %532

529:                                              ; preds = %524
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0), i8** %9, align 8
  %530 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %531 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %530, i32 0, i32 0
  store i32 5, i32* %531, align 4
  br label %596

532:                                              ; preds = %524, %519, %514, %509, %504, %501
  %533 = load i32, i32* %8, align 4
  %534 = icmp sgt i32 %533, 4
  br i1 %534, label %535, label %563

535:                                              ; preds = %532
  %536 = load i32*, i32** %7, align 8
  %537 = getelementptr inbounds i32, i32* %536, i64 0
  %538 = load i32, i32* %537, align 4
  %539 = icmp eq i32 %538, 15
  br i1 %539, label %540, label %563

540:                                              ; preds = %535
  %541 = load i32*, i32** %7, align 8
  %542 = getelementptr inbounds i32, i32* %541, i64 1
  %543 = load i32, i32* %542, align 4
  %544 = icmp eq i32 %543, 198
  br i1 %544, label %545, label %563

545:                                              ; preds = %540
  %546 = load i32*, i32** %7, align 8
  %547 = getelementptr inbounds i32, i32* %546, i64 2
  %548 = load i32, i32* %547, align 4
  %549 = icmp eq i32 %548, 40
  br i1 %549, label %550, label %563

550:                                              ; preds = %545
  %551 = load i32*, i32** %7, align 8
  %552 = getelementptr inbounds i32, i32* %551, i64 3
  %553 = load i32, i32* %552, align 4
  %554 = icmp eq i32 %553, 3
  br i1 %554, label %555, label %563

555:                                              ; preds = %550
  %556 = load i32*, i32** %7, align 8
  %557 = getelementptr inbounds i32, i32* %556, i64 4
  %558 = load i32, i32* %557, align 4
  %559 = icmp eq i32 %558, 3
  br i1 %559, label %560, label %563

560:                                              ; preds = %555
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0), i8** %9, align 8
  %561 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %562 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %561, i32 0, i32 0
  store i32 5, i32* %562, align 4
  br label %595

563:                                              ; preds = %555, %550, %545, %540, %535, %532
  %564 = load i32, i32* %8, align 4
  %565 = icmp sgt i32 %564, 4
  br i1 %565, label %566, label %594

566:                                              ; preds = %563
  %567 = load i32*, i32** %7, align 8
  %568 = getelementptr inbounds i32, i32* %567, i64 0
  %569 = load i32, i32* %568, align 4
  %570 = icmp eq i32 %569, 15
  br i1 %570, label %571, label %594

571:                                              ; preds = %566
  %572 = load i32*, i32** %7, align 8
  %573 = getelementptr inbounds i32, i32* %572, i64 1
  %574 = load i32, i32* %573, align 4
  %575 = icmp eq i32 %574, 198
  br i1 %575, label %576, label %594

576:                                              ; preds = %571
  %577 = load i32*, i32** %7, align 8
  %578 = getelementptr inbounds i32, i32* %577, i64 2
  %579 = load i32, i32* %578, align 4
  %580 = icmp eq i32 %579, 40
  br i1 %580, label %581, label %594

581:                                              ; preds = %576
  %582 = load i32*, i32** %7, align 8
  %583 = getelementptr inbounds i32, i32* %582, i64 3
  %584 = load i32, i32* %583, align 4
  %585 = icmp eq i32 %584, 4
  br i1 %585, label %586, label %594

586:                                              ; preds = %581
  %587 = load i32*, i32** %7, align 8
  %588 = getelementptr inbounds i32, i32* %587, i64 4
  %589 = load i32, i32* %588, align 4
  %590 = icmp eq i32 %589, 0
  br i1 %590, label %591, label %594

591:                                              ; preds = %586
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0), i8** %9, align 8
  %592 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %593 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %592, i32 0, i32 0
  store i32 5, i32* %593, align 4
  br label %594

594:                                              ; preds = %591, %586, %581, %576, %571, %566, %563
  br label %595

595:                                              ; preds = %594, %560
  br label %596

596:                                              ; preds = %595, %529
  br label %597

597:                                              ; preds = %596, %498
  br label %598

598:                                              ; preds = %597, %467
  br label %599

599:                                              ; preds = %598, %436
  br label %600

600:                                              ; preds = %599, %405
  br label %601

601:                                              ; preds = %600, %374
  br label %602

602:                                              ; preds = %601, %343
  br label %603

603:                                              ; preds = %602, %312
  br label %604

604:                                              ; preds = %603, %281
  br label %605

605:                                              ; preds = %604, %250
  br label %606

606:                                              ; preds = %605, %219
  br label %607

607:                                              ; preds = %606, %188
  br label %608

608:                                              ; preds = %607, %157
  br label %609

609:                                              ; preds = %608, %126
  br label %610

610:                                              ; preds = %609, %95
  br label %611

611:                                              ; preds = %610, %64
  %612 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %613 = load i8*, i8** %9, align 8
  %614 = call i32 @r_asm_op_set_asm(%struct.TYPE_6__* %612, i8* %613)
  ret void
}

declare dso_local i64 @VPCEXT2(i32*, i32) #1

declare dso_local i8* @sdb_fmt(i8*, i32, i32) #1

declare dso_local i32 @r_asm_op_set_asm(%struct.TYPE_6__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
