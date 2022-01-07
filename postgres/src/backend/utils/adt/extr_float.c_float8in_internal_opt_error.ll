; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_float.c_float8in_internal_opt_error.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_float.c_float8in_internal_opt_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_TEXT_REPRESENTATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"invalid input syntax for type %s: \22%s\22\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"NaN\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"Infinity\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"+Infinity\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"-Infinity\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"inf\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"+inf\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"-inf\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@HUGE_VAL = common dso_local global double 0.000000e+00, align 8
@ERRCODE_NUMERIC_VALUE_OUT_OF_RANGE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [47 x i8] c"\22%s\22 is out of range for type double precision\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @float8in_internal_opt_error(i8* %0, i8** %1, i8* %2, i8* %3, i32* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca double, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32* %4, i32** %10, align 8
  %15 = load i32*, i32** %10, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %5
  %18 = load i32*, i32** %10, align 8
  store i32 0, i32* %18, align 4
  br label %19

19:                                               ; preds = %17, %5
  br label %20

20:                                               ; preds = %32, %19
  %21 = load i8*, i8** %6, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load i8*, i8** %6, align 8
  %27 = load i8, i8* %26, align 1
  %28 = call i64 @isspace(i8 zeroext %27)
  %29 = icmp ne i64 %28, 0
  br label %30

30:                                               ; preds = %25, %20
  %31 = phi i1 [ false, %20 ], [ %29, %25 ]
  br i1 %31, label %32, label %35

32:                                               ; preds = %30
  %33 = load i8*, i8** %6, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %6, align 8
  br label %20

35:                                               ; preds = %30
  %36 = load i8*, i8** %6, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %35
  %41 = load i32, i32* @ERROR, align 4
  %42 = load i32, i32* @ERRCODE_INVALID_TEXT_REPRESENTATION, align 4
  %43 = call i32 @errcode(i32 %42)
  %44 = load i8*, i8** %8, align 8
  %45 = load i8*, i8** %9, align 8
  %46 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %44, i8* %45)
  %47 = call i32 @ereport(i32 %41, i32 %46)
  %48 = load i32*, i32** %10, align 8
  %49 = call i32 @RETURN_ERROR(i32 %47, i32* %48)
  br label %50

50:                                               ; preds = %40, %35
  store i32 0, i32* @errno, align 4
  %51 = load i8*, i8** %6, align 8
  %52 = call double @strtod(i8* %51, i8** %12)
  store double %52, double* %11, align 8
  %53 = load i8*, i8** %12, align 8
  %54 = load i8*, i8** %6, align 8
  %55 = icmp eq i8* %53, %54
  br i1 %55, label %59, label %56

56:                                               ; preds = %50
  %57 = load i32, i32* @errno, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %171

59:                                               ; preds = %56, %50
  %60 = load i32, i32* @errno, align 4
  store i32 %60, i32* %13, align 4
  %61 = load i8*, i8** %6, align 8
  %62 = call i64 @pg_strncasecmp(i8* %61, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 3)
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = call double (...) @get_float8_nan()
  store double %65, double* %11, align 8
  %66 = load i8*, i8** %6, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 3
  store i8* %67, i8** %12, align 8
  br label %170

68:                                               ; preds = %59
  %69 = load i8*, i8** %6, align 8
  %70 = call i64 @pg_strncasecmp(i8* %69, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 8)
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %68
  %73 = call double (...) @get_float8_infinity()
  store double %73, double* %11, align 8
  %74 = load i8*, i8** %6, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 8
  store i8* %75, i8** %12, align 8
  br label %169

76:                                               ; preds = %68
  %77 = load i8*, i8** %6, align 8
  %78 = call i64 @pg_strncasecmp(i8* %77, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 9)
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %76
  %81 = call double (...) @get_float8_infinity()
  store double %81, double* %11, align 8
  %82 = load i8*, i8** %6, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 9
  store i8* %83, i8** %12, align 8
  br label %168

84:                                               ; preds = %76
  %85 = load i8*, i8** %6, align 8
  %86 = call i64 @pg_strncasecmp(i8* %85, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 9)
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %84
  %89 = call double (...) @get_float8_infinity()
  %90 = fneg double %89
  store double %90, double* %11, align 8
  %91 = load i8*, i8** %6, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 9
  store i8* %92, i8** %12, align 8
  br label %167

93:                                               ; preds = %84
  %94 = load i8*, i8** %6, align 8
  %95 = call i64 @pg_strncasecmp(i8* %94, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 3)
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %93
  %98 = call double (...) @get_float8_infinity()
  store double %98, double* %11, align 8
  %99 = load i8*, i8** %6, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 3
  store i8* %100, i8** %12, align 8
  br label %166

101:                                              ; preds = %93
  %102 = load i8*, i8** %6, align 8
  %103 = call i64 @pg_strncasecmp(i8* %102, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 4)
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %101
  %106 = call double (...) @get_float8_infinity()
  store double %106, double* %11, align 8
  %107 = load i8*, i8** %6, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 4
  store i8* %108, i8** %12, align 8
  br label %165

109:                                              ; preds = %101
  %110 = load i8*, i8** %6, align 8
  %111 = call i64 @pg_strncasecmp(i8* %110, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 4)
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %109
  %114 = call double (...) @get_float8_infinity()
  %115 = fneg double %114
  store double %115, double* %11, align 8
  %116 = load i8*, i8** %6, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 4
  store i8* %117, i8** %12, align 8
  br label %164

118:                                              ; preds = %109
  %119 = load i32, i32* %13, align 4
  %120 = load i32, i32* @ERANGE, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %153

122:                                              ; preds = %118
  %123 = load double, double* %11, align 8
  %124 = fcmp oeq double %123, 0.000000e+00
  br i1 %124, label %134, label %125

125:                                              ; preds = %122
  %126 = load double, double* %11, align 8
  %127 = load double, double* @HUGE_VAL, align 8
  %128 = fcmp oge double %126, %127
  br i1 %128, label %134, label %129

129:                                              ; preds = %125
  %130 = load double, double* %11, align 8
  %131 = load double, double* @HUGE_VAL, align 8
  %132 = fneg double %131
  %133 = fcmp ole double %130, %132
  br i1 %133, label %134, label %152

134:                                              ; preds = %129, %125, %122
  %135 = load i8*, i8** %6, align 8
  %136 = call i8* @pstrdup(i8* %135)
  store i8* %136, i8** %14, align 8
  %137 = load i8*, i8** %14, align 8
  %138 = load i8*, i8** %12, align 8
  %139 = load i8*, i8** %6, align 8
  %140 = ptrtoint i8* %138 to i64
  %141 = ptrtoint i8* %139 to i64
  %142 = sub i64 %140, %141
  %143 = getelementptr inbounds i8, i8* %137, i64 %142
  store i8 0, i8* %143, align 1
  %144 = load i32, i32* @ERROR, align 4
  %145 = load i32, i32* @ERRCODE_NUMERIC_VALUE_OUT_OF_RANGE, align 4
  %146 = call i32 @errcode(i32 %145)
  %147 = load i8*, i8** %14, align 8
  %148 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.8, i64 0, i64 0), i8* %147)
  %149 = call i32 @ereport(i32 %144, i32 %148)
  %150 = load i32*, i32** %10, align 8
  %151 = call i32 @RETURN_ERROR(i32 %149, i32* %150)
  br label %152

152:                                              ; preds = %134, %129
  br label %163

153:                                              ; preds = %118
  %154 = load i32, i32* @ERROR, align 4
  %155 = load i32, i32* @ERRCODE_INVALID_TEXT_REPRESENTATION, align 4
  %156 = call i32 @errcode(i32 %155)
  %157 = load i8*, i8** %8, align 8
  %158 = load i8*, i8** %9, align 8
  %159 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %157, i8* %158)
  %160 = call i32 @ereport(i32 %154, i32 %159)
  %161 = load i32*, i32** %10, align 8
  %162 = call i32 @RETURN_ERROR(i32 %160, i32* %161)
  br label %163

163:                                              ; preds = %153, %152
  br label %164

164:                                              ; preds = %163, %113
  br label %165

165:                                              ; preds = %164, %105
  br label %166

166:                                              ; preds = %165, %97
  br label %167

167:                                              ; preds = %166, %88
  br label %168

168:                                              ; preds = %167, %80
  br label %169

169:                                              ; preds = %168, %72
  br label %170

170:                                              ; preds = %169, %64
  br label %171

171:                                              ; preds = %170, %56
  br label %172

172:                                              ; preds = %184, %171
  %173 = load i8*, i8** %12, align 8
  %174 = load i8, i8* %173, align 1
  %175 = sext i8 %174 to i32
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %182

177:                                              ; preds = %172
  %178 = load i8*, i8** %12, align 8
  %179 = load i8, i8* %178, align 1
  %180 = call i64 @isspace(i8 zeroext %179)
  %181 = icmp ne i64 %180, 0
  br label %182

182:                                              ; preds = %177, %172
  %183 = phi i1 [ false, %172 ], [ %181, %177 ]
  br i1 %183, label %184, label %187

184:                                              ; preds = %182
  %185 = load i8*, i8** %12, align 8
  %186 = getelementptr inbounds i8, i8* %185, i32 1
  store i8* %186, i8** %12, align 8
  br label %172

187:                                              ; preds = %182
  %188 = load i8**, i8*** %7, align 8
  %189 = icmp ne i8** %188, null
  br i1 %189, label %190, label %193

190:                                              ; preds = %187
  %191 = load i8*, i8** %12, align 8
  %192 = load i8**, i8*** %7, align 8
  store i8* %191, i8** %192, align 8
  br label %209

193:                                              ; preds = %187
  %194 = load i8*, i8** %12, align 8
  %195 = load i8, i8* %194, align 1
  %196 = sext i8 %195 to i32
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %208

198:                                              ; preds = %193
  %199 = load i32, i32* @ERROR, align 4
  %200 = load i32, i32* @ERRCODE_INVALID_TEXT_REPRESENTATION, align 4
  %201 = call i32 @errcode(i32 %200)
  %202 = load i8*, i8** %8, align 8
  %203 = load i8*, i8** %9, align 8
  %204 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %202, i8* %203)
  %205 = call i32 @ereport(i32 %199, i32 %204)
  %206 = load i32*, i32** %10, align 8
  %207 = call i32 @RETURN_ERROR(i32 %205, i32* %206)
  br label %208

208:                                              ; preds = %198, %193
  br label %209

209:                                              ; preds = %208, %190
  %210 = load double, double* %11, align 8
  ret double %210
}

declare dso_local i64 @isspace(i8 zeroext) #1

declare dso_local i32 @RETURN_ERROR(i32, i32*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*, ...) #1

declare dso_local double @strtod(i8*, i8**) #1

declare dso_local i64 @pg_strncasecmp(i8*, i8*, i32) #1

declare dso_local double @get_float8_nan(...) #1

declare dso_local double @get_float8_infinity(...) #1

declare dso_local i8* @pstrdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
