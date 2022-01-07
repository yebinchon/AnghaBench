; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/msp430/extr_msp430_disas.c_decode_emulation.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/msp430/extr_msp430_disas.c_decode_emulation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msp430_cmd = type { i8*, i8*, i32, i32 }

@MSP430_ADDC = common dso_local global i64 0, align 8
@MSP430_R3 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"adc.b\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"adc\00", align 1
@msp430_register_names = common dso_local global i8** null, align 8
@MSP430_MOV = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [4 x i8] c"nop\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"clr.b\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"clr\00", align 1
@MSP430_SP = common dso_local global i64 0, align 8
@MSP430_PC = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [4 x i8] c"ret\00", align 1
@MSP430_ONEOP = common dso_local global i32 0, align 4
@MSP430_RETI = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"pop.b\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"pop\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"br\00", align 1
@MSP430_BIC = common dso_local global i64 0, align 8
@MSP430_SR = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [5 x i8] c"clrn\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"clrz\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"dint\00", align 1
@MSP430_BIS = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [5 x i8] c"eint\00", align 1
@MSP430_DADD = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [7 x i8] c"dadc.b\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"dadc\00", align 1
@MSP430_SUB = common dso_local global i64 0, align 8
@.str.16 = private unnamed_addr constant [6 x i8] c"dec.b\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"dec\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"decd.b\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"decd\00", align 1
@MSP430_ADD = common dso_local global i64 0, align 8
@.str.20 = private unnamed_addr constant [6 x i8] c"inc.b\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"inc\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"incd.b\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"incd\00", align 1
@MSP430_XOR = common dso_local global i64 0, align 8
@.str.24 = private unnamed_addr constant [6 x i8] c"inv.b\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"inv\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"rla.b\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"rla\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"rlc.b\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"rlc\00", align 1
@MSP430_SUBC = common dso_local global i64 0, align 8
@.str.30 = private unnamed_addr constant [6 x i8] c"sbc.b\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"sbc\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"setc\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"setn\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"setz\00", align 1
@MSP430_CMP = common dso_local global i64 0, align 8
@.str.35 = private unnamed_addr constant [6 x i8] c"tst.b\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c"tst\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.msp430_cmd*)* @decode_emulation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_emulation(i32 %0, %struct.msp430_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.msp430_cmd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store %struct.msp430_cmd* %1, %struct.msp430_cmd** %4, align 8
  store i32 -1, i32* %5, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call i64 @get_as(i32 %12)
  store i64 %13, i64* %6, align 8
  %14 = load i32, i32* %3, align 4
  %15 = call i64 @get_ad(i32 %14)
  store i64 %15, i64* %7, align 8
  %16 = load i32, i32* %3, align 4
  %17 = call i64 @get_src(i32 %16)
  store i64 %17, i64* %8, align 8
  %18 = load i32, i32* %3, align 4
  %19 = call i64 @get_dst(i32 %18)
  store i64 %19, i64* %9, align 8
  %20 = load i32, i32* %3, align 4
  %21 = call i64 @get_bw(i32 %20)
  store i64 %21, i64* %10, align 8
  %22 = load i32, i32* %3, align 4
  %23 = call i64 @get_twoop_opcode(i32 %22)
  store i64 %23, i64* %11, align 8
  %24 = load i64, i64* %11, align 8
  %25 = load i64, i64* @MSP430_ADDC, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %51

27:                                               ; preds = %2
  %28 = load i64, i64* %6, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %51

30:                                               ; preds = %27
  %31 = load i64, i64* %8, align 8
  %32 = load i64, i64* @MSP430_R3, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %51

34:                                               ; preds = %30
  %35 = load %struct.msp430_cmd*, %struct.msp430_cmd** %4, align 8
  %36 = getelementptr inbounds %struct.msp430_cmd, %struct.msp430_cmd* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = load i64, i64* %10, align 8
  %39 = icmp ne i64 %38, 0
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %42 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %37, i32 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %41)
  %43 = load %struct.msp430_cmd*, %struct.msp430_cmd** %4, align 8
  %44 = getelementptr inbounds %struct.msp430_cmd, %struct.msp430_cmd* %43, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  %46 = load i8**, i8*** @msp430_register_names, align 8
  %47 = load i64, i64* %9, align 8
  %48 = getelementptr inbounds i8*, i8** %46, i64 %47
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %45, i32 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %49)
  br label %573

51:                                               ; preds = %30, %27, %2
  %52 = load i64, i64* %11, align 8
  %53 = load i64, i64* @MSP430_MOV, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %90

55:                                               ; preds = %51
  %56 = load i64, i64* %6, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %90

58:                                               ; preds = %55
  %59 = load i64, i64* %8, align 8
  %60 = load i64, i64* @MSP430_R3, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %90

62:                                               ; preds = %58
  %63 = load i64, i64* %7, align 8
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %78

65:                                               ; preds = %62
  %66 = load i64, i64* %9, align 8
  %67 = load i64, i64* @MSP430_R3, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %78

69:                                               ; preds = %65
  %70 = load %struct.msp430_cmd*, %struct.msp430_cmd** %4, align 8
  %71 = getelementptr inbounds %struct.msp430_cmd, %struct.msp430_cmd* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %72, i32 8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %74 = load %struct.msp430_cmd*, %struct.msp430_cmd** %4, align 8
  %75 = getelementptr inbounds %struct.msp430_cmd, %struct.msp430_cmd* %74, i32 0, i32 1
  %76 = load i8*, i8** %75, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 0
  store i8 0, i8* %77, align 1
  br label %89

78:                                               ; preds = %65, %62
  %79 = load %struct.msp430_cmd*, %struct.msp430_cmd** %4, align 8
  %80 = getelementptr inbounds %struct.msp430_cmd, %struct.msp430_cmd* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = load i64, i64* %10, align 8
  %83 = icmp ne i64 %82, 0
  %84 = zext i1 %83 to i64
  %85 = select i1 %83, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)
  %86 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %81, i32 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %85)
  %87 = load %struct.msp430_cmd*, %struct.msp430_cmd** %4, align 8
  %88 = call i32 @remove_first_operand(%struct.msp430_cmd* %87)
  br label %89

89:                                               ; preds = %78, %69
  br label %572

90:                                               ; preds = %58, %55, %51
  %91 = load i64, i64* %11, align 8
  %92 = load i64, i64* @MSP430_MOV, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %132

94:                                               ; preds = %90
  %95 = load i64, i64* %6, align 8
  %96 = icmp eq i64 %95, 3
  br i1 %96, label %97, label %132

97:                                               ; preds = %94
  %98 = load i64, i64* %8, align 8
  %99 = load i64, i64* @MSP430_SP, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %132

101:                                              ; preds = %97
  %102 = load i64, i64* %9, align 8
  %103 = load i64, i64* @MSP430_PC, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %120

105:                                              ; preds = %101
  %106 = load %struct.msp430_cmd*, %struct.msp430_cmd** %4, align 8
  %107 = getelementptr inbounds %struct.msp430_cmd, %struct.msp430_cmd* %106, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8
  %109 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %108, i32 8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %110 = load i32, i32* @MSP430_ONEOP, align 4
  %111 = load %struct.msp430_cmd*, %struct.msp430_cmd** %4, align 8
  %112 = getelementptr inbounds %struct.msp430_cmd, %struct.msp430_cmd* %111, i32 0, i32 3
  store i32 %110, i32* %112, align 4
  %113 = load i32, i32* @MSP430_RETI, align 4
  %114 = load %struct.msp430_cmd*, %struct.msp430_cmd** %4, align 8
  %115 = getelementptr inbounds %struct.msp430_cmd, %struct.msp430_cmd* %114, i32 0, i32 2
  store i32 %113, i32* %115, align 8
  %116 = load %struct.msp430_cmd*, %struct.msp430_cmd** %4, align 8
  %117 = getelementptr inbounds %struct.msp430_cmd, %struct.msp430_cmd* %116, i32 0, i32 1
  %118 = load i8*, i8** %117, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 0
  store i8 0, i8* %119, align 1
  br label %131

120:                                              ; preds = %101
  %121 = load %struct.msp430_cmd*, %struct.msp430_cmd** %4, align 8
  %122 = getelementptr inbounds %struct.msp430_cmd, %struct.msp430_cmd* %121, i32 0, i32 0
  %123 = load i8*, i8** %122, align 8
  %124 = load i64, i64* %10, align 8
  %125 = icmp ne i64 %124, 0
  %126 = zext i1 %125 to i64
  %127 = select i1 %125, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0)
  %128 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %123, i32 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %127)
  %129 = load %struct.msp430_cmd*, %struct.msp430_cmd** %4, align 8
  %130 = call i32 @remove_first_operand(%struct.msp430_cmd* %129)
  br label %131

131:                                              ; preds = %120, %105
  br label %571

132:                                              ; preds = %97, %94, %90
  %133 = load i64, i64* %11, align 8
  %134 = load i64, i64* @MSP430_MOV, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %150

136:                                              ; preds = %132
  %137 = load i64, i64* %7, align 8
  %138 = icmp eq i64 %137, 0
  br i1 %138, label %139, label %150

139:                                              ; preds = %136
  %140 = load i64, i64* %9, align 8
  %141 = load i64, i64* @MSP430_PC, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %150

143:                                              ; preds = %139
  %144 = load %struct.msp430_cmd*, %struct.msp430_cmd** %4, align 8
  %145 = getelementptr inbounds %struct.msp430_cmd, %struct.msp430_cmd* %144, i32 0, i32 0
  %146 = load i8*, i8** %145, align 8
  %147 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %146, i32 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  %148 = load %struct.msp430_cmd*, %struct.msp430_cmd** %4, align 8
  %149 = call i32 @remove_second_operand(%struct.msp430_cmd* %148)
  br label %570

150:                                              ; preds = %139, %136, %132
  %151 = load i64, i64* %11, align 8
  %152 = load i64, i64* @MSP430_BIC, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %177

154:                                              ; preds = %150
  %155 = load i64, i64* %6, align 8
  %156 = icmp eq i64 %155, 2
  br i1 %156, label %157, label %177

157:                                              ; preds = %154
  %158 = load i64, i64* %8, align 8
  %159 = load i64, i64* @MSP430_SR, align 8
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %161, label %177

161:                                              ; preds = %157
  %162 = load i64, i64* %9, align 8
  %163 = load i64, i64* @MSP430_SR, align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %165, label %177

165:                                              ; preds = %161
  %166 = load i64, i64* %7, align 8
  %167 = icmp eq i64 %166, 0
  br i1 %167, label %168, label %177

168:                                              ; preds = %165
  %169 = load %struct.msp430_cmd*, %struct.msp430_cmd** %4, align 8
  %170 = getelementptr inbounds %struct.msp430_cmd, %struct.msp430_cmd* %169, i32 0, i32 0
  %171 = load i8*, i8** %170, align 8
  %172 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %171, i32 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %173 = load %struct.msp430_cmd*, %struct.msp430_cmd** %4, align 8
  %174 = getelementptr inbounds %struct.msp430_cmd, %struct.msp430_cmd* %173, i32 0, i32 1
  %175 = load i8*, i8** %174, align 8
  %176 = getelementptr inbounds i8, i8* %175, i64 0
  store i8 0, i8* %176, align 1
  br label %569

177:                                              ; preds = %165, %161, %157, %154, %150
  %178 = load i64, i64* %11, align 8
  %179 = load i64, i64* @MSP430_BIC, align 8
  %180 = icmp eq i64 %178, %179
  br i1 %180, label %181, label %204

181:                                              ; preds = %177
  %182 = load i64, i64* %6, align 8
  %183 = icmp eq i64 %182, 2
  br i1 %183, label %184, label %204

184:                                              ; preds = %181
  %185 = load i64, i64* %8, align 8
  %186 = load i64, i64* @MSP430_R3, align 8
  %187 = icmp eq i64 %185, %186
  br i1 %187, label %188, label %204

188:                                              ; preds = %184
  %189 = load i64, i64* %9, align 8
  %190 = load i64, i64* @MSP430_SR, align 8
  %191 = icmp eq i64 %189, %190
  br i1 %191, label %192, label %204

192:                                              ; preds = %188
  %193 = load i64, i64* %7, align 8
  %194 = icmp eq i64 %193, 0
  br i1 %194, label %195, label %204

195:                                              ; preds = %192
  %196 = load %struct.msp430_cmd*, %struct.msp430_cmd** %4, align 8
  %197 = getelementptr inbounds %struct.msp430_cmd, %struct.msp430_cmd* %196, i32 0, i32 0
  %198 = load i8*, i8** %197, align 8
  %199 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %198, i32 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  %200 = load %struct.msp430_cmd*, %struct.msp430_cmd** %4, align 8
  %201 = getelementptr inbounds %struct.msp430_cmd, %struct.msp430_cmd* %200, i32 0, i32 1
  %202 = load i8*, i8** %201, align 8
  %203 = getelementptr inbounds i8, i8* %202, i64 0
  store i8 0, i8* %203, align 1
  br label %568

204:                                              ; preds = %192, %188, %184, %181, %177
  %205 = load i64, i64* %11, align 8
  %206 = load i64, i64* @MSP430_BIC, align 8
  %207 = icmp eq i64 %205, %206
  br i1 %207, label %208, label %231

208:                                              ; preds = %204
  %209 = load i64, i64* %6, align 8
  %210 = icmp eq i64 %209, 3
  br i1 %210, label %211, label %231

211:                                              ; preds = %208
  %212 = load i64, i64* %8, align 8
  %213 = load i64, i64* @MSP430_SR, align 8
  %214 = icmp eq i64 %212, %213
  br i1 %214, label %215, label %231

215:                                              ; preds = %211
  %216 = load i64, i64* %9, align 8
  %217 = load i64, i64* @MSP430_SR, align 8
  %218 = icmp eq i64 %216, %217
  br i1 %218, label %219, label %231

219:                                              ; preds = %215
  %220 = load i64, i64* %7, align 8
  %221 = icmp eq i64 %220, 0
  br i1 %221, label %222, label %231

222:                                              ; preds = %219
  %223 = load %struct.msp430_cmd*, %struct.msp430_cmd** %4, align 8
  %224 = getelementptr inbounds %struct.msp430_cmd, %struct.msp430_cmd* %223, i32 0, i32 0
  %225 = load i8*, i8** %224, align 8
  %226 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %225, i32 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  %227 = load %struct.msp430_cmd*, %struct.msp430_cmd** %4, align 8
  %228 = getelementptr inbounds %struct.msp430_cmd, %struct.msp430_cmd* %227, i32 0, i32 1
  %229 = load i8*, i8** %228, align 8
  %230 = getelementptr inbounds i8, i8* %229, i64 0
  store i8 0, i8* %230, align 1
  br label %567

231:                                              ; preds = %219, %215, %211, %208, %204
  %232 = load i64, i64* %11, align 8
  %233 = load i64, i64* @MSP430_BIS, align 8
  %234 = icmp eq i64 %232, %233
  br i1 %234, label %235, label %258

235:                                              ; preds = %231
  %236 = load i64, i64* %6, align 8
  %237 = icmp eq i64 %236, 3
  br i1 %237, label %238, label %258

238:                                              ; preds = %235
  %239 = load i64, i64* %8, align 8
  %240 = load i64, i64* @MSP430_SR, align 8
  %241 = icmp eq i64 %239, %240
  br i1 %241, label %242, label %258

242:                                              ; preds = %238
  %243 = load i64, i64* %9, align 8
  %244 = load i64, i64* @MSP430_SR, align 8
  %245 = icmp eq i64 %243, %244
  br i1 %245, label %246, label %258

246:                                              ; preds = %242
  %247 = load i64, i64* %7, align 8
  %248 = icmp eq i64 %247, 0
  br i1 %248, label %249, label %258

249:                                              ; preds = %246
  %250 = load %struct.msp430_cmd*, %struct.msp430_cmd** %4, align 8
  %251 = getelementptr inbounds %struct.msp430_cmd, %struct.msp430_cmd* %250, i32 0, i32 0
  %252 = load i8*, i8** %251, align 8
  %253 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %252, i32 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0))
  %254 = load %struct.msp430_cmd*, %struct.msp430_cmd** %4, align 8
  %255 = getelementptr inbounds %struct.msp430_cmd, %struct.msp430_cmd* %254, i32 0, i32 1
  %256 = load i8*, i8** %255, align 8
  %257 = getelementptr inbounds i8, i8* %256, i64 0
  store i8 0, i8* %257, align 1
  br label %566

258:                                              ; preds = %246, %242, %238, %235, %231
  %259 = load i64, i64* %11, align 8
  %260 = load i64, i64* @MSP430_DADD, align 8
  %261 = icmp eq i64 %259, %260
  br i1 %261, label %262, label %280

262:                                              ; preds = %258
  %263 = load i64, i64* %6, align 8
  %264 = icmp eq i64 %263, 0
  br i1 %264, label %265, label %280

265:                                              ; preds = %262
  %266 = load i64, i64* %8, align 8
  %267 = load i64, i64* @MSP430_R3, align 8
  %268 = icmp eq i64 %266, %267
  br i1 %268, label %269, label %280

269:                                              ; preds = %265
  %270 = load %struct.msp430_cmd*, %struct.msp430_cmd** %4, align 8
  %271 = getelementptr inbounds %struct.msp430_cmd, %struct.msp430_cmd* %270, i32 0, i32 0
  %272 = load i8*, i8** %271, align 8
  %273 = load i64, i64* %10, align 8
  %274 = icmp ne i64 %273, 0
  %275 = zext i1 %274 to i64
  %276 = select i1 %274, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0)
  %277 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %272, i32 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %276)
  %278 = load %struct.msp430_cmd*, %struct.msp430_cmd** %4, align 8
  %279 = call i32 @remove_first_operand(%struct.msp430_cmd* %278)
  br label %565

280:                                              ; preds = %265, %262, %258
  %281 = load i64, i64* %11, align 8
  %282 = load i64, i64* @MSP430_SUB, align 8
  %283 = icmp eq i64 %281, %282
  br i1 %283, label %284, label %302

284:                                              ; preds = %280
  %285 = load i64, i64* %6, align 8
  %286 = icmp eq i64 %285, 1
  br i1 %286, label %287, label %302

287:                                              ; preds = %284
  %288 = load i64, i64* %8, align 8
  %289 = load i64, i64* @MSP430_R3, align 8
  %290 = icmp eq i64 %288, %289
  br i1 %290, label %291, label %302

291:                                              ; preds = %287
  %292 = load %struct.msp430_cmd*, %struct.msp430_cmd** %4, align 8
  %293 = getelementptr inbounds %struct.msp430_cmd, %struct.msp430_cmd* %292, i32 0, i32 0
  %294 = load i8*, i8** %293, align 8
  %295 = load i64, i64* %10, align 8
  %296 = icmp ne i64 %295, 0
  %297 = zext i1 %296 to i64
  %298 = select i1 %296, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0)
  %299 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %294, i32 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %298)
  %300 = load %struct.msp430_cmd*, %struct.msp430_cmd** %4, align 8
  %301 = call i32 @remove_first_operand(%struct.msp430_cmd* %300)
  br label %564

302:                                              ; preds = %287, %284, %280
  %303 = load i64, i64* %11, align 8
  %304 = load i64, i64* @MSP430_SUB, align 8
  %305 = icmp eq i64 %303, %304
  br i1 %305, label %306, label %324

306:                                              ; preds = %302
  %307 = load i64, i64* %6, align 8
  %308 = icmp eq i64 %307, 2
  br i1 %308, label %309, label %324

309:                                              ; preds = %306
  %310 = load i64, i64* %8, align 8
  %311 = load i64, i64* @MSP430_R3, align 8
  %312 = icmp eq i64 %310, %311
  br i1 %312, label %313, label %324

313:                                              ; preds = %309
  %314 = load %struct.msp430_cmd*, %struct.msp430_cmd** %4, align 8
  %315 = getelementptr inbounds %struct.msp430_cmd, %struct.msp430_cmd* %314, i32 0, i32 0
  %316 = load i8*, i8** %315, align 8
  %317 = load i64, i64* %10, align 8
  %318 = icmp ne i64 %317, 0
  %319 = zext i1 %318 to i64
  %320 = select i1 %318, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0)
  %321 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %316, i32 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %320)
  %322 = load %struct.msp430_cmd*, %struct.msp430_cmd** %4, align 8
  %323 = call i32 @remove_first_operand(%struct.msp430_cmd* %322)
  br label %563

324:                                              ; preds = %309, %306, %302
  %325 = load i64, i64* %11, align 8
  %326 = load i64, i64* @MSP430_ADD, align 8
  %327 = icmp eq i64 %325, %326
  br i1 %327, label %328, label %346

328:                                              ; preds = %324
  %329 = load i64, i64* %6, align 8
  %330 = icmp eq i64 %329, 1
  br i1 %330, label %331, label %346

331:                                              ; preds = %328
  %332 = load i64, i64* %8, align 8
  %333 = load i64, i64* @MSP430_R3, align 8
  %334 = icmp eq i64 %332, %333
  br i1 %334, label %335, label %346

335:                                              ; preds = %331
  %336 = load %struct.msp430_cmd*, %struct.msp430_cmd** %4, align 8
  %337 = getelementptr inbounds %struct.msp430_cmd, %struct.msp430_cmd* %336, i32 0, i32 0
  %338 = load i8*, i8** %337, align 8
  %339 = load i64, i64* %10, align 8
  %340 = icmp ne i64 %339, 0
  %341 = zext i1 %340 to i64
  %342 = select i1 %340, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0)
  %343 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %338, i32 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %342)
  %344 = load %struct.msp430_cmd*, %struct.msp430_cmd** %4, align 8
  %345 = call i32 @remove_first_operand(%struct.msp430_cmd* %344)
  br label %562

346:                                              ; preds = %331, %328, %324
  %347 = load i64, i64* %11, align 8
  %348 = load i64, i64* @MSP430_ADD, align 8
  %349 = icmp eq i64 %347, %348
  br i1 %349, label %350, label %368

350:                                              ; preds = %346
  %351 = load i64, i64* %6, align 8
  %352 = icmp eq i64 %351, 2
  br i1 %352, label %353, label %368

353:                                              ; preds = %350
  %354 = load i64, i64* %8, align 8
  %355 = load i64, i64* @MSP430_R3, align 8
  %356 = icmp eq i64 %354, %355
  br i1 %356, label %357, label %368

357:                                              ; preds = %353
  %358 = load %struct.msp430_cmd*, %struct.msp430_cmd** %4, align 8
  %359 = getelementptr inbounds %struct.msp430_cmd, %struct.msp430_cmd* %358, i32 0, i32 0
  %360 = load i8*, i8** %359, align 8
  %361 = load i64, i64* %10, align 8
  %362 = icmp ne i64 %361, 0
  %363 = zext i1 %362 to i64
  %364 = select i1 %362, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0)
  %365 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %360, i32 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %364)
  %366 = load %struct.msp430_cmd*, %struct.msp430_cmd** %4, align 8
  %367 = call i32 @remove_first_operand(%struct.msp430_cmd* %366)
  br label %561

368:                                              ; preds = %353, %350, %346
  %369 = load i64, i64* %11, align 8
  %370 = load i64, i64* @MSP430_XOR, align 8
  %371 = icmp eq i64 %369, %370
  br i1 %371, label %372, label %390

372:                                              ; preds = %368
  %373 = load i64, i64* %6, align 8
  %374 = icmp eq i64 %373, 3
  br i1 %374, label %375, label %390

375:                                              ; preds = %372
  %376 = load i64, i64* %8, align 8
  %377 = load i64, i64* @MSP430_R3, align 8
  %378 = icmp eq i64 %376, %377
  br i1 %378, label %379, label %390

379:                                              ; preds = %375
  %380 = load %struct.msp430_cmd*, %struct.msp430_cmd** %4, align 8
  %381 = getelementptr inbounds %struct.msp430_cmd, %struct.msp430_cmd* %380, i32 0, i32 0
  %382 = load i8*, i8** %381, align 8
  %383 = load i64, i64* %10, align 8
  %384 = icmp ne i64 %383, 0
  %385 = zext i1 %384 to i64
  %386 = select i1 %384, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0)
  %387 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %382, i32 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %386)
  %388 = load %struct.msp430_cmd*, %struct.msp430_cmd** %4, align 8
  %389 = call i32 @remove_first_operand(%struct.msp430_cmd* %388)
  br label %560

390:                                              ; preds = %375, %372, %368
  %391 = load i64, i64* %11, align 8
  %392 = load i64, i64* @MSP430_ADD, align 8
  %393 = icmp eq i64 %391, %392
  br i1 %393, label %394, label %409

394:                                              ; preds = %390
  %395 = load i64, i64* %8, align 8
  %396 = load i64, i64* %9, align 8
  %397 = icmp eq i64 %395, %396
  br i1 %397, label %398, label %409

398:                                              ; preds = %394
  %399 = load %struct.msp430_cmd*, %struct.msp430_cmd** %4, align 8
  %400 = getelementptr inbounds %struct.msp430_cmd, %struct.msp430_cmd* %399, i32 0, i32 0
  %401 = load i8*, i8** %400, align 8
  %402 = load i64, i64* %10, align 8
  %403 = icmp ne i64 %402, 0
  %404 = zext i1 %403 to i64
  %405 = select i1 %403, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i64 0, i64 0)
  %406 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %401, i32 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %405)
  %407 = load %struct.msp430_cmd*, %struct.msp430_cmd** %4, align 8
  %408 = call i32 @remove_second_operand(%struct.msp430_cmd* %407)
  br label %559

409:                                              ; preds = %394, %390
  %410 = load i64, i64* %11, align 8
  %411 = load i64, i64* @MSP430_ADDC, align 8
  %412 = icmp eq i64 %410, %411
  br i1 %412, label %413, label %428

413:                                              ; preds = %409
  %414 = load i64, i64* %8, align 8
  %415 = load i64, i64* %9, align 8
  %416 = icmp eq i64 %414, %415
  br i1 %416, label %417, label %428

417:                                              ; preds = %413
  %418 = load %struct.msp430_cmd*, %struct.msp430_cmd** %4, align 8
  %419 = getelementptr inbounds %struct.msp430_cmd, %struct.msp430_cmd* %418, i32 0, i32 0
  %420 = load i8*, i8** %419, align 8
  %421 = load i64, i64* %10, align 8
  %422 = icmp ne i64 %421, 0
  %423 = zext i1 %422 to i64
  %424 = select i1 %422, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i64 0, i64 0)
  %425 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %420, i32 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %424)
  %426 = load %struct.msp430_cmd*, %struct.msp430_cmd** %4, align 8
  %427 = call i32 @remove_second_operand(%struct.msp430_cmd* %426)
  br label %558

428:                                              ; preds = %413, %409
  %429 = load i64, i64* %11, align 8
  %430 = load i64, i64* @MSP430_SUBC, align 8
  %431 = icmp eq i64 %429, %430
  br i1 %431, label %432, label %450

432:                                              ; preds = %428
  %433 = load i64, i64* %6, align 8
  %434 = icmp eq i64 %433, 0
  br i1 %434, label %435, label %450

435:                                              ; preds = %432
  %436 = load i64, i64* %8, align 8
  %437 = load i64, i64* @MSP430_R3, align 8
  %438 = icmp eq i64 %436, %437
  br i1 %438, label %439, label %450

439:                                              ; preds = %435
  %440 = load %struct.msp430_cmd*, %struct.msp430_cmd** %4, align 8
  %441 = getelementptr inbounds %struct.msp430_cmd, %struct.msp430_cmd* %440, i32 0, i32 0
  %442 = load i8*, i8** %441, align 8
  %443 = load i64, i64* %10, align 8
  %444 = icmp ne i64 %443, 0
  %445 = zext i1 %444 to i64
  %446 = select i1 %444, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i64 0, i64 0)
  %447 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %442, i32 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %446)
  %448 = load %struct.msp430_cmd*, %struct.msp430_cmd** %4, align 8
  %449 = call i32 @remove_first_operand(%struct.msp430_cmd* %448)
  br label %557

450:                                              ; preds = %435, %432, %428
  %451 = load i64, i64* %11, align 8
  %452 = load i64, i64* @MSP430_BIS, align 8
  %453 = icmp eq i64 %451, %452
  br i1 %453, label %454, label %477

454:                                              ; preds = %450
  %455 = load i64, i64* %6, align 8
  %456 = icmp eq i64 %455, 1
  br i1 %456, label %457, label %477

457:                                              ; preds = %454
  %458 = load i64, i64* %8, align 8
  %459 = load i64, i64* @MSP430_R3, align 8
  %460 = icmp eq i64 %458, %459
  br i1 %460, label %461, label %477

461:                                              ; preds = %457
  %462 = load i64, i64* %9, align 8
  %463 = load i64, i64* @MSP430_SR, align 8
  %464 = icmp eq i64 %462, %463
  br i1 %464, label %465, label %477

465:                                              ; preds = %461
  %466 = load i64, i64* %7, align 8
  %467 = icmp eq i64 %466, 0
  br i1 %467, label %468, label %477

468:                                              ; preds = %465
  %469 = load %struct.msp430_cmd*, %struct.msp430_cmd** %4, align 8
  %470 = getelementptr inbounds %struct.msp430_cmd, %struct.msp430_cmd* %469, i32 0, i32 0
  %471 = load i8*, i8** %470, align 8
  %472 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %471, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i64 0, i64 0))
  %473 = load %struct.msp430_cmd*, %struct.msp430_cmd** %4, align 8
  %474 = getelementptr inbounds %struct.msp430_cmd, %struct.msp430_cmd* %473, i32 0, i32 1
  %475 = load i8*, i8** %474, align 8
  %476 = getelementptr inbounds i8, i8* %475, i64 0
  store i8 0, i8* %476, align 1
  br label %556

477:                                              ; preds = %465, %461, %457, %454, %450
  %478 = load i64, i64* %11, align 8
  %479 = load i64, i64* @MSP430_BIS, align 8
  %480 = icmp eq i64 %478, %479
  br i1 %480, label %481, label %504

481:                                              ; preds = %477
  %482 = load i64, i64* %6, align 8
  %483 = icmp eq i64 %482, 2
  br i1 %483, label %484, label %504

484:                                              ; preds = %481
  %485 = load i64, i64* %8, align 8
  %486 = load i64, i64* @MSP430_SR, align 8
  %487 = icmp eq i64 %485, %486
  br i1 %487, label %488, label %504

488:                                              ; preds = %484
  %489 = load i64, i64* %9, align 8
  %490 = load i64, i64* @MSP430_SR, align 8
  %491 = icmp eq i64 %489, %490
  br i1 %491, label %492, label %504

492:                                              ; preds = %488
  %493 = load i64, i64* %7, align 8
  %494 = icmp eq i64 %493, 0
  br i1 %494, label %495, label %504

495:                                              ; preds = %492
  %496 = load %struct.msp430_cmd*, %struct.msp430_cmd** %4, align 8
  %497 = getelementptr inbounds %struct.msp430_cmd, %struct.msp430_cmd* %496, i32 0, i32 0
  %498 = load i8*, i8** %497, align 8
  %499 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %498, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i64 0, i64 0))
  %500 = load %struct.msp430_cmd*, %struct.msp430_cmd** %4, align 8
  %501 = getelementptr inbounds %struct.msp430_cmd, %struct.msp430_cmd* %500, i32 0, i32 1
  %502 = load i8*, i8** %501, align 8
  %503 = getelementptr inbounds i8, i8* %502, i64 0
  store i8 0, i8* %503, align 1
  br label %555

504:                                              ; preds = %492, %488, %484, %481, %477
  %505 = load i64, i64* %11, align 8
  %506 = load i64, i64* @MSP430_BIS, align 8
  %507 = icmp eq i64 %505, %506
  br i1 %507, label %508, label %531

508:                                              ; preds = %504
  %509 = load i64, i64* %6, align 8
  %510 = icmp eq i64 %509, 2
  br i1 %510, label %511, label %531

511:                                              ; preds = %508
  %512 = load i64, i64* %8, align 8
  %513 = load i64, i64* @MSP430_R3, align 8
  %514 = icmp eq i64 %512, %513
  br i1 %514, label %515, label %531

515:                                              ; preds = %511
  %516 = load i64, i64* %9, align 8
  %517 = load i64, i64* @MSP430_SR, align 8
  %518 = icmp eq i64 %516, %517
  br i1 %518, label %519, label %531

519:                                              ; preds = %515
  %520 = load i64, i64* %7, align 8
  %521 = icmp eq i64 %520, 0
  br i1 %521, label %522, label %531

522:                                              ; preds = %519
  %523 = load %struct.msp430_cmd*, %struct.msp430_cmd** %4, align 8
  %524 = getelementptr inbounds %struct.msp430_cmd, %struct.msp430_cmd* %523, i32 0, i32 0
  %525 = load i8*, i8** %524, align 8
  %526 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %525, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i64 0, i64 0))
  %527 = load %struct.msp430_cmd*, %struct.msp430_cmd** %4, align 8
  %528 = getelementptr inbounds %struct.msp430_cmd, %struct.msp430_cmd* %527, i32 0, i32 1
  %529 = load i8*, i8** %528, align 8
  %530 = getelementptr inbounds i8, i8* %529, i64 0
  store i8 0, i8* %530, align 1
  br label %554

531:                                              ; preds = %519, %515, %511, %508, %504
  %532 = load i64, i64* %11, align 8
  %533 = load i64, i64* @MSP430_CMP, align 8
  %534 = icmp eq i64 %532, %533
  br i1 %534, label %535, label %553

535:                                              ; preds = %531
  %536 = load i64, i64* %6, align 8
  %537 = icmp eq i64 %536, 0
  br i1 %537, label %538, label %553

538:                                              ; preds = %535
  %539 = load i64, i64* %8, align 8
  %540 = load i64, i64* @MSP430_R3, align 8
  %541 = icmp eq i64 %539, %540
  br i1 %541, label %542, label %553

542:                                              ; preds = %538
  %543 = load %struct.msp430_cmd*, %struct.msp430_cmd** %4, align 8
  %544 = getelementptr inbounds %struct.msp430_cmd, %struct.msp430_cmd* %543, i32 0, i32 0
  %545 = load i8*, i8** %544, align 8
  %546 = load i64, i64* %10, align 8
  %547 = icmp ne i64 %546, 0
  %548 = zext i1 %547 to i64
  %549 = select i1 %547, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.36, i64 0, i64 0)
  %550 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %545, i32 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %549)
  %551 = load %struct.msp430_cmd*, %struct.msp430_cmd** %4, align 8
  %552 = call i32 @remove_first_operand(%struct.msp430_cmd* %551)
  br label %553

553:                                              ; preds = %542, %538, %535, %531
  br label %554

554:                                              ; preds = %553, %522
  br label %555

555:                                              ; preds = %554, %495
  br label %556

556:                                              ; preds = %555, %468
  br label %557

557:                                              ; preds = %556, %439
  br label %558

558:                                              ; preds = %557, %417
  br label %559

559:                                              ; preds = %558, %398
  br label %560

560:                                              ; preds = %559, %379
  br label %561

561:                                              ; preds = %560, %357
  br label %562

562:                                              ; preds = %561, %335
  br label %563

563:                                              ; preds = %562, %313
  br label %564

564:                                              ; preds = %563, %291
  br label %565

565:                                              ; preds = %564, %269
  br label %566

566:                                              ; preds = %565, %249
  br label %567

567:                                              ; preds = %566, %222
  br label %568

568:                                              ; preds = %567, %195
  br label %569

569:                                              ; preds = %568, %168
  br label %570

570:                                              ; preds = %569, %143
  br label %571

571:                                              ; preds = %570, %131
  br label %572

572:                                              ; preds = %571, %89
  br label %573

573:                                              ; preds = %572, %34
  %574 = load i32, i32* %5, align 4
  ret i32 %574
}

declare dso_local i64 @get_as(i32) #1

declare dso_local i64 @get_ad(i32) #1

declare dso_local i64 @get_src(i32) #1

declare dso_local i64 @get_dst(i32) #1

declare dso_local i64 @get_bw(i32) #1

declare dso_local i64 @get_twoop_opcode(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @remove_first_operand(%struct.msp430_cmd*) #1

declare dso_local i32 @remove_second_operand(%struct.msp430_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
