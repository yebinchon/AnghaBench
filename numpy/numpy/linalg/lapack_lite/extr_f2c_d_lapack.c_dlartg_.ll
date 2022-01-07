; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_d_lapack.c_dlartg_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_d_lapack.c_dlartg_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dlartg_.i__ = internal global i32 0, align 4
@dlartg_.f1 = internal global i32 0, align 4
@dlartg_.g1 = internal global i32 0, align 4
@dlartg_.eps = internal global i32 0, align 4
@dlartg_.scale = internal global i32 0, align 4
@dlartg_.count = internal global i32 0, align 4
@dlartg_.safmn2 = internal global i32 0, align 4
@dlartg_.safmx2 = internal global i32 0, align 4
@dlartg_.safmin = internal global i32 0, align 4
@SAFEMINIMUM = common dso_local global i32 0, align 4
@EPSILON = common dso_local global i32 0, align 4
@BASE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dlartg_(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %14 = load i32, i32* @SAFEMINIMUM, align 4
  store i32 %14, i32* @dlartg_.safmin, align 4
  %15 = load i32, i32* @EPSILON, align 4
  store i32 %15, i32* @dlartg_.eps, align 4
  %16 = load i32, i32* @BASE, align 4
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* @dlartg_.safmin, align 4
  %18 = load i32, i32* @dlartg_.eps, align 4
  %19 = sdiv i32 %17, %18
  %20 = call i32 @log(i32 %19)
  %21 = load i32, i32* @BASE, align 4
  %22 = call i32 @log(i32 %21)
  %23 = sdiv i32 %20, %22
  %24 = sitofp i32 %23 to double
  %25 = fdiv double %24, 2.000000e+00
  %26 = fptosi double %25 to i32
  store i32 %26, i32* %11, align 4
  %27 = call i32 @pow_di(i32* %12, i32* %11)
  store i32 %27, i32* @dlartg_.safmn2, align 4
  %28 = load i32, i32* @dlartg_.safmn2, align 4
  %29 = sitofp i32 %28 to double
  %30 = fdiv double 1.000000e+00, %29
  %31 = fptosi double %30 to i32
  store i32 %31, i32* @dlartg_.safmx2, align 4
  %32 = load i32*, i32** %7, align 8
  %33 = load i32, i32* %32, align 4
  %34 = sitofp i32 %33 to double
  %35 = fcmp oeq double %34, 0.000000e+00
  br i1 %35, label %36, label %42

36:                                               ; preds = %5
  %37 = load i32*, i32** %8, align 8
  store i32 1, i32* %37, align 4
  %38 = load i32*, i32** %9, align 8
  store i32 0, i32* %38, align 4
  %39 = load i32*, i32** %6, align 8
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %10, align 8
  store i32 %40, i32* %41, align 4
  br label %237

42:                                               ; preds = %5
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* %43, align 4
  %45 = sitofp i32 %44 to double
  %46 = fcmp oeq double %45, 0.000000e+00
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = load i32*, i32** %8, align 8
  store i32 0, i32* %48, align 4
  %49 = load i32*, i32** %9, align 8
  store i32 1, i32* %49, align 4
  %50 = load i32*, i32** %7, align 8
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %10, align 8
  store i32 %51, i32* %52, align 4
  br label %236

53:                                               ; preds = %42
  %54 = load i32*, i32** %6, align 8
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* @dlartg_.f1, align 4
  %56 = load i32*, i32** %7, align 8
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* @dlartg_.g1, align 4
  %58 = load i32, i32* @dlartg_.f1, align 4
  %59 = call i32 @abs(i32 %58) #3
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* @dlartg_.g1, align 4
  %61 = call i32 @abs(i32 %60) #3
  store i32 %61, i32* %13, align 4
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* %13, align 4
  %64 = call i32 @max(i32 %62, i32 %63)
  store i32 %64, i32* @dlartg_.scale, align 4
  %65 = load i32, i32* @dlartg_.scale, align 4
  %66 = load i32, i32* @dlartg_.safmx2, align 4
  %67 = icmp sge i32 %65, %66
  br i1 %67, label %68, label %125

68:                                               ; preds = %53
  store i32 0, i32* @dlartg_.count, align 4
  br label %69

69:                                               ; preds = %88, %68
  %70 = load i32, i32* @dlartg_.count, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* @dlartg_.count, align 4
  %72 = load i32, i32* @dlartg_.safmn2, align 4
  %73 = load i32, i32* @dlartg_.f1, align 4
  %74 = mul nsw i32 %73, %72
  store i32 %74, i32* @dlartg_.f1, align 4
  %75 = load i32, i32* @dlartg_.safmn2, align 4
  %76 = load i32, i32* @dlartg_.g1, align 4
  %77 = mul nsw i32 %76, %75
  store i32 %77, i32* @dlartg_.g1, align 4
  %78 = load i32, i32* @dlartg_.f1, align 4
  %79 = call i32 @abs(i32 %78) #3
  store i32 %79, i32* %12, align 4
  %80 = load i32, i32* @dlartg_.g1, align 4
  %81 = call i32 @abs(i32 %80) #3
  store i32 %81, i32* %13, align 4
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* %13, align 4
  %84 = call i32 @max(i32 %82, i32 %83)
  store i32 %84, i32* @dlartg_.scale, align 4
  %85 = load i32, i32* @dlartg_.scale, align 4
  %86 = load i32, i32* @dlartg_.safmx2, align 4
  %87 = icmp sge i32 %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %69
  br label %69

89:                                               ; preds = %69
  %90 = load i32, i32* @dlartg_.f1, align 4
  store i32 %90, i32* %12, align 4
  %91 = load i32, i32* @dlartg_.g1, align 4
  store i32 %91, i32* %13, align 4
  %92 = load i32, i32* %12, align 4
  %93 = load i32, i32* %12, align 4
  %94 = mul nsw i32 %92, %93
  %95 = load i32, i32* %13, align 4
  %96 = load i32, i32* %13, align 4
  %97 = mul nsw i32 %95, %96
  %98 = add nsw i32 %94, %97
  %99 = call i32 @sqrt(i32 %98)
  %100 = load i32*, i32** %10, align 8
  store i32 %99, i32* %100, align 4
  %101 = load i32, i32* @dlartg_.f1, align 4
  %102 = load i32*, i32** %10, align 8
  %103 = load i32, i32* %102, align 4
  %104 = sdiv i32 %101, %103
  %105 = load i32*, i32** %8, align 8
  store i32 %104, i32* %105, align 4
  %106 = load i32, i32* @dlartg_.g1, align 4
  %107 = load i32*, i32** %10, align 8
  %108 = load i32, i32* %107, align 4
  %109 = sdiv i32 %106, %108
  %110 = load i32*, i32** %9, align 8
  store i32 %109, i32* %110, align 4
  %111 = load i32, i32* @dlartg_.count, align 4
  store i32 %111, i32* %11, align 4
  store i32 1, i32* @dlartg_.i__, align 4
  br label %112

112:                                              ; preds = %121, %89
  %113 = load i32, i32* @dlartg_.i__, align 4
  %114 = load i32, i32* %11, align 4
  %115 = icmp sle i32 %113, %114
  br i1 %115, label %116, label %124

116:                                              ; preds = %112
  %117 = load i32, i32* @dlartg_.safmx2, align 4
  %118 = load i32*, i32** %10, align 8
  %119 = load i32, i32* %118, align 4
  %120 = mul nsw i32 %119, %117
  store i32 %120, i32* %118, align 4
  br label %121

121:                                              ; preds = %116
  %122 = load i32, i32* @dlartg_.i__, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* @dlartg_.i__, align 4
  br label %112

124:                                              ; preds = %112
  br label %209

125:                                              ; preds = %53
  %126 = load i32, i32* @dlartg_.scale, align 4
  %127 = load i32, i32* @dlartg_.safmn2, align 4
  %128 = icmp sle i32 %126, %127
  br i1 %128, label %129, label %186

129:                                              ; preds = %125
  store i32 0, i32* @dlartg_.count, align 4
  br label %130

130:                                              ; preds = %149, %129
  %131 = load i32, i32* @dlartg_.count, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* @dlartg_.count, align 4
  %133 = load i32, i32* @dlartg_.safmx2, align 4
  %134 = load i32, i32* @dlartg_.f1, align 4
  %135 = mul nsw i32 %134, %133
  store i32 %135, i32* @dlartg_.f1, align 4
  %136 = load i32, i32* @dlartg_.safmx2, align 4
  %137 = load i32, i32* @dlartg_.g1, align 4
  %138 = mul nsw i32 %137, %136
  store i32 %138, i32* @dlartg_.g1, align 4
  %139 = load i32, i32* @dlartg_.f1, align 4
  %140 = call i32 @abs(i32 %139) #3
  store i32 %140, i32* %12, align 4
  %141 = load i32, i32* @dlartg_.g1, align 4
  %142 = call i32 @abs(i32 %141) #3
  store i32 %142, i32* %13, align 4
  %143 = load i32, i32* %12, align 4
  %144 = load i32, i32* %13, align 4
  %145 = call i32 @max(i32 %143, i32 %144)
  store i32 %145, i32* @dlartg_.scale, align 4
  %146 = load i32, i32* @dlartg_.scale, align 4
  %147 = load i32, i32* @dlartg_.safmn2, align 4
  %148 = icmp sle i32 %146, %147
  br i1 %148, label %149, label %150

149:                                              ; preds = %130
  br label %130

150:                                              ; preds = %130
  %151 = load i32, i32* @dlartg_.f1, align 4
  store i32 %151, i32* %12, align 4
  %152 = load i32, i32* @dlartg_.g1, align 4
  store i32 %152, i32* %13, align 4
  %153 = load i32, i32* %12, align 4
  %154 = load i32, i32* %12, align 4
  %155 = mul nsw i32 %153, %154
  %156 = load i32, i32* %13, align 4
  %157 = load i32, i32* %13, align 4
  %158 = mul nsw i32 %156, %157
  %159 = add nsw i32 %155, %158
  %160 = call i32 @sqrt(i32 %159)
  %161 = load i32*, i32** %10, align 8
  store i32 %160, i32* %161, align 4
  %162 = load i32, i32* @dlartg_.f1, align 4
  %163 = load i32*, i32** %10, align 8
  %164 = load i32, i32* %163, align 4
  %165 = sdiv i32 %162, %164
  %166 = load i32*, i32** %8, align 8
  store i32 %165, i32* %166, align 4
  %167 = load i32, i32* @dlartg_.g1, align 4
  %168 = load i32*, i32** %10, align 8
  %169 = load i32, i32* %168, align 4
  %170 = sdiv i32 %167, %169
  %171 = load i32*, i32** %9, align 8
  store i32 %170, i32* %171, align 4
  %172 = load i32, i32* @dlartg_.count, align 4
  store i32 %172, i32* %11, align 4
  store i32 1, i32* @dlartg_.i__, align 4
  br label %173

173:                                              ; preds = %182, %150
  %174 = load i32, i32* @dlartg_.i__, align 4
  %175 = load i32, i32* %11, align 4
  %176 = icmp sle i32 %174, %175
  br i1 %176, label %177, label %185

177:                                              ; preds = %173
  %178 = load i32, i32* @dlartg_.safmn2, align 4
  %179 = load i32*, i32** %10, align 8
  %180 = load i32, i32* %179, align 4
  %181 = mul nsw i32 %180, %178
  store i32 %181, i32* %179, align 4
  br label %182

182:                                              ; preds = %177
  %183 = load i32, i32* @dlartg_.i__, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* @dlartg_.i__, align 4
  br label %173

185:                                              ; preds = %173
  br label %208

186:                                              ; preds = %125
  %187 = load i32, i32* @dlartg_.f1, align 4
  store i32 %187, i32* %12, align 4
  %188 = load i32, i32* @dlartg_.g1, align 4
  store i32 %188, i32* %13, align 4
  %189 = load i32, i32* %12, align 4
  %190 = load i32, i32* %12, align 4
  %191 = mul nsw i32 %189, %190
  %192 = load i32, i32* %13, align 4
  %193 = load i32, i32* %13, align 4
  %194 = mul nsw i32 %192, %193
  %195 = add nsw i32 %191, %194
  %196 = call i32 @sqrt(i32 %195)
  %197 = load i32*, i32** %10, align 8
  store i32 %196, i32* %197, align 4
  %198 = load i32, i32* @dlartg_.f1, align 4
  %199 = load i32*, i32** %10, align 8
  %200 = load i32, i32* %199, align 4
  %201 = sdiv i32 %198, %200
  %202 = load i32*, i32** %8, align 8
  store i32 %201, i32* %202, align 4
  %203 = load i32, i32* @dlartg_.g1, align 4
  %204 = load i32*, i32** %10, align 8
  %205 = load i32, i32* %204, align 4
  %206 = sdiv i32 %203, %205
  %207 = load i32*, i32** %9, align 8
  store i32 %206, i32* %207, align 4
  br label %208

208:                                              ; preds = %186, %185
  br label %209

209:                                              ; preds = %208, %124
  %210 = load i32*, i32** %6, align 8
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @abs(i32 %211) #3
  %213 = load i32*, i32** %7, align 8
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @abs(i32 %214) #3
  %216 = icmp sgt i32 %212, %215
  br i1 %216, label %217, label %235

217:                                              ; preds = %209
  %218 = load i32*, i32** %8, align 8
  %219 = load i32, i32* %218, align 4
  %220 = sitofp i32 %219 to double
  %221 = fcmp olt double %220, 0.000000e+00
  br i1 %221, label %222, label %235

222:                                              ; preds = %217
  %223 = load i32*, i32** %8, align 8
  %224 = load i32, i32* %223, align 4
  %225 = sub nsw i32 0, %224
  %226 = load i32*, i32** %8, align 8
  store i32 %225, i32* %226, align 4
  %227 = load i32*, i32** %9, align 8
  %228 = load i32, i32* %227, align 4
  %229 = sub nsw i32 0, %228
  %230 = load i32*, i32** %9, align 8
  store i32 %229, i32* %230, align 4
  %231 = load i32*, i32** %10, align 8
  %232 = load i32, i32* %231, align 4
  %233 = sub nsw i32 0, %232
  %234 = load i32*, i32** %10, align 8
  store i32 %233, i32* %234, align 4
  br label %235

235:                                              ; preds = %222, %217, %209
  br label %236

236:                                              ; preds = %235, %47
  br label %237

237:                                              ; preds = %236, %36
  ret i32 0
}

declare dso_local i32 @log(i32) #1

declare dso_local i32 @pow_di(i32*, i32*) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @sqrt(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
