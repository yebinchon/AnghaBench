; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_lex.c_parse_numeric_literal.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_lex.c_parse_numeric_literal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8* }

@.str = private unnamed_addr constant [24 x i8] c"unexpected end of file\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"unexpected identifier char\0A\00", align 1
@JS_E_MISSING_SEMICOLON = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"wrong char after octal literal: '%c'\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"wrong char after zero\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, double*)* @parse_numeric_literal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_numeric_literal(%struct.TYPE_4__* %0, double* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca double*, align 8
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca double, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store double* %1, double** %5, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 48
  br i1 %17, label %18, label %218

18:                                               ; preds = %2
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %20, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 120
  br i1 %28, label %36, label %29

29:                                               ; preds = %18
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 88
  br i1 %35, label %36, label %101

36:                                               ; preds = %29, %18
  store double 0.000000e+00, double* %7, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %38, align 8
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = icmp eq i8* %40, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %36
  %46 = call i32 @ERR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %47 = load i32, i32* @FALSE, align 4
  store i32 %47, i32* %3, align 4
  br label %236

48:                                               ; preds = %36
  br label %49

49:                                               ; preds = %66, %48
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i8*, i8** %54, align 8
  %56 = icmp ult i8* %52, %55
  br i1 %56, label %57, label %64

57:                                               ; preds = %49
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = load i8, i8* %60, align 1
  %62 = call i32 @hex_to_int(i8 signext %61)
  store i32 %62, i32* %8, align 4
  %63 = icmp ne i32 %62, -1
  br label %64

64:                                               ; preds = %57, %49
  %65 = phi i1 [ false, %49 ], [ %63, %57 ]
  br i1 %65, label %66, label %76

66:                                               ; preds = %64
  %67 = load double, double* %7, align 8
  %68 = fmul double %67, 1.600000e+01
  %69 = load i32, i32* %8, align 4
  %70 = sitofp i32 %69 to double
  %71 = fadd double %68, %70
  store double %71, double* %7, align 8
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %73, align 8
  br label %49

76:                                               ; preds = %64
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  %82 = load i8*, i8** %81, align 8
  %83 = icmp ult i8* %79, %82
  br i1 %83, label %84, label %97

84:                                               ; preds = %76
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = load i8, i8* %87, align 1
  %89 = call i64 @is_identifier_char(i8 signext %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %84
  %92 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %94 = load i32, i32* @JS_E_MISSING_SEMICOLON, align 4
  %95 = call i32 @lex_error(%struct.TYPE_4__* %93, i32 %94)
  %96 = load i32, i32* @FALSE, align 4
  store i32 %96, i32* %3, align 4
  br label %236

97:                                               ; preds = %84, %76
  %98 = load double, double* %7, align 8
  %99 = load double*, double** %5, align 8
  store double %98, double* %99, align 8
  %100 = load i32, i32* @TRUE, align 4
  store i32 %100, i32* %3, align 4
  br label %236

101:                                              ; preds = %29
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = load i8, i8* %104, align 1
  %106 = call i64 @iswdigit(i8 signext %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %204

108:                                              ; preds = %101
  store i32 8, i32* %9, align 4
  store double 0.000000e+00, double* %11, align 8
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load i8*, i8** %110, align 8
  store i8* %111, i8** %10, align 8
  br label %112

112:                                              ; preds = %132, %108
  %113 = load i8*, i8** %10, align 8
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 1
  %116 = load i8*, i8** %115, align 8
  %117 = icmp ult i8* %113, %116
  br i1 %117, label %118, label %123

118:                                              ; preds = %112
  %119 = load i8*, i8** %10, align 8
  %120 = load i8, i8* %119, align 1
  %121 = call i64 @iswdigit(i8 signext %120)
  %122 = icmp ne i64 %121, 0
  br label %123

123:                                              ; preds = %118, %112
  %124 = phi i1 [ false, %112 ], [ %122, %118 ]
  br i1 %124, label %125, label %135

125:                                              ; preds = %123
  %126 = load i8*, i8** %10, align 8
  %127 = load i8, i8* %126, align 1
  %128 = sext i8 %127 to i32
  %129 = icmp sgt i32 %128, 55
  br i1 %129, label %130, label %131

130:                                              ; preds = %125
  store i32 10, i32* %9, align 4
  br label %135

131:                                              ; preds = %125
  br label %132

132:                                              ; preds = %131
  %133 = load i8*, i8** %10, align 8
  %134 = getelementptr inbounds i8, i8* %133, i32 1
  store i8* %134, i8** %10, align 8
  br label %112

135:                                              ; preds = %130, %123
  br label %136

136:                                              ; preds = %165, %135
  %137 = load double, double* %11, align 8
  %138 = load i32, i32* %9, align 4
  %139 = uitofp i32 %138 to double
  %140 = fmul double %137, %139
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  %143 = load i8*, i8** %142, align 8
  %144 = load i8, i8* %143, align 1
  %145 = sext i8 %144 to i32
  %146 = sitofp i32 %145 to double
  %147 = fadd double %140, %146
  %148 = fsub double %147, 4.800000e+01
  store double %148, double* %11, align 8
  br label %149

149:                                              ; preds = %136
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 0
  %152 = load i8*, i8** %151, align 8
  %153 = getelementptr inbounds i8, i8* %152, i32 1
  store i8* %153, i8** %151, align 8
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 1
  %156 = load i8*, i8** %155, align 8
  %157 = icmp ult i8* %153, %156
  br i1 %157, label %158, label %165

158:                                              ; preds = %149
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 0
  %161 = load i8*, i8** %160, align 8
  %162 = load i8, i8* %161, align 1
  %163 = call i64 @iswdigit(i8 signext %162)
  %164 = icmp ne i64 %163, 0
  br label %165

165:                                              ; preds = %158, %149
  %166 = phi i1 [ false, %149 ], [ %164, %158 ]
  br i1 %166, label %136, label %167

167:                                              ; preds = %165
  %168 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 0
  %170 = load i8*, i8** %169, align 8
  %171 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 1
  %173 = load i8*, i8** %172, align 8
  %174 = icmp ult i8* %170, %173
  br i1 %174, label %175, label %200

175:                                              ; preds = %167
  %176 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 0
  %178 = load i8*, i8** %177, align 8
  %179 = load i8, i8* %178, align 1
  %180 = call i64 @is_identifier_char(i8 signext %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %189, label %182

182:                                              ; preds = %175
  %183 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 0
  %185 = load i8*, i8** %184, align 8
  %186 = load i8, i8* %185, align 1
  %187 = sext i8 %186 to i32
  %188 = icmp eq i32 %187, 46
  br i1 %188, label %189, label %200

189:                                              ; preds = %182, %175
  %190 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 0
  %192 = load i8*, i8** %191, align 8
  %193 = load i8, i8* %192, align 1
  %194 = sext i8 %193 to i32
  %195 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %194)
  %196 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %197 = load i32, i32* @JS_E_MISSING_SEMICOLON, align 4
  %198 = call i32 @lex_error(%struct.TYPE_4__* %196, i32 %197)
  %199 = load i32, i32* @FALSE, align 4
  store i32 %199, i32* %3, align 4
  br label %236

200:                                              ; preds = %182, %167
  %201 = load double, double* %11, align 8
  %202 = load double*, double** %5, align 8
  store double %201, double* %202, align 8
  %203 = load i32, i32* @TRUE, align 4
  store i32 %203, i32* %3, align 4
  br label %236

204:                                              ; preds = %101
  %205 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %206 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %205, i32 0, i32 0
  %207 = load i8*, i8** %206, align 8
  %208 = load i8, i8* %207, align 1
  %209 = call i64 @is_identifier_char(i8 signext %208)
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %217

211:                                              ; preds = %204
  %212 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %213 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %214 = load i32, i32* @JS_E_MISSING_SEMICOLON, align 4
  %215 = call i32 @lex_error(%struct.TYPE_4__* %213, i32 %214)
  %216 = load i32, i32* @FALSE, align 4
  store i32 %216, i32* %3, align 4
  br label %236

217:                                              ; preds = %204
  br label %218

218:                                              ; preds = %217, %2
  %219 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %220 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %219, i32 0, i32 0
  %221 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %222 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %221, i32 0, i32 1
  %223 = load i8*, i8** %222, align 8
  %224 = load double*, double** %5, align 8
  %225 = call i32 @parse_decimal(i8** %220, i8* %223, double* %224)
  store i32 %225, i32* %6, align 4
  %226 = load i32, i32* %6, align 4
  %227 = call i64 @FAILED(i32 %226)
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %234

229:                                              ; preds = %218
  %230 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %231 = load i32, i32* %6, align 4
  %232 = call i32 @lex_error(%struct.TYPE_4__* %230, i32 %231)
  %233 = load i32, i32* @FALSE, align 4
  store i32 %233, i32* %3, align 4
  br label %236

234:                                              ; preds = %218
  %235 = load i32, i32* @TRUE, align 4
  store i32 %235, i32* %3, align 4
  br label %236

236:                                              ; preds = %234, %229, %211, %200, %189, %97, %91, %45
  %237 = load i32, i32* %3, align 4
  ret i32 %237
}

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @hex_to_int(i8 signext) #1

declare dso_local i64 @is_identifier_char(i8 signext) #1

declare dso_local i32 @WARN(i8*, ...) #1

declare dso_local i32 @lex_error(%struct.TYPE_4__*, i32) #1

declare dso_local i64 @iswdigit(i8 signext) #1

declare dso_local i32 @parse_decimal(i8**, i8*, double*) #1

declare dso_local i64 @FAILED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
