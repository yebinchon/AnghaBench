; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_regproc.c_parseNameAndArgTypes.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_regproc.c_parseNameAndArgTypes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_TEXT_REPRESENTATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"expected a left parenthesis\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"expected a right parenthesis\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"expected a type name\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"improper type name\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@InvalidOid = common dso_local global i32 0, align 4
@FUNC_MAX_ARGS = common dso_local global i32 0, align 4
@ERRCODE_TOO_MANY_ARGUMENTS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"too many arguments\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32**, i32*, i32*)* @parseNameAndArgTypes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parseNameAndArgTypes(i8* %0, i32 %1, i32** %2, i32* %3, i32* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32** %2, i32*** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = call i8* @pstrdup(i8* %20)
  store i8* %21, i8** %11, align 8
  store i32 0, i32* %15, align 4
  %22 = load i8*, i8** %11, align 8
  store i8* %22, i8** %12, align 8
  br label %23

23:                                               ; preds = %48, %5
  %24 = load i8*, i8** %12, align 8
  %25 = load i8, i8* %24, align 1
  %26 = icmp ne i8 %25, 0
  br i1 %26, label %27, label %51

27:                                               ; preds = %23
  %28 = load i8*, i8** %12, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 34
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load i32, i32* %15, align 4
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %15, align 4
  br label %47

37:                                               ; preds = %27
  %38 = load i8*, i8** %12, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 40
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load i32, i32* %15, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %42
  br label %51

46:                                               ; preds = %42, %37
  br label %47

47:                                               ; preds = %46, %32
  br label %48

48:                                               ; preds = %47
  %49 = load i8*, i8** %12, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %12, align 8
  br label %23

51:                                               ; preds = %45, %23
  %52 = load i8*, i8** %12, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %51
  %57 = load i32, i32* @ERROR, align 4
  %58 = load i32, i32* @ERRCODE_INVALID_TEXT_REPRESENTATION, align 4
  %59 = call i32 @errcode(i32 %58)
  %60 = call i32 @errmsg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %61 = call i32 @ereport(i32 %57, i32 %60)
  br label %62

62:                                               ; preds = %56, %51
  %63 = load i8*, i8** %12, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %12, align 8
  store i8 0, i8* %63, align 1
  %65 = load i8*, i8** %11, align 8
  %66 = call i32* @stringToQualifiedNameList(i8* %65)
  %67 = load i32**, i32*** %8, align 8
  store i32* %66, i32** %67, align 8
  %68 = load i8*, i8** %12, align 8
  %69 = load i8*, i8** %12, align 8
  %70 = call i32 @strlen(i8* %69)
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %68, i64 %71
  store i8* %72, i8** %13, align 8
  br label %73

73:                                               ; preds = %84, %62
  %74 = load i8*, i8** %13, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 -1
  store i8* %75, i8** %13, align 8
  %76 = load i8*, i8** %12, align 8
  %77 = icmp ugt i8* %75, %76
  br i1 %77, label %78, label %85

78:                                               ; preds = %73
  %79 = load i8*, i8** %13, align 8
  %80 = load i8, i8* %79, align 1
  %81 = call i64 @scanner_isspace(i8 signext %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %78
  br label %85

84:                                               ; preds = %78
  br label %73

85:                                               ; preds = %83, %73
  %86 = load i8*, i8** %13, align 8
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp ne i32 %88, 41
  br i1 %89, label %90, label %96

90:                                               ; preds = %85
  %91 = load i32, i32* @ERROR, align 4
  %92 = load i32, i32* @ERRCODE_INVALID_TEXT_REPRESENTATION, align 4
  %93 = call i32 @errcode(i32 %92)
  %94 = call i32 @errmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %95 = call i32 @ereport(i32 %91, i32 %94)
  br label %96

96:                                               ; preds = %90, %85
  %97 = load i8*, i8** %13, align 8
  store i8 0, i8* %97, align 1
  %98 = load i32*, i32** %9, align 8
  store i32 0, i32* %98, align 4
  store i32 0, i32* %16, align 4
  br label %99

99:                                               ; preds = %236, %96
  br label %100

100:                                              ; preds = %105, %99
  %101 = load i8*, i8** %12, align 8
  %102 = load i8, i8* %101, align 1
  %103 = call i64 @scanner_isspace(i8 signext %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %100
  %106 = load i8*, i8** %12, align 8
  %107 = getelementptr inbounds i8, i8* %106, i32 1
  store i8* %107, i8** %12, align 8
  br label %100

108:                                              ; preds = %100
  %109 = load i8*, i8** %12, align 8
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %123

113:                                              ; preds = %108
  %114 = load i32, i32* %16, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %113
  %117 = load i32, i32* @ERROR, align 4
  %118 = load i32, i32* @ERRCODE_INVALID_TEXT_REPRESENTATION, align 4
  %119 = call i32 @errcode(i32 %118)
  %120 = call i32 @errmsg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %121 = call i32 @ereport(i32 %117, i32 %120)
  br label %122

122:                                              ; preds = %116, %113
  br label %246

123:                                              ; preds = %108
  %124 = load i8*, i8** %12, align 8
  store i8* %124, i8** %14, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %17, align 4
  br label %125

125:                                              ; preds = %168, %123
  %126 = load i8*, i8** %12, align 8
  %127 = load i8, i8* %126, align 1
  %128 = icmp ne i8 %127, 0
  br i1 %128, label %129, label %171

129:                                              ; preds = %125
  %130 = load i8*, i8** %12, align 8
  %131 = load i8, i8* %130, align 1
  %132 = sext i8 %131 to i32
  %133 = icmp eq i32 %132, 34
  br i1 %133, label %134, label %139

134:                                              ; preds = %129
  %135 = load i32, i32* %15, align 4
  %136 = icmp ne i32 %135, 0
  %137 = xor i1 %136, true
  %138 = zext i1 %137 to i32
  store i32 %138, i32* %15, align 4
  br label %167

139:                                              ; preds = %129
  %140 = load i8*, i8** %12, align 8
  %141 = load i8, i8* %140, align 1
  %142 = sext i8 %141 to i32
  %143 = icmp eq i32 %142, 44
  br i1 %143, label %144, label %151

144:                                              ; preds = %139
  %145 = load i32, i32* %15, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %151, label %147

147:                                              ; preds = %144
  %148 = load i32, i32* %17, align 4
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %147
  br label %171

151:                                              ; preds = %147, %144, %139
  %152 = load i32, i32* %15, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %165, label %154

154:                                              ; preds = %151
  %155 = load i8*, i8** %12, align 8
  %156 = load i8, i8* %155, align 1
  %157 = sext i8 %156 to i32
  switch i32 %157, label %164 [
    i32 40, label %158
    i32 91, label %158
    i32 41, label %161
    i32 93, label %161
  ]

158:                                              ; preds = %154, %154
  %159 = load i32, i32* %17, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %17, align 4
  br label %164

161:                                              ; preds = %154, %154
  %162 = load i32, i32* %17, align 4
  %163 = add nsw i32 %162, -1
  store i32 %163, i32* %17, align 4
  br label %164

164:                                              ; preds = %154, %161, %158
  br label %165

165:                                              ; preds = %164, %151
  br label %166

166:                                              ; preds = %165
  br label %167

167:                                              ; preds = %166, %134
  br label %168

168:                                              ; preds = %167
  %169 = load i8*, i8** %12, align 8
  %170 = getelementptr inbounds i8, i8* %169, i32 1
  store i8* %170, i8** %12, align 8
  br label %125

171:                                              ; preds = %150, %125
  %172 = load i32, i32* %15, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %177, label %174

174:                                              ; preds = %171
  %175 = load i32, i32* %17, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %183

177:                                              ; preds = %174, %171
  %178 = load i32, i32* @ERROR, align 4
  %179 = load i32, i32* @ERRCODE_INVALID_TEXT_REPRESENTATION, align 4
  %180 = call i32 @errcode(i32 %179)
  %181 = call i32 @errmsg(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %182 = call i32 @ereport(i32 %178, i32 %181)
  br label %183

183:                                              ; preds = %177, %174
  %184 = load i8*, i8** %12, align 8
  store i8* %184, i8** %13, align 8
  %185 = load i8*, i8** %12, align 8
  %186 = load i8, i8* %185, align 1
  %187 = sext i8 %186 to i32
  %188 = icmp eq i32 %187, 44
  br i1 %188, label %189, label %192

189:                                              ; preds = %183
  store i32 1, i32* %16, align 4
  %190 = load i8*, i8** %12, align 8
  %191 = getelementptr inbounds i8, i8* %190, i32 1
  store i8* %191, i8** %12, align 8
  store i8 0, i8* %190, align 1
  br label %199

192:                                              ; preds = %183
  store i32 0, i32* %16, align 4
  %193 = load i8*, i8** %12, align 8
  %194 = load i8, i8* %193, align 1
  %195 = sext i8 %194 to i32
  %196 = icmp eq i32 %195, 0
  %197 = zext i1 %196 to i32
  %198 = call i32 @Assert(i32 %197)
  br label %199

199:                                              ; preds = %192, %189
  br label %200

200:                                              ; preds = %211, %199
  %201 = load i8*, i8** %13, align 8
  %202 = getelementptr inbounds i8, i8* %201, i32 -1
  store i8* %202, i8** %13, align 8
  %203 = load i8*, i8** %14, align 8
  %204 = icmp uge i8* %202, %203
  br i1 %204, label %205, label %213

205:                                              ; preds = %200
  %206 = load i8*, i8** %13, align 8
  %207 = load i8, i8* %206, align 1
  %208 = call i64 @scanner_isspace(i8 signext %207)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %211, label %210

210:                                              ; preds = %205
  br label %213

211:                                              ; preds = %205
  %212 = load i8*, i8** %13, align 8
  store i8 0, i8* %212, align 1
  br label %200

213:                                              ; preds = %210, %200
  %214 = load i32, i32* %7, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %222

216:                                              ; preds = %213
  %217 = load i8*, i8** %14, align 8
  %218 = call i64 @pg_strcasecmp(i8* %217, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %219 = icmp eq i64 %218, 0
  br i1 %219, label %220, label %222

220:                                              ; preds = %216
  %221 = load i32, i32* @InvalidOid, align 4
  store i32 %221, i32* %18, align 4
  store i32 -1, i32* %19, align 4
  br label %225

222:                                              ; preds = %216, %213
  %223 = load i8*, i8** %14, align 8
  %224 = call i32 @parseTypeString(i8* %223, i32* %18, i32* %19, i32 0)
  br label %225

225:                                              ; preds = %222, %220
  %226 = load i32*, i32** %9, align 8
  %227 = load i32, i32* %226, align 4
  %228 = load i32, i32* @FUNC_MAX_ARGS, align 4
  %229 = icmp sge i32 %227, %228
  br i1 %229, label %230, label %236

230:                                              ; preds = %225
  %231 = load i32, i32* @ERROR, align 4
  %232 = load i32, i32* @ERRCODE_TOO_MANY_ARGUMENTS, align 4
  %233 = call i32 @errcode(i32 %232)
  %234 = call i32 @errmsg(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %235 = call i32 @ereport(i32 %231, i32 %234)
  br label %236

236:                                              ; preds = %230, %225
  %237 = load i32, i32* %18, align 4
  %238 = load i32*, i32** %10, align 8
  %239 = load i32*, i32** %9, align 8
  %240 = load i32, i32* %239, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i32, i32* %238, i64 %241
  store i32 %237, i32* %242, align 4
  %243 = load i32*, i32** %9, align 8
  %244 = load i32, i32* %243, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %243, align 4
  br label %99

246:                                              ; preds = %122
  %247 = load i8*, i8** %11, align 8
  %248 = call i32 @pfree(i8* %247)
  ret void
}

declare dso_local i8* @pstrdup(i8*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32* @stringToQualifiedNameList(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @scanner_isspace(i8 signext) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @pg_strcasecmp(i8*, i8*) #1

declare dso_local i32 @parseTypeString(i8*, i32*, i32*, i32) #1

declare dso_local i32 @pfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
