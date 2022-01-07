; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_sh.c_first_nibble_is_c.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_sh.c_first_nibble_is_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i8*, i8*, i8**, i64 }

@R_ANAL_OP_TYPE_SWI = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [71 x i8] c"4,r15,-=,sr,r15,=[4],4,r15,-=,2,pc,-,r15,=[4],2,0x%x,<<,4,+,vbr,+,pc,=\00", align 1
@R_ANAL_OP_TYPE_LEA = common dso_local global i8* null, align 8
@LONG_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"0x%x,pc,+,r0,=\00", align 1
@R_ANAL_OP_TYPE_ACMP = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [42 x i8] c"0xFFFFFFFE,sr,&=,r0,0x%x,&,!,?{,1,sr,|=,}\00", align 1
@R_ANAL_OP_TYPE_AND = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [11 x i8] c"0x%x,r0,&=\00", align 1
@R_ANAL_OP_TYPE_XOR = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [11 x i8] c"0x%x,r0,^=\00", align 1
@R_ANAL_OP_TYPE_OR = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [11 x i8] c"0x%x,r0,|=\00", align 1
@.str.6 = private unnamed_addr constant [52 x i8] c"0xFFFFFFFE,sr,&=,r0,gbr,+,[1],0x%x,&,!,?{,1,sr,|=,}\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"r0,gbr,+,[1],0x%x,&,r0,gbr,+,=[1]\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"r0,gbr,+,[1],0x%x,^,r0,gbr,+,=[1]\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"r0,gbr,+,[1],0x%x,|,r0,gbr,+,=[1]\00", align 1
@R_ANAL_OP_TYPE_STORE = common dso_local global i8* null, align 8
@.str.10 = private unnamed_addr constant [19 x i8] c"r0,gbr,0x%x,+,=[1]\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"r0,gbr,0x%x,+,=[2]\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"r0,gbr,0x%x,+,=[4]\00", align 1
@R_ANAL_OP_TYPE_LOAD = common dso_local global i8* null, align 8
@.str.13 = private unnamed_addr constant [49 x i8] c"gbr,0x%x,+,[1],DUP,0x80,&,?{,0xFFFFFF00,|,},r0,=\00", align 1
@.str.14 = private unnamed_addr constant [51 x i8] c"gbr,0x%x,+,[2],DUP,0x8000,&,?{,0xFFFF0000,|,},r0,=\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"gbr,0x%x,+,[4],r0,=\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_4__*, i32)* @first_nibble_is_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @first_nibble_is_c(i32* %0, %struct.TYPE_4__* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = call i64 @IS_TRAP(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %24

10:                                               ; preds = %3
  %11 = load i8*, i8** @R_ANAL_OP_TYPE_SWI, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 3
  store i8* %11, i8** %13, align 8
  %14 = load i32, i32* %6, align 4
  %15 = and i32 %14, 255
  %16 = sext i32 %15 to i64
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 5
  store i64 %16, i64* %18, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i32, i32* %6, align 4
  %22 = and i32 %21, 255
  %23 = call i32 @r_strbuf_setf(i32* %20, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %287

24:                                               ; preds = %3
  %25 = load i32, i32* %6, align 4
  %26 = call i64 @IS_MOVA_PCREL_R0(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %52

28:                                               ; preds = %24
  %29 = load i8*, i8** @R_ANAL_OP_TYPE_LEA, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 3
  store i8* %29, i8** %31, align 8
  %32 = load i32*, i32** %4, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = and i32 %34, 255
  %36 = load i32, i32* @LONG_SIZE, align 4
  %37 = call i8* @anal_pcrel_disp_mov(i32* %32, %struct.TYPE_4__* %33, i32 %35, i32 %36)
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 4
  %40 = load i8**, i8*** %39, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i64 0
  store i8* %37, i8** %41, align 8
  %42 = load i32*, i32** %4, align 8
  %43 = call i8* @anal_fill_ai_rg(i32* %42, i32 0)
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 2
  store i8* %43, i8** %45, align 8
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i32, i32* %6, align 4
  %49 = and i32 %48, 255
  %50 = mul nsw i32 %49, 4
  %51 = call i32 @r_strbuf_setf(i32* %47, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  br label %286

52:                                               ; preds = %24
  %53 = load i32, i32* %6, align 4
  %54 = call i64 @IS_BINLOGIC_IMM_R0(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %114

56:                                               ; preds = %52
  %57 = load i32*, i32** %4, align 8
  %58 = load i32, i32* %6, align 4
  %59 = and i32 %58, 255
  %60 = call i8* @anal_fill_im(i32* %57, i32 %59)
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 4
  %63 = load i8**, i8*** %62, align 8
  %64 = getelementptr inbounds i8*, i8** %63, i64 0
  store i8* %60, i8** %64, align 8
  %65 = load i32*, i32** %4, align 8
  %66 = call i8* @anal_fill_ai_rg(i32* %65, i32 0)
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 4
  %69 = load i8**, i8*** %68, align 8
  %70 = getelementptr inbounds i8*, i8** %69, i64 1
  store i8* %66, i8** %70, align 8
  %71 = load i32*, i32** %4, align 8
  %72 = call i8* @anal_fill_ai_rg(i32* %71, i32 0)
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 2
  store i8* %72, i8** %74, align 8
  %75 = load i32, i32* %6, align 4
  %76 = and i32 %75, 65280
  switch i32 %76, label %113 [
    i32 51200, label %77
    i32 51456, label %86
    i32 51712, label %95
    i32 51968, label %104
  ]

77:                                               ; preds = %56
  %78 = load i8*, i8** @R_ANAL_OP_TYPE_ACMP, align 8
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 3
  store i8* %78, i8** %80, align 8
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  %83 = load i32, i32* %6, align 4
  %84 = and i32 %83, 255
  %85 = call i32 @r_strbuf_setf(i32* %82, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %84)
  br label %113

86:                                               ; preds = %56
  %87 = load i8*, i8** @R_ANAL_OP_TYPE_AND, align 8
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 3
  store i8* %87, i8** %89, align 8
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  %92 = load i32, i32* %6, align 4
  %93 = and i32 %92, 255
  %94 = call i32 @r_strbuf_setf(i32* %91, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %93)
  br label %113

95:                                               ; preds = %56
  %96 = load i8*, i8** @R_ANAL_OP_TYPE_XOR, align 8
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 3
  store i8* %96, i8** %98, align 8
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 1
  %101 = load i32, i32* %6, align 4
  %102 = and i32 %101, 255
  %103 = call i32 @r_strbuf_setf(i32* %100, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %102)
  br label %113

104:                                              ; preds = %56
  %105 = load i8*, i8** @R_ANAL_OP_TYPE_OR, align 8
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 3
  store i8* %105, i8** %107, align 8
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 1
  %110 = load i32, i32* %6, align 4
  %111 = and i32 %110, 255
  %112 = call i32 @r_strbuf_setf(i32* %109, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %111)
  br label %113

113:                                              ; preds = %56, %104, %95, %86, %77
  br label %285

114:                                              ; preds = %52
  %115 = load i32, i32* %6, align 4
  %116 = call i64 @IS_BINLOGIC_IMM_GBR(i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %166

118:                                              ; preds = %114
  %119 = load i32*, i32** %4, align 8
  %120 = load i32, i32* %6, align 4
  %121 = and i32 %120, 255
  %122 = call i8* @anal_fill_im(i32* %119, i32 %121)
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 4
  %125 = load i8**, i8*** %124, align 8
  %126 = getelementptr inbounds i8*, i8** %125, i64 0
  store i8* %122, i8** %126, align 8
  %127 = load i32, i32* %6, align 4
  %128 = and i32 %127, 65280
  switch i32 %128, label %165 [
    i32 52224, label %129
    i32 52480, label %138
    i32 52736, label %147
    i32 52992, label %156
  ]

129:                                              ; preds = %118
  %130 = load i8*, i8** @R_ANAL_OP_TYPE_ACMP, align 8
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 3
  store i8* %130, i8** %132, align 8
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 1
  %135 = load i32, i32* %6, align 4
  %136 = and i32 %135, 255
  %137 = call i32 @r_strbuf_setf(i32* %134, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0), i32 %136)
  br label %165

138:                                              ; preds = %118
  %139 = load i8*, i8** @R_ANAL_OP_TYPE_AND, align 8
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 3
  store i8* %139, i8** %141, align 8
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 1
  %144 = load i32, i32* %6, align 4
  %145 = and i32 %144, 255
  %146 = call i32 @r_strbuf_setf(i32* %143, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i32 %145)
  br label %165

147:                                              ; preds = %118
  %148 = load i8*, i8** @R_ANAL_OP_TYPE_XOR, align 8
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 3
  store i8* %148, i8** %150, align 8
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 1
  %153 = load i32, i32* %6, align 4
  %154 = and i32 %153, 255
  %155 = call i32 @r_strbuf_setf(i32* %152, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0), i32 %154)
  br label %165

156:                                              ; preds = %118
  %157 = load i8*, i8** @R_ANAL_OP_TYPE_OR, align 8
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 3
  store i8* %157, i8** %159, align 8
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 1
  %162 = load i32, i32* %6, align 4
  %163 = and i32 %162, 255
  %164 = call i32 @r_strbuf_setf(i32* %161, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0), i32 %163)
  br label %165

165:                                              ; preds = %118, %156, %147, %138, %129
  br label %284

166:                                              ; preds = %114
  %167 = load i32, i32* %6, align 4
  %168 = call i64 @IS_MOVB_R0_GBRREF(i32 %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %185

170:                                              ; preds = %166
  %171 = load i8*, i8** @R_ANAL_OP_TYPE_STORE, align 8
  %172 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 3
  store i8* %171, i8** %173, align 8
  %174 = load i32*, i32** %4, align 8
  %175 = call i8* @anal_fill_ai_rg(i32* %174, i32 0)
  %176 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 4
  %178 = load i8**, i8*** %177, align 8
  %179 = getelementptr inbounds i8*, i8** %178, i64 0
  store i8* %175, i8** %179, align 8
  %180 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 1
  %182 = load i32, i32* %6, align 4
  %183 = and i32 %182, 255
  %184 = call i32 @r_strbuf_setf(i32* %181, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i32 %183)
  br label %283

185:                                              ; preds = %166
  %186 = load i32, i32* %6, align 4
  %187 = call i64 @IS_MOVW_R0_GBRREF(i32 %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %205

189:                                              ; preds = %185
  %190 = load i8*, i8** @R_ANAL_OP_TYPE_STORE, align 8
  %191 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 3
  store i8* %190, i8** %192, align 8
  %193 = load i32*, i32** %4, align 8
  %194 = call i8* @anal_fill_ai_rg(i32* %193, i32 0)
  %195 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 4
  %197 = load i8**, i8*** %196, align 8
  %198 = getelementptr inbounds i8*, i8** %197, i64 0
  store i8* %194, i8** %198, align 8
  %199 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i32 0, i32 1
  %201 = load i32, i32* %6, align 4
  %202 = and i32 %201, 255
  %203 = mul nsw i32 %202, 2
  %204 = call i32 @r_strbuf_setf(i32* %200, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0), i32 %203)
  br label %282

205:                                              ; preds = %185
  %206 = load i32, i32* %6, align 4
  %207 = call i64 @IS_MOVL_R0_GBRREF(i32 %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %225

209:                                              ; preds = %205
  %210 = load i8*, i8** @R_ANAL_OP_TYPE_STORE, align 8
  %211 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %211, i32 0, i32 3
  store i8* %210, i8** %212, align 8
  %213 = load i32*, i32** %4, align 8
  %214 = call i8* @anal_fill_ai_rg(i32* %213, i32 0)
  %215 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %216 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %215, i32 0, i32 4
  %217 = load i8**, i8*** %216, align 8
  %218 = getelementptr inbounds i8*, i8** %217, i64 0
  store i8* %214, i8** %218, align 8
  %219 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %220 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %219, i32 0, i32 1
  %221 = load i32, i32* %6, align 4
  %222 = and i32 %221, 255
  %223 = mul nsw i32 %222, 4
  %224 = call i32 @r_strbuf_setf(i32* %220, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0), i32 %223)
  br label %281

225:                                              ; preds = %205
  %226 = load i32, i32* %6, align 4
  %227 = call i64 @IS_MOVB_GBRREF_R0(i32 %226)
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %242

229:                                              ; preds = %225
  %230 = load i8*, i8** @R_ANAL_OP_TYPE_LOAD, align 8
  %231 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %232 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %231, i32 0, i32 3
  store i8* %230, i8** %232, align 8
  %233 = load i32*, i32** %4, align 8
  %234 = call i8* @anal_fill_ai_rg(i32* %233, i32 0)
  %235 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %236 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %235, i32 0, i32 2
  store i8* %234, i8** %236, align 8
  %237 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %238 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %237, i32 0, i32 1
  %239 = load i32, i32* %6, align 4
  %240 = and i32 %239, 255
  %241 = call i32 @r_strbuf_setf(i32* %238, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.13, i64 0, i64 0), i32 %240)
  br label %280

242:                                              ; preds = %225
  %243 = load i32, i32* %6, align 4
  %244 = call i64 @IS_MOVW_GBRREF_R0(i32 %243)
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %260

246:                                              ; preds = %242
  %247 = load i8*, i8** @R_ANAL_OP_TYPE_LOAD, align 8
  %248 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %249 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %248, i32 0, i32 3
  store i8* %247, i8** %249, align 8
  %250 = load i32*, i32** %4, align 8
  %251 = call i8* @anal_fill_ai_rg(i32* %250, i32 0)
  %252 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %253 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %252, i32 0, i32 2
  store i8* %251, i8** %253, align 8
  %254 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %255 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %254, i32 0, i32 1
  %256 = load i32, i32* %6, align 4
  %257 = and i32 %256, 255
  %258 = mul nsw i32 %257, 2
  %259 = call i32 @r_strbuf_setf(i32* %255, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.14, i64 0, i64 0), i32 %258)
  br label %279

260:                                              ; preds = %242
  %261 = load i32, i32* %6, align 4
  %262 = call i64 @IS_MOVL_GBRREF_R0(i32 %261)
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %278

264:                                              ; preds = %260
  %265 = load i8*, i8** @R_ANAL_OP_TYPE_LOAD, align 8
  %266 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %267 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %266, i32 0, i32 3
  store i8* %265, i8** %267, align 8
  %268 = load i32*, i32** %4, align 8
  %269 = call i8* @anal_fill_ai_rg(i32* %268, i32 0)
  %270 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %271 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %270, i32 0, i32 2
  store i8* %269, i8** %271, align 8
  %272 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %273 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %272, i32 0, i32 1
  %274 = load i32, i32* %6, align 4
  %275 = and i32 %274, 255
  %276 = mul nsw i32 %275, 4
  %277 = call i32 @r_strbuf_setf(i32* %273, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0), i32 %276)
  br label %278

278:                                              ; preds = %264, %260
  br label %279

279:                                              ; preds = %278, %246
  br label %280

280:                                              ; preds = %279, %229
  br label %281

281:                                              ; preds = %280, %209
  br label %282

282:                                              ; preds = %281, %189
  br label %283

283:                                              ; preds = %282, %170
  br label %284

284:                                              ; preds = %283, %165
  br label %285

285:                                              ; preds = %284, %113
  br label %286

286:                                              ; preds = %285, %28
  br label %287

287:                                              ; preds = %286, %10
  %288 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %289 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 8
  ret i32 %290
}

declare dso_local i64 @IS_TRAP(i32) #1

declare dso_local i32 @r_strbuf_setf(i32*, i8*, i32) #1

declare dso_local i64 @IS_MOVA_PCREL_R0(i32) #1

declare dso_local i8* @anal_pcrel_disp_mov(i32*, %struct.TYPE_4__*, i32, i32) #1

declare dso_local i8* @anal_fill_ai_rg(i32*, i32) #1

declare dso_local i64 @IS_BINLOGIC_IMM_R0(i32) #1

declare dso_local i8* @anal_fill_im(i32*, i32) #1

declare dso_local i64 @IS_BINLOGIC_IMM_GBR(i32) #1

declare dso_local i64 @IS_MOVB_R0_GBRREF(i32) #1

declare dso_local i64 @IS_MOVW_R0_GBRREF(i32) #1

declare dso_local i64 @IS_MOVL_R0_GBRREF(i32) #1

declare dso_local i64 @IS_MOVB_GBRREF_R0(i32) #1

declare dso_local i64 @IS_MOVW_GBRREF_R0(i32) #1

declare dso_local i64 @IS_MOVL_GBRREF_R0(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
