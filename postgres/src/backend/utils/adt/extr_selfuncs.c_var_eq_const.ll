; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_selfuncs.c_var_eq_const.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_selfuncs.c_var_eq_const.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_10__*, i64 }
%struct.TYPE_10__ = type { double }
%struct.TYPE_12__ = type { double }
%struct.TYPE_13__ = type { i32, double*, i32, i32*, i32 }

@STATISTIC_KIND_MCV = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i32 0, align 4
@ATTSTATSSLOT_VALUES = common dso_local global i32 0, align 4
@ATTSTATSSLOT_NUMBERS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @var_eq_const(%struct.TYPE_11__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca double, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_12__*, align 8
  %19 = alloca %struct.TYPE_13__, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store double 0.000000e+00, double* %15, align 8
  %25 = load i32, i32* %11, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %6
  store double 0.000000e+00, double* %7, align 8
  br label %226

28:                                               ; preds = %6
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @HeapTupleIsValid(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %28
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @GETSTRUCT(i32 %37)
  %39 = inttoptr i64 %38 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %39, %struct.TYPE_12__** %18, align 8
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = load double, double* %41, align 8
  store double %42, double* %15, align 8
  br label %43

43:                                               ; preds = %34, %28
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %67

48:                                               ; preds = %43
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %50, align 8
  %52 = icmp ne %struct.TYPE_10__* %51, null
  br i1 %52, label %53, label %67

53:                                               ; preds = %48
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = load double, double* %57, align 8
  %59 = fcmp oge double %58, 1.000000e+00
  br i1 %59, label %60, label %67

60:                                               ; preds = %53
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = load double, double* %64, align 8
  %66 = fdiv double 1.000000e+00, %65
  store double %66, double* %14, align 8
  br label %214

67:                                               ; preds = %53, %48, %43
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i64 @HeapTupleIsValid(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %209

73:                                               ; preds = %67
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @get_opcode(i32 %75)
  store i32 %76, i32* %17, align 4
  %77 = call i64 @statistic_proc_security_check(%struct.TYPE_11__* %74, i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %209

79:                                               ; preds = %73
  store i32 0, i32* %20, align 4
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @STATISTIC_KIND_MCV, align 4
  %84 = load i32, i32* @InvalidOid, align 4
  %85 = load i32, i32* @ATTSTATSSLOT_VALUES, align 4
  %86 = load i32, i32* @ATTSTATSSLOT_NUMBERS, align 4
  %87 = or i32 %85, %86
  %88 = call i64 @get_attstatsslot(%struct.TYPE_13__* %19, i32 %82, i32 %83, i32 %84, i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %134

90:                                               ; preds = %79
  %91 = load i32, i32* %17, align 4
  %92 = call i32 @fmgr_info(i32 %91, i32* %22)
  store i32 0, i32* %21, align 4
  br label %93

93:                                               ; preds = %130, %90
  %94 = load i32, i32* %21, align 4
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp slt i32 %94, %96
  br i1 %97, label %98, label %133

98:                                               ; preds = %93
  %99 = load i32, i32* %12, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %113

101:                                              ; preds = %98
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 4
  %103 = load i32, i32* %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 3
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %21, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %10, align 4
  %111 = call i32 @FunctionCall2Coll(i32* %22, i32 %103, i32 %109, i32 %110)
  %112 = call i32 @DatumGetBool(i32 %111)
  store i32 %112, i32* %20, align 4
  br label %125

113:                                              ; preds = %98
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 4
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* %10, align 4
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 3
  %118 = load i32*, i32** %117, align 8
  %119 = load i32, i32* %21, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @FunctionCall2Coll(i32* %22, i32 %115, i32 %116, i32 %122)
  %124 = call i32 @DatumGetBool(i32 %123)
  store i32 %124, i32* %20, align 4
  br label %125

125:                                              ; preds = %113, %101
  %126 = load i32, i32* %20, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %125
  br label %133

129:                                              ; preds = %125
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %21, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %21, align 4
  br label %93

133:                                              ; preds = %128, %93
  br label %135

134:                                              ; preds = %79
  store i32 0, i32* %21, align 4
  br label %135

135:                                              ; preds = %134, %133
  %136 = load i32, i32* %20, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %145

138:                                              ; preds = %135
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 1
  %140 = load double*, double** %139, align 8
  %141 = load i32, i32* %21, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds double, double* %140, i64 %142
  %144 = load double, double* %143, align 8
  store double %144, double* %14, align 8
  br label %207

145:                                              ; preds = %135
  store double 0.000000e+00, double* %23, align 8
  store i32 0, i32* %21, align 4
  br label %146

146:                                              ; preds = %160, %145
  %147 = load i32, i32* %21, align 4
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = icmp slt i32 %147, %149
  br i1 %150, label %151, label %163

151:                                              ; preds = %146
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 1
  %153 = load double*, double** %152, align 8
  %154 = load i32, i32* %21, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds double, double* %153, i64 %155
  %157 = load double, double* %156, align 8
  %158 = load double, double* %23, align 8
  %159 = fadd double %158, %157
  store double %159, double* %23, align 8
  br label %160

160:                                              ; preds = %151
  %161 = load i32, i32* %21, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %21, align 4
  br label %146

163:                                              ; preds = %146
  %164 = load double, double* %23, align 8
  %165 = fsub double 1.000000e+00, %164
  %166 = load double, double* %15, align 8
  %167 = fsub double %165, %166
  store double %167, double* %14, align 8
  %168 = load double, double* %14, align 8
  %169 = call i32 @CLAMP_PROBABILITY(double %168)
  %170 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %171 = call double @get_variable_numdistinct(%struct.TYPE_11__* %170, i32* %16)
  %172 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = sitofp i32 %173 to double
  %175 = fsub double %171, %174
  store double %175, double* %24, align 8
  %176 = load double, double* %24, align 8
  %177 = fcmp ogt double %176, 1.000000e+00
  br i1 %177, label %178, label %182

178:                                              ; preds = %163
  %179 = load double, double* %24, align 8
  %180 = load double, double* %14, align 8
  %181 = fdiv double %180, %179
  store double %181, double* %14, align 8
  br label %182

182:                                              ; preds = %178, %163
  %183 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 2
  %184 = load i32, i32* %183, align 8
  %185 = icmp sgt i32 %184, 0
  br i1 %185, label %186, label %206

186:                                              ; preds = %182
  %187 = load double, double* %14, align 8
  %188 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 1
  %189 = load double*, double** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = sub nsw i32 %191, 1
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds double, double* %189, i64 %193
  %195 = load double, double* %194, align 8
  %196 = fcmp ogt double %187, %195
  br i1 %196, label %197, label %206

197:                                              ; preds = %186
  %198 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 1
  %199 = load double*, double** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 2
  %201 = load i32, i32* %200, align 8
  %202 = sub nsw i32 %201, 1
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds double, double* %199, i64 %203
  %205 = load double, double* %204, align 8
  store double %205, double* %14, align 8
  br label %206

206:                                              ; preds = %197, %186, %182
  br label %207

207:                                              ; preds = %206, %138
  %208 = call i32 @free_attstatsslot(%struct.TYPE_13__* %19)
  br label %213

209:                                              ; preds = %73, %67
  %210 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %211 = call double @get_variable_numdistinct(%struct.TYPE_11__* %210, i32* %16)
  %212 = fdiv double 1.000000e+00, %211
  store double %212, double* %14, align 8
  br label %213

213:                                              ; preds = %209, %207
  br label %214

214:                                              ; preds = %213, %60
  %215 = load i32, i32* %13, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %222

217:                                              ; preds = %214
  %218 = load double, double* %14, align 8
  %219 = fsub double 1.000000e+00, %218
  %220 = load double, double* %15, align 8
  %221 = fsub double %219, %220
  store double %221, double* %14, align 8
  br label %222

222:                                              ; preds = %217, %214
  %223 = load double, double* %14, align 8
  %224 = call i32 @CLAMP_PROBABILITY(double %223)
  %225 = load double, double* %14, align 8
  store double %225, double* %7, align 8
  br label %226

226:                                              ; preds = %222, %27
  %227 = load double, double* %7, align 8
  ret double %227
}

declare dso_local i64 @HeapTupleIsValid(i32) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i64 @statistic_proc_security_check(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @get_opcode(i32) #1

declare dso_local i64 @get_attstatsslot(%struct.TYPE_13__*, i32, i32, i32, i32) #1

declare dso_local i32 @fmgr_info(i32, i32*) #1

declare dso_local i32 @DatumGetBool(i32) #1

declare dso_local i32 @FunctionCall2Coll(i32*, i32, i32, i32) #1

declare dso_local i32 @CLAMP_PROBABILITY(double) #1

declare dso_local double @get_variable_numdistinct(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @free_attstatsslot(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
