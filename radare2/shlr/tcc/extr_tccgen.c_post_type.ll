; ModuleID = '/home/carl/AnghaBench/radare2/shlr/tcc/extr_tccgen.c_post_type.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/tcc/extr_tccgen.c_post_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32, %struct.TYPE_20__, %struct.TYPE_19__ }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_22__ = type { i32, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { %struct.TYPE_21__* }
%struct.TYPE_23__ = type { i32 }

@tok = common dso_local global i8 0, align 1
@global_type = common dso_local global i8* null, align 8
@global_symname = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"func.%s.ret=%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"func.%s.cc=%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"cdecl\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"%s=func\0A\00", align 1
@FUNC_OLD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"invalid type\00", align 1
@FUNC_NEW = common dso_local global i32 0, align 4
@VT_BTYPE = common dso_local global i32 0, align 4
@VT_VOID = common dso_local global i32 0, align 4
@TYPE_DIRECT = common dso_local global i32 0, align 4
@TYPE_ABSTRACT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"parameter declared as void\00", align 1
@PTR_SIZE = common dso_local global i32 0, align 4
@TOK_UIDENT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [11 x i8] c"identifier\00", align 1
@VT_INT32 = common dso_local global i32 0, align 4
@SYM_FIELD = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [22 x i8] c"func.%s.arg.%d=%s,%s\0A\00", align 1
@TOK_DOTS = common dso_local global i8 0, align 1
@FUNC_ELLIPSIS = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [17 x i8] c"func.%s.args=%d\0A\00", align 1
@VT_CONSTANT = common dso_local global i32 0, align 4
@VT_PTR = common dso_local global i32 0, align 4
@VT_FUNC = common dso_local global i32 0, align 4
@TOK_RESTRICT1 = common dso_local global i8 0, align 1
@local_stack = common dso_local global i32 0, align 4
@nocode_wanted = common dso_local global i64 0, align 8
@vtop = common dso_local global %struct.TYPE_24__* null, align 8
@VT_VALMASK = common dso_local global i32 0, align 4
@VT_LVAL = common dso_local global i32 0, align 4
@VT_SYM = common dso_local global i32 0, align 4
@VT_CONST = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [19 x i8] c"invalid array size\00", align 1
@.str.10 = private unnamed_addr constant [51 x i8] c"size of variable length array should be an integer\00", align 1
@VT_VLA = common dso_local global i32 0, align 4
@arraysize = common dso_local global i32 0, align 4
@VT_ARRAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_22__*, %struct.TYPE_23__*)* @post_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @post_type(%struct.TYPE_22__* %0, %struct.TYPE_23__* %1) #0 {
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_21__**, align 8
  %11 = alloca %struct.TYPE_21__*, align 8
  %12 = alloca %struct.TYPE_21__*, align 8
  %13 = alloca %struct.TYPE_23__, align 4
  %14 = alloca %struct.TYPE_22__, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca [1024 x i8], align 16
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %3, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %4, align 8
  store i8* null, i8** %15, align 8
  store i32 0, i32* %16, align 4
  %19 = load i8, i8* @tok, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 40
  br i1 %21, label %22, label %202

22:                                               ; preds = %2
  %23 = call i32 (...) @next()
  store i32 0, i32* %6, align 4
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %12, align 8
  store %struct.TYPE_21__** %12, %struct.TYPE_21__*** %10, align 8
  %24 = load i8*, i8** @global_type, align 8
  store i8* %24, i8** %17, align 8
  %25 = load i8*, i8** %15, align 8
  %26 = call i32 @free(i8* %25)
  %27 = load i32, i32* @global_symname, align 4
  %28 = call i8* @strdup(i32 %27)
  store i8* %28, i8** %15, align 8
  %29 = load i8*, i8** %15, align 8
  %30 = load i8*, i8** %17, align 8
  %31 = call i32 (i8*, i8*, ...) @tcc_appendf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %29, i8* %30)
  %32 = load i8*, i8** %15, align 8
  %33 = call i32 (i8*, i8*, ...) @tcc_appendf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %34 = load i8*, i8** %15, align 8
  %35 = call i32 (i8*, i8*, ...) @tcc_appendf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* %34)
  store i32 0, i32* %8, align 4
  %36 = load i8, i8* @tok, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp ne i32 %37, 41
  br i1 %38, label %39, label %150

39:                                               ; preds = %22
  br label %40

40:                                               ; preds = %148, %39
  %41 = call i64 (...) @tcc_nerr()
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %149

43:                                               ; preds = %40
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @FUNC_OLD, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %93

47:                                               ; preds = %43
  %48 = call i32 @parse_btype(%struct.TYPE_22__* %14, %struct.TYPE_23__* %13)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %58, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = call i32 @TCC_ERR(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  br label %57

55:                                               ; preds = %50
  %56 = load i32, i32* @FUNC_OLD, align 4
  store i32 %56, i32* %6, align 4
  br label %94

57:                                               ; preds = %53
  br label %58

58:                                               ; preds = %57, %47
  %59 = load i32, i32* @FUNC_NEW, align 4
  store i32 %59, i32* %6, align 4
  %60 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %14, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @VT_BTYPE, align 4
  %63 = and i32 %61, %62
  %64 = load i32, i32* @VT_VOID, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %58
  %67 = load i8, i8* @tok, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 41
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  br label %149

71:                                               ; preds = %66, %58
  %72 = load i32, i32* @TYPE_DIRECT, align 4
  %73 = load i32, i32* @TYPE_ABSTRACT, align 4
  %74 = or i32 %72, %73
  %75 = call i32 @type_decl(%struct.TYPE_22__* %14, %struct.TYPE_23__* %13, i32* %5, i32 %74)
  %76 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %14, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @VT_BTYPE, align 4
  %79 = and i32 %77, %78
  %80 = load i32, i32* @VT_VOID, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %71
  %83 = call i32 @TCC_ERR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  br label %84

84:                                               ; preds = %82, %71
  %85 = call i32 @type_size(%struct.TYPE_22__* %14, i32* %9)
  %86 = load i32, i32* @PTR_SIZE, align 4
  %87 = add nsw i32 %85, %86
  %88 = sub nsw i32 %87, 1
  %89 = load i32, i32* @PTR_SIZE, align 4
  %90 = sdiv i32 %88, %89
  %91 = load i32, i32* %8, align 4
  %92 = add nsw i32 %91, %90
  store i32 %92, i32* %8, align 4
  br label %106

93:                                               ; preds = %43
  br label %94

94:                                               ; preds = %93, %55
  %95 = load i8, i8* @tok, align 1
  %96 = sext i8 %95 to i32
  store i32 %96, i32* %5, align 4
  %97 = load i32, i32* %5, align 4
  %98 = load i32, i32* @TOK_UIDENT, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %94
  %101 = call i32 @expect(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  br label %102

102:                                              ; preds = %100, %94
  %103 = load i32, i32* @VT_INT32, align 4
  %104 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %14, i32 0, i32 0
  store i32 %103, i32* %104, align 8
  %105 = call i32 (...) @next()
  br label %106

106:                                              ; preds = %102, %84
  %107 = call i32 @convert_parameter_type(%struct.TYPE_22__* %14)
  %108 = load i32, i32* %5, align 4
  %109 = load i32, i32* @SYM_FIELD, align 4
  %110 = or i32 %108, %109
  %111 = call %struct.TYPE_21__* @sym_push(i32 %110, %struct.TYPE_22__* %14, i32 0, i32 0)
  store %struct.TYPE_21__* %111, %struct.TYPE_21__** %11, align 8
  %112 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %113 = icmp ne %struct.TYPE_21__* %112, null
  br i1 %113, label %115, label %114

114:                                              ; preds = %106
  br label %295

115:                                              ; preds = %106
  %116 = getelementptr inbounds [1024 x i8], [1024 x i8]* %18, i64 0, i64 0
  %117 = call i32 @type_to_str(i8* %116, i32 1024, %struct.TYPE_22__* %14, i32* null)
  %118 = load i8*, i8** %15, align 8
  %119 = load i32, i32* %16, align 4
  %120 = getelementptr inbounds [1024 x i8], [1024 x i8]* %18, i64 0, i64 0
  %121 = load i32, i32* @global_symname, align 4
  %122 = call i32 (i8*, i8*, ...) @tcc_appendf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i8* %118, i32 %119, i8* %120, i32 %121)
  %123 = load i32, i32* %16, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %16, align 4
  br label %125

125:                                              ; preds = %115
  %126 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %127 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %10, align 8
  store %struct.TYPE_21__* %126, %struct.TYPE_21__** %127, align 8
  %128 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %129 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %128, i32 0, i32 0
  store %struct.TYPE_21__** %129, %struct.TYPE_21__*** %10, align 8
  %130 = load i8, i8* @tok, align 1
  %131 = sext i8 %130 to i32
  %132 = icmp eq i32 %131, 41
  br i1 %132, label %133, label %134

133:                                              ; preds = %125
  br label %149

134:                                              ; preds = %125
  %135 = call i32 @skip(i8 signext 44)
  %136 = load i32, i32* %6, align 4
  %137 = load i32, i32* @FUNC_NEW, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %148

139:                                              ; preds = %134
  %140 = load i8, i8* @tok, align 1
  %141 = sext i8 %140 to i32
  %142 = load i8, i8* @TOK_DOTS, align 1
  %143 = sext i8 %142 to i32
  %144 = icmp eq i32 %141, %143
  br i1 %144, label %145, label %148

145:                                              ; preds = %139
  %146 = load i32, i32* @FUNC_ELLIPSIS, align 4
  store i32 %146, i32* %6, align 4
  %147 = call i32 (...) @next()
  br label %149

148:                                              ; preds = %139, %134
  br label %40

149:                                              ; preds = %145, %133, %70, %40
  br label %150

150:                                              ; preds = %149, %22
  %151 = load i8*, i8** %15, align 8
  %152 = load i32, i32* %16, align 4
  %153 = call i32 (i8*, i8*, ...) @tcc_appendf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i8* %151, i32 %152)
  %154 = load i32, i32* %6, align 4
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %150
  %157 = load i32, i32* @FUNC_OLD, align 4
  store i32 %157, i32* %6, align 4
  br label %158

158:                                              ; preds = %156, %150
  %159 = call i32 @skip(i8 signext 41)
  %160 = load i32, i32* @VT_CONSTANT, align 4
  %161 = xor i32 %160, -1
  %162 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = and i32 %164, %161
  store i32 %165, i32* %163, align 8
  %166 = load i8, i8* @tok, align 1
  %167 = sext i8 %166 to i32
  %168 = icmp eq i32 %167, 91
  br i1 %168, label %169, label %177

169:                                              ; preds = %158
  %170 = call i32 (...) @next()
  %171 = call i32 @skip(i8 signext 93)
  %172 = load i32, i32* @VT_PTR, align 4
  %173 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %174 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = or i32 %175, %172
  store i32 %176, i32* %174, align 8
  br label %177

177:                                              ; preds = %169, %158
  %178 = load i32, i32* %8, align 4
  %179 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %179, i32 0, i32 0
  store i32 %178, i32* %180, align 4
  %181 = load i32, i32* @SYM_FIELD, align 4
  %182 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %183 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %184 = call i32 @INT_ATTR(%struct.TYPE_23__* %183)
  %185 = load i32, i32* %6, align 4
  %186 = call %struct.TYPE_21__* @sym_push(i32 %181, %struct.TYPE_22__* %182, i32 %184, i32 %185)
  store %struct.TYPE_21__* %186, %struct.TYPE_21__** %11, align 8
  %187 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %188 = icmp ne %struct.TYPE_21__* %187, null
  br i1 %188, label %190, label %189

189:                                              ; preds = %177
  br label %295

190:                                              ; preds = %177
  %191 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %192 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %193 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %192, i32 0, i32 0
  store %struct.TYPE_21__* %191, %struct.TYPE_21__** %193, align 8
  %194 = load i32, i32* @VT_FUNC, align 4
  %195 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %195, i32 0, i32 0
  store i32 %194, i32* %196, align 8
  %197 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %198 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %199 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %198, i32 0, i32 1
  store %struct.TYPE_21__* %197, %struct.TYPE_21__** %199, align 8
  %200 = load i8*, i8** %15, align 8
  %201 = call i32 @R_FREE(i8* %200)
  br label %295

202:                                              ; preds = %2
  %203 = load i8, i8* @tok, align 1
  %204 = sext i8 %203 to i32
  %205 = icmp eq i32 %204, 91
  br i1 %205, label %206, label %294

206:                                              ; preds = %202
  %207 = call i32 (...) @next()
  %208 = load i8, i8* @tok, align 1
  %209 = sext i8 %208 to i32
  %210 = load i8, i8* @TOK_RESTRICT1, align 1
  %211 = sext i8 %210 to i32
  %212 = icmp eq i32 %209, %211
  br i1 %212, label %213, label %215

213:                                              ; preds = %206
  %214 = call i32 (...) @next()
  br label %215

215:                                              ; preds = %213, %206
  store i32 -1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %216 = load i8, i8* @tok, align 1
  %217 = sext i8 %216 to i32
  %218 = icmp ne i32 %217, 93
  br i1 %218, label %219, label %266

219:                                              ; preds = %215
  %220 = load i32, i32* @local_stack, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %225

222:                                              ; preds = %219
  %223 = load i64, i64* @nocode_wanted, align 8
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %228

225:                                              ; preds = %222, %219
  %226 = call i32 (...) @expr_const()
  %227 = call i32 @vpushll(i32 %226)
  br label %230

228:                                              ; preds = %222
  %229 = call i32 (...) @gexpr()
  br label %230

230:                                              ; preds = %228, %225
  %231 = load %struct.TYPE_24__*, %struct.TYPE_24__** @vtop, align 8
  %232 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = load i32, i32* @VT_VALMASK, align 4
  %235 = load i32, i32* @VT_LVAL, align 4
  %236 = or i32 %234, %235
  %237 = load i32, i32* @VT_SYM, align 4
  %238 = or i32 %236, %237
  %239 = and i32 %233, %238
  %240 = load i32, i32* @VT_CONST, align 4
  %241 = icmp eq i32 %239, %240
  br i1 %241, label %242, label %252

242:                                              ; preds = %230
  %243 = load %struct.TYPE_24__*, %struct.TYPE_24__** @vtop, align 8
  %244 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %243, i32 0, i32 2
  %245 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  store i32 %246, i32* %5, align 4
  %247 = load i32, i32* %5, align 4
  %248 = icmp slt i32 %247, 0
  br i1 %248, label %249, label %251

249:                                              ; preds = %242
  %250 = call i32 @TCC_ERR(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0))
  br label %251

251:                                              ; preds = %249, %242
  br label %265

252:                                              ; preds = %230
  %253 = load %struct.TYPE_24__*, %struct.TYPE_24__** @vtop, align 8
  %254 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %253, i32 0, i32 1
  %255 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 4
  %257 = load i32, i32* @VT_BTYPE, align 4
  %258 = and i32 %256, %257
  %259 = call i32 @is_integer_btype(i32 %258)
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %263, label %261

261:                                              ; preds = %252
  %262 = call i32 @TCC_ERR(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.10, i64 0, i64 0))
  br label %263

263:                                              ; preds = %261, %252
  %264 = load i32, i32* @VT_VLA, align 4
  store i32 %264, i32* %7, align 4
  br label %265

265:                                              ; preds = %263, %251
  br label %266

266:                                              ; preds = %265, %215
  %267 = call i32 @skip(i8 signext 93)
  %268 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %269 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  call void @post_type(%struct.TYPE_22__* %268, %struct.TYPE_23__* %269)
  %270 = load i32, i32* %5, align 4
  store i32 %270, i32* @arraysize, align 4
  %271 = load i32, i32* @SYM_FIELD, align 4
  %272 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %273 = load i32, i32* %5, align 4
  %274 = call %struct.TYPE_21__* @sym_push(i32 %271, %struct.TYPE_22__* %272, i32 0, i32 %273)
  store %struct.TYPE_21__* %274, %struct.TYPE_21__** %11, align 8
  %275 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %276 = icmp ne %struct.TYPE_21__* %275, null
  br i1 %276, label %278, label %277

277:                                              ; preds = %266
  br label %295

278:                                              ; preds = %266
  %279 = load i32, i32* %7, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %283

281:                                              ; preds = %278
  %282 = load i32, i32* @VT_VLA, align 4
  br label %285

283:                                              ; preds = %278
  %284 = load i32, i32* @VT_ARRAY, align 4
  br label %285

285:                                              ; preds = %283, %281
  %286 = phi i32 [ %282, %281 ], [ %284, %283 ]
  %287 = load i32, i32* @VT_PTR, align 4
  %288 = or i32 %286, %287
  %289 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %290 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %289, i32 0, i32 0
  store i32 %288, i32* %290, align 8
  %291 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %292 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %293 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %292, i32 0, i32 1
  store %struct.TYPE_21__* %291, %struct.TYPE_21__** %293, align 8
  br label %294

294:                                              ; preds = %285, %202
  br label %295

295:                                              ; preds = %114, %189, %277, %294, %190
  ret void
}

declare dso_local i32 @next(...) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @strdup(i32) #1

declare dso_local i32 @tcc_appendf(i8*, i8*, ...) #1

declare dso_local i64 @tcc_nerr(...) #1

declare dso_local i32 @parse_btype(%struct.TYPE_22__*, %struct.TYPE_23__*) #1

declare dso_local i32 @TCC_ERR(i8*) #1

declare dso_local i32 @type_decl(%struct.TYPE_22__*, %struct.TYPE_23__*, i32*, i32) #1

declare dso_local i32 @type_size(%struct.TYPE_22__*, i32*) #1

declare dso_local i32 @expect(i8*) #1

declare dso_local i32 @convert_parameter_type(%struct.TYPE_22__*) #1

declare dso_local %struct.TYPE_21__* @sym_push(i32, %struct.TYPE_22__*, i32, i32) #1

declare dso_local i32 @type_to_str(i8*, i32, %struct.TYPE_22__*, i32*) #1

declare dso_local i32 @skip(i8 signext) #1

declare dso_local i32 @INT_ATTR(%struct.TYPE_23__*) #1

declare dso_local i32 @R_FREE(i8*) #1

declare dso_local i32 @vpushll(i32) #1

declare dso_local i32 @expr_const(...) #1

declare dso_local i32 @gexpr(...) #1

declare dso_local i32 @is_integer_btype(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
