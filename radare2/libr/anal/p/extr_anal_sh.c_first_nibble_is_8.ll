; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_sh.c_first_nibble_is_8.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_sh.c_first_nibble_is_8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i8*, i8**, i8*, i32, i64, i64 }

@R_ANAL_OP_TYPE_CJMP = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [22 x i8] c"sr,1,&,?{,0x%x,pc,=,}\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"1,SETD,sr,1,&,?{,0x%x,pc,=,}\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"1,SETD,sr,1,&,!,?{,0x%x,pc,=,}\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"sr,1,&,!,?{,0x%x,pc,=,}\00", align 1
@R_ANAL_OP_TYPE_LOAD = common dso_local global i8* null, align 8
@BYTE_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [49 x i8] c"r%d,0x%x,+,[1],DUP,0x80,&,?{,0xFFFFFF00,|,},r0,=\00", align 1
@WORD_SIZE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [51 x i8] c"r%d,0x%x,+,[2],DUP,0x8000,&,?{,0xFFFF0000,|,},r0,=\00", align 1
@R_ANAL_OP_TYPE_CMP = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [71 x i8] c"0xFFFFFFFE,sr,&=,0x%x,DUP,0x80,&,?{,0xFFFFFF00,|,},r0,==,$z,sr,|,sr,:=\00", align 1
@R_ANAL_OP_TYPE_STORE = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [26 x i8] c"r0,0xFF,&,0x%x,r%d,+,=[1]\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"r0,0xFFFF,&,0x%x,r%d,+,=[2]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_3__*, i32)* @first_nibble_is_8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @first_nibble_is_8(i32* %0, %struct.TYPE_3__* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = call i64 @IS_BT_OR_BF(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %81

10:                                               ; preds = %3
  %11 = load i8*, i8** @R_ANAL_OP_TYPE_CJMP, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 6
  store i8* %11, i8** %13, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 8
  %16 = load i64, i64* %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @GET_BTF_OFFSET(i32 %17)
  %19 = call i32 @disarm_8bit_offset(i64 %16, i32 %18)
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 7
  store i32 %19, i32* %21, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 8
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, 2
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 9
  store i64 %25, i64* %27, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  store i32 1, i32* %29, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i64 @IS_BT(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %10
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 3
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 7
  %38 = load i32, i32* %37, align 8
  %39 = call i32 (i32*, i8*, i32, ...) @r_strbuf_setf(i32* %35, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %38)
  br label %80

40:                                               ; preds = %10
  %41 = load i32, i32* %6, align 4
  %42 = call i64 @IS_BTS(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %40
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 3
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 7
  %49 = load i32, i32* %48, align 8
  %50 = call i32 (i32*, i8*, i32, ...) @r_strbuf_setf(i32* %46, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  store i32 1, i32* %52, align 4
  br label %79

53:                                               ; preds = %40
  %54 = load i32, i32* %6, align 4
  %55 = call i64 @IS_BFS(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %53
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 3
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 7
  %62 = load i32, i32* %61, align 8
  %63 = call i32 (i32*, i8*, i32, ...) @r_strbuf_setf(i32* %59, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %62)
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  store i32 1, i32* %65, align 4
  br label %78

66:                                               ; preds = %53
  %67 = load i32, i32* %6, align 4
  %68 = call i64 @IS_BF(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %66
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 3
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 7
  %75 = load i32, i32* %74, align 8
  %76 = call i32 (i32*, i8*, i32, ...) @r_strbuf_setf(i32* %72, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %75)
  br label %77

77:                                               ; preds = %70, %66
  br label %78

78:                                               ; preds = %77, %57
  br label %79

79:                                               ; preds = %78, %44
  br label %80

80:                                               ; preds = %79, %33
  br label %221

81:                                               ; preds = %3
  %82 = load i32, i32* %6, align 4
  %83 = call i64 @IS_MOVB_REGDISP_R0(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %111

85:                                               ; preds = %81
  %86 = load i8*, i8** @R_ANAL_OP_TYPE_LOAD, align 8
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 6
  store i8* %86, i8** %88, align 8
  %89 = load i32*, i32** %4, align 8
  %90 = call i8* @anal_fill_ai_rg(i32* %89, i32 0)
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 4
  store i8* %90, i8** %92, align 8
  %93 = load i32*, i32** %4, align 8
  %94 = load i32, i32* %6, align 4
  %95 = call i32 @GET_SOURCE_REG(i32 %94)
  %96 = load i32, i32* %6, align 4
  %97 = and i32 %96, 15
  %98 = load i32, i32* @BYTE_SIZE, align 4
  %99 = call i8* @anal_fill_reg_disp_mem(i32* %93, i32 %95, i32 %97, i32 %98)
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 5
  %102 = load i8**, i8*** %101, align 8
  %103 = getelementptr inbounds i8*, i8** %102, i64 0
  store i8* %99, i8** %103, align 8
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 3
  %106 = load i32, i32* %6, align 4
  %107 = call i32 @GET_SOURCE_REG(i32 %106)
  %108 = load i32, i32* %6, align 4
  %109 = and i32 %108, 15
  %110 = call i32 (i32*, i8*, i32, ...) @r_strbuf_setf(i32* %105, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i32 %107, i32 %109)
  br label %220

111:                                              ; preds = %81
  %112 = load i32, i32* %6, align 4
  %113 = call i64 @IS_MOVW_REGDISP_R0(i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %142

115:                                              ; preds = %111
  %116 = load i8*, i8** @R_ANAL_OP_TYPE_LOAD, align 8
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 6
  store i8* %116, i8** %118, align 8
  %119 = load i32*, i32** %4, align 8
  %120 = call i8* @anal_fill_ai_rg(i32* %119, i32 0)
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 4
  store i8* %120, i8** %122, align 8
  %123 = load i32*, i32** %4, align 8
  %124 = load i32, i32* %6, align 4
  %125 = call i32 @GET_SOURCE_REG(i32 %124)
  %126 = load i32, i32* %6, align 4
  %127 = and i32 %126, 15
  %128 = load i32, i32* @WORD_SIZE, align 4
  %129 = call i8* @anal_fill_reg_disp_mem(i32* %123, i32 %125, i32 %127, i32 %128)
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 5
  %132 = load i8**, i8*** %131, align 8
  %133 = getelementptr inbounds i8*, i8** %132, i64 0
  store i8* %129, i8** %133, align 8
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 3
  %136 = load i32, i32* %6, align 4
  %137 = call i32 @GET_SOURCE_REG(i32 %136)
  %138 = load i32, i32* %6, align 4
  %139 = and i32 %138, 15
  %140 = mul nsw i32 %139, 2
  %141 = call i32 (i32*, i8*, i32, ...) @r_strbuf_setf(i32* %135, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0), i32 %137, i32 %140)
  br label %219

142:                                              ; preds = %111
  %143 = load i32, i32* %6, align 4
  %144 = call i64 @IS_CMPIMM(i32 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %155

146:                                              ; preds = %142
  %147 = load i8*, i8** @R_ANAL_OP_TYPE_CMP, align 8
  %148 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 6
  store i8* %147, i8** %149, align 8
  %150 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 3
  %152 = load i32, i32* %6, align 4
  %153 = and i32 %152, 255
  %154 = call i32 (i32*, i8*, i32, ...) @r_strbuf_setf(i32* %151, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.6, i64 0, i64 0), i32 %153)
  br label %218

155:                                              ; preds = %142
  %156 = load i32, i32* %6, align 4
  %157 = call i64 @IS_MOVB_R0_REGDISP(i32 %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %185

159:                                              ; preds = %155
  %160 = load i8*, i8** @R_ANAL_OP_TYPE_STORE, align 8
  %161 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 6
  store i8* %160, i8** %162, align 8
  %163 = load i32*, i32** %4, align 8
  %164 = call i8* @anal_fill_ai_rg(i32* %163, i32 0)
  %165 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i32 0, i32 5
  %167 = load i8**, i8*** %166, align 8
  %168 = getelementptr inbounds i8*, i8** %167, i64 0
  store i8* %164, i8** %168, align 8
  %169 = load i32*, i32** %4, align 8
  %170 = load i32, i32* %6, align 4
  %171 = call i32 @GET_SOURCE_REG(i32 %170)
  %172 = load i32, i32* %6, align 4
  %173 = and i32 %172, 15
  %174 = load i32, i32* @BYTE_SIZE, align 4
  %175 = call i8* @anal_fill_reg_disp_mem(i32* %169, i32 %171, i32 %173, i32 %174)
  %176 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %176, i32 0, i32 4
  store i8* %175, i8** %177, align 8
  %178 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i32 0, i32 3
  %180 = load i32, i32* %6, align 4
  %181 = and i32 %180, 15
  %182 = load i32, i32* %6, align 4
  %183 = call i32 @GET_SOURCE_REG(i32 %182)
  %184 = call i32 (i32*, i8*, i32, ...) @r_strbuf_setf(i32* %179, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 %181, i32 %183)
  br label %217

185:                                              ; preds = %155
  %186 = load i32, i32* %6, align 4
  %187 = call i64 @IS_MOVW_R0_REGDISP(i32 %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %216

189:                                              ; preds = %185
  %190 = load i8*, i8** @R_ANAL_OP_TYPE_STORE, align 8
  %191 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %191, i32 0, i32 6
  store i8* %190, i8** %192, align 8
  %193 = load i32*, i32** %4, align 8
  %194 = call i8* @anal_fill_ai_rg(i32* %193, i32 0)
  %195 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %195, i32 0, i32 5
  %197 = load i8**, i8*** %196, align 8
  %198 = getelementptr inbounds i8*, i8** %197, i64 0
  store i8* %194, i8** %198, align 8
  %199 = load i32*, i32** %4, align 8
  %200 = load i32, i32* %6, align 4
  %201 = call i32 @GET_SOURCE_REG(i32 %200)
  %202 = load i32, i32* %6, align 4
  %203 = and i32 %202, 15
  %204 = load i32, i32* @WORD_SIZE, align 4
  %205 = call i8* @anal_fill_reg_disp_mem(i32* %199, i32 %201, i32 %203, i32 %204)
  %206 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %207 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %206, i32 0, i32 4
  store i8* %205, i8** %207, align 8
  %208 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %209 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %208, i32 0, i32 3
  %210 = load i32, i32* %6, align 4
  %211 = and i32 %210, 15
  %212 = mul nsw i32 %211, 2
  %213 = load i32, i32* %6, align 4
  %214 = call i32 @GET_SOURCE_REG(i32 %213)
  %215 = call i32 (i32*, i8*, i32, ...) @r_strbuf_setf(i32* %209, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i32 %212, i32 %214)
  br label %216

216:                                              ; preds = %189, %185
  br label %217

217:                                              ; preds = %216, %159
  br label %218

218:                                              ; preds = %217, %146
  br label %219

219:                                              ; preds = %218, %115
  br label %220

220:                                              ; preds = %219, %85
  br label %221

221:                                              ; preds = %220, %80
  %222 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %223 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %222, i32 0, i32 2
  %224 = load i32, i32* %223, align 8
  ret i32 %224
}

declare dso_local i64 @IS_BT_OR_BF(i32) #1

declare dso_local i32 @disarm_8bit_offset(i64, i32) #1

declare dso_local i32 @GET_BTF_OFFSET(i32) #1

declare dso_local i64 @IS_BT(i32) #1

declare dso_local i32 @r_strbuf_setf(i32*, i8*, i32, ...) #1

declare dso_local i64 @IS_BTS(i32) #1

declare dso_local i64 @IS_BFS(i32) #1

declare dso_local i64 @IS_BF(i32) #1

declare dso_local i64 @IS_MOVB_REGDISP_R0(i32) #1

declare dso_local i8* @anal_fill_ai_rg(i32*, i32) #1

declare dso_local i8* @anal_fill_reg_disp_mem(i32*, i32, i32, i32) #1

declare dso_local i32 @GET_SOURCE_REG(i32) #1

declare dso_local i64 @IS_MOVW_REGDISP_R0(i32) #1

declare dso_local i64 @IS_CMPIMM(i32) #1

declare dso_local i64 @IS_MOVB_R0_REGDISP(i32) #1

declare dso_local i64 @IS_MOVW_R0_REGDISP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
