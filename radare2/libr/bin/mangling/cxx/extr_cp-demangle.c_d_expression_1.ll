; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/mangling/cxx/extr_cp-demangle.c_d_expression_1.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/mangling/cxx/extr_cp-demangle.c_d_expression_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demangle_component = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i8*, i32, i32 }
%struct.d_info = type { i32 }

@DEMANGLE_COMPONENT_QUAL_NAME = common dso_local global i32 0, align 4
@DEMANGLE_COMPONENT_TEMPLATE = common dso_local global i32 0, align 4
@DEMANGLE_COMPONENT_PACK_EXPANSION = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@DEMANGLE_COMPONENT_INITIALIZER_LIST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"st\00", align 1
@DEMANGLE_COMPONENT_UNARY = common dso_local global i32 0, align 4
@DEMANGLE_COMPONENT_NULLARY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"sP\00", align 1
@DEMANGLE_COMPONENT_BINARY_ARGS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"cl\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"dt\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"pt\00", align 1
@DEMANGLE_COMPONENT_BINARY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"qu\00", align 1
@DEMANGLE_COMPONENT_TRINARY = common dso_local global i32 0, align 4
@DEMANGLE_COMPONENT_TRINARY_ARG1 = common dso_local global i32 0, align 4
@DEMANGLE_COMPONENT_TRINARY_ARG2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.demangle_component* (%struct.d_info*)* @d_expression_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.demangle_component* @d_expression_1(%struct.d_info* %0) #0 {
  %2 = alloca %struct.demangle_component*, align 8
  %3 = alloca %struct.d_info*, align 8
  %4 = alloca i8, align 1
  %5 = alloca %struct.demangle_component*, align 8
  %6 = alloca %struct.demangle_component*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.demangle_component*, align 8
  %9 = alloca %struct.demangle_component*, align 8
  %10 = alloca %struct.demangle_component*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.demangle_component*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.demangle_component*, align 8
  %16 = alloca %struct.demangle_component*, align 8
  %17 = alloca %struct.demangle_component*, align 8
  %18 = alloca %struct.demangle_component*, align 8
  %19 = alloca %struct.demangle_component*, align 8
  store %struct.d_info* %0, %struct.d_info** %3, align 8
  %20 = load %struct.d_info*, %struct.d_info** %3, align 8
  %21 = call signext i8 @d_peek_char(%struct.d_info* %20)
  store i8 %21, i8* %4, align 1
  %22 = load i8, i8* %4, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 76
  br i1 %24, label %25, label %28

25:                                               ; preds = %1
  %26 = load %struct.d_info*, %struct.d_info** %3, align 8
  %27 = call %struct.demangle_component* @d_expr_primary(%struct.d_info* %26)
  store %struct.demangle_component* %27, %struct.demangle_component** %2, align 8
  br label %526

28:                                               ; preds = %1
  %29 = load i8, i8* %4, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 84
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load %struct.d_info*, %struct.d_info** %3, align 8
  %34 = call %struct.demangle_component* @d_template_param(%struct.d_info* %33)
  store %struct.demangle_component* %34, %struct.demangle_component** %2, align 8
  br label %526

35:                                               ; preds = %28
  %36 = load i8, i8* %4, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 115
  br i1 %38, label %39, label %72

39:                                               ; preds = %35
  %40 = load %struct.d_info*, %struct.d_info** %3, align 8
  %41 = call signext i8 @d_peek_next_char(%struct.d_info* %40)
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 114
  br i1 %43, label %44, label %72

44:                                               ; preds = %39
  %45 = load %struct.d_info*, %struct.d_info** %3, align 8
  %46 = call i32 @d_advance(%struct.d_info* %45, i32 2)
  %47 = load %struct.d_info*, %struct.d_info** %3, align 8
  %48 = call %struct.demangle_component* @cplus_demangle_type(%struct.d_info* %47)
  store %struct.demangle_component* %48, %struct.demangle_component** %5, align 8
  %49 = load %struct.d_info*, %struct.d_info** %3, align 8
  %50 = call %struct.demangle_component* @d_unqualified_name(%struct.d_info* %49)
  store %struct.demangle_component* %50, %struct.demangle_component** %6, align 8
  %51 = load %struct.d_info*, %struct.d_info** %3, align 8
  %52 = call signext i8 @d_peek_char(%struct.d_info* %51)
  %53 = sext i8 %52 to i32
  %54 = icmp ne i32 %53, 73
  br i1 %54, label %55, label %61

55:                                               ; preds = %44
  %56 = load %struct.d_info*, %struct.d_info** %3, align 8
  %57 = load i32, i32* @DEMANGLE_COMPONENT_QUAL_NAME, align 4
  %58 = load %struct.demangle_component*, %struct.demangle_component** %5, align 8
  %59 = load %struct.demangle_component*, %struct.demangle_component** %6, align 8
  %60 = call %struct.demangle_component* @d_make_comp(%struct.d_info* %56, i32 %57, %struct.demangle_component* %58, %struct.demangle_component* %59)
  store %struct.demangle_component* %60, %struct.demangle_component** %2, align 8
  br label %526

61:                                               ; preds = %44
  %62 = load %struct.d_info*, %struct.d_info** %3, align 8
  %63 = load i32, i32* @DEMANGLE_COMPONENT_QUAL_NAME, align 4
  %64 = load %struct.demangle_component*, %struct.demangle_component** %5, align 8
  %65 = load %struct.d_info*, %struct.d_info** %3, align 8
  %66 = load i32, i32* @DEMANGLE_COMPONENT_TEMPLATE, align 4
  %67 = load %struct.demangle_component*, %struct.demangle_component** %6, align 8
  %68 = load %struct.d_info*, %struct.d_info** %3, align 8
  %69 = call %struct.demangle_component* @d_template_args(%struct.d_info* %68)
  %70 = call %struct.demangle_component* @d_make_comp(%struct.d_info* %65, i32 %66, %struct.demangle_component* %67, %struct.demangle_component* %69)
  %71 = call %struct.demangle_component* @d_make_comp(%struct.d_info* %62, i32 %63, %struct.demangle_component* %64, %struct.demangle_component* %70)
  store %struct.demangle_component* %71, %struct.demangle_component** %2, align 8
  br label %526

72:                                               ; preds = %39, %35
  %73 = load i8, i8* %4, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 115
  br i1 %75, label %76, label %89

76:                                               ; preds = %72
  %77 = load %struct.d_info*, %struct.d_info** %3, align 8
  %78 = call signext i8 @d_peek_next_char(%struct.d_info* %77)
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 112
  br i1 %80, label %81, label %89

81:                                               ; preds = %76
  %82 = load %struct.d_info*, %struct.d_info** %3, align 8
  %83 = call i32 @d_advance(%struct.d_info* %82, i32 2)
  %84 = load %struct.d_info*, %struct.d_info** %3, align 8
  %85 = load i32, i32* @DEMANGLE_COMPONENT_PACK_EXPANSION, align 4
  %86 = load %struct.d_info*, %struct.d_info** %3, align 8
  %87 = call %struct.demangle_component* @d_expression_1(%struct.d_info* %86)
  %88 = call %struct.demangle_component* @d_make_comp(%struct.d_info* %84, i32 %85, %struct.demangle_component* %87, %struct.demangle_component* null)
  store %struct.demangle_component* %88, %struct.demangle_component** %2, align 8
  br label %526

89:                                               ; preds = %76, %72
  %90 = load i8, i8* %4, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp eq i32 %91, 102
  br i1 %92, label %93, label %125

93:                                               ; preds = %89
  %94 = load %struct.d_info*, %struct.d_info** %3, align 8
  %95 = call signext i8 @d_peek_next_char(%struct.d_info* %94)
  %96 = sext i8 %95 to i32
  %97 = icmp eq i32 %96, 112
  br i1 %97, label %98, label %125

98:                                               ; preds = %93
  %99 = load %struct.d_info*, %struct.d_info** %3, align 8
  %100 = call i32 @d_advance(%struct.d_info* %99, i32 2)
  %101 = load %struct.d_info*, %struct.d_info** %3, align 8
  %102 = call signext i8 @d_peek_char(%struct.d_info* %101)
  %103 = sext i8 %102 to i32
  %104 = icmp eq i32 %103, 84
  br i1 %104, label %105, label %108

105:                                              ; preds = %98
  %106 = load %struct.d_info*, %struct.d_info** %3, align 8
  %107 = call i32 @d_advance(%struct.d_info* %106, i32 1)
  store i32 0, i32* %7, align 4
  br label %121

108:                                              ; preds = %98
  %109 = load %struct.d_info*, %struct.d_info** %3, align 8
  %110 = call i32 @d_compact_number(%struct.d_info* %109)
  store i32 %110, i32* %7, align 4
  %111 = load i32, i32* %7, align 4
  %112 = load i32, i32* @INT_MAX, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %117, label %114

114:                                              ; preds = %108
  %115 = load i32, i32* %7, align 4
  %116 = icmp eq i32 %115, -1
  br i1 %116, label %117, label %118

117:                                              ; preds = %114, %108
  store %struct.demangle_component* null, %struct.demangle_component** %2, align 8
  br label %526

118:                                              ; preds = %114
  %119 = load i32, i32* %7, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %7, align 4
  br label %121

121:                                              ; preds = %118, %105
  %122 = load %struct.d_info*, %struct.d_info** %3, align 8
  %123 = load i32, i32* %7, align 4
  %124 = call %struct.demangle_component* @d_make_function_param(%struct.d_info* %122, i32 %123)
  store %struct.demangle_component* %124, %struct.demangle_component** %2, align 8
  br label %526

125:                                              ; preds = %93, %89
  %126 = load i8, i8* %4, align 1
  %127 = call i64 @IS_DIGIT(i8 signext %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %138, label %129

129:                                              ; preds = %125
  %130 = load i8, i8* %4, align 1
  %131 = sext i8 %130 to i32
  %132 = icmp eq i32 %131, 111
  br i1 %132, label %133, label %165

133:                                              ; preds = %129
  %134 = load %struct.d_info*, %struct.d_info** %3, align 8
  %135 = call signext i8 @d_peek_next_char(%struct.d_info* %134)
  %136 = sext i8 %135 to i32
  %137 = icmp eq i32 %136, 110
  br i1 %137, label %138, label %165

138:                                              ; preds = %133, %125
  %139 = load i8, i8* %4, align 1
  %140 = sext i8 %139 to i32
  %141 = icmp eq i32 %140, 111
  br i1 %141, label %142, label %145

142:                                              ; preds = %138
  %143 = load %struct.d_info*, %struct.d_info** %3, align 8
  %144 = call i32 @d_advance(%struct.d_info* %143, i32 2)
  br label %145

145:                                              ; preds = %142, %138
  %146 = load %struct.d_info*, %struct.d_info** %3, align 8
  %147 = call %struct.demangle_component* @d_unqualified_name(%struct.d_info* %146)
  store %struct.demangle_component* %147, %struct.demangle_component** %8, align 8
  %148 = load %struct.demangle_component*, %struct.demangle_component** %8, align 8
  %149 = icmp eq %struct.demangle_component* %148, null
  br i1 %149, label %150, label %151

150:                                              ; preds = %145
  store %struct.demangle_component* null, %struct.demangle_component** %2, align 8
  br label %526

151:                                              ; preds = %145
  %152 = load %struct.d_info*, %struct.d_info** %3, align 8
  %153 = call signext i8 @d_peek_char(%struct.d_info* %152)
  %154 = sext i8 %153 to i32
  %155 = icmp eq i32 %154, 73
  br i1 %155, label %156, label %163

156:                                              ; preds = %151
  %157 = load %struct.d_info*, %struct.d_info** %3, align 8
  %158 = load i32, i32* @DEMANGLE_COMPONENT_TEMPLATE, align 4
  %159 = load %struct.demangle_component*, %struct.demangle_component** %8, align 8
  %160 = load %struct.d_info*, %struct.d_info** %3, align 8
  %161 = call %struct.demangle_component* @d_template_args(%struct.d_info* %160)
  %162 = call %struct.demangle_component* @d_make_comp(%struct.d_info* %157, i32 %158, %struct.demangle_component* %159, %struct.demangle_component* %161)
  store %struct.demangle_component* %162, %struct.demangle_component** %2, align 8
  br label %526

163:                                              ; preds = %151
  %164 = load %struct.demangle_component*, %struct.demangle_component** %8, align 8
  store %struct.demangle_component* %164, %struct.demangle_component** %2, align 8
  br label %526

165:                                              ; preds = %133, %129
  %166 = load i8, i8* %4, align 1
  %167 = sext i8 %166 to i32
  %168 = icmp eq i32 %167, 105
  br i1 %168, label %173, label %169

169:                                              ; preds = %165
  %170 = load i8, i8* %4, align 1
  %171 = sext i8 %170 to i32
  %172 = icmp eq i32 %171, 116
  br i1 %172, label %173, label %199

173:                                              ; preds = %169, %165
  %174 = load %struct.d_info*, %struct.d_info** %3, align 8
  %175 = call signext i8 @d_peek_next_char(%struct.d_info* %174)
  %176 = sext i8 %175 to i32
  %177 = icmp eq i32 %176, 108
  br i1 %177, label %178, label %199

178:                                              ; preds = %173
  store %struct.demangle_component* null, %struct.demangle_component** %9, align 8
  %179 = load %struct.d_info*, %struct.d_info** %3, align 8
  %180 = call i32 @d_advance(%struct.d_info* %179, i32 2)
  %181 = load i8, i8* %4, align 1
  %182 = sext i8 %181 to i32
  %183 = icmp eq i32 %182, 116
  br i1 %183, label %184, label %187

184:                                              ; preds = %178
  %185 = load %struct.d_info*, %struct.d_info** %3, align 8
  %186 = call %struct.demangle_component* @cplus_demangle_type(%struct.d_info* %185)
  store %struct.demangle_component* %186, %struct.demangle_component** %9, align 8
  br label %187

187:                                              ; preds = %184, %178
  %188 = load %struct.d_info*, %struct.d_info** %3, align 8
  %189 = call signext i8 @d_peek_next_char(%struct.d_info* %188)
  %190 = icmp ne i8 %189, 0
  br i1 %190, label %192, label %191

191:                                              ; preds = %187
  store %struct.demangle_component* null, %struct.demangle_component** %2, align 8
  br label %526

192:                                              ; preds = %187
  %193 = load %struct.d_info*, %struct.d_info** %3, align 8
  %194 = load i32, i32* @DEMANGLE_COMPONENT_INITIALIZER_LIST, align 4
  %195 = load %struct.demangle_component*, %struct.demangle_component** %9, align 8
  %196 = load %struct.d_info*, %struct.d_info** %3, align 8
  %197 = call %struct.demangle_component* @d_exprlist(%struct.d_info* %196, i8 signext 69)
  %198 = call %struct.demangle_component* @d_make_comp(%struct.d_info* %193, i32 %194, %struct.demangle_component* %195, %struct.demangle_component* %197)
  store %struct.demangle_component* %198, %struct.demangle_component** %2, align 8
  br label %526

199:                                              ; preds = %173, %169
  store i8* null, i8** %11, align 8
  %200 = load %struct.d_info*, %struct.d_info** %3, align 8
  %201 = call %struct.demangle_component* @d_operator_name(%struct.d_info* %200)
  store %struct.demangle_component* %201, %struct.demangle_component** %10, align 8
  %202 = load %struct.demangle_component*, %struct.demangle_component** %10, align 8
  %203 = icmp eq %struct.demangle_component* %202, null
  br i1 %203, label %204, label %205

204:                                              ; preds = %199
  store %struct.demangle_component* null, %struct.demangle_component** %2, align 8
  br label %526

205:                                              ; preds = %199
  %206 = load %struct.demangle_component*, %struct.demangle_component** %10, align 8
  %207 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = icmp eq i32 %208, 128
  br i1 %209, label %210, label %241

210:                                              ; preds = %205
  %211 = load %struct.demangle_component*, %struct.demangle_component** %10, align 8
  %212 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %211, i32 0, i32 1
  %213 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %212, i32 0, i32 1
  %214 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %213, i32 0, i32 0
  %215 = load %struct.TYPE_5__*, %struct.TYPE_5__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %215, i32 0, i32 0
  %217 = load i8*, i8** %216, align 8
  store i8* %217, i8** %11, align 8
  %218 = load %struct.demangle_component*, %struct.demangle_component** %10, align 8
  %219 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %218, i32 0, i32 1
  %220 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %219, i32 0, i32 1
  %221 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %220, i32 0, i32 0
  %222 = load %struct.TYPE_5__*, %struct.TYPE_5__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 8
  %225 = sub nsw i32 %224, 2
  %226 = load %struct.d_info*, %struct.d_info** %3, align 8
  %227 = getelementptr inbounds %struct.d_info, %struct.d_info* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 4
  %229 = add nsw i32 %228, %225
  store i32 %229, i32* %227, align 4
  %230 = load i8*, i8** %11, align 8
  %231 = call i64 @strcmp(i8* %230, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %232 = icmp eq i64 %231, 0
  br i1 %232, label %233, label %240

233:                                              ; preds = %210
  %234 = load %struct.d_info*, %struct.d_info** %3, align 8
  %235 = load i32, i32* @DEMANGLE_COMPONENT_UNARY, align 4
  %236 = load %struct.demangle_component*, %struct.demangle_component** %10, align 8
  %237 = load %struct.d_info*, %struct.d_info** %3, align 8
  %238 = call %struct.demangle_component* @cplus_demangle_type(%struct.d_info* %237)
  %239 = call %struct.demangle_component* @d_make_comp(%struct.d_info* %234, i32 %235, %struct.demangle_component* %236, %struct.demangle_component* %238)
  store %struct.demangle_component* %239, %struct.demangle_component** %2, align 8
  br label %526

240:                                              ; preds = %210
  br label %241

241:                                              ; preds = %240, %205
  %242 = load %struct.demangle_component*, %struct.demangle_component** %10, align 8
  %243 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  switch i32 %244, label %245 [
    i32 128, label %246
    i32 129, label %254
    i32 130, label %260
  ]

245:                                              ; preds = %241
  store %struct.demangle_component* null, %struct.demangle_component** %2, align 8
  br label %526

246:                                              ; preds = %241
  %247 = load %struct.demangle_component*, %struct.demangle_component** %10, align 8
  %248 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %247, i32 0, i32 1
  %249 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %248, i32 0, i32 1
  %250 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %249, i32 0, i32 0
  %251 = load %struct.TYPE_5__*, %struct.TYPE_5__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %251, i32 0, i32 2
  %253 = load i32, i32* %252, align 4
  store i32 %253, i32* %12, align 4
  br label %261

254:                                              ; preds = %241
  %255 = load %struct.demangle_component*, %struct.demangle_component** %10, align 8
  %256 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %255, i32 0, i32 1
  %257 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %256, i32 0, i32 0
  %258 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  store i32 %259, i32* %12, align 4
  br label %261

260:                                              ; preds = %241
  store i32 1, i32* %12, align 4
  br label %261

261:                                              ; preds = %260, %254, %246
  %262 = load i32, i32* %12, align 4
  switch i32 %262, label %525 [
    i32 0, label %263
    i32 1, label %268
    i32 2, label %340
    i32 3, label %408
  ]

263:                                              ; preds = %261
  %264 = load %struct.d_info*, %struct.d_info** %3, align 8
  %265 = load i32, i32* @DEMANGLE_COMPONENT_NULLARY, align 4
  %266 = load %struct.demangle_component*, %struct.demangle_component** %10, align 8
  %267 = call %struct.demangle_component* @d_make_comp(%struct.d_info* %264, i32 %265, %struct.demangle_component* %266, %struct.demangle_component* null)
  store %struct.demangle_component* %267, %struct.demangle_component** %2, align 8
  br label %526

268:                                              ; preds = %261
  store i32 0, i32* %14, align 4
  %269 = load i8*, i8** %11, align 8
  %270 = icmp ne i8* %269, null
  br i1 %270, label %271, label %299

271:                                              ; preds = %268
  %272 = load i8*, i8** %11, align 8
  %273 = getelementptr inbounds i8, i8* %272, i64 0
  %274 = load i8, i8* %273, align 1
  %275 = sext i8 %274 to i32
  %276 = icmp eq i32 %275, 112
  br i1 %276, label %283, label %277

277:                                              ; preds = %271
  %278 = load i8*, i8** %11, align 8
  %279 = getelementptr inbounds i8, i8* %278, i64 0
  %280 = load i8, i8* %279, align 1
  %281 = sext i8 %280 to i32
  %282 = icmp eq i32 %281, 109
  br i1 %282, label %283, label %299

283:                                              ; preds = %277, %271
  %284 = load i8*, i8** %11, align 8
  %285 = getelementptr inbounds i8, i8* %284, i64 1
  %286 = load i8, i8* %285, align 1
  %287 = sext i8 %286 to i32
  %288 = load i8*, i8** %11, align 8
  %289 = getelementptr inbounds i8, i8* %288, i64 0
  %290 = load i8, i8* %289, align 1
  %291 = sext i8 %290 to i32
  %292 = icmp eq i32 %287, %291
  br i1 %292, label %293, label %299

293:                                              ; preds = %283
  %294 = load %struct.d_info*, %struct.d_info** %3, align 8
  %295 = call i32 @d_check_char(%struct.d_info* %294, i8 signext 95)
  %296 = icmp ne i32 %295, 0
  %297 = xor i1 %296, true
  %298 = zext i1 %297 to i32
  store i32 %298, i32* %14, align 4
  br label %299

299:                                              ; preds = %293, %283, %277, %268
  %300 = load %struct.demangle_component*, %struct.demangle_component** %10, align 8
  %301 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 8
  %303 = icmp eq i32 %302, 130
  br i1 %303, label %304, label %311

304:                                              ; preds = %299
  %305 = load %struct.d_info*, %struct.d_info** %3, align 8
  %306 = call i32 @d_check_char(%struct.d_info* %305, i8 signext 95)
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %311

308:                                              ; preds = %304
  %309 = load %struct.d_info*, %struct.d_info** %3, align 8
  %310 = call %struct.demangle_component* @d_exprlist(%struct.d_info* %309, i8 signext 69)
  store %struct.demangle_component* %310, %struct.demangle_component** %13, align 8
  br label %325

311:                                              ; preds = %304, %299
  %312 = load i8*, i8** %11, align 8
  %313 = icmp ne i8* %312, null
  br i1 %313, label %314, label %321

314:                                              ; preds = %311
  %315 = load i8*, i8** %11, align 8
  %316 = call i64 @strcmp(i8* %315, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %317 = icmp ne i64 %316, 0
  br i1 %317, label %321, label %318

318:                                              ; preds = %314
  %319 = load %struct.d_info*, %struct.d_info** %3, align 8
  %320 = call %struct.demangle_component* @d_template_args_1(%struct.d_info* %319)
  store %struct.demangle_component* %320, %struct.demangle_component** %13, align 8
  br label %324

321:                                              ; preds = %314, %311
  %322 = load %struct.d_info*, %struct.d_info** %3, align 8
  %323 = call %struct.demangle_component* @d_expression_1(%struct.d_info* %322)
  store %struct.demangle_component* %323, %struct.demangle_component** %13, align 8
  br label %324

324:                                              ; preds = %321, %318
  br label %325

325:                                              ; preds = %324, %308
  %326 = load i32, i32* %14, align 4
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %334

328:                                              ; preds = %325
  %329 = load %struct.d_info*, %struct.d_info** %3, align 8
  %330 = load i32, i32* @DEMANGLE_COMPONENT_BINARY_ARGS, align 4
  %331 = load %struct.demangle_component*, %struct.demangle_component** %13, align 8
  %332 = load %struct.demangle_component*, %struct.demangle_component** %13, align 8
  %333 = call %struct.demangle_component* @d_make_comp(%struct.d_info* %329, i32 %330, %struct.demangle_component* %331, %struct.demangle_component* %332)
  store %struct.demangle_component* %333, %struct.demangle_component** %13, align 8
  br label %334

334:                                              ; preds = %328, %325
  %335 = load %struct.d_info*, %struct.d_info** %3, align 8
  %336 = load i32, i32* @DEMANGLE_COMPONENT_UNARY, align 4
  %337 = load %struct.demangle_component*, %struct.demangle_component** %10, align 8
  %338 = load %struct.demangle_component*, %struct.demangle_component** %13, align 8
  %339 = call %struct.demangle_component* @d_make_comp(%struct.d_info* %335, i32 %336, %struct.demangle_component* %337, %struct.demangle_component* %338)
  store %struct.demangle_component* %339, %struct.demangle_component** %2, align 8
  br label %526

340:                                              ; preds = %261
  %341 = load i8*, i8** %11, align 8
  %342 = icmp eq i8* %341, null
  br i1 %342, label %343, label %344

343:                                              ; preds = %340
  store %struct.demangle_component* null, %struct.demangle_component** %2, align 8
  br label %526

344:                                              ; preds = %340
  %345 = load %struct.demangle_component*, %struct.demangle_component** %10, align 8
  %346 = call i32 @op_is_new_cast(%struct.demangle_component* %345)
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %348, label %351

348:                                              ; preds = %344
  %349 = load %struct.d_info*, %struct.d_info** %3, align 8
  %350 = call %struct.demangle_component* @cplus_demangle_type(%struct.d_info* %349)
  store %struct.demangle_component* %350, %struct.demangle_component** %15, align 8
  br label %364

351:                                              ; preds = %344
  %352 = load i8*, i8** %11, align 8
  %353 = getelementptr inbounds i8, i8* %352, i64 0
  %354 = load i8, i8* %353, align 1
  %355 = sext i8 %354 to i32
  %356 = icmp eq i32 %355, 102
  br i1 %356, label %357, label %360

357:                                              ; preds = %351
  %358 = load %struct.d_info*, %struct.d_info** %3, align 8
  %359 = call %struct.demangle_component* @d_operator_name(%struct.d_info* %358)
  store %struct.demangle_component* %359, %struct.demangle_component** %15, align 8
  br label %363

360:                                              ; preds = %351
  %361 = load %struct.d_info*, %struct.d_info** %3, align 8
  %362 = call %struct.demangle_component* @d_expression_1(%struct.d_info* %361)
  store %struct.demangle_component* %362, %struct.demangle_component** %15, align 8
  br label %363

363:                                              ; preds = %360, %357
  br label %364

364:                                              ; preds = %363, %348
  %365 = load i8*, i8** %11, align 8
  %366 = call i64 @strcmp(i8* %365, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %367 = icmp ne i64 %366, 0
  br i1 %367, label %371, label %368

368:                                              ; preds = %364
  %369 = load %struct.d_info*, %struct.d_info** %3, align 8
  %370 = call %struct.demangle_component* @d_exprlist(%struct.d_info* %369, i8 signext 69)
  store %struct.demangle_component* %370, %struct.demangle_component** %16, align 8
  br label %398

371:                                              ; preds = %364
  %372 = load i8*, i8** %11, align 8
  %373 = call i64 @strcmp(i8* %372, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %374 = icmp ne i64 %373, 0
  br i1 %374, label %375, label %379

375:                                              ; preds = %371
  %376 = load i8*, i8** %11, align 8
  %377 = call i64 @strcmp(i8* %376, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %378 = icmp ne i64 %377, 0
  br i1 %378, label %394, label %379

379:                                              ; preds = %375, %371
  %380 = load %struct.d_info*, %struct.d_info** %3, align 8
  %381 = call %struct.demangle_component* @d_unqualified_name(%struct.d_info* %380)
  store %struct.demangle_component* %381, %struct.demangle_component** %16, align 8
  %382 = load %struct.d_info*, %struct.d_info** %3, align 8
  %383 = call signext i8 @d_peek_char(%struct.d_info* %382)
  %384 = sext i8 %383 to i32
  %385 = icmp eq i32 %384, 73
  br i1 %385, label %386, label %393

386:                                              ; preds = %379
  %387 = load %struct.d_info*, %struct.d_info** %3, align 8
  %388 = load i32, i32* @DEMANGLE_COMPONENT_TEMPLATE, align 4
  %389 = load %struct.demangle_component*, %struct.demangle_component** %16, align 8
  %390 = load %struct.d_info*, %struct.d_info** %3, align 8
  %391 = call %struct.demangle_component* @d_template_args(%struct.d_info* %390)
  %392 = call %struct.demangle_component* @d_make_comp(%struct.d_info* %387, i32 %388, %struct.demangle_component* %389, %struct.demangle_component* %391)
  store %struct.demangle_component* %392, %struct.demangle_component** %16, align 8
  br label %393

393:                                              ; preds = %386, %379
  br label %397

394:                                              ; preds = %375
  %395 = load %struct.d_info*, %struct.d_info** %3, align 8
  %396 = call %struct.demangle_component* @d_expression_1(%struct.d_info* %395)
  store %struct.demangle_component* %396, %struct.demangle_component** %16, align 8
  br label %397

397:                                              ; preds = %394, %393
  br label %398

398:                                              ; preds = %397, %368
  %399 = load %struct.d_info*, %struct.d_info** %3, align 8
  %400 = load i32, i32* @DEMANGLE_COMPONENT_BINARY, align 4
  %401 = load %struct.demangle_component*, %struct.demangle_component** %10, align 8
  %402 = load %struct.d_info*, %struct.d_info** %3, align 8
  %403 = load i32, i32* @DEMANGLE_COMPONENT_BINARY_ARGS, align 4
  %404 = load %struct.demangle_component*, %struct.demangle_component** %15, align 8
  %405 = load %struct.demangle_component*, %struct.demangle_component** %16, align 8
  %406 = call %struct.demangle_component* @d_make_comp(%struct.d_info* %402, i32 %403, %struct.demangle_component* %404, %struct.demangle_component* %405)
  %407 = call %struct.demangle_component* @d_make_comp(%struct.d_info* %399, i32 %400, %struct.demangle_component* %401, %struct.demangle_component* %406)
  store %struct.demangle_component* %407, %struct.demangle_component** %2, align 8
  br label %526

408:                                              ; preds = %261
  %409 = load i8*, i8** %11, align 8
  %410 = icmp eq i8* %409, null
  br i1 %410, label %411, label %412

411:                                              ; preds = %408
  store %struct.demangle_component* null, %struct.demangle_component** %2, align 8
  br label %526

412:                                              ; preds = %408
  %413 = load i8*, i8** %11, align 8
  %414 = call i64 @strcmp(i8* %413, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %415 = icmp ne i64 %414, 0
  br i1 %415, label %427, label %416

416:                                              ; preds = %412
  %417 = load %struct.d_info*, %struct.d_info** %3, align 8
  %418 = call %struct.demangle_component* @d_expression_1(%struct.d_info* %417)
  store %struct.demangle_component* %418, %struct.demangle_component** %17, align 8
  %419 = load %struct.d_info*, %struct.d_info** %3, align 8
  %420 = call %struct.demangle_component* @d_expression_1(%struct.d_info* %419)
  store %struct.demangle_component* %420, %struct.demangle_component** %18, align 8
  %421 = load %struct.d_info*, %struct.d_info** %3, align 8
  %422 = call %struct.demangle_component* @d_expression_1(%struct.d_info* %421)
  store %struct.demangle_component* %422, %struct.demangle_component** %19, align 8
  %423 = load %struct.demangle_component*, %struct.demangle_component** %19, align 8
  %424 = icmp eq %struct.demangle_component* %423, null
  br i1 %424, label %425, label %426

425:                                              ; preds = %416
  store %struct.demangle_component* null, %struct.demangle_component** %2, align 8
  br label %526

426:                                              ; preds = %416
  br label %510

427:                                              ; preds = %412
  %428 = load i8*, i8** %11, align 8
  %429 = getelementptr inbounds i8, i8* %428, i64 0
  %430 = load i8, i8* %429, align 1
  %431 = sext i8 %430 to i32
  %432 = icmp eq i32 %431, 102
  br i1 %432, label %433, label %444

433:                                              ; preds = %427
  %434 = load %struct.d_info*, %struct.d_info** %3, align 8
  %435 = call %struct.demangle_component* @d_operator_name(%struct.d_info* %434)
  store %struct.demangle_component* %435, %struct.demangle_component** %17, align 8
  %436 = load %struct.d_info*, %struct.d_info** %3, align 8
  %437 = call %struct.demangle_component* @d_expression_1(%struct.d_info* %436)
  store %struct.demangle_component* %437, %struct.demangle_component** %18, align 8
  %438 = load %struct.d_info*, %struct.d_info** %3, align 8
  %439 = call %struct.demangle_component* @d_expression_1(%struct.d_info* %438)
  store %struct.demangle_component* %439, %struct.demangle_component** %19, align 8
  %440 = load %struct.demangle_component*, %struct.demangle_component** %19, align 8
  %441 = icmp eq %struct.demangle_component* %440, null
  br i1 %441, label %442, label %443

442:                                              ; preds = %433
  store %struct.demangle_component* null, %struct.demangle_component** %2, align 8
  br label %526

443:                                              ; preds = %433
  br label %509

444:                                              ; preds = %427
  %445 = load i8*, i8** %11, align 8
  %446 = getelementptr inbounds i8, i8* %445, i64 0
  %447 = load i8, i8* %446, align 1
  %448 = sext i8 %447 to i32
  %449 = icmp eq i32 %448, 110
  br i1 %449, label %450, label %507

450:                                              ; preds = %444
  %451 = load i8*, i8** %11, align 8
  %452 = getelementptr inbounds i8, i8* %451, i64 1
  %453 = load i8, i8* %452, align 1
  %454 = sext i8 %453 to i32
  %455 = icmp ne i32 %454, 119
  br i1 %455, label %456, label %463

456:                                              ; preds = %450
  %457 = load i8*, i8** %11, align 8
  %458 = getelementptr inbounds i8, i8* %457, i64 1
  %459 = load i8, i8* %458, align 1
  %460 = sext i8 %459 to i32
  %461 = icmp ne i32 %460, 97
  br i1 %461, label %462, label %463

462:                                              ; preds = %456
  store %struct.demangle_component* null, %struct.demangle_component** %2, align 8
  br label %526

463:                                              ; preds = %456, %450
  %464 = load %struct.d_info*, %struct.d_info** %3, align 8
  %465 = call %struct.demangle_component* @d_exprlist(%struct.d_info* %464, i8 signext 95)
  store %struct.demangle_component* %465, %struct.demangle_component** %17, align 8
  %466 = load %struct.d_info*, %struct.d_info** %3, align 8
  %467 = call %struct.demangle_component* @cplus_demangle_type(%struct.d_info* %466)
  store %struct.demangle_component* %467, %struct.demangle_component** %18, align 8
  %468 = load %struct.d_info*, %struct.d_info** %3, align 8
  %469 = call signext i8 @d_peek_char(%struct.d_info* %468)
  %470 = sext i8 %469 to i32
  %471 = icmp eq i32 %470, 69
  br i1 %471, label %472, label %475

472:                                              ; preds = %463
  %473 = load %struct.d_info*, %struct.d_info** %3, align 8
  %474 = call i32 @d_advance(%struct.d_info* %473, i32 1)
  store %struct.demangle_component* null, %struct.demangle_component** %19, align 8
  br label %506

475:                                              ; preds = %463
  %476 = load %struct.d_info*, %struct.d_info** %3, align 8
  %477 = call signext i8 @d_peek_char(%struct.d_info* %476)
  %478 = sext i8 %477 to i32
  %479 = icmp eq i32 %478, 112
  br i1 %479, label %480, label %490

480:                                              ; preds = %475
  %481 = load %struct.d_info*, %struct.d_info** %3, align 8
  %482 = call signext i8 @d_peek_next_char(%struct.d_info* %481)
  %483 = sext i8 %482 to i32
  %484 = icmp eq i32 %483, 105
  br i1 %484, label %485, label %490

485:                                              ; preds = %480
  %486 = load %struct.d_info*, %struct.d_info** %3, align 8
  %487 = call i32 @d_advance(%struct.d_info* %486, i32 2)
  %488 = load %struct.d_info*, %struct.d_info** %3, align 8
  %489 = call %struct.demangle_component* @d_exprlist(%struct.d_info* %488, i8 signext 69)
  store %struct.demangle_component* %489, %struct.demangle_component** %19, align 8
  br label %505

490:                                              ; preds = %480, %475
  %491 = load %struct.d_info*, %struct.d_info** %3, align 8
  %492 = call signext i8 @d_peek_char(%struct.d_info* %491)
  %493 = sext i8 %492 to i32
  %494 = icmp eq i32 %493, 105
  br i1 %494, label %495, label %503

495:                                              ; preds = %490
  %496 = load %struct.d_info*, %struct.d_info** %3, align 8
  %497 = call signext i8 @d_peek_next_char(%struct.d_info* %496)
  %498 = sext i8 %497 to i32
  %499 = icmp eq i32 %498, 108
  br i1 %499, label %500, label %503

500:                                              ; preds = %495
  %501 = load %struct.d_info*, %struct.d_info** %3, align 8
  %502 = call %struct.demangle_component* @d_expression_1(%struct.d_info* %501)
  store %struct.demangle_component* %502, %struct.demangle_component** %19, align 8
  br label %504

503:                                              ; preds = %495, %490
  store %struct.demangle_component* null, %struct.demangle_component** %2, align 8
  br label %526

504:                                              ; preds = %500
  br label %505

505:                                              ; preds = %504, %485
  br label %506

506:                                              ; preds = %505, %472
  br label %508

507:                                              ; preds = %444
  store %struct.demangle_component* null, %struct.demangle_component** %2, align 8
  br label %526

508:                                              ; preds = %506
  br label %509

509:                                              ; preds = %508, %443
  br label %510

510:                                              ; preds = %509, %426
  br label %511

511:                                              ; preds = %510
  %512 = load %struct.d_info*, %struct.d_info** %3, align 8
  %513 = load i32, i32* @DEMANGLE_COMPONENT_TRINARY, align 4
  %514 = load %struct.demangle_component*, %struct.demangle_component** %10, align 8
  %515 = load %struct.d_info*, %struct.d_info** %3, align 8
  %516 = load i32, i32* @DEMANGLE_COMPONENT_TRINARY_ARG1, align 4
  %517 = load %struct.demangle_component*, %struct.demangle_component** %17, align 8
  %518 = load %struct.d_info*, %struct.d_info** %3, align 8
  %519 = load i32, i32* @DEMANGLE_COMPONENT_TRINARY_ARG2, align 4
  %520 = load %struct.demangle_component*, %struct.demangle_component** %18, align 8
  %521 = load %struct.demangle_component*, %struct.demangle_component** %19, align 8
  %522 = call %struct.demangle_component* @d_make_comp(%struct.d_info* %518, i32 %519, %struct.demangle_component* %520, %struct.demangle_component* %521)
  %523 = call %struct.demangle_component* @d_make_comp(%struct.d_info* %515, i32 %516, %struct.demangle_component* %517, %struct.demangle_component* %522)
  %524 = call %struct.demangle_component* @d_make_comp(%struct.d_info* %512, i32 %513, %struct.demangle_component* %514, %struct.demangle_component* %523)
  store %struct.demangle_component* %524, %struct.demangle_component** %2, align 8
  br label %526

525:                                              ; preds = %261
  store %struct.demangle_component* null, %struct.demangle_component** %2, align 8
  br label %526

526:                                              ; preds = %525, %511, %507, %503, %462, %442, %425, %411, %398, %343, %334, %263, %245, %233, %204, %192, %191, %163, %156, %150, %121, %117, %81, %61, %55, %32, %25
  %527 = load %struct.demangle_component*, %struct.demangle_component** %2, align 8
  ret %struct.demangle_component* %527
}

declare dso_local signext i8 @d_peek_char(%struct.d_info*) #1

declare dso_local %struct.demangle_component* @d_expr_primary(%struct.d_info*) #1

declare dso_local %struct.demangle_component* @d_template_param(%struct.d_info*) #1

declare dso_local signext i8 @d_peek_next_char(%struct.d_info*) #1

declare dso_local i32 @d_advance(%struct.d_info*, i32) #1

declare dso_local %struct.demangle_component* @cplus_demangle_type(%struct.d_info*) #1

declare dso_local %struct.demangle_component* @d_unqualified_name(%struct.d_info*) #1

declare dso_local %struct.demangle_component* @d_make_comp(%struct.d_info*, i32, %struct.demangle_component*, %struct.demangle_component*) #1

declare dso_local %struct.demangle_component* @d_template_args(%struct.d_info*) #1

declare dso_local i32 @d_compact_number(%struct.d_info*) #1

declare dso_local %struct.demangle_component* @d_make_function_param(%struct.d_info*, i32) #1

declare dso_local i64 @IS_DIGIT(i8 signext) #1

declare dso_local %struct.demangle_component* @d_exprlist(%struct.d_info*, i8 signext) #1

declare dso_local %struct.demangle_component* @d_operator_name(%struct.d_info*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @d_check_char(%struct.d_info*, i8 signext) #1

declare dso_local %struct.demangle_component* @d_template_args_1(%struct.d_info*) #1

declare dso_local i32 @op_is_new_cast(%struct.demangle_component*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
