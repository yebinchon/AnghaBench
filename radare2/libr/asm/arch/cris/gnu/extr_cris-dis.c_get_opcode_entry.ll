; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/cris/gnu/extr_cris-dis.c_get_opcode_entry.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/cris/gnu/extr_cris-dis.c_get_opcode_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cris_opcode = type { i64, i32, i32, i32, i32* }
%struct.cris_disasm_data = type { i64 }

@get_opcode_entry.opc_table = internal global %struct.cris_opcode** null, align 8
@get_opcode_entry.dip_prefixes = internal global %struct.cris_opcode** null, align 8
@get_opcode_entry.bdapq_m1_prefixes = internal global %struct.cris_opcode** null, align 8
@get_opcode_entry.bdapq_m2_prefixes = internal global %struct.cris_opcode** null, align 8
@get_opcode_entry.bdapq_m4_prefixes = internal global %struct.cris_opcode** null, align 8
@get_opcode_entry.rest_prefixes = internal global %struct.cris_opcode** null, align 8
@NO_CRIS_PREFIX = common dso_local global i32 0, align 4
@BDAP_QUICK_OPCODE = common dso_local global i64 0, align 8
@DIP_OPCODE = common dso_local global i64 0, align 8
@cris_opcodes = common dso_local global %struct.cris_opcode* null, align 8
@cris_dis_v32 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cris_opcode* (i32, i32, %struct.cris_disasm_data*)* @get_opcode_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cris_opcode* @get_opcode_entry(i32 %0, i32 %1, %struct.cris_disasm_data* %2) #0 {
  %4 = alloca %struct.cris_opcode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cris_disasm_data*, align 8
  %8 = alloca %struct.cris_opcode*, align 8
  %9 = alloca %struct.cris_opcode**, align 8
  %10 = alloca %struct.cris_opcode*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.cris_opcode*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.cris_disasm_data* %2, %struct.cris_disasm_data** %7, align 8
  store %struct.cris_opcode* null, %struct.cris_opcode** %8, align 8
  store %struct.cris_opcode** null, %struct.cris_opcode*** %9, align 8
  %15 = load %struct.cris_opcode**, %struct.cris_opcode*** @get_opcode_entry.opc_table, align 8
  %16 = icmp ne %struct.cris_opcode** %15, null
  br i1 %16, label %48, label %17

17:                                               ; preds = %3
  %18 = call %struct.cris_opcode** @calloc(i32 65536, i32 8)
  store %struct.cris_opcode** %18, %struct.cris_opcode*** @get_opcode_entry.opc_table, align 8
  %19 = load %struct.cris_opcode**, %struct.cris_opcode*** @get_opcode_entry.opc_table, align 8
  %20 = icmp ne %struct.cris_opcode** %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  store %struct.cris_opcode* null, %struct.cris_opcode** %4, align 8
  br label %256

22:                                               ; preds = %17
  %23 = call %struct.cris_opcode** @calloc(i32 65536, i32 8)
  store %struct.cris_opcode** %23, %struct.cris_opcode*** @get_opcode_entry.dip_prefixes, align 8
  %24 = load %struct.cris_opcode**, %struct.cris_opcode*** @get_opcode_entry.dip_prefixes, align 8
  %25 = icmp ne %struct.cris_opcode** %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  store %struct.cris_opcode* null, %struct.cris_opcode** %4, align 8
  br label %256

27:                                               ; preds = %22
  %28 = call %struct.cris_opcode** @calloc(i32 65536, i32 8)
  store %struct.cris_opcode** %28, %struct.cris_opcode*** @get_opcode_entry.bdapq_m1_prefixes, align 8
  %29 = load %struct.cris_opcode**, %struct.cris_opcode*** @get_opcode_entry.bdapq_m1_prefixes, align 8
  %30 = icmp ne %struct.cris_opcode** %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  store %struct.cris_opcode* null, %struct.cris_opcode** %4, align 8
  br label %256

32:                                               ; preds = %27
  %33 = call %struct.cris_opcode** @calloc(i32 65536, i32 8)
  store %struct.cris_opcode** %33, %struct.cris_opcode*** @get_opcode_entry.bdapq_m2_prefixes, align 8
  %34 = load %struct.cris_opcode**, %struct.cris_opcode*** @get_opcode_entry.bdapq_m2_prefixes, align 8
  %35 = icmp ne %struct.cris_opcode** %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %32
  store %struct.cris_opcode* null, %struct.cris_opcode** %4, align 8
  br label %256

37:                                               ; preds = %32
  %38 = call %struct.cris_opcode** @calloc(i32 65536, i32 8)
  store %struct.cris_opcode** %38, %struct.cris_opcode*** @get_opcode_entry.bdapq_m4_prefixes, align 8
  %39 = load %struct.cris_opcode**, %struct.cris_opcode*** @get_opcode_entry.bdapq_m4_prefixes, align 8
  %40 = icmp ne %struct.cris_opcode** %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %37
  store %struct.cris_opcode* null, %struct.cris_opcode** %4, align 8
  br label %256

42:                                               ; preds = %37
  %43 = call %struct.cris_opcode** @calloc(i32 65536, i32 8)
  store %struct.cris_opcode** %43, %struct.cris_opcode*** @get_opcode_entry.rest_prefixes, align 8
  %44 = load %struct.cris_opcode**, %struct.cris_opcode*** @get_opcode_entry.rest_prefixes, align 8
  %45 = icmp ne %struct.cris_opcode** %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %42
  store %struct.cris_opcode* null, %struct.cris_opcode** %4, align 8
  br label %256

47:                                               ; preds = %42
  br label %48

48:                                               ; preds = %47, %3
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @NO_CRIS_PREFIX, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %112

52:                                               ; preds = %48
  %53 = load %struct.cris_opcode**, %struct.cris_opcode*** @get_opcode_entry.opc_table, align 8
  %54 = load i32, i32* %6, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.cris_opcode*, %struct.cris_opcode** %53, i64 %55
  %57 = load %struct.cris_opcode*, %struct.cris_opcode** %56, align 8
  %58 = icmp ne %struct.cris_opcode* %57, null
  br i1 %58, label %59, label %65

59:                                               ; preds = %52
  %60 = load %struct.cris_opcode**, %struct.cris_opcode*** @get_opcode_entry.opc_table, align 8
  %61 = load i32, i32* %6, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.cris_opcode*, %struct.cris_opcode** %60, i64 %62
  %64 = load %struct.cris_opcode*, %struct.cris_opcode** %63, align 8
  br label %70

65:                                               ; preds = %52
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @NO_CRIS_PREFIX, align 4
  %68 = load %struct.cris_disasm_data*, %struct.cris_disasm_data** %7, align 8
  %69 = call %struct.cris_opcode* @get_opcode_entry(i32 %66, i32 %67, %struct.cris_disasm_data* %68)
  br label %70

70:                                               ; preds = %65, %59
  %71 = phi %struct.cris_opcode* [ %64, %59 ], [ %69, %65 ]
  store %struct.cris_opcode* %71, %struct.cris_opcode** %10, align 8
  %72 = load %struct.cris_opcode*, %struct.cris_opcode** %10, align 8
  %73 = icmp ne %struct.cris_opcode* %72, null
  br i1 %73, label %75, label %74

74:                                               ; preds = %70
  store %struct.cris_opcode* null, %struct.cris_opcode** %4, align 8
  br label %256

75:                                               ; preds = %70
  %76 = load %struct.cris_opcode*, %struct.cris_opcode** %10, align 8
  %77 = getelementptr inbounds %struct.cris_opcode, %struct.cris_opcode* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @BDAP_QUICK_OPCODE, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %100

81:                                               ; preds = %75
  %82 = load i32, i32* %6, align 4
  %83 = and i32 %82, 255
  store i32 %83, i32* %11, align 4
  %84 = load i32, i32* %11, align 4
  %85 = icmp sgt i32 %84, 127
  br i1 %85, label %86, label %89

86:                                               ; preds = %81
  %87 = load i32, i32* %11, align 4
  %88 = sub nsw i32 %87, 256
  store i32 %88, i32* %11, align 4
  br label %89

89:                                               ; preds = %86, %81
  %90 = load i32, i32* %11, align 4
  switch i32 %90, label %97 [
    i32 -4, label %91
    i32 -2, label %93
    i32 -1, label %95
  ]

91:                                               ; preds = %89
  %92 = load %struct.cris_opcode**, %struct.cris_opcode*** @get_opcode_entry.bdapq_m4_prefixes, align 8
  store %struct.cris_opcode** %92, %struct.cris_opcode*** %9, align 8
  br label %99

93:                                               ; preds = %89
  %94 = load %struct.cris_opcode**, %struct.cris_opcode*** @get_opcode_entry.bdapq_m2_prefixes, align 8
  store %struct.cris_opcode** %94, %struct.cris_opcode*** %9, align 8
  br label %99

95:                                               ; preds = %89
  %96 = load %struct.cris_opcode**, %struct.cris_opcode*** @get_opcode_entry.bdapq_m1_prefixes, align 8
  store %struct.cris_opcode** %96, %struct.cris_opcode*** %9, align 8
  br label %99

97:                                               ; preds = %89
  %98 = load %struct.cris_opcode**, %struct.cris_opcode*** @get_opcode_entry.rest_prefixes, align 8
  store %struct.cris_opcode** %98, %struct.cris_opcode*** %9, align 8
  br label %99

99:                                               ; preds = %97, %95, %93, %91
  br label %111

100:                                              ; preds = %75
  %101 = load %struct.cris_opcode*, %struct.cris_opcode** %10, align 8
  %102 = getelementptr inbounds %struct.cris_opcode, %struct.cris_opcode* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @DIP_OPCODE, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %108

106:                                              ; preds = %100
  %107 = load %struct.cris_opcode**, %struct.cris_opcode*** @get_opcode_entry.dip_prefixes, align 8
  store %struct.cris_opcode** %107, %struct.cris_opcode*** %9, align 8
  br label %110

108:                                              ; preds = %100
  %109 = load %struct.cris_opcode**, %struct.cris_opcode*** @get_opcode_entry.rest_prefixes, align 8
  store %struct.cris_opcode** %109, %struct.cris_opcode*** %9, align 8
  br label %110

110:                                              ; preds = %108, %106
  br label %111

111:                                              ; preds = %110, %99
  br label %112

112:                                              ; preds = %111, %48
  %113 = load i32, i32* %6, align 4
  %114 = load i32, i32* @NO_CRIS_PREFIX, align 4
  %115 = icmp ne i32 %113, %114
  br i1 %115, label %116, label %129

116:                                              ; preds = %112
  %117 = load %struct.cris_opcode**, %struct.cris_opcode*** %9, align 8
  %118 = load i32, i32* %5, align 4
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds %struct.cris_opcode*, %struct.cris_opcode** %117, i64 %119
  %121 = load %struct.cris_opcode*, %struct.cris_opcode** %120, align 8
  %122 = icmp ne %struct.cris_opcode* %121, null
  br i1 %122, label %123, label %129

123:                                              ; preds = %116
  %124 = load %struct.cris_opcode**, %struct.cris_opcode*** %9, align 8
  %125 = load i32, i32* %5, align 4
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds %struct.cris_opcode*, %struct.cris_opcode** %124, i64 %126
  %128 = load %struct.cris_opcode*, %struct.cris_opcode** %127, align 8
  store %struct.cris_opcode* %128, %struct.cris_opcode** %8, align 8
  br label %254

129:                                              ; preds = %116, %112
  %130 = load i32, i32* %6, align 4
  %131 = load i32, i32* @NO_CRIS_PREFIX, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %133, label %146

133:                                              ; preds = %129
  %134 = load %struct.cris_opcode**, %struct.cris_opcode*** @get_opcode_entry.opc_table, align 8
  %135 = load i32, i32* %5, align 4
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds %struct.cris_opcode*, %struct.cris_opcode** %134, i64 %136
  %138 = load %struct.cris_opcode*, %struct.cris_opcode** %137, align 8
  %139 = icmp ne %struct.cris_opcode* %138, null
  br i1 %139, label %140, label %146

140:                                              ; preds = %133
  %141 = load %struct.cris_opcode**, %struct.cris_opcode*** @get_opcode_entry.opc_table, align 8
  %142 = load i32, i32* %5, align 4
  %143 = zext i32 %142 to i64
  %144 = getelementptr inbounds %struct.cris_opcode*, %struct.cris_opcode** %141, i64 %143
  %145 = load %struct.cris_opcode*, %struct.cris_opcode** %144, align 8
  store %struct.cris_opcode* %145, %struct.cris_opcode** %8, align 8
  br label %253

146:                                              ; preds = %133, %129
  store i32 -1, i32* %13, align 4
  %147 = load %struct.cris_opcode*, %struct.cris_opcode** @cris_opcodes, align 8
  store %struct.cris_opcode* %147, %struct.cris_opcode** %12, align 8
  br label %148

148:                                              ; preds = %233, %146
  %149 = load %struct.cris_opcode*, %struct.cris_opcode** %12, align 8
  %150 = getelementptr inbounds %struct.cris_opcode, %struct.cris_opcode* %149, i32 0, i32 4
  %151 = load i32*, i32** %150, align 8
  %152 = icmp ne i32* %151, null
  br i1 %152, label %153, label %236

153:                                              ; preds = %148
  %154 = load %struct.cris_disasm_data*, %struct.cris_disasm_data** %7, align 8
  %155 = getelementptr inbounds %struct.cris_disasm_data, %struct.cris_disasm_data* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @cris_dis_v32, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %171

159:                                              ; preds = %153
  %160 = load %struct.cris_opcode*, %struct.cris_opcode** %12, align 8
  %161 = getelementptr inbounds %struct.cris_opcode, %struct.cris_opcode* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 8
  switch i32 %162, label %168 [
    i32 129, label %163
    i32 138, label %164
    i32 139, label %164
    i32 134, label %164
    i32 140, label %164
    i32 131, label %164
    i32 137, label %164
    i32 128, label %164
    i32 133, label %165
    i32 130, label %165
    i32 136, label %165
    i32 135, label %165
    i32 132, label %166
  ]

163:                                              ; preds = %159
  br label %170

164:                                              ; preds = %159, %159, %159, %159, %159, %159, %159
  br label %233

165:                                              ; preds = %159, %159, %159, %159
  br label %170

166:                                              ; preds = %159
  %167 = call i32 (...) @abort() #3
  unreachable

168:                                              ; preds = %159
  %169 = call i32 (...) @abort() #3
  unreachable

170:                                              ; preds = %165, %163
  br label %182

171:                                              ; preds = %153
  %172 = load %struct.cris_opcode*, %struct.cris_opcode** %12, align 8
  %173 = getelementptr inbounds %struct.cris_opcode, %struct.cris_opcode* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 8
  switch i32 %174, label %179 [
    i32 129, label %175
    i32 138, label %175
    i32 133, label %175
    i32 139, label %175
    i32 130, label %175
    i32 131, label %175
    i32 137, label %175
    i32 140, label %175
    i32 136, label %175
    i32 128, label %175
    i32 135, label %176
    i32 132, label %177
  ]

175:                                              ; preds = %171, %171, %171, %171, %171, %171, %171, %171, %171, %171
  br label %181

176:                                              ; preds = %171
  br label %233

177:                                              ; preds = %171
  %178 = call i32 (...) @abort() #3
  unreachable

179:                                              ; preds = %171
  %180 = call i32 (...) @abort() #3
  unreachable

181:                                              ; preds = %175
  br label %182

182:                                              ; preds = %181, %170
  %183 = load %struct.cris_opcode*, %struct.cris_opcode** %12, align 8
  %184 = getelementptr inbounds %struct.cris_opcode, %struct.cris_opcode* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = load i32, i32* %5, align 4
  %187 = zext i32 %186 to i64
  %188 = and i64 %185, %187
  %189 = load %struct.cris_opcode*, %struct.cris_opcode** %12, align 8
  %190 = getelementptr inbounds %struct.cris_opcode, %struct.cris_opcode* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = icmp eq i64 %188, %191
  br i1 %192, label %193, label %232

193:                                              ; preds = %182
  %194 = load %struct.cris_opcode*, %struct.cris_opcode** %12, align 8
  %195 = getelementptr inbounds %struct.cris_opcode, %struct.cris_opcode* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* %5, align 4
  %198 = and i32 %196, %197
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %232

200:                                              ; preds = %193
  %201 = load %struct.cris_opcode*, %struct.cris_opcode** %12, align 8
  %202 = getelementptr inbounds %struct.cris_opcode, %struct.cris_opcode* %201, i32 0, i32 3
  %203 = load i32, i32* %202, align 8
  %204 = load i32, i32* %5, align 4
  %205 = load i32, i32* %6, align 4
  %206 = load %struct.cris_disasm_data*, %struct.cris_disasm_data** %7, align 8
  %207 = call i32 @cris_constraint(i32 %203, i32 %204, i32 %205, %struct.cris_disasm_data* %206)
  store i32 %207, i32* %14, align 4
  %208 = icmp sge i32 %207, 0
  br i1 %208, label %209, label %232

209:                                              ; preds = %200
  %210 = load %struct.cris_opcode*, %struct.cris_opcode** %12, align 8
  %211 = getelementptr inbounds %struct.cris_opcode, %struct.cris_opcode* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = load %struct.cris_opcode*, %struct.cris_opcode** %12, align 8
  %214 = getelementptr inbounds %struct.cris_opcode, %struct.cris_opcode* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 4
  %216 = zext i32 %215 to i64
  %217 = or i64 %212, %216
  %218 = trunc i64 %217 to i32
  %219 = call i32 @number_of_bits(i32 %218)
  %220 = mul nsw i32 2, %219
  %221 = load i32, i32* %14, align 4
  %222 = add nsw i32 %221, %220
  store i32 %222, i32* %14, align 4
  %223 = load i32, i32* %13, align 4
  %224 = icmp sgt i32 %222, %223
  br i1 %224, label %225, label %232

225:                                              ; preds = %209
  %226 = load %struct.cris_opcode*, %struct.cris_opcode** %12, align 8
  store %struct.cris_opcode* %226, %struct.cris_opcode** %8, align 8
  %227 = load i32, i32* %14, align 4
  store i32 %227, i32* %13, align 4
  %228 = load i32, i32* %14, align 4
  %229 = icmp sge i32 %228, 32
  br i1 %229, label %230, label %231

230:                                              ; preds = %225
  br label %236

231:                                              ; preds = %225
  br label %232

232:                                              ; preds = %231, %209, %200, %193, %182
  br label %233

233:                                              ; preds = %232, %176, %164
  %234 = load %struct.cris_opcode*, %struct.cris_opcode** %12, align 8
  %235 = getelementptr inbounds %struct.cris_opcode, %struct.cris_opcode* %234, i32 1
  store %struct.cris_opcode* %235, %struct.cris_opcode** %12, align 8
  br label %148

236:                                              ; preds = %230, %148
  %237 = load i32, i32* %6, align 4
  %238 = load i32, i32* @NO_CRIS_PREFIX, align 4
  %239 = icmp eq i32 %237, %238
  br i1 %239, label %240, label %246

240:                                              ; preds = %236
  %241 = load %struct.cris_opcode*, %struct.cris_opcode** %8, align 8
  %242 = load %struct.cris_opcode**, %struct.cris_opcode*** @get_opcode_entry.opc_table, align 8
  %243 = load i32, i32* %5, align 4
  %244 = zext i32 %243 to i64
  %245 = getelementptr inbounds %struct.cris_opcode*, %struct.cris_opcode** %242, i64 %244
  store %struct.cris_opcode* %241, %struct.cris_opcode** %245, align 8
  br label %252

246:                                              ; preds = %236
  %247 = load %struct.cris_opcode*, %struct.cris_opcode** %8, align 8
  %248 = load %struct.cris_opcode**, %struct.cris_opcode*** %9, align 8
  %249 = load i32, i32* %5, align 4
  %250 = zext i32 %249 to i64
  %251 = getelementptr inbounds %struct.cris_opcode*, %struct.cris_opcode** %248, i64 %250
  store %struct.cris_opcode* %247, %struct.cris_opcode** %251, align 8
  br label %252

252:                                              ; preds = %246, %240
  br label %253

253:                                              ; preds = %252, %140
  br label %254

254:                                              ; preds = %253, %123
  %255 = load %struct.cris_opcode*, %struct.cris_opcode** %8, align 8
  store %struct.cris_opcode* %255, %struct.cris_opcode** %4, align 8
  br label %256

256:                                              ; preds = %254, %74, %46, %41, %36, %31, %26, %21
  %257 = load %struct.cris_opcode*, %struct.cris_opcode** %4, align 8
  ret %struct.cris_opcode* %257
}

declare dso_local %struct.cris_opcode** @calloc(i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @cris_constraint(i32, i32, i32, %struct.cris_disasm_data*) #1

declare dso_local i32 @number_of_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
