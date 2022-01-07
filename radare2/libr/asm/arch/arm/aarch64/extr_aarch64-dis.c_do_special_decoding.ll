; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/arm/aarch64/extr_aarch64-dis.c_do_special_decoding.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/arm/aarch64/extr_aarch64-dis.c_do_special_decoding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_15__*, %struct.TYPE_12__*, i32, i32 }
%struct.TYPE_15__ = type { i32, i32*, i32, i32 }
%struct.TYPE_12__ = type { i8* }
%struct.TYPE_14__ = type { i32, i32 }

@F_COND = common dso_local global i32 0, align 4
@FLD_cond2 = common dso_local global i32 0, align 4
@F_SF = common dso_local global i32 0, align 4
@FLD_sf = common dso_local global i32 0, align 4
@F_N = common dso_local global i32 0, align 4
@FLD_N = common dso_local global i32 0, align 4
@F_LSE_SZ = common dso_local global i32 0, align 4
@FLD_lse_sz = common dso_local global i32 0, align 4
@F_SIZEQ = common dso_local global i32 0, align 4
@F_FPTYPE = common dso_local global i32 0, align 4
@FLD_type = common dso_local global i32 0, align 4
@AARCH64_OPND_QLF_S_S = common dso_local global i8* null, align 8
@AARCH64_OPND_QLF_S_D = common dso_local global i8* null, align 8
@AARCH64_OPND_QLF_S_H = common dso_local global i8* null, align 8
@F_SSIZE = common dso_local global i32 0, align 4
@AARCH64_MAX_QLF_SEQ_NUM = common dso_local global i32 0, align 4
@FLD_size = common dso_local global i32 0, align 4
@F_T = common dso_local global i32 0, align 4
@AARCH64_OPND_CLASS_SIMD_REG = common dso_local global i64 0, align 8
@FLD_imm5 = common dso_local global i32 0, align 4
@FLD_Q = common dso_local global i32 0, align 4
@F_GPRSIZE_IN_Q = common dso_local global i32 0, align 4
@AARCH64_OPND_Rt = common dso_local global i32 0, align 4
@AARCH64_OPND_CLASS_INT_REG = common dso_local global i64 0, align 8
@F_LDS_SIZE = common dso_local global i32 0, align 4
@FLD_opc = common dso_local global i32 0, align 4
@AARCH64_OPND_QLF_W = common dso_local global i8* null, align 8
@AARCH64_OPND_QLF_X = common dso_local global i8* null, align 8
@F_MISC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*)* @do_special_decoding to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_special_decoding(%struct.TYPE_13__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_14__, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @F_COND, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %1
  %22 = load i32, i32* @FLD_cond2, align 4
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @extract_field(i32 %22, i32 %25, i32 0)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @get_cond_from_value(i32 %27)
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 4
  br label %31

31:                                               ; preds = %21, %1
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @F_SF, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %77

40:                                               ; preds = %31
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %42, align 8
  %44 = call i32 @select_operand_for_sf_field_coding(%struct.TYPE_15__* %43)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* @FLD_sf, align 4
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @extract_field(i32 %45, i32 %48, i32 0)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = call i8* @get_greg_qualifier_from_value(i32 %50)
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %53, align 8
  %55 = load i32, i32* %4, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  store i8* %51, i8** %58, align 8
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @F_N, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %40
  %68 = load i32, i32* @FLD_N, align 4
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @extract_field(i32 %68, i32 %71, i32 0)
  %73 = load i32, i32* %5, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %67
  store i32 0, i32* %2, align 4
  br label %410

76:                                               ; preds = %67, %40
  br label %77

77:                                               ; preds = %76, %31
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @F_LSE_SZ, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %105

86:                                               ; preds = %77
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %88, align 8
  %90 = call i32 @select_operand_for_sf_field_coding(%struct.TYPE_15__* %89)
  store i32 %90, i32* %4, align 4
  %91 = load i32, i32* @FLD_lse_sz, align 4
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @extract_field(i32 %91, i32 %94, i32 0)
  store i32 %95, i32* %5, align 4
  %96 = load i32, i32* %5, align 4
  %97 = call i8* @get_greg_qualifier_from_value(i32 %96)
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %99, align 8
  %101 = load i32, i32* %4, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 0
  store i8* %97, i8** %104, align 8
  br label %105

105:                                              ; preds = %86, %77
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @F_SIZEQ, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %105
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %116 = call i32 @decode_sizeq(%struct.TYPE_13__* %115)
  store i32 %116, i32* %2, align 4
  br label %410

117:                                              ; preds = %105
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @F_FPTYPE, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %166

126:                                              ; preds = %117
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %128, align 8
  %130 = call i32 @select_operand_for_fptype_field_coding(%struct.TYPE_15__* %129)
  store i32 %130, i32* %4, align 4
  %131 = load i32, i32* @FLD_type, align 4
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @extract_field(i32 %131, i32 %134, i32 0)
  store i32 %135, i32* %5, align 4
  %136 = load i32, i32* %5, align 4
  switch i32 %136, label %164 [
    i32 0, label %137
    i32 1, label %146
    i32 3, label %155
  ]

137:                                              ; preds = %126
  %138 = load i8*, i8** @AARCH64_OPND_QLF_S_S, align 8
  %139 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 1
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %140, align 8
  %142 = load i32, i32* %4, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 0
  store i8* %138, i8** %145, align 8
  br label %165

146:                                              ; preds = %126
  %147 = load i8*, i8** @AARCH64_OPND_QLF_S_D, align 8
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 1
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** %149, align 8
  %151 = load i32, i32* %4, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 0
  store i8* %147, i8** %154, align 8
  br label %165

155:                                              ; preds = %126
  %156 = load i8*, i8** @AARCH64_OPND_QLF_S_H, align 8
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 1
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** %158, align 8
  %160 = load i32, i32* %4, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 0
  store i8* %156, i8** %163, align 8
  br label %165

164:                                              ; preds = %126
  store i32 0, i32* %2, align 4
  br label %410

165:                                              ; preds = %155, %146, %137
  br label %166

166:                                              ; preds = %165, %117
  %167 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %167, i32 0, i32 0
  %169 = load %struct.TYPE_15__*, %struct.TYPE_15__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* @F_SSIZE, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %234

175:                                              ; preds = %166
  %176 = load i32, i32* @AARCH64_MAX_QLF_SEQ_NUM, align 4
  %177 = zext i32 %176 to i64
  %178 = call i8* @llvm.stacksave()
  store i8* %178, i8** %7, align 8
  %179 = alloca i32, i64 %177, align 16
  store i64 %177, i64* %8, align 8
  %180 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %180, i32 0, i32 0
  %182 = load %struct.TYPE_15__*, %struct.TYPE_15__** %181, align 8
  %183 = call i32 @select_operand_for_scalar_size_field_coding(%struct.TYPE_15__* %182)
  store i32 %183, i32* %4, align 4
  %184 = load i32, i32* @FLD_size, align 4
  %185 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %186 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %189 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %188, i32 0, i32 0
  %190 = load %struct.TYPE_15__*, %struct.TYPE_15__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 8
  %193 = call i32 @extract_field(i32 %184, i32 %187, i32 %192)
  store i32 %193, i32* %5, align 4
  %194 = load i32, i32* @FLD_size, align 4
  %195 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %195, i32 0, i32 0
  %197 = load %struct.TYPE_15__*, %struct.TYPE_15__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 8
  %200 = xor i32 %199, -1
  %201 = call i32 @extract_field(i32 %194, i32 %200, i32 0)
  store i32 %201, i32* %6, align 4
  %202 = load i32, i32* %6, align 4
  %203 = icmp eq i32 %202, 3
  br i1 %203, label %204, label %214

204:                                              ; preds = %175
  %205 = load i32, i32* %5, align 4
  %206 = call i8* @get_sreg_qualifier_from_value(i32 %205)
  %207 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %208 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %207, i32 0, i32 1
  %209 = load %struct.TYPE_12__*, %struct.TYPE_12__** %208, align 8
  %210 = load i32, i32* %4, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %209, i64 %211
  %213 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %212, i32 0, i32 0
  store i8* %206, i8** %213, align 8
  br label %232

214:                                              ; preds = %175
  %215 = load i32, i32* %4, align 4
  %216 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %217 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %216, i32 0, i32 0
  %218 = load %struct.TYPE_15__*, %struct.TYPE_15__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %218, i32 0, i32 3
  %220 = load i32, i32* %219, align 4
  %221 = call i32 @get_operand_possible_qualifiers(i32 %215, i32 %220, i32* %179)
  %222 = load i32, i32* %5, align 4
  %223 = load i32, i32* %6, align 4
  %224 = call i8* @get_qualifier_from_partial_encoding(i32 %222, i32* %179, i32 %223)
  %225 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %226 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %225, i32 0, i32 1
  %227 = load %struct.TYPE_12__*, %struct.TYPE_12__** %226, align 8
  %228 = load i32, i32* %4, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %227, i64 %229
  %231 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %230, i32 0, i32 0
  store i8* %224, i8** %231, align 8
  br label %232

232:                                              ; preds = %214, %204
  %233 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %233)
  br label %234

234:                                              ; preds = %232, %166
  %235 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %236 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %235, i32 0, i32 0
  %237 = load %struct.TYPE_15__*, %struct.TYPE_15__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = load i32, i32* @F_T, align 4
  %241 = and i32 %239, %240
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %299

243:                                              ; preds = %234
  store i32 0, i32* %9, align 4
  %244 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %245 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %244, i32 0, i32 0
  %246 = load %struct.TYPE_15__*, %struct.TYPE_15__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %246, i32 0, i32 1
  %248 = load i32*, i32** %247, align 8
  %249 = getelementptr inbounds i32, i32* %248, i64 0
  %250 = load i32, i32* %249, align 4
  %251 = call i64 @aarch64_get_operand_class(i32 %250)
  %252 = load i64, i64* @AARCH64_OPND_CLASS_SIMD_REG, align 8
  %253 = icmp eq i64 %251, %252
  %254 = zext i1 %253 to i32
  %255 = call i32 @assert(i32 %254)
  %256 = load i32, i32* @FLD_imm5, align 4
  %257 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %258 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %257, i32 0, i32 2
  %259 = load i32, i32* %258, align 8
  %260 = call i32 @extract_field(i32 %256, i32 %259, i32 0)
  store i32 %260, i32* %10, align 4
  br label %261

261:                                              ; preds = %271, %243
  %262 = load i32, i32* %10, align 4
  %263 = and i32 %262, 1
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %265, label %269

265:                                              ; preds = %261
  %266 = load i32, i32* %9, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %9, align 4
  %268 = icmp sle i32 %267, 3
  br label %269

269:                                              ; preds = %265, %261
  %270 = phi i1 [ false, %261 ], [ %268, %265 ]
  br i1 %270, label %271, label %274

271:                                              ; preds = %269
  %272 = load i32, i32* %10, align 4
  %273 = lshr i32 %272, 1
  store i32 %273, i32* %10, align 4
  br label %261

274:                                              ; preds = %269
  %275 = load i32, i32* %9, align 4
  %276 = icmp sgt i32 %275, 3
  br i1 %276, label %277, label %278

277:                                              ; preds = %274
  store i32 0, i32* %2, align 4
  br label %410

278:                                              ; preds = %274
  %279 = load i32, i32* @FLD_Q, align 4
  %280 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %281 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %280, i32 0, i32 2
  %282 = load i32, i32* %281, align 8
  %283 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %284 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %283, i32 0, i32 0
  %285 = load %struct.TYPE_15__*, %struct.TYPE_15__** %284, align 8
  %286 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %285, i32 0, i32 2
  %287 = load i32, i32* %286, align 8
  %288 = call i32 @extract_field(i32 %279, i32 %282, i32 %287)
  store i32 %288, i32* %11, align 4
  %289 = load i32, i32* %9, align 4
  %290 = shl i32 %289, 1
  %291 = load i32, i32* %11, align 4
  %292 = or i32 %290, %291
  %293 = call i8* @get_vreg_qualifier_from_value(i32 %292)
  %294 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %295 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %294, i32 0, i32 1
  %296 = load %struct.TYPE_12__*, %struct.TYPE_12__** %295, align 8
  %297 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %296, i64 0
  %298 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %297, i32 0, i32 0
  store i8* %293, i8** %298, align 8
  br label %299

299:                                              ; preds = %278, %234
  %300 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %301 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %300, i32 0, i32 0
  %302 = load %struct.TYPE_15__*, %struct.TYPE_15__** %301, align 8
  %303 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 8
  %305 = load i32, i32* @F_GPRSIZE_IN_Q, align 4
  %306 = and i32 %304, %305
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %355

308:                                              ; preds = %299
  %309 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %310 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %309, i32 0, i32 0
  %311 = load %struct.TYPE_15__*, %struct.TYPE_15__** %310, align 8
  %312 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %311, i32 0, i32 1
  %313 = load i32*, i32** %312, align 8
  %314 = load i32, i32* @AARCH64_OPND_Rt, align 4
  %315 = call i32 @aarch64_operand_index(i32* %313, i32 %314)
  store i32 %315, i32* %4, align 4
  %316 = load i32, i32* %4, align 4
  %317 = icmp eq i32 %316, -1
  br i1 %317, label %318, label %331

318:                                              ; preds = %308
  %319 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %320 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %319, i32 0, i32 0
  %321 = load %struct.TYPE_15__*, %struct.TYPE_15__** %320, align 8
  %322 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %321, i32 0, i32 1
  %323 = load i32*, i32** %322, align 8
  %324 = getelementptr inbounds i32, i32* %323, i64 0
  %325 = load i32, i32* %324, align 4
  %326 = call i64 @aarch64_get_operand_class(i32 %325)
  %327 = load i64, i64* @AARCH64_OPND_CLASS_INT_REG, align 8
  %328 = icmp eq i64 %326, %327
  %329 = zext i1 %328 to i32
  %330 = call i32 @assert(i32 %329)
  store i32 0, i32* %4, align 4
  br label %331

331:                                              ; preds = %318, %308
  %332 = load i32, i32* %4, align 4
  %333 = icmp eq i32 %332, 0
  br i1 %333, label %337, label %334

334:                                              ; preds = %331
  %335 = load i32, i32* %4, align 4
  %336 = icmp eq i32 %335, 1
  br label %337

337:                                              ; preds = %334, %331
  %338 = phi i1 [ true, %331 ], [ %336, %334 ]
  %339 = zext i1 %338 to i32
  %340 = call i32 @assert(i32 %339)
  %341 = load i32, i32* @FLD_Q, align 4
  %342 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %343 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %342, i32 0, i32 2
  %344 = load i32, i32* %343, align 8
  %345 = call i32 @extract_field(i32 %341, i32 %344, i32 0)
  store i32 %345, i32* %5, align 4
  %346 = load i32, i32* %5, align 4
  %347 = call i8* @get_greg_qualifier_from_value(i32 %346)
  %348 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %349 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %348, i32 0, i32 1
  %350 = load %struct.TYPE_12__*, %struct.TYPE_12__** %349, align 8
  %351 = load i32, i32* %4, align 4
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %350, i64 %352
  %354 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %353, i32 0, i32 0
  store i8* %347, i8** %354, align 8
  br label %355

355:                                              ; preds = %337, %299
  %356 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %357 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %356, i32 0, i32 0
  %358 = load %struct.TYPE_15__*, %struct.TYPE_15__** %357, align 8
  %359 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %358, i32 0, i32 0
  %360 = load i32, i32* %359, align 8
  %361 = load i32, i32* @F_LDS_SIZE, align 4
  %362 = and i32 %360, %361
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %364, label %397

364:                                              ; preds = %355
  %365 = bitcast %struct.TYPE_14__* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %365, i8 0, i64 8, i1 false)
  %366 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %367 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %366, i32 0, i32 0
  %368 = load %struct.TYPE_15__*, %struct.TYPE_15__** %367, align 8
  %369 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %368, i32 0, i32 1
  %370 = load i32*, i32** %369, align 8
  %371 = getelementptr inbounds i32, i32* %370, i64 0
  %372 = load i32, i32* %371, align 4
  %373 = call i64 @aarch64_get_operand_class(i32 %372)
  %374 = load i64, i64* @AARCH64_OPND_CLASS_INT_REG, align 8
  %375 = icmp eq i64 %373, %374
  %376 = zext i1 %375 to i32
  %377 = call i32 @assert(i32 %376)
  %378 = load i32, i32* @FLD_opc, align 4
  %379 = call i32 @gen_sub_field(i32 %378, i32 0, i32 1, %struct.TYPE_14__* %12)
  %380 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %381 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %380, i32 0, i32 2
  %382 = load i32, i32* %381, align 8
  %383 = call i32 @extract_field_2(%struct.TYPE_14__* %12, i32 %382, i32 0)
  store i32 %383, i32* %5, align 4
  %384 = load i32, i32* %5, align 4
  %385 = icmp ne i32 %384, 0
  br i1 %385, label %386, label %388

386:                                              ; preds = %364
  %387 = load i8*, i8** @AARCH64_OPND_QLF_W, align 8
  br label %390

388:                                              ; preds = %364
  %389 = load i8*, i8** @AARCH64_OPND_QLF_X, align 8
  br label %390

390:                                              ; preds = %388, %386
  %391 = phi i8* [ %387, %386 ], [ %389, %388 ]
  %392 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %393 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %392, i32 0, i32 1
  %394 = load %struct.TYPE_12__*, %struct.TYPE_12__** %393, align 8
  %395 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %394, i64 0
  %396 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %395, i32 0, i32 0
  store i8* %391, i8** %396, align 8
  br label %397

397:                                              ; preds = %390, %355
  %398 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %399 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %398, i32 0, i32 0
  %400 = load %struct.TYPE_15__*, %struct.TYPE_15__** %399, align 8
  %401 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %400, i32 0, i32 0
  %402 = load i32, i32* %401, align 8
  %403 = load i32, i32* @F_MISC, align 4
  %404 = and i32 %402, %403
  %405 = icmp ne i32 %404, 0
  br i1 %405, label %406, label %409

406:                                              ; preds = %397
  %407 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %408 = call i32 @do_misc_decoding(%struct.TYPE_13__* %407)
  store i32 %408, i32* %2, align 4
  br label %410

409:                                              ; preds = %397
  store i32 1, i32* %2, align 4
  br label %410

410:                                              ; preds = %409, %406, %277, %164, %114, %75
  %411 = load i32, i32* %2, align 4
  ret i32 %411
}

declare dso_local i32 @extract_field(i32, i32, i32) #1

declare dso_local i32 @get_cond_from_value(i32) #1

declare dso_local i32 @select_operand_for_sf_field_coding(%struct.TYPE_15__*) #1

declare dso_local i8* @get_greg_qualifier_from_value(i32) #1

declare dso_local i32 @decode_sizeq(%struct.TYPE_13__*) #1

declare dso_local i32 @select_operand_for_fptype_field_coding(%struct.TYPE_15__*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @select_operand_for_scalar_size_field_coding(%struct.TYPE_15__*) #1

declare dso_local i8* @get_sreg_qualifier_from_value(i32) #1

declare dso_local i32 @get_operand_possible_qualifiers(i32, i32, i32*) #1

declare dso_local i8* @get_qualifier_from_partial_encoding(i32, i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @aarch64_get_operand_class(i32) #1

declare dso_local i8* @get_vreg_qualifier_from_value(i32) #1

declare dso_local i32 @aarch64_operand_index(i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

declare dso_local i32 @gen_sub_field(i32, i32, i32, %struct.TYPE_14__*) #1

declare dso_local i32 @extract_field_2(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @do_misc_decoding(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
