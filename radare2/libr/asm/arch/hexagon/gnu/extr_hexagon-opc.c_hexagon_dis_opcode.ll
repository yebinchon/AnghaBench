; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/hexagon/gnu/extr_hexagon-opc.c_hexagon_dis_opcode.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/hexagon/gnu/extr_hexagon-opc.c_hexagon_dis_opcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i8, i32 }
%struct.TYPE_7__ = type { i8*, i32, i32 }

@hexagon_dis_opcode.temp = internal global [40 x i8] zeroinitializer, align 16
@hexagon_dis_opcode.in_packet = internal global i32 0, align 4
@hexagon_dis_opcode.end_inner = internal global i32 0, align 4
@hexagon_dis_opcode.end_outer = internal global i32 0, align 4
@hexagon_dis_opcode.packet_addr = internal global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"  \00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"%c \00", align 1
@PACKET_BEGIN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"invalid packet bits: %.8x\00", align 1
@hexagon_operand_count = common dso_local global i64 0, align 8
@hexagon_operands = common dso_local global %struct.TYPE_6__* null, align 8
@A_IT_EXTENDER = common dso_local global i32 0, align 4
@HEXAGON_OPERAND_IS_KXER = common dso_local global i32 0, align 4
@HEXAGON_OPERAND_IS_IMMEDIATE = common dso_local global i32 0, align 4
@EXTENDABLE_LOWER_CASE_IMMEDIATE = common dso_local global i32 0, align 4
@EXTENDABLE_UPPER_CASE_IMMEDIATE = common dso_local global i32 0, align 4
@HEXAGON_OPERAND_IS_KXED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"<unknown insn 0x%08x>\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"unknown operand: %s\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c" %c\00", align 1
@PACKET_END = common dso_local global i32 0, align 4
@PACKET_END_INNER = common dso_local global i8* null, align 8
@PACKET_END_OUTER = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hexagon_dis_opcode(i8* %0, i32 %1, i32 %2, %struct.TYPE_7__* %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_6__, align 4
  %19 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.TYPE_7__* %3, %struct.TYPE_7__** %10, align 8
  store i8** %4, i8*** %11, align 8
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @HEXAGON_END_PACKET_GET(i32 %20)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* @FALSE, align 4
  store i32 %22, i32* %13, align 4
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %14, align 8
  %26 = load i8*, i8** %7, align 8
  store i8* %26, i8** %15, align 8
  %27 = load i32, i32* %12, align 4
  switch i32 %27, label %75 [
    i32 129, label %28
    i32 128, label %28
    i32 131, label %41
    i32 130, label %41
  ]

28:                                               ; preds = %5, %5
  %29 = load i32, i32* @hexagon_dis_opcode.in_packet, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %28
  %32 = load i8*, i8** %15, align 8
  %33 = call i32 (i8*, i8*, ...) @sprintf(i8* %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %34 = load i8*, i8** %15, align 8
  %35 = sext i32 %33 to i64
  %36 = getelementptr inbounds i8, i8* %34, i64 %35
  store i8* %36, i8** %15, align 8
  br label %39

37:                                               ; preds = %28
  %38 = load i32, i32* %9, align 4
  store i32 %38, i32* @hexagon_dis_opcode.packet_addr, align 4
  br label %39

39:                                               ; preds = %37, %31
  %40 = load i32, i32* @TRUE, align 4
  store i32 %40, i32* %13, align 4
  br label %84

41:                                               ; preds = %5, %5
  %42 = load i32, i32* @hexagon_dis_opcode.in_packet, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %52, label %44

44:                                               ; preds = %41
  %45 = load i8*, i8** %15, align 8
  %46 = load i32, i32* @PACKET_BEGIN, align 4
  %47 = call i32 (i8*, i8*, ...) @sprintf(i8* %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  %48 = load i8*, i8** %15, align 8
  %49 = sext i32 %47 to i64
  %50 = getelementptr inbounds i8, i8* %48, i64 %49
  store i8* %50, i8** %15, align 8
  %51 = load i32, i32* %9, align 4
  store i32 %51, i32* @hexagon_dis_opcode.packet_addr, align 4
  br label %58

52:                                               ; preds = %41
  %53 = load i8*, i8** %15, align 8
  %54 = call i32 (i8*, i8*, ...) @sprintf(i8* %53, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %55 = load i8*, i8** %15, align 8
  %56 = sext i32 %54 to i64
  %57 = getelementptr inbounds i8, i8* %55, i64 %56
  store i8* %57, i8** %15, align 8
  br label %58

58:                                               ; preds = %52, %44
  %59 = load i32, i32* @hexagon_dis_opcode.in_packet, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* @hexagon_dis_opcode.in_packet, align 4
  %61 = load i32, i32* %12, align 4
  %62 = icmp eq i32 %61, 131
  br i1 %62, label %63, label %74

63:                                               ; preds = %58
  %64 = load i32, i32* @hexagon_dis_opcode.in_packet, align 4
  %65 = icmp eq i32 %64, 1
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  %67 = load i32, i32* @TRUE, align 4
  store i32 %67, i32* @hexagon_dis_opcode.end_inner, align 4
  br label %68

68:                                               ; preds = %66, %63
  %69 = load i32, i32* @hexagon_dis_opcode.in_packet, align 4
  %70 = icmp eq i32 %69, 2
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  %72 = load i32, i32* @TRUE, align 4
  store i32 %72, i32* @hexagon_dis_opcode.end_outer, align 4
  br label %73

73:                                               ; preds = %71, %68
  br label %74

74:                                               ; preds = %73, %58
  br label %84

75:                                               ; preds = %5
  %76 = load i8**, i8*** %11, align 8
  %77 = icmp ne i8** %76, null
  br i1 %77, label %78, label %82

78:                                               ; preds = %75
  %79 = load i32, i32* %12, align 4
  %80 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @hexagon_dis_opcode.temp, i64 0, i64 0), i32 40, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %79)
  %81 = load i8**, i8*** %11, align 8
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @hexagon_dis_opcode.temp, i64 0, i64 0), i8** %81, align 8
  br label %82

82:                                               ; preds = %78, %75
  %83 = load i32, i32* @FALSE, align 4
  store i32 %83, i32* %6, align 4
  br label %300

84:                                               ; preds = %74, %39
  br label %85

85:                                               ; preds = %259, %84
  %86 = load i8*, i8** %14, align 8
  %87 = load i8, i8* %86, align 1
  %88 = icmp ne i8 %87, 0
  br i1 %88, label %89, label %260

89:                                               ; preds = %85
  %90 = load i8*, i8** %14, align 8
  %91 = load i8, i8* %90, align 1
  %92 = call i64 @ISUPPER(i8 signext %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %89
  %95 = load i8*, i8** %14, align 8
  %96 = load i8, i8* %95, align 1
  %97 = call signext i8 @TOUPPER(i8 signext %96)
  %98 = sext i8 %97 to i32
  %99 = icmp ne i32 %98, 73
  br i1 %99, label %105, label %100

100:                                              ; preds = %94, %89
  %101 = load i8*, i8** %14, align 8
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp eq i32 %103, 35
  br i1 %104, label %105, label %216

105:                                              ; preds = %100, %94
  %106 = load i32, i32* @FALSE, align 4
  store i32 %106, i32* %16, align 4
  store i64 0, i64* %17, align 8
  br label %107

107:                                              ; preds = %197, %105
  %108 = load i64, i64* %17, align 8
  %109 = load i64, i64* @hexagon_operand_count, align 8
  %110 = icmp ult i64 %108, %109
  br i1 %110, label %111, label %200

111:                                              ; preds = %107
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** @hexagon_operands, align 8
  %113 = load i64, i64* %17, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i64 %113
  %115 = bitcast %struct.TYPE_6__* %18 to i8*
  %116 = bitcast %struct.TYPE_6__* %114 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %115, i8* align 4 %116, i64 12, i1 false)
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = call i64 @strlen(i32 %118)
  store i64 %119, i64* %19, align 8
  %120 = load i8*, i8** %14, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = load i64, i64* %19, align 8
  %124 = call i32 @strncmp(i8* %120, i32 %122, i64 %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %196, label %126

126:                                              ; preds = %111
  %127 = load i32, i32* @TRUE, align 4
  store i32 %127, i32* %16, align 4
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @A_IT_EXTENDER, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %139

134:                                              ; preds = %126
  %135 = load i32, i32* @HEXAGON_OPERAND_IS_KXER, align 4
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = or i32 %137, %135
  store i32 %138, i32* %136, align 4
  br label %175

139:                                              ; preds = %126
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @HEXAGON_OPERAND_IS_IMMEDIATE, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %174

145:                                              ; preds = %139
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* @EXTENDABLE_LOWER_CASE_IMMEDIATE, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %145
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %154 = load i8, i8* %153, align 4
  %155 = call i64 @ISLOWER(i8 signext %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %169, label %157

157:                                              ; preds = %152, %145
  %158 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* @EXTENDABLE_UPPER_CASE_IMMEDIATE, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %174

164:                                              ; preds = %157
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %166 = load i8, i8* %165, align 4
  %167 = call i64 @ISUPPER(i8 signext %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %174

169:                                              ; preds = %164, %152
  %170 = load i32, i32* @HEXAGON_OPERAND_IS_KXED, align 4
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = or i32 %172, %170
  store i32 %173, i32* %171, align 4
  br label %174

174:                                              ; preds = %169, %164, %157, %139
  br label %175

175:                                              ; preds = %174, %134
  %176 = load i32, i32* %8, align 4
  %177 = load i32, i32* %9, align 4
  %178 = load i32, i32* @hexagon_dis_opcode.packet_addr, align 4
  %179 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 4
  %182 = load i8*, i8** %15, align 8
  %183 = load i8**, i8*** %11, align 8
  %184 = call i8* @hexagon_dis_operand(%struct.TYPE_6__* %18, i32 %176, i32 %177, i32 %178, i32 %181, i8* %182, i8** %183)
  store i8* %184, i8** %15, align 8
  %185 = load i8*, i8** %15, align 8
  %186 = icmp ne i8* %185, null
  br i1 %186, label %192, label %187

187:                                              ; preds = %175
  %188 = load i8*, i8** %7, align 8
  %189 = load i32, i32* %8, align 4
  %190 = call i32 (i8*, i8*, ...) @sprintf(i8* %188, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %189)
  %191 = load i32, i32* @FALSE, align 4
  store i32 %191, i32* %6, align 4
  br label %300

192:                                              ; preds = %175
  %193 = load i64, i64* %19, align 8
  %194 = load i8*, i8** %14, align 8
  %195 = getelementptr inbounds i8, i8* %194, i64 %193
  store i8* %195, i8** %14, align 8
  br label %200

196:                                              ; preds = %111
  br label %197

197:                                              ; preds = %196
  %198 = load i64, i64* %17, align 8
  %199 = add i64 %198, 1
  store i64 %199, i64* %17, align 8
  br label %107

200:                                              ; preds = %192, %107
  %201 = load i32, i32* %16, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %215, label %203

203:                                              ; preds = %200
  %204 = load i8*, i8** %7, align 8
  %205 = load i32, i32* %8, align 4
  %206 = call i32 (i8*, i8*, ...) @sprintf(i8* %204, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %205)
  %207 = load i8**, i8*** %11, align 8
  %208 = icmp ne i8** %207, null
  br i1 %208, label %209, label %213

209:                                              ; preds = %203
  %210 = load i8*, i8** %14, align 8
  %211 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @hexagon_dis_opcode.temp, i64 0, i64 0), i32 40, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8* %210)
  %212 = load i8**, i8*** %11, align 8
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @hexagon_dis_opcode.temp, i64 0, i64 0), i8** %212, align 8
  br label %213

213:                                              ; preds = %209, %203
  %214 = load i32, i32* @FALSE, align 4
  store i32 %214, i32* %6, align 4
  br label %300

215:                                              ; preds = %200
  br label %259

216:                                              ; preds = %100
  %217 = load i8*, i8** %14, align 8
  %218 = load i8, i8* %217, align 1
  %219 = sext i8 %218 to i32
  switch i32 %219, label %252 [
    i32 40, label %220
    i32 33, label %220
    i32 41, label %236
    i32 46, label %236
    i32 44, label %236
    i32 58, label %236
  ]

220:                                              ; preds = %216, %216
  %221 = load i8*, i8** %14, align 8
  %222 = getelementptr inbounds i8, i8* %221, i32 1
  store i8* %222, i8** %14, align 8
  %223 = load i8, i8* %221, align 1
  %224 = load i8*, i8** %15, align 8
  %225 = getelementptr inbounds i8, i8* %224, i32 1
  store i8* %225, i8** %15, align 8
  store i8 %223, i8* %224, align 1
  br label %226

226:                                              ; preds = %232, %220
  %227 = load i8*, i8** %14, align 8
  %228 = getelementptr inbounds i8, i8* %227, i64 0
  %229 = load i8, i8* %228, align 1
  %230 = call i32 @ISBLANK(i8 signext %229)
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %235

232:                                              ; preds = %226
  %233 = load i8*, i8** %14, align 8
  %234 = getelementptr inbounds i8, i8* %233, i32 1
  store i8* %234, i8** %14, align 8
  br label %226

235:                                              ; preds = %226
  br label %258

236:                                              ; preds = %216, %216, %216, %216
  br label %237

237:                                              ; preds = %243, %236
  %238 = load i8*, i8** %15, align 8
  %239 = getelementptr inbounds i8, i8* %238, i64 -1
  %240 = load i8, i8* %239, align 1
  %241 = call i32 @ISBLANK(i8 signext %240)
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %246

243:                                              ; preds = %237
  %244 = load i8*, i8** %15, align 8
  %245 = getelementptr inbounds i8, i8* %244, i32 -1
  store i8* %245, i8** %15, align 8
  br label %237

246:                                              ; preds = %237
  %247 = load i8*, i8** %14, align 8
  %248 = getelementptr inbounds i8, i8* %247, i32 1
  store i8* %248, i8** %14, align 8
  %249 = load i8, i8* %247, align 1
  %250 = load i8*, i8** %15, align 8
  %251 = getelementptr inbounds i8, i8* %250, i32 1
  store i8* %251, i8** %15, align 8
  store i8 %249, i8* %250, align 1
  br label %258

252:                                              ; preds = %216
  %253 = load i8*, i8** %14, align 8
  %254 = getelementptr inbounds i8, i8* %253, i32 1
  store i8* %254, i8** %14, align 8
  %255 = load i8, i8* %253, align 1
  %256 = load i8*, i8** %15, align 8
  %257 = getelementptr inbounds i8, i8* %256, i32 1
  store i8* %257, i8** %15, align 8
  store i8 %255, i8* %256, align 1
  br label %258

258:                                              ; preds = %252, %246, %235
  br label %259

259:                                              ; preds = %258, %215
  br label %85

260:                                              ; preds = %85
  %261 = load i8*, i8** %15, align 8
  store i8 0, i8* %261, align 1
  %262 = load i32, i32* %13, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %298

264:                                              ; preds = %260
  %265 = load i32, i32* @hexagon_dis_opcode.in_packet, align 4
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %294

267:                                              ; preds = %264
  %268 = load i8*, i8** %15, align 8
  %269 = load i32, i32* @PACKET_END, align 4
  %270 = call i32 (i8*, i8*, ...) @sprintf(i8* %268, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %269)
  %271 = load i8*, i8** %15, align 8
  %272 = sext i32 %270 to i64
  %273 = getelementptr inbounds i8, i8* %271, i64 %272
  store i8* %273, i8** %15, align 8
  %274 = load i32, i32* @hexagon_dis_opcode.end_inner, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %283

276:                                              ; preds = %267
  %277 = load i8*, i8** %15, align 8
  %278 = load i8*, i8** @PACKET_END_INNER, align 8
  %279 = call i32 (i8*, i8*, ...) @sprintf(i8* %277, i8* %278)
  %280 = load i8*, i8** %15, align 8
  %281 = sext i32 %279 to i64
  %282 = getelementptr inbounds i8, i8* %280, i64 %281
  store i8* %282, i8** %15, align 8
  br label %283

283:                                              ; preds = %276, %267
  %284 = load i32, i32* @hexagon_dis_opcode.end_outer, align 4
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %293

286:                                              ; preds = %283
  %287 = load i8*, i8** %15, align 8
  %288 = load i8*, i8** @PACKET_END_OUTER, align 8
  %289 = call i32 (i8*, i8*, ...) @sprintf(i8* %287, i8* %288)
  %290 = load i8*, i8** %15, align 8
  %291 = sext i32 %289 to i64
  %292 = getelementptr inbounds i8, i8* %290, i64 %291
  store i8* %292, i8** %15, align 8
  br label %293

293:                                              ; preds = %286, %283
  br label %294

294:                                              ; preds = %293, %264
  %295 = load i32, i32* @FALSE, align 4
  store i32 %295, i32* @hexagon_dis_opcode.in_packet, align 4
  %296 = load i32, i32* @FALSE, align 4
  store i32 %296, i32* @hexagon_dis_opcode.end_inner, align 4
  %297 = load i32, i32* @FALSE, align 4
  store i32 %297, i32* @hexagon_dis_opcode.end_outer, align 4
  br label %298

298:                                              ; preds = %294, %260
  %299 = load i32, i32* @TRUE, align 4
  store i32 %299, i32* %6, align 4
  br label %300

300:                                              ; preds = %298, %213, %187, %82
  %301 = load i32, i32* %6, align 4
  ret i32 %301
}

declare dso_local i32 @HEXAGON_END_PACKET_GET(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i64 @ISUPPER(i8 signext) #1

declare dso_local signext i8 @TOUPPER(i8 signext) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @strncmp(i8*, i32, i64) #1

declare dso_local i64 @ISLOWER(i8 signext) #1

declare dso_local i8* @hexagon_dis_operand(%struct.TYPE_6__*, i32, i32, i32, i32, i8*, i8**) #1

declare dso_local i32 @ISBLANK(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
