; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/jit/libudis86/extr_decode.c_decode_operand.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/jit/libudis86/extr_decode.c_decode_operand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ud = type { i32, i32, i32 }
%struct.ud_operand = type { i32, i32, i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@UD_NONE = common dso_local global i8* null, align 8
@REGCLASS_GPR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"expected modrm.mod != 3\0A\00", align 1
@UD_OP_CONST = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"expected modrm.mod == 3\0A\00", align 1
@REGCLASS_MMX = common dso_local global i32 0, align 4
@REGCLASS_XMM = common dso_local global i32 0, align 4
@REGCLASS_SEG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"invalid segment register in 64bits\0A\00", align 1
@UD_OP_REG = common dso_local global i8* null, align 8
@UD_R_ES = common dso_local global i64 0, align 8
@UD_OP_JIMM = common dso_local global i32 0, align 4
@REGCLASS_CR = common dso_local global i32 0, align 4
@REGCLASS_DB = common dso_local global i32 0, align 4
@UD_R_ST0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ud*, %struct.ud_operand*, i32, i32)* @decode_operand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_operand(%struct.ud* %0, %struct.ud_operand* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ud*, align 8
  %6 = alloca %struct.ud_operand*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ud* %0, %struct.ud** %5, align 8
  store %struct.ud_operand* %1, %struct.ud_operand** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i8*, i8** @UD_NONE, align 8
  %10 = ptrtoint i8* %9 to i32
  %11 = load %struct.ud_operand*, %struct.ud_operand** %6, align 8
  %12 = getelementptr inbounds %struct.ud_operand, %struct.ud_operand* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.ud_operand*, %struct.ud_operand** %6, align 8
  %15 = getelementptr inbounds %struct.ud_operand, %struct.ud_operand* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* %7, align 4
  switch i32 %16, label %272 [
    i32 184, label %17
    i32 160, label %21
    i32 171, label %38
    i32 161, label %41
    i32 173, label %50
    i32 169, label %56
    i32 128, label %62
    i32 166, label %62
    i32 165, label %67
    i32 158, label %75
    i32 155, label %84
    i32 156, label %90
    i32 135, label %96
    i32 133, label %105
    i32 134, label %111
    i32 167, label %117
    i32 159, label %122
    i32 145, label %139
    i32 157, label %145
    i32 153, label %150
    i32 152, label %150
    i32 151, label %150
    i32 150, label %150
    i32 149, label %150
    i32 148, label %150
    i32 147, label %150
    i32 146, label %150
    i32 183, label %164
    i32 182, label %164
    i32 132, label %164
    i32 129, label %164
    i32 180, label %170
    i32 178, label %170
    i32 131, label %170
    i32 176, label %176
    i32 174, label %176
    i32 130, label %176
    i32 172, label %182
    i32 179, label %182
    i32 175, label %182
    i32 144, label %182
    i32 170, label %182
    i32 168, label %182
    i32 163, label %211
    i32 154, label %219
    i32 181, label %233
    i32 177, label %239
    i32 164, label %245
    i32 143, label %253
    i32 142, label %253
    i32 141, label %253
    i32 140, label %253
    i32 139, label %253
    i32 138, label %253
    i32 137, label %253
    i32 136, label %253
    i32 162, label %267
  ]

17:                                               ; preds = %4
  %18 = load %struct.ud*, %struct.ud** %5, align 8
  %19 = load %struct.ud_operand*, %struct.ud_operand** %6, align 8
  %20 = call i32 @decode_a(%struct.ud* %18, %struct.ud_operand* %19)
  br label %277

21:                                               ; preds = %4
  %22 = load %struct.ud*, %struct.ud** %5, align 8
  %23 = load %struct.ud_operand*, %struct.ud_operand** %6, align 8
  %24 = load i32, i32* @REGCLASS_GPR, align 4
  %25 = load %struct.ud*, %struct.ud** %5, align 8
  %26 = call i32 @modrm(%struct.ud* %25)
  %27 = call i32 @MODRM_MOD(i32 %26)
  %28 = icmp eq i32 %27, 3
  br i1 %28, label %29, label %32

29:                                               ; preds = %21
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @Mx_reg_size(i32 %30)
  br label %35

32:                                               ; preds = %21
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @Mx_mem_size(i32 %33)
  br label %35

35:                                               ; preds = %32, %29
  %36 = phi i32 [ %31, %29 ], [ %34, %32 ]
  %37 = call i32 @decode_modrm_rm(%struct.ud* %22, %struct.ud_operand* %23, i32 %24, i32 %36)
  br label %277

38:                                               ; preds = %4
  %39 = load %struct.ud*, %struct.ud** %5, align 8
  %40 = getelementptr inbounds %struct.ud, %struct.ud* %39, i32 0, i32 0
  store i32 1, i32* %40, align 4
  br label %41

41:                                               ; preds = %4, %38
  %42 = load %struct.ud*, %struct.ud** %5, align 8
  %43 = call i32 @modrm(%struct.ud* %42)
  %44 = call i32 @MODRM_MOD(i32 %43)
  %45 = icmp eq i32 %44, 3
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load %struct.ud*, %struct.ud** %5, align 8
  %48 = call i32 @UDERR(%struct.ud* %47, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %49

49:                                               ; preds = %46, %41
  br label %50

50:                                               ; preds = %4, %49
  %51 = load %struct.ud*, %struct.ud** %5, align 8
  %52 = load %struct.ud_operand*, %struct.ud_operand** %6, align 8
  %53 = load i32, i32* @REGCLASS_GPR, align 4
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @decode_modrm_rm(%struct.ud* %51, %struct.ud_operand* %52, i32 %53, i32 %54)
  br label %277

56:                                               ; preds = %4
  %57 = load %struct.ud*, %struct.ud** %5, align 8
  %58 = load %struct.ud_operand*, %struct.ud_operand** %6, align 8
  %59 = load i32, i32* @REGCLASS_GPR, align 4
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @decode_modrm_reg(%struct.ud* %57, %struct.ud_operand* %58, i32 %59, i32 %60)
  br label %277

62:                                               ; preds = %4, %4
  %63 = load %struct.ud*, %struct.ud** %5, align 8
  %64 = load i32, i32* %8, align 4
  %65 = load %struct.ud_operand*, %struct.ud_operand** %6, align 8
  %66 = call i32 @decode_imm(%struct.ud* %63, i32 %64, %struct.ud_operand* %65)
  br label %277

67:                                               ; preds = %4
  %68 = load i8*, i8** @UD_OP_CONST, align 8
  %69 = ptrtoint i8* %68 to i32
  %70 = load %struct.ud_operand*, %struct.ud_operand** %6, align 8
  %71 = getelementptr inbounds %struct.ud_operand, %struct.ud_operand* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load %struct.ud_operand*, %struct.ud_operand** %6, align 8
  %73 = getelementptr inbounds %struct.ud_operand, %struct.ud_operand* %72, i32 0, i32 4
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  store i32 1, i32* %74, align 8
  br label %277

75:                                               ; preds = %4
  %76 = load %struct.ud*, %struct.ud** %5, align 8
  %77 = call i32 @modrm(%struct.ud* %76)
  %78 = call i32 @MODRM_MOD(i32 %77)
  %79 = icmp ne i32 %78, 3
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  %81 = load %struct.ud*, %struct.ud** %5, align 8
  %82 = call i32 @UDERR(%struct.ud* %81, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %83

83:                                               ; preds = %80, %75
  br label %84

84:                                               ; preds = %4, %83
  %85 = load %struct.ud*, %struct.ud** %5, align 8
  %86 = load %struct.ud_operand*, %struct.ud_operand** %6, align 8
  %87 = load i32, i32* @REGCLASS_MMX, align 4
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @decode_modrm_rm(%struct.ud* %85, %struct.ud_operand* %86, i32 %87, i32 %88)
  br label %277

90:                                               ; preds = %4
  %91 = load %struct.ud*, %struct.ud** %5, align 8
  %92 = load %struct.ud_operand*, %struct.ud_operand** %6, align 8
  %93 = load i32, i32* @REGCLASS_MMX, align 4
  %94 = load i32, i32* %8, align 4
  %95 = call i32 @decode_modrm_reg(%struct.ud* %91, %struct.ud_operand* %92, i32 %93, i32 %94)
  br label %277

96:                                               ; preds = %4
  %97 = load %struct.ud*, %struct.ud** %5, align 8
  %98 = call i32 @modrm(%struct.ud* %97)
  %99 = call i32 @MODRM_MOD(i32 %98)
  %100 = icmp ne i32 %99, 3
  br i1 %100, label %101, label %104

101:                                              ; preds = %96
  %102 = load %struct.ud*, %struct.ud** %5, align 8
  %103 = call i32 @UDERR(%struct.ud* %102, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %104

104:                                              ; preds = %101, %96
  br label %105

105:                                              ; preds = %4, %104
  %106 = load %struct.ud*, %struct.ud** %5, align 8
  %107 = load %struct.ud_operand*, %struct.ud_operand** %6, align 8
  %108 = load i32, i32* @REGCLASS_XMM, align 4
  %109 = load i32, i32* %8, align 4
  %110 = call i32 @decode_modrm_rm(%struct.ud* %106, %struct.ud_operand* %107, i32 %108, i32 %109)
  br label %277

111:                                              ; preds = %4
  %112 = load %struct.ud*, %struct.ud** %5, align 8
  %113 = load %struct.ud_operand*, %struct.ud_operand** %6, align 8
  %114 = load i32, i32* @REGCLASS_XMM, align 4
  %115 = load i32, i32* %8, align 4
  %116 = call i32 @decode_modrm_reg(%struct.ud* %112, %struct.ud_operand* %113, i32 %114, i32 %115)
  br label %277

117:                                              ; preds = %4
  %118 = load %struct.ud*, %struct.ud** %5, align 8
  %119 = load %struct.ud_operand*, %struct.ud_operand** %6, align 8
  %120 = load i32, i32* %8, align 4
  %121 = call i32 @decode_vex_vvvv(%struct.ud* %118, %struct.ud_operand* %119, i32 %120)
  br label %277

122:                                              ; preds = %4
  %123 = load %struct.ud*, %struct.ud** %5, align 8
  %124 = load %struct.ud_operand*, %struct.ud_operand** %6, align 8
  %125 = load i32, i32* @REGCLASS_XMM, align 4
  %126 = load %struct.ud*, %struct.ud** %5, align 8
  %127 = call i32 @modrm(%struct.ud* %126)
  %128 = call i32 @MODRM_MOD(i32 %127)
  %129 = icmp eq i32 %128, 3
  br i1 %129, label %130, label %133

130:                                              ; preds = %122
  %131 = load i32, i32* %8, align 4
  %132 = call i32 @Mx_reg_size(i32 %131)
  br label %136

133:                                              ; preds = %122
  %134 = load i32, i32* %8, align 4
  %135 = call i32 @Mx_mem_size(i32 %134)
  br label %136

136:                                              ; preds = %133, %130
  %137 = phi i32 [ %132, %130 ], [ %135, %133 ]
  %138 = call i32 @decode_modrm_rm(%struct.ud* %123, %struct.ud_operand* %124, i32 %125, i32 %137)
  br label %277

139:                                              ; preds = %4
  %140 = load %struct.ud*, %struct.ud** %5, align 8
  %141 = load %struct.ud_operand*, %struct.ud_operand** %6, align 8
  %142 = load i32, i32* @REGCLASS_SEG, align 4
  %143 = load i32, i32* %8, align 4
  %144 = call i32 @decode_modrm_reg(%struct.ud* %140, %struct.ud_operand* %141, i32 %142, i32 %143)
  br label %277

145:                                              ; preds = %4
  %146 = load %struct.ud*, %struct.ud** %5, align 8
  %147 = load i32, i32* %8, align 4
  %148 = load %struct.ud_operand*, %struct.ud_operand** %6, align 8
  %149 = call i32 @decode_moffset(%struct.ud* %146, i32 %147, %struct.ud_operand* %148)
  br label %277

150:                                              ; preds = %4, %4, %4, %4, %4, %4, %4, %4
  %151 = load %struct.ud*, %struct.ud** %5, align 8
  %152 = load %struct.ud_operand*, %struct.ud_operand** %6, align 8
  %153 = load i32, i32* @REGCLASS_GPR, align 4
  %154 = load %struct.ud*, %struct.ud** %5, align 8
  %155 = getelementptr inbounds %struct.ud, %struct.ud* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @REX_B(i32 %156)
  %158 = shl i32 %157, 3
  %159 = load i32, i32* %7, align 4
  %160 = sub i32 %159, 153
  %161 = or i32 %158, %160
  %162 = load i32, i32* %8, align 4
  %163 = call i32 @decode_reg(%struct.ud* %151, %struct.ud_operand* %152, i32 %153, i32 %161, i32 %162)
  br label %277

164:                                              ; preds = %4, %4, %4, %4
  %165 = load %struct.ud*, %struct.ud** %5, align 8
  %166 = load %struct.ud_operand*, %struct.ud_operand** %6, align 8
  %167 = load i32, i32* @REGCLASS_GPR, align 4
  %168 = load i32, i32* %8, align 4
  %169 = call i32 @decode_reg(%struct.ud* %165, %struct.ud_operand* %166, i32 %167, i32 0, i32 %168)
  br label %277

170:                                              ; preds = %4, %4, %4
  %171 = load %struct.ud*, %struct.ud** %5, align 8
  %172 = load %struct.ud_operand*, %struct.ud_operand** %6, align 8
  %173 = load i32, i32* @REGCLASS_GPR, align 4
  %174 = load i32, i32* %8, align 4
  %175 = call i32 @decode_reg(%struct.ud* %171, %struct.ud_operand* %172, i32 %173, i32 1, i32 %174)
  br label %277

176:                                              ; preds = %4, %4, %4
  %177 = load %struct.ud*, %struct.ud** %5, align 8
  %178 = load %struct.ud_operand*, %struct.ud_operand** %6, align 8
  %179 = load i32, i32* @REGCLASS_GPR, align 4
  %180 = load i32, i32* %8, align 4
  %181 = call i32 @decode_reg(%struct.ud* %177, %struct.ud_operand* %178, i32 %179, i32 2, i32 %180)
  br label %277

182:                                              ; preds = %4, %4, %4, %4, %4, %4
  %183 = load %struct.ud*, %struct.ud** %5, align 8
  %184 = getelementptr inbounds %struct.ud, %struct.ud* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = icmp eq i32 %185, 64
  br i1 %186, label %187, label %197

187:                                              ; preds = %182
  %188 = load i32, i32* %7, align 4
  %189 = icmp ne i32 %188, 170
  br i1 %189, label %190, label %196

190:                                              ; preds = %187
  %191 = load i32, i32* %7, align 4
  %192 = icmp ne i32 %191, 168
  br i1 %192, label %193, label %196

193:                                              ; preds = %190
  %194 = load %struct.ud*, %struct.ud** %5, align 8
  %195 = call i32 @UDERR(%struct.ud* %194, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %196

196:                                              ; preds = %193, %190, %187
  br label %197

197:                                              ; preds = %196, %182
  %198 = load i8*, i8** @UD_OP_REG, align 8
  %199 = ptrtoint i8* %198 to i32
  %200 = load %struct.ud_operand*, %struct.ud_operand** %6, align 8
  %201 = getelementptr inbounds %struct.ud_operand, %struct.ud_operand* %200, i32 0, i32 0
  store i32 %199, i32* %201, align 8
  %202 = load i32, i32* %7, align 4
  %203 = sub i32 %202, 172
  %204 = zext i32 %203 to i64
  %205 = load i64, i64* @UD_R_ES, align 8
  %206 = add nsw i64 %204, %205
  %207 = load %struct.ud_operand*, %struct.ud_operand** %6, align 8
  %208 = getelementptr inbounds %struct.ud_operand, %struct.ud_operand* %207, i32 0, i32 3
  store i64 %206, i64* %208, align 8
  %209 = load %struct.ud_operand*, %struct.ud_operand** %6, align 8
  %210 = getelementptr inbounds %struct.ud_operand, %struct.ud_operand* %209, i32 0, i32 2
  store i32 16, i32* %210, align 8
  br label %277

211:                                              ; preds = %4
  %212 = load %struct.ud*, %struct.ud** %5, align 8
  %213 = load i32, i32* %8, align 4
  %214 = load %struct.ud_operand*, %struct.ud_operand** %6, align 8
  %215 = call i32 @decode_imm(%struct.ud* %212, i32 %213, %struct.ud_operand* %214)
  %216 = load i32, i32* @UD_OP_JIMM, align 4
  %217 = load %struct.ud_operand*, %struct.ud_operand** %6, align 8
  %218 = getelementptr inbounds %struct.ud_operand, %struct.ud_operand* %217, i32 0, i32 0
  store i32 %216, i32* %218, align 8
  br label %277

219:                                              ; preds = %4
  %220 = load %struct.ud*, %struct.ud** %5, align 8
  %221 = call i32 @modrm(%struct.ud* %220)
  %222 = call i32 @MODRM_MOD(i32 %221)
  %223 = icmp ne i32 %222, 3
  br i1 %223, label %224, label %227

224:                                              ; preds = %219
  %225 = load %struct.ud*, %struct.ud** %5, align 8
  %226 = call i32 @UDERR(%struct.ud* %225, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %227

227:                                              ; preds = %224, %219
  %228 = load %struct.ud*, %struct.ud** %5, align 8
  %229 = load %struct.ud_operand*, %struct.ud_operand** %6, align 8
  %230 = load i32, i32* @REGCLASS_GPR, align 4
  %231 = load i32, i32* %8, align 4
  %232 = call i32 @decode_modrm_rm(%struct.ud* %228, %struct.ud_operand* %229, i32 %230, i32 %231)
  br label %277

233:                                              ; preds = %4
  %234 = load %struct.ud*, %struct.ud** %5, align 8
  %235 = load %struct.ud_operand*, %struct.ud_operand** %6, align 8
  %236 = load i32, i32* @REGCLASS_CR, align 4
  %237 = load i32, i32* %8, align 4
  %238 = call i32 @decode_modrm_reg(%struct.ud* %234, %struct.ud_operand* %235, i32 %236, i32 %237)
  br label %277

239:                                              ; preds = %4
  %240 = load %struct.ud*, %struct.ud** %5, align 8
  %241 = load %struct.ud_operand*, %struct.ud_operand** %6, align 8
  %242 = load i32, i32* @REGCLASS_DB, align 4
  %243 = load i32, i32* %8, align 4
  %244 = call i32 @decode_modrm_reg(%struct.ud* %240, %struct.ud_operand* %241, i32 %242, i32 %243)
  br label %277

245:                                              ; preds = %4
  %246 = load i8*, i8** @UD_OP_CONST, align 8
  %247 = ptrtoint i8* %246 to i32
  %248 = load %struct.ud_operand*, %struct.ud_operand** %6, align 8
  %249 = getelementptr inbounds %struct.ud_operand, %struct.ud_operand* %248, i32 0, i32 0
  store i32 %247, i32* %249, align 8
  %250 = load %struct.ud_operand*, %struct.ud_operand** %6, align 8
  %251 = getelementptr inbounds %struct.ud_operand, %struct.ud_operand* %250, i32 0, i32 4
  %252 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %251, i32 0, i32 1
  store i32 3, i32* %252, align 4
  br label %277

253:                                              ; preds = %4, %4, %4, %4, %4, %4, %4, %4
  %254 = load i8*, i8** @UD_OP_REG, align 8
  %255 = ptrtoint i8* %254 to i32
  %256 = load %struct.ud_operand*, %struct.ud_operand** %6, align 8
  %257 = getelementptr inbounds %struct.ud_operand, %struct.ud_operand* %256, i32 0, i32 0
  store i32 %255, i32* %257, align 8
  %258 = load i32, i32* %7, align 4
  %259 = sub i32 %258, 143
  %260 = zext i32 %259 to i64
  %261 = load i64, i64* @UD_R_ST0, align 8
  %262 = add nsw i64 %260, %261
  %263 = load %struct.ud_operand*, %struct.ud_operand** %6, align 8
  %264 = getelementptr inbounds %struct.ud_operand, %struct.ud_operand* %263, i32 0, i32 3
  store i64 %262, i64* %264, align 8
  %265 = load %struct.ud_operand*, %struct.ud_operand** %6, align 8
  %266 = getelementptr inbounds %struct.ud_operand, %struct.ud_operand* %265, i32 0, i32 2
  store i32 80, i32* %266, align 8
  br label %277

267:                                              ; preds = %4
  %268 = load %struct.ud*, %struct.ud** %5, align 8
  %269 = load %struct.ud_operand*, %struct.ud_operand** %6, align 8
  %270 = load i32, i32* %8, align 4
  %271 = call i32 @decode_vex_immreg(%struct.ud* %268, %struct.ud_operand* %269, i32 %270)
  br label %277

272:                                              ; preds = %4
  %273 = load i8*, i8** @UD_NONE, align 8
  %274 = ptrtoint i8* %273 to i32
  %275 = load %struct.ud_operand*, %struct.ud_operand** %6, align 8
  %276 = getelementptr inbounds %struct.ud_operand, %struct.ud_operand* %275, i32 0, i32 0
  store i32 %274, i32* %276, align 8
  br label %277

277:                                              ; preds = %272, %267, %253, %245, %239, %233, %227, %211, %197, %176, %170, %164, %150, %145, %139, %136, %117, %111, %105, %90, %84, %67, %62, %56, %50, %35, %17
  %278 = load %struct.ud_operand*, %struct.ud_operand** %6, align 8
  %279 = getelementptr inbounds %struct.ud_operand, %struct.ud_operand* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 8
  ret i32 %280
}

declare dso_local i32 @decode_a(%struct.ud*, %struct.ud_operand*) #1

declare dso_local i32 @decode_modrm_rm(%struct.ud*, %struct.ud_operand*, i32, i32) #1

declare dso_local i32 @MODRM_MOD(i32) #1

declare dso_local i32 @modrm(%struct.ud*) #1

declare dso_local i32 @Mx_reg_size(i32) #1

declare dso_local i32 @Mx_mem_size(i32) #1

declare dso_local i32 @UDERR(%struct.ud*, i8*) #1

declare dso_local i32 @decode_modrm_reg(%struct.ud*, %struct.ud_operand*, i32, i32) #1

declare dso_local i32 @decode_imm(%struct.ud*, i32, %struct.ud_operand*) #1

declare dso_local i32 @decode_vex_vvvv(%struct.ud*, %struct.ud_operand*, i32) #1

declare dso_local i32 @decode_moffset(%struct.ud*, i32, %struct.ud_operand*) #1

declare dso_local i32 @decode_reg(%struct.ud*, %struct.ud_operand*, i32, i32, i32) #1

declare dso_local i32 @REX_B(i32) #1

declare dso_local i32 @decode_vex_immreg(%struct.ud*, %struct.ud_operand*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
