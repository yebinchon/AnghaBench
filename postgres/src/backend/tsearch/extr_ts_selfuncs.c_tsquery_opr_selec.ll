; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/tsearch/extr_ts_selfuncs.c_tsquery_opr_selec.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/tsearch/extr_ts_selfuncs.c_tsquery_opr_selec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_11__ = type { double, i32 }
%struct.TYPE_12__ = type { i32, i32, i64 }
%struct.TYPE_14__ = type { i8*, i32 }

@QI_VAL = common dso_local global i64 0, align 8
@DEFAULT_TS_MATCH_SEL = common dso_local global i32 0, align 4
@compare_lexeme_textfreq = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"unrecognized operator: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (%struct.TYPE_13__*, i8*, %struct.TYPE_11__*, i32, i32)* @tsquery_opr_selec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @tsquery_opr_selec(%struct.TYPE_13__* %0, i8* %1, %struct.TYPE_11__* %2, i32 %3, i32 %4) #0 {
  %6 = alloca double, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca %struct.TYPE_14__, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_11__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_11__*, align 8
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %24 = call i32 (...) @check_stack_depth()
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @QI_VAL, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %162

30:                                               ; preds = %5
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %32 = bitcast %struct.TYPE_13__* %31 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %32, %struct.TYPE_12__** %13, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %33, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  store i8* %38, i8** %39, align 8
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 1
  store i32 %42, i32* %43, align 8
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %137

48:                                               ; preds = %30
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %50 = icmp eq %struct.TYPE_11__* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %48
  %52 = load i32, i32* %10, align 4
  %53 = icmp slt i32 %52, 100
  br i1 %53, label %54, label %58

54:                                               ; preds = %51, %48
  %55 = load i32, i32* @DEFAULT_TS_MATCH_SEL, align 4
  %56 = mul nsw i32 %55, 4
  %57 = sitofp i32 %56 to double
  store double %57, double* %6, align 8
  br label %238

58:                                               ; preds = %51
  store double 0.000000e+00, double* %16, align 8
  store double 0.000000e+00, double* %15, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %17, align 4
  br label %59

59:                                               ; preds = %113, %58
  %60 = load i32, i32* %17, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %116

63:                                               ; preds = %59
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %65 = load i32, i32* %17, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i64 %66
  store %struct.TYPE_11__* %67, %struct.TYPE_11__** %19, align 8
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @VARSIZE_ANY_EXHDR(i32 %70)
  store i32 %71, i32* %20, align 4
  %72 = load i32, i32* %20, align 4
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = icmp sge i32 %72, %74
  br i1 %75, label %76, label %101

76:                                               ; preds = %63
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @VARDATA_ANY(i32 %81)
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = call i64 @strncmp(i8* %78, i32 %82, i32 %84)
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %101

87:                                               ; preds = %76
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 0
  %90 = load double, double* %89, align 8
  %91 = load double, double* %15, align 8
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 0
  %94 = load double, double* %93, align 8
  %95 = fmul double %91, %94
  %96 = fsub double %90, %95
  %97 = load double, double* %15, align 8
  %98 = fadd double %97, %96
  store double %98, double* %15, align 8
  %99 = load i32, i32* %18, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %18, align 4
  br label %101

101:                                              ; preds = %87, %76, %63
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 0
  %104 = load double, double* %103, align 8
  %105 = load double, double* %16, align 8
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 0
  %108 = load double, double* %107, align 8
  %109 = fmul double %105, %108
  %110 = fsub double %104, %109
  %111 = load double, double* %16, align 8
  %112 = fadd double %111, %110
  store double %112, double* %16, align 8
  br label %113

113:                                              ; preds = %101
  %114 = load i32, i32* %17, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %17, align 4
  br label %59

116:                                              ; preds = %59
  %117 = load double, double* %15, align 8
  %118 = call i32 @CLAMP_PROBABILITY(double %117)
  %119 = load double, double* %16, align 8
  %120 = call i32 @CLAMP_PROBABILITY(double %119)
  %121 = load double, double* %15, align 8
  %122 = load double, double* %16, align 8
  %123 = fsub double 1.000000e+00, %122
  %124 = load i32, i32* %18, align 4
  %125 = sitofp i32 %124 to double
  %126 = load i32, i32* %10, align 4
  %127 = sitofp i32 %126 to double
  %128 = fdiv double %125, %127
  %129 = fmul double %123, %128
  %130 = fadd double %121, %129
  store double %130, double* %12, align 8
  %131 = load i32, i32* @DEFAULT_TS_MATCH_SEL, align 4
  %132 = load i32, i32* %11, align 4
  %133 = sdiv i32 %132, 2
  %134 = call double @Min(i32 %131, i32 %133)
  %135 = load double, double* %12, align 8
  %136 = call double @Max(double %134, double %135)
  store double %136, double* %12, align 8
  br label %161

137:                                              ; preds = %30
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %139 = icmp eq %struct.TYPE_11__* %138, null
  br i1 %139, label %140, label %143

140:                                              ; preds = %137
  %141 = load i32, i32* @DEFAULT_TS_MATCH_SEL, align 4
  %142 = sitofp i32 %141 to double
  store double %142, double* %6, align 8
  br label %238

143:                                              ; preds = %137
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %145 = load i32, i32* %10, align 4
  %146 = load i32, i32* @compare_lexeme_textfreq, align 4
  %147 = call i64 @bsearch(%struct.TYPE_14__* %14, %struct.TYPE_11__* %144, i32 %145, i32 16, i32 %146)
  %148 = inttoptr i64 %147 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %148, %struct.TYPE_11__** %21, align 8
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %150 = icmp ne %struct.TYPE_11__* %149, null
  br i1 %150, label %151, label %155

151:                                              ; preds = %143
  %152 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 0
  %154 = load double, double* %153, align 8
  store double %154, double* %12, align 8
  br label %160

155:                                              ; preds = %143
  %156 = load i32, i32* @DEFAULT_TS_MATCH_SEL, align 4
  %157 = load i32, i32* %11, align 4
  %158 = sdiv i32 %157, 2
  %159 = call double @Min(i32 %156, i32 %158)
  store double %159, double* %12, align 8
  br label %160

160:                                              ; preds = %155, %151
  br label %161

161:                                              ; preds = %160, %116
  br label %234

162:                                              ; preds = %5
  %163 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %164 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  switch i32 %166, label %226 [
    i32 130, label %167
    i32 128, label %176
    i32 131, label %176
    i32 129, label %199
  ]

167:                                              ; preds = %162
  %168 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i64 1
  %170 = load i8*, i8** %8, align 8
  %171 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %172 = load i32, i32* %10, align 4
  %173 = load i32, i32* %11, align 4
  %174 = call double @tsquery_opr_selec(%struct.TYPE_13__* %169, i8* %170, %struct.TYPE_11__* %171, i32 %172, i32 %173)
  %175 = fsub double 1.000000e+00, %174
  store double %175, double* %12, align 8
  br label %233

176:                                              ; preds = %162, %162
  %177 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %177, i64 1
  %179 = load i8*, i8** %8, align 8
  %180 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %181 = load i32, i32* %10, align 4
  %182 = load i32, i32* %11, align 4
  %183 = call double @tsquery_opr_selec(%struct.TYPE_13__* %178, i8* %179, %struct.TYPE_11__* %180, i32 %181, i32 %182)
  store double %183, double* %22, align 8
  %184 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %185 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %186 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %184, i64 %189
  %191 = load i8*, i8** %8, align 8
  %192 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %193 = load i32, i32* %10, align 4
  %194 = load i32, i32* %11, align 4
  %195 = call double @tsquery_opr_selec(%struct.TYPE_13__* %190, i8* %191, %struct.TYPE_11__* %192, i32 %193, i32 %194)
  store double %195, double* %23, align 8
  %196 = load double, double* %22, align 8
  %197 = load double, double* %23, align 8
  %198 = fmul double %196, %197
  store double %198, double* %12, align 8
  br label %233

199:                                              ; preds = %162
  %200 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %201 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %200, i64 1
  %202 = load i8*, i8** %8, align 8
  %203 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %204 = load i32, i32* %10, align 4
  %205 = load i32, i32* %11, align 4
  %206 = call double @tsquery_opr_selec(%struct.TYPE_13__* %201, i8* %202, %struct.TYPE_11__* %203, i32 %204, i32 %205)
  store double %206, double* %22, align 8
  %207 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %208 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %209 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %207, i64 %212
  %214 = load i8*, i8** %8, align 8
  %215 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %216 = load i32, i32* %10, align 4
  %217 = load i32, i32* %11, align 4
  %218 = call double @tsquery_opr_selec(%struct.TYPE_13__* %213, i8* %214, %struct.TYPE_11__* %215, i32 %216, i32 %217)
  store double %218, double* %23, align 8
  %219 = load double, double* %22, align 8
  %220 = load double, double* %23, align 8
  %221 = fadd double %219, %220
  %222 = load double, double* %22, align 8
  %223 = load double, double* %23, align 8
  %224 = fmul double %222, %223
  %225 = fsub double %221, %224
  store double %225, double* %12, align 8
  br label %233

226:                                              ; preds = %162
  %227 = load i32, i32* @ERROR, align 4
  %228 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %229 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %228, i32 0, i32 1
  %230 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = call i32 @elog(i32 %227, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %231)
  store double 0.000000e+00, double* %12, align 8
  br label %233

233:                                              ; preds = %226, %199, %176, %167
  br label %234

234:                                              ; preds = %233, %161
  %235 = load double, double* %12, align 8
  %236 = call i32 @CLAMP_PROBABILITY(double %235)
  %237 = load double, double* %12, align 8
  store double %237, double* %6, align 8
  br label %238

238:                                              ; preds = %234, %140, %54
  %239 = load double, double* %6, align 8
  ret double %239
}

declare dso_local i32 @check_stack_depth(...) #1

declare dso_local i32 @VARSIZE_ANY_EXHDR(i32) #1

declare dso_local i64 @strncmp(i8*, i32, i32) #1

declare dso_local i32 @VARDATA_ANY(i32) #1

declare dso_local i32 @CLAMP_PROBABILITY(double) #1

declare dso_local double @Max(double, double) #1

declare dso_local double @Min(i32, i32) #1

declare dso_local i64 @bsearch(%struct.TYPE_14__*, %struct.TYPE_11__*, i32, i32, i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
