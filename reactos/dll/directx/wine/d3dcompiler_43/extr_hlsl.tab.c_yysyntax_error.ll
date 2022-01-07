; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_hlsl.tab.c_yysyntax_error.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_hlsl.tab.c_yysyntax_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@YY_NULLPTR = common dso_local global i8* null, align 8
@yytname = common dso_local global i8** null, align 8
@YYEMPTY = common dso_local global i32 0, align 4
@yypact = common dso_local global i32* null, align 8
@YYLAST = common dso_local global i32 0, align 4
@YYNTOKENS = common dso_local global i32 0, align 4
@yycheck = common dso_local global i32* null, align 8
@YYTERROR = common dso_local global i32 0, align 4
@yytable = common dso_local global i32* null, align 8
@YYSTACK_ALLOC_MAXIMUM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"syntax error\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"syntax error, unexpected %s\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"syntax error, unexpected %s, expecting %s\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"syntax error, unexpected %s, expecting %s or %s\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"syntax error, unexpected %s, expecting %s or %s or %s\00", align 1
@.str.5 = private unnamed_addr constant [60 x i8] c"syntax error, unexpected %s, expecting %s or %s or %s or %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i8**, i64*, i32)* @yysyntax_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @yysyntax_error(i64* %0, i8** %1, i64* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca [5 x i8*], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  store i64* %0, i64** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  %24 = load i8*, i8** @YY_NULLPTR, align 8
  %25 = load i8**, i8*** @yytname, align 8
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8*, i8** %25, i64 %27
  %29 = load i8*, i8** %28, align 8
  %30 = call i64 @yytnamerr(i8* %24, i8* %29)
  store i64 %30, i64* %10, align 8
  %31 = load i64, i64* %10, align 8
  store i64 %31, i64* %11, align 8
  %32 = load i8*, i8** @YY_NULLPTR, align 8
  store i8* %32, i8** %12, align 8
  store i32 0, i32* %14, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @YYEMPTY, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %146

36:                                               ; preds = %4
  %37 = load i32*, i32** @yypact, align 8
  %38 = load i64*, i64** %8, align 8
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %15, align 4
  %42 = load i8**, i8*** @yytname, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8*, i8** %42, i64 %44
  %46 = load i8*, i8** %45, align 8
  %47 = load i32, i32* %14, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %14, align 4
  %49 = sext i32 %47 to i64
  %50 = getelementptr inbounds [5 x i8*], [5 x i8*]* %13, i64 0, i64 %49
  store i8* %46, i8** %50, align 8
  %51 = load i32, i32* %15, align 4
  %52 = call i32 @yypact_value_is_default(i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %145, label %54

54:                                               ; preds = %36
  %55 = load i32, i32* %15, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load i32, i32* %15, align 4
  %59 = sub nsw i32 0, %58
  br label %61

60:                                               ; preds = %54
  br label %61

61:                                               ; preds = %60, %57
  %62 = phi i32 [ %59, %57 ], [ 0, %60 ]
  store i32 %62, i32* %16, align 4
  %63 = load i32, i32* @YYLAST, align 4
  %64 = load i32, i32* %15, align 4
  %65 = sub nsw i32 %63, %64
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %17, align 4
  %67 = load i32, i32* %17, align 4
  %68 = load i32, i32* @YYNTOKENS, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %61
  %71 = load i32, i32* %17, align 4
  br label %74

72:                                               ; preds = %61
  %73 = load i32, i32* @YYNTOKENS, align 4
  br label %74

74:                                               ; preds = %72, %70
  %75 = phi i32 [ %71, %70 ], [ %73, %72 ]
  store i32 %75, i32* %18, align 4
  %76 = load i32, i32* %16, align 4
  store i32 %76, i32* %19, align 4
  br label %77

77:                                               ; preds = %141, %74
  %78 = load i32, i32* %19, align 4
  %79 = load i32, i32* %18, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %144

81:                                               ; preds = %77
  %82 = load i32*, i32** @yycheck, align 8
  %83 = load i32, i32* %19, align 4
  %84 = load i32, i32* %15, align 4
  %85 = add nsw i32 %83, %84
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %82, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %19, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %140

91:                                               ; preds = %81
  %92 = load i32, i32* %19, align 4
  %93 = load i32, i32* @YYTERROR, align 4
  %94 = icmp ne i32 %92, %93
  br i1 %94, label %95, label %140

95:                                               ; preds = %91
  %96 = load i32*, i32** @yytable, align 8
  %97 = load i32, i32* %19, align 4
  %98 = load i32, i32* %15, align 4
  %99 = add nsw i32 %97, %98
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %96, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @yytable_value_is_error(i32 %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %140, label %105

105:                                              ; preds = %95
  %106 = load i32, i32* %14, align 4
  %107 = icmp eq i32 %106, 5
  br i1 %107, label %108, label %110

108:                                              ; preds = %105
  store i32 1, i32* %14, align 4
  %109 = load i64, i64* %10, align 8
  store i64 %109, i64* %11, align 8
  br label %144

110:                                              ; preds = %105
  %111 = load i8**, i8*** @yytname, align 8
  %112 = load i32, i32* %19, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8*, i8** %111, i64 %113
  %115 = load i8*, i8** %114, align 8
  %116 = load i32, i32* %14, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %14, align 4
  %118 = sext i32 %116 to i64
  %119 = getelementptr inbounds [5 x i8*], [5 x i8*]* %13, i64 0, i64 %118
  store i8* %115, i8** %119, align 8
  %120 = load i64, i64* %11, align 8
  %121 = load i8*, i8** @YY_NULLPTR, align 8
  %122 = load i8**, i8*** @yytname, align 8
  %123 = load i32, i32* %19, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8*, i8** %122, i64 %124
  %126 = load i8*, i8** %125, align 8
  %127 = call i64 @yytnamerr(i8* %121, i8* %126)
  %128 = add nsw i64 %120, %127
  store i64 %128, i64* %20, align 8
  %129 = load i64, i64* %11, align 8
  %130 = load i64, i64* %20, align 8
  %131 = icmp sle i64 %129, %130
  br i1 %131, label %132, label %138

132:                                              ; preds = %110
  %133 = load i64, i64* %20, align 8
  %134 = load i64, i64* @YYSTACK_ALLOC_MAXIMUM, align 8
  %135 = icmp sle i64 %133, %134
  br i1 %135, label %136, label %138

136:                                              ; preds = %132
  %137 = load i64, i64* %20, align 8
  store i64 %137, i64* %11, align 8
  br label %139

138:                                              ; preds = %132, %110
  store i32 2, i32* %5, align 4
  br label %253

139:                                              ; preds = %136
  br label %140

140:                                              ; preds = %139, %95, %91, %81
  br label %141

141:                                              ; preds = %140
  %142 = load i32, i32* %19, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %19, align 4
  br label %77

144:                                              ; preds = %108, %77
  br label %145

145:                                              ; preds = %144, %36
  br label %146

146:                                              ; preds = %145, %4
  %147 = load i32, i32* %14, align 4
  switch i32 %147, label %148 [
    i32 0, label %149
    i32 1, label %153
    i32 2, label %157
    i32 3, label %161
    i32 4, label %165
    i32 5, label %169
  ]

148:                                              ; preds = %146
  br label %149

149:                                              ; preds = %146, %148
  %150 = call i32 @YY_(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %151 = sext i32 %150 to i64
  %152 = inttoptr i64 %151 to i8*
  store i8* %152, i8** %12, align 8
  br label %173

153:                                              ; preds = %146
  %154 = call i32 @YY_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %155 = sext i32 %154 to i64
  %156 = inttoptr i64 %155 to i8*
  store i8* %156, i8** %12, align 8
  br label %173

157:                                              ; preds = %146
  %158 = call i32 @YY_(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %159 = sext i32 %158 to i64
  %160 = inttoptr i64 %159 to i8*
  store i8* %160, i8** %12, align 8
  br label %173

161:                                              ; preds = %146
  %162 = call i32 @YY_(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0))
  %163 = sext i32 %162 to i64
  %164 = inttoptr i64 %163 to i8*
  store i8* %164, i8** %12, align 8
  br label %173

165:                                              ; preds = %146
  %166 = call i32 @YY_(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0))
  %167 = sext i32 %166 to i64
  %168 = inttoptr i64 %167 to i8*
  store i8* %168, i8** %12, align 8
  br label %173

169:                                              ; preds = %146
  %170 = call i32 @YY_(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.5, i64 0, i64 0))
  %171 = sext i32 %170 to i64
  %172 = inttoptr i64 %171 to i8*
  store i8* %172, i8** %12, align 8
  br label %173

173:                                              ; preds = %169, %165, %161, %157, %153, %149
  %174 = load i64, i64* %11, align 8
  %175 = load i8*, i8** %12, align 8
  %176 = call i64 @yystrlen(i8* %175)
  %177 = add nsw i64 %174, %176
  store i64 %177, i64* %21, align 8
  %178 = load i64, i64* %11, align 8
  %179 = load i64, i64* %21, align 8
  %180 = icmp sle i64 %178, %179
  br i1 %180, label %181, label %187

181:                                              ; preds = %173
  %182 = load i64, i64* %21, align 8
  %183 = load i64, i64* @YYSTACK_ALLOC_MAXIMUM, align 8
  %184 = icmp sle i64 %182, %183
  br i1 %184, label %185, label %187

185:                                              ; preds = %181
  %186 = load i64, i64* %21, align 8
  store i64 %186, i64* %11, align 8
  br label %188

187:                                              ; preds = %181, %173
  store i32 2, i32* %5, align 4
  br label %253

188:                                              ; preds = %185
  %189 = load i64*, i64** %6, align 8
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* %11, align 8
  %192 = icmp slt i64 %190, %191
  br i1 %192, label %193, label %210

193:                                              ; preds = %188
  %194 = load i64, i64* %11, align 8
  %195 = mul nsw i64 2, %194
  %196 = load i64*, i64** %6, align 8
  store i64 %195, i64* %196, align 8
  %197 = load i64, i64* %11, align 8
  %198 = load i64*, i64** %6, align 8
  %199 = load i64, i64* %198, align 8
  %200 = icmp sle i64 %197, %199
  br i1 %200, label %201, label %206

201:                                              ; preds = %193
  %202 = load i64*, i64** %6, align 8
  %203 = load i64, i64* %202, align 8
  %204 = load i64, i64* @YYSTACK_ALLOC_MAXIMUM, align 8
  %205 = icmp sle i64 %203, %204
  br i1 %205, label %209, label %206

206:                                              ; preds = %201, %193
  %207 = load i64, i64* @YYSTACK_ALLOC_MAXIMUM, align 8
  %208 = load i64*, i64** %6, align 8
  store i64 %207, i64* %208, align 8
  br label %209

209:                                              ; preds = %206, %201
  store i32 1, i32* %5, align 4
  br label %253

210:                                              ; preds = %188
  %211 = load i8**, i8*** %7, align 8
  %212 = load i8*, i8** %211, align 8
  store i8* %212, i8** %22, align 8
  store i32 0, i32* %23, align 4
  br label %213

213:                                              ; preds = %251, %210
  %214 = load i8*, i8** %12, align 8
  %215 = load i8, i8* %214, align 1
  %216 = load i8*, i8** %22, align 8
  store i8 %215, i8* %216, align 1
  %217 = sext i8 %215 to i32
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %252

219:                                              ; preds = %213
  %220 = load i8*, i8** %22, align 8
  %221 = load i8, i8* %220, align 1
  %222 = sext i8 %221 to i32
  %223 = icmp eq i32 %222, 37
  br i1 %223, label %224, label %246

224:                                              ; preds = %219
  %225 = load i8*, i8** %12, align 8
  %226 = getelementptr inbounds i8, i8* %225, i64 1
  %227 = load i8, i8* %226, align 1
  %228 = sext i8 %227 to i32
  %229 = icmp eq i32 %228, 115
  br i1 %229, label %230, label %246

230:                                              ; preds = %224
  %231 = load i32, i32* %23, align 4
  %232 = load i32, i32* %14, align 4
  %233 = icmp slt i32 %231, %232
  br i1 %233, label %234, label %246

234:                                              ; preds = %230
  %235 = load i8*, i8** %22, align 8
  %236 = load i32, i32* %23, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %23, align 4
  %238 = sext i32 %236 to i64
  %239 = getelementptr inbounds [5 x i8*], [5 x i8*]* %13, i64 0, i64 %238
  %240 = load i8*, i8** %239, align 8
  %241 = call i64 @yytnamerr(i8* %235, i8* %240)
  %242 = load i8*, i8** %22, align 8
  %243 = getelementptr inbounds i8, i8* %242, i64 %241
  store i8* %243, i8** %22, align 8
  %244 = load i8*, i8** %12, align 8
  %245 = getelementptr inbounds i8, i8* %244, i64 2
  store i8* %245, i8** %12, align 8
  br label %251

246:                                              ; preds = %230, %224, %219
  %247 = load i8*, i8** %22, align 8
  %248 = getelementptr inbounds i8, i8* %247, i32 1
  store i8* %248, i8** %22, align 8
  %249 = load i8*, i8** %12, align 8
  %250 = getelementptr inbounds i8, i8* %249, i32 1
  store i8* %250, i8** %12, align 8
  br label %251

251:                                              ; preds = %246, %234
  br label %213

252:                                              ; preds = %213
  store i32 0, i32* %5, align 4
  br label %253

253:                                              ; preds = %252, %209, %187, %138
  %254 = load i32, i32* %5, align 4
  ret i32 %254
}

declare dso_local i64 @yytnamerr(i8*, i8*) #1

declare dso_local i32 @yypact_value_is_default(i32) #1

declare dso_local i32 @yytable_value_is_error(i32) #1

declare dso_local i32 @YY_(i8*) #1

declare dso_local i64 @yystrlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
