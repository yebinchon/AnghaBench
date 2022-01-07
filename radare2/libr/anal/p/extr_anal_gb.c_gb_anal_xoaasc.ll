; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_gb.c_gb_anal_xoaasc.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_gb.c_gb_anal_xoaasc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_6__**, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i8* }
%struct.TYPE_5__ = type { i8* }

@.str = private unnamed_addr constant [2 x i8] c"a\00", align 1
@R_REG_TYPE_GPR = common dso_local global i32 0, align 4
@regs_x = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"%s,[1],a,^=,$z,Z,:=,0,N,:=,0,H,:=,0,C,:=\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"%s,a,^=,$z,Z,:=,0,N,:=,0,H,:=,0,C,:=\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"%s,[1],a,|=,$z,Z,:=,0,N,:=,0,H,:=,0,C,:=\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"%s,a,|=,$z,Z,:=,0,N,:=,0,H,:=,0,C,:=\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"%s,[1],a,&=,$z,Z,:=,0,N,:=,1,H,:=,0,C,:=\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"%s,a,&=,$z,Z,:=,0,N,:=,1,H,:=,0,C,:=\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.8 = private unnamed_addr constant [51 x i8] c"C,%s,[1],+,a,+=,$z,Z,:=,3,$c,H,:=,7,$c,C,:=,0,N,:=\00", align 1
@.str.9 = private unnamed_addr constant [47 x i8] c"%s,[1],a,+=,$z,Z,:=,3,$c,H,:=,7,$c,C,:=,0,N,:=\00", align 1
@.str.10 = private unnamed_addr constant [47 x i8] c"C,%s,+,a,+=,$z,Z,:=,3,$c,H,:=,7,$c,C,:=,0,N,:=\00", align 1
@.str.11 = private unnamed_addr constant [43 x i8] c"%s,a,+=,$z,Z,:=,3,$c,H,:=,7,$c,C,:=,0,N,:=\00", align 1
@.str.12 = private unnamed_addr constant [51 x i8] c"C,%s,[1],+,a,-=,$z,Z,:=,4,$b,H,:=,8,$b,C,:=,1,N,:=\00", align 1
@.str.13 = private unnamed_addr constant [47 x i8] c"%s,[1],a,-=,$z,Z,:=,4,$b,H,:=,8,$b,C,:=,1,N,:=\00", align 1
@.str.14 = private unnamed_addr constant [47 x i8] c"C,%s,+,a,-=,$z,Z,:=,4,$b,H,:=,8,$b,C,:=,1,N,:=\00", align 1
@.str.15 = private unnamed_addr constant [43 x i8] c"%s,a,-=,$z,Z,:=,4,$b,H,:=,8,$b,C,:=,1,N,:=\00", align 1
@.str.16 = private unnamed_addr constant [47 x i8] c"%s,[1],a,==,$z,Z,:=,4,$b,H,:=,8,$b,C,:=,1,N,:=\00", align 1
@.str.17 = private unnamed_addr constant [43 x i8] c"%s,a,==,$z,Z,:=,4,$b,H,:=,8,$b,C,:=,1,N,:=\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_7__*, i32*)* @gb_anal_xoaasc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gb_anal_xoaasc(i32* %0, %struct.TYPE_7__* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = call i8* (...) @r_anal_value_new()
  %8 = bitcast i8* %7 to %struct.TYPE_5__*
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 3
  store %struct.TYPE_5__* %8, %struct.TYPE_5__** %10, align 8
  %11 = call i8* (...) @r_anal_value_new()
  %12 = bitcast i8* %11 to %struct.TYPE_6__*
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %15, i64 0
  store %struct.TYPE_6__* %12, %struct.TYPE_6__** %16, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = load i32, i32* @R_REG_TYPE_GPR, align 4
  %19 = call i8* @r_reg_get(i32* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 3
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  store i8* %19, i8** %23, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = load i8**, i8*** @regs_x, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, 7
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8*, i8** %25, i64 %30
  %32 = load i8*, i8** %31, align 8
  %33 = load i32, i32* @R_REG_TYPE_GPR, align 4
  %34 = call i8* @r_reg_get(i32* %24, i8* %32, i32 %33)
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 2
  %37 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %37, i64 0
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  store i8* %34, i8** %40, align 8
  %41 = load i32*, i32** %6, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, 7
  %45 = icmp eq i32 %44, 6
  %46 = zext i1 %45 to i32
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 2
  %49 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %49, i64 0
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  store i32 %46, i32* %52, align 8
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  switch i32 %55, label %392 [
    i32 128, label %56
    i32 130, label %90
    i32 132, label %124
    i32 133, label %158
    i32 129, label %258
    i32 131, label %358
  ]

56:                                               ; preds = %3
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 2
  %59 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %59, i64 0
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %77

65:                                               ; preds = %56
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 1
  %68 = load i8**, i8*** @regs_x, align 8
  %69 = load i32*, i32** %6, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %71, 7
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8*, i8** %68, i64 %73
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 @r_strbuf_setf(i32* %67, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i8* %75)
  br label %89

77:                                               ; preds = %56
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 1
  %80 = load i8**, i8*** @regs_x, align 8
  %81 = load i32*, i32** %6, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  %83 = load i32, i32* %82, align 4
  %84 = and i32 %83, 7
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8*, i8** %80, i64 %85
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 @r_strbuf_setf(i32* %79, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* %87)
  br label %89

89:                                               ; preds = %77, %65
  br label %393

90:                                               ; preds = %3
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 2
  %93 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %93, i64 0
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %111

99:                                               ; preds = %90
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 1
  %102 = load i8**, i8*** @regs_x, align 8
  %103 = load i32*, i32** %6, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 0
  %105 = load i32, i32* %104, align 4
  %106 = and i32 %105, 7
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8*, i8** %102, i64 %107
  %109 = load i8*, i8** %108, align 8
  %110 = call i32 @r_strbuf_setf(i32* %101, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i8* %109)
  br label %123

111:                                              ; preds = %90
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 1
  %114 = load i8**, i8*** @regs_x, align 8
  %115 = load i32*, i32** %6, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 0
  %117 = load i32, i32* %116, align 4
  %118 = and i32 %117, 7
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8*, i8** %114, i64 %119
  %121 = load i8*, i8** %120, align 8
  %122 = call i32 @r_strbuf_setf(i32* %113, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i8* %121)
  br label %123

123:                                              ; preds = %111, %99
  br label %393

124:                                              ; preds = %3
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 2
  %127 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %127, i64 0
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %145

133:                                              ; preds = %124
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 1
  %136 = load i8**, i8*** @regs_x, align 8
  %137 = load i32*, i32** %6, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 0
  %139 = load i32, i32* %138, align 4
  %140 = and i32 %139, 7
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i8*, i8** %136, i64 %141
  %143 = load i8*, i8** %142, align 8
  %144 = call i32 @r_strbuf_setf(i32* %135, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i8* %143)
  br label %157

145:                                              ; preds = %124
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 1
  %148 = load i8**, i8*** @regs_x, align 8
  %149 = load i32*, i32** %6, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 0
  %151 = load i32, i32* %150, align 4
  %152 = and i32 %151, 7
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i8*, i8** %148, i64 %153
  %155 = load i8*, i8** %154, align 8
  %156 = call i32 @r_strbuf_setf(i32* %147, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i8* %155)
  br label %157

157:                                              ; preds = %145, %133
  br label %393

158:                                              ; preds = %3
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 2
  %161 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %161, i64 0
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %212

167:                                              ; preds = %158
  %168 = load i32*, i32** %6, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 0
  %170 = load i32, i32* %169, align 4
  %171 = icmp sgt i32 %170, 135
  br i1 %171, label %172, label %199

172:                                              ; preds = %167
  %173 = call i8* (...) @r_anal_value_new()
  %174 = bitcast i8* %173 to %struct.TYPE_6__*
  %175 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 2
  %177 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %177, i64 1
  store %struct.TYPE_6__* %174, %struct.TYPE_6__** %178, align 8
  %179 = load i32*, i32** %4, align 8
  %180 = load i32, i32* @R_REG_TYPE_GPR, align 4
  %181 = call i8* @r_reg_get(i32* %179, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i32 %180)
  %182 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 0, i32 2
  %184 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %184, i64 1
  %186 = load %struct.TYPE_6__*, %struct.TYPE_6__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 1
  store i8* %181, i8** %187, align 8
  %188 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 1
  %190 = load i8**, i8*** @regs_x, align 8
  %191 = load i32*, i32** %6, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 0
  %193 = load i32, i32* %192, align 4
  %194 = and i32 %193, 7
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i8*, i8** %190, i64 %195
  %197 = load i8*, i8** %196, align 8
  %198 = call i32 @r_strbuf_setf(i32* %189, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.8, i64 0, i64 0), i8* %197)
  br label %211

199:                                              ; preds = %167
  %200 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i32 0, i32 1
  %202 = load i8**, i8*** @regs_x, align 8
  %203 = load i32*, i32** %6, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 0
  %205 = load i32, i32* %204, align 4
  %206 = and i32 %205, 7
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i8*, i8** %202, i64 %207
  %209 = load i8*, i8** %208, align 8
  %210 = call i32 @r_strbuf_setf(i32* %201, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.9, i64 0, i64 0), i8* %209)
  br label %211

211:                                              ; preds = %199, %172
  br label %257

212:                                              ; preds = %158
  %213 = load i32*, i32** %6, align 8
  %214 = getelementptr inbounds i32, i32* %213, i64 0
  %215 = load i32, i32* %214, align 4
  %216 = icmp sgt i32 %215, 135
  br i1 %216, label %217, label %244

217:                                              ; preds = %212
  %218 = call i8* (...) @r_anal_value_new()
  %219 = bitcast i8* %218 to %struct.TYPE_6__*
  %220 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %221 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %220, i32 0, i32 2
  %222 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %222, i64 1
  store %struct.TYPE_6__* %219, %struct.TYPE_6__** %223, align 8
  %224 = load i32*, i32** %4, align 8
  %225 = load i32, i32* @R_REG_TYPE_GPR, align 4
  %226 = call i8* @r_reg_get(i32* %224, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i32 %225)
  %227 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %228 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %227, i32 0, i32 2
  %229 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %229, i64 1
  %231 = load %struct.TYPE_6__*, %struct.TYPE_6__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %231, i32 0, i32 1
  store i8* %226, i8** %232, align 8
  %233 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %234 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %233, i32 0, i32 1
  %235 = load i8**, i8*** @regs_x, align 8
  %236 = load i32*, i32** %6, align 8
  %237 = getelementptr inbounds i32, i32* %236, i64 0
  %238 = load i32, i32* %237, align 4
  %239 = and i32 %238, 7
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i8*, i8** %235, i64 %240
  %242 = load i8*, i8** %241, align 8
  %243 = call i32 @r_strbuf_setf(i32* %234, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.10, i64 0, i64 0), i8* %242)
  br label %256

244:                                              ; preds = %212
  %245 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %246 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %245, i32 0, i32 1
  %247 = load i8**, i8*** @regs_x, align 8
  %248 = load i32*, i32** %6, align 8
  %249 = getelementptr inbounds i32, i32* %248, i64 0
  %250 = load i32, i32* %249, align 4
  %251 = and i32 %250, 7
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i8*, i8** %247, i64 %252
  %254 = load i8*, i8** %253, align 8
  %255 = call i32 @r_strbuf_setf(i32* %246, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.11, i64 0, i64 0), i8* %254)
  br label %256

256:                                              ; preds = %244, %217
  br label %257

257:                                              ; preds = %256, %211
  br label %393

258:                                              ; preds = %3
  %259 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %260 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %259, i32 0, i32 2
  %261 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %261, i64 0
  %263 = load %struct.TYPE_6__*, %struct.TYPE_6__** %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %312

267:                                              ; preds = %258
  %268 = load i32*, i32** %6, align 8
  %269 = getelementptr inbounds i32, i32* %268, i64 0
  %270 = load i32, i32* %269, align 4
  %271 = icmp sgt i32 %270, 151
  br i1 %271, label %272, label %299

272:                                              ; preds = %267
  %273 = call i8* (...) @r_anal_value_new()
  %274 = bitcast i8* %273 to %struct.TYPE_6__*
  %275 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %276 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %275, i32 0, i32 2
  %277 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %276, align 8
  %278 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %277, i64 1
  store %struct.TYPE_6__* %274, %struct.TYPE_6__** %278, align 8
  %279 = load i32*, i32** %4, align 8
  %280 = load i32, i32* @R_REG_TYPE_GPR, align 4
  %281 = call i8* @r_reg_get(i32* %279, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i32 %280)
  %282 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %283 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %282, i32 0, i32 2
  %284 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %284, i64 1
  %286 = load %struct.TYPE_6__*, %struct.TYPE_6__** %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %286, i32 0, i32 1
  store i8* %281, i8** %287, align 8
  %288 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %289 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %288, i32 0, i32 1
  %290 = load i8**, i8*** @regs_x, align 8
  %291 = load i32*, i32** %6, align 8
  %292 = getelementptr inbounds i32, i32* %291, i64 0
  %293 = load i32, i32* %292, align 4
  %294 = and i32 %293, 7
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds i8*, i8** %290, i64 %295
  %297 = load i8*, i8** %296, align 8
  %298 = call i32 @r_strbuf_setf(i32* %289, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.12, i64 0, i64 0), i8* %297)
  br label %311

299:                                              ; preds = %267
  %300 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %301 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %300, i32 0, i32 1
  %302 = load i8**, i8*** @regs_x, align 8
  %303 = load i32*, i32** %6, align 8
  %304 = getelementptr inbounds i32, i32* %303, i64 0
  %305 = load i32, i32* %304, align 4
  %306 = and i32 %305, 7
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds i8*, i8** %302, i64 %307
  %309 = load i8*, i8** %308, align 8
  %310 = call i32 @r_strbuf_setf(i32* %301, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.13, i64 0, i64 0), i8* %309)
  br label %311

311:                                              ; preds = %299, %272
  br label %357

312:                                              ; preds = %258
  %313 = load i32*, i32** %6, align 8
  %314 = getelementptr inbounds i32, i32* %313, i64 0
  %315 = load i32, i32* %314, align 4
  %316 = icmp sgt i32 %315, 151
  br i1 %316, label %317, label %344

317:                                              ; preds = %312
  %318 = call i8* (...) @r_anal_value_new()
  %319 = bitcast i8* %318 to %struct.TYPE_6__*
  %320 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %321 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %320, i32 0, i32 2
  %322 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %321, align 8
  %323 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %322, i64 1
  store %struct.TYPE_6__* %319, %struct.TYPE_6__** %323, align 8
  %324 = load i32*, i32** %4, align 8
  %325 = load i32, i32* @R_REG_TYPE_GPR, align 4
  %326 = call i8* @r_reg_get(i32* %324, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i32 %325)
  %327 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %328 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %327, i32 0, i32 2
  %329 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %328, align 8
  %330 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %329, i64 1
  %331 = load %struct.TYPE_6__*, %struct.TYPE_6__** %330, align 8
  %332 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %331, i32 0, i32 1
  store i8* %326, i8** %332, align 8
  %333 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %334 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %333, i32 0, i32 1
  %335 = load i8**, i8*** @regs_x, align 8
  %336 = load i32*, i32** %6, align 8
  %337 = getelementptr inbounds i32, i32* %336, i64 0
  %338 = load i32, i32* %337, align 4
  %339 = and i32 %338, 7
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds i8*, i8** %335, i64 %340
  %342 = load i8*, i8** %341, align 8
  %343 = call i32 @r_strbuf_setf(i32* %334, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.14, i64 0, i64 0), i8* %342)
  br label %356

344:                                              ; preds = %312
  %345 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %346 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %345, i32 0, i32 1
  %347 = load i8**, i8*** @regs_x, align 8
  %348 = load i32*, i32** %6, align 8
  %349 = getelementptr inbounds i32, i32* %348, i64 0
  %350 = load i32, i32* %349, align 4
  %351 = and i32 %350, 7
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds i8*, i8** %347, i64 %352
  %354 = load i8*, i8** %353, align 8
  %355 = call i32 @r_strbuf_setf(i32* %346, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.15, i64 0, i64 0), i8* %354)
  br label %356

356:                                              ; preds = %344, %317
  br label %357

357:                                              ; preds = %356, %311
  br label %393

358:                                              ; preds = %3
  %359 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %360 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %359, i32 0, i32 2
  %361 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %360, align 8
  %362 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %361, i64 0
  %363 = load %struct.TYPE_6__*, %struct.TYPE_6__** %362, align 8
  %364 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %363, i32 0, i32 0
  %365 = load i32, i32* %364, align 8
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %367, label %379

367:                                              ; preds = %358
  %368 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %369 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %368, i32 0, i32 1
  %370 = load i8**, i8*** @regs_x, align 8
  %371 = load i32*, i32** %6, align 8
  %372 = getelementptr inbounds i32, i32* %371, i64 0
  %373 = load i32, i32* %372, align 4
  %374 = and i32 %373, 7
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds i8*, i8** %370, i64 %375
  %377 = load i8*, i8** %376, align 8
  %378 = call i32 @r_strbuf_setf(i32* %369, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.16, i64 0, i64 0), i8* %377)
  br label %391

379:                                              ; preds = %358
  %380 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %381 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %380, i32 0, i32 1
  %382 = load i8**, i8*** @regs_x, align 8
  %383 = load i32*, i32** %6, align 8
  %384 = getelementptr inbounds i32, i32* %383, i64 0
  %385 = load i32, i32* %384, align 4
  %386 = and i32 %385, 7
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds i8*, i8** %382, i64 %387
  %389 = load i8*, i8** %388, align 8
  %390 = call i32 @r_strbuf_setf(i32* %381, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.17, i64 0, i64 0), i8* %389)
  br label %391

391:                                              ; preds = %379, %367
  br label %393

392:                                              ; preds = %3
  br label %393

393:                                              ; preds = %392, %391, %357, %257, %157, %123, %89
  ret void
}

declare dso_local i8* @r_anal_value_new(...) #1

declare dso_local i8* @r_reg_get(i32*, i8*, i32) #1

declare dso_local i32 @r_strbuf_setf(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
