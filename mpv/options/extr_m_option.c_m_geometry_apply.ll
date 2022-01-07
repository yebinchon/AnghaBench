; ModuleID = '/home/carl/AnghaBench/mpv/options/extr_m_option.c_m_geometry_apply.c'
source_filename = "/home/carl/AnghaBench/mpv/options/extr_m_option.c_m_geometry_apply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m_geometry = type { double, double, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64 }

@INT_MIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @m_geometry_apply(i32* %0, i32* %1, i32* %2, i32* %3, i32 %4, i32 %5, %struct.m_geometry* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.m_geometry*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca double, align 8
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store %struct.m_geometry* %6, %struct.m_geometry** %14, align 8
  %18 = load %struct.m_geometry*, %struct.m_geometry** %14, align 8
  %19 = getelementptr inbounds %struct.m_geometry, %struct.m_geometry* %18, i32 0, i32 11
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %139

22:                                               ; preds = %7
  %23 = load i32*, i32** %10, align 8
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %15, align 4
  %25 = load i32*, i32** %11, align 8
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %16, align 4
  %27 = load %struct.m_geometry*, %struct.m_geometry** %14, align 8
  %28 = getelementptr inbounds %struct.m_geometry, %struct.m_geometry* %27, i32 0, i32 0
  %29 = load double, double* %28, align 8
  %30 = fcmp ogt double %29, 0.000000e+00
  br i1 %30, label %31, label %52

31:                                               ; preds = %22
  %32 = load %struct.m_geometry*, %struct.m_geometry** %14, align 8
  %33 = getelementptr inbounds %struct.m_geometry, %struct.m_geometry* %32, i32 0, i32 10
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %31
  %37 = load i32, i32* %12, align 4
  %38 = sitofp i32 %37 to double
  %39 = load %struct.m_geometry*, %struct.m_geometry** %14, align 8
  %40 = getelementptr inbounds %struct.m_geometry, %struct.m_geometry* %39, i32 0, i32 0
  %41 = load double, double* %40, align 8
  %42 = fdiv double %41, 1.000000e+02
  %43 = fmul double %38, %42
  br label %48

44:                                               ; preds = %31
  %45 = load %struct.m_geometry*, %struct.m_geometry** %14, align 8
  %46 = getelementptr inbounds %struct.m_geometry, %struct.m_geometry* %45, i32 0, i32 0
  %47 = load double, double* %46, align 8
  br label %48

48:                                               ; preds = %44, %36
  %49 = phi double [ %43, %36 ], [ %47, %44 ]
  %50 = fptosi double %49 to i32
  %51 = load i32*, i32** %10, align 8
  store i32 %50, i32* %51, align 4
  br label %52

52:                                               ; preds = %48, %22
  %53 = load %struct.m_geometry*, %struct.m_geometry** %14, align 8
  %54 = getelementptr inbounds %struct.m_geometry, %struct.m_geometry* %53, i32 0, i32 1
  %55 = load double, double* %54, align 8
  %56 = fcmp ogt double %55, 0.000000e+00
  br i1 %56, label %57, label %78

57:                                               ; preds = %52
  %58 = load %struct.m_geometry*, %struct.m_geometry** %14, align 8
  %59 = getelementptr inbounds %struct.m_geometry, %struct.m_geometry* %58, i32 0, i32 9
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %57
  %63 = load i32, i32* %13, align 4
  %64 = sitofp i32 %63 to double
  %65 = load %struct.m_geometry*, %struct.m_geometry** %14, align 8
  %66 = getelementptr inbounds %struct.m_geometry, %struct.m_geometry* %65, i32 0, i32 1
  %67 = load double, double* %66, align 8
  %68 = fdiv double %67, 1.000000e+02
  %69 = fmul double %64, %68
  br label %74

70:                                               ; preds = %57
  %71 = load %struct.m_geometry*, %struct.m_geometry** %14, align 8
  %72 = getelementptr inbounds %struct.m_geometry, %struct.m_geometry* %71, i32 0, i32 1
  %73 = load double, double* %72, align 8
  br label %74

74:                                               ; preds = %70, %62
  %75 = phi double [ %69, %62 ], [ %73, %70 ]
  %76 = fptosi double %75 to i32
  %77 = load i32*, i32** %11, align 8
  store i32 %76, i32* %77, align 4
  br label %78

78:                                               ; preds = %74, %52
  %79 = load i32, i32* %15, align 4
  %80 = sitofp i32 %79 to double
  %81 = load i32, i32* %16, align 4
  %82 = sitofp i32 %81 to double
  %83 = fdiv double %80, %82
  store double %83, double* %17, align 8
  %84 = load %struct.m_geometry*, %struct.m_geometry** %14, align 8
  %85 = getelementptr inbounds %struct.m_geometry, %struct.m_geometry* %84, i32 0, i32 0
  %86 = load double, double* %85, align 8
  %87 = fcmp ogt double %86, 0.000000e+00
  br i1 %87, label %88, label %101

88:                                               ; preds = %78
  %89 = load %struct.m_geometry*, %struct.m_geometry** %14, align 8
  %90 = getelementptr inbounds %struct.m_geometry, %struct.m_geometry* %89, i32 0, i32 1
  %91 = load double, double* %90, align 8
  %92 = fcmp ogt double %91, 0.000000e+00
  br i1 %92, label %101, label %93

93:                                               ; preds = %88
  %94 = load i32*, i32** %10, align 8
  %95 = load i32, i32* %94, align 4
  %96 = sitofp i32 %95 to double
  %97 = load double, double* %17, align 8
  %98 = fdiv double %96, %97
  %99 = fptosi double %98 to i32
  %100 = load i32*, i32** %11, align 8
  store i32 %99, i32* %100, align 4
  br label %120

101:                                              ; preds = %88, %78
  %102 = load %struct.m_geometry*, %struct.m_geometry** %14, align 8
  %103 = getelementptr inbounds %struct.m_geometry, %struct.m_geometry* %102, i32 0, i32 0
  %104 = load double, double* %103, align 8
  %105 = fcmp ogt double %104, 0.000000e+00
  br i1 %105, label %119, label %106

106:                                              ; preds = %101
  %107 = load %struct.m_geometry*, %struct.m_geometry** %14, align 8
  %108 = getelementptr inbounds %struct.m_geometry, %struct.m_geometry* %107, i32 0, i32 1
  %109 = load double, double* %108, align 8
  %110 = fcmp ogt double %109, 0.000000e+00
  br i1 %110, label %111, label %119

111:                                              ; preds = %106
  %112 = load i32*, i32** %11, align 8
  %113 = load i32, i32* %112, align 4
  %114 = sitofp i32 %113 to double
  %115 = load double, double* %17, align 8
  %116 = fmul double %114, %115
  %117 = fptosi double %116 to i32
  %118 = load i32*, i32** %10, align 8
  store i32 %117, i32* %118, align 4
  br label %119

119:                                              ; preds = %111, %106, %101
  br label %120

120:                                              ; preds = %119, %93
  %121 = load i32, i32* %15, align 4
  %122 = sdiv i32 %121, 2
  %123 = load i32*, i32** %10, align 8
  %124 = load i32, i32* %123, align 4
  %125 = sdiv i32 %124, 2
  %126 = sub nsw i32 %122, %125
  %127 = load i32*, i32** %8, align 8
  %128 = load i32, i32* %127, align 4
  %129 = add nsw i32 %128, %126
  store i32 %129, i32* %127, align 4
  %130 = load i32, i32* %16, align 4
  %131 = sdiv i32 %130, 2
  %132 = load i32*, i32** %11, align 8
  %133 = load i32, i32* %132, align 4
  %134 = sdiv i32 %133, 2
  %135 = sub nsw i32 %131, %134
  %136 = load i32*, i32** %9, align 8
  %137 = load i32, i32* %136, align 4
  %138 = add nsw i32 %137, %135
  store i32 %138, i32* %136, align 4
  br label %139

139:                                              ; preds = %120, %7
  %140 = load %struct.m_geometry*, %struct.m_geometry** %14, align 8
  %141 = getelementptr inbounds %struct.m_geometry, %struct.m_geometry* %140, i32 0, i32 8
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %231

144:                                              ; preds = %139
  %145 = load %struct.m_geometry*, %struct.m_geometry** %14, align 8
  %146 = getelementptr inbounds %struct.m_geometry, %struct.m_geometry* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @INT_MIN, align 4
  %149 = icmp ne i32 %147, %148
  br i1 %149, label %150, label %187

150:                                              ; preds = %144
  %151 = load %struct.m_geometry*, %struct.m_geometry** %14, align 8
  %152 = getelementptr inbounds %struct.m_geometry, %struct.m_geometry* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = load i32*, i32** %8, align 8
  store i32 %153, i32* %154, align 4
  %155 = load %struct.m_geometry*, %struct.m_geometry** %14, align 8
  %156 = getelementptr inbounds %struct.m_geometry, %struct.m_geometry* %155, i32 0, i32 7
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %172

159:                                              ; preds = %150
  %160 = load i32, i32* %12, align 4
  %161 = load i32*, i32** %10, align 8
  %162 = load i32, i32* %161, align 4
  %163 = sub nsw i32 %160, %162
  %164 = sitofp i32 %163 to double
  %165 = load i32*, i32** %8, align 8
  %166 = load i32, i32* %165, align 4
  %167 = sitofp i32 %166 to double
  %168 = fdiv double %167, 1.000000e+02
  %169 = fmul double %164, %168
  %170 = fptosi double %169 to i32
  %171 = load i32*, i32** %8, align 8
  store i32 %170, i32* %171, align 4
  br label %172

172:                                              ; preds = %159, %150
  %173 = load %struct.m_geometry*, %struct.m_geometry** %14, align 8
  %174 = getelementptr inbounds %struct.m_geometry, %struct.m_geometry* %173, i32 0, i32 6
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %186

177:                                              ; preds = %172
  %178 = load i32, i32* %12, align 4
  %179 = load i32*, i32** %10, align 8
  %180 = load i32, i32* %179, align 4
  %181 = sub nsw i32 %178, %180
  %182 = load i32*, i32** %8, align 8
  %183 = load i32, i32* %182, align 4
  %184 = sub nsw i32 %181, %183
  %185 = load i32*, i32** %8, align 8
  store i32 %184, i32* %185, align 4
  br label %186

186:                                              ; preds = %177, %172
  br label %187

187:                                              ; preds = %186, %144
  %188 = load %struct.m_geometry*, %struct.m_geometry** %14, align 8
  %189 = getelementptr inbounds %struct.m_geometry, %struct.m_geometry* %188, i32 0, i32 3
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* @INT_MIN, align 4
  %192 = icmp ne i32 %190, %191
  br i1 %192, label %193, label %230

193:                                              ; preds = %187
  %194 = load %struct.m_geometry*, %struct.m_geometry** %14, align 8
  %195 = getelementptr inbounds %struct.m_geometry, %struct.m_geometry* %194, i32 0, i32 3
  %196 = load i32, i32* %195, align 4
  %197 = load i32*, i32** %9, align 8
  store i32 %196, i32* %197, align 4
  %198 = load %struct.m_geometry*, %struct.m_geometry** %14, align 8
  %199 = getelementptr inbounds %struct.m_geometry, %struct.m_geometry* %198, i32 0, i32 5
  %200 = load i64, i64* %199, align 8
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %215

202:                                              ; preds = %193
  %203 = load i32, i32* %13, align 4
  %204 = load i32*, i32** %11, align 8
  %205 = load i32, i32* %204, align 4
  %206 = sub nsw i32 %203, %205
  %207 = sitofp i32 %206 to double
  %208 = load i32*, i32** %9, align 8
  %209 = load i32, i32* %208, align 4
  %210 = sitofp i32 %209 to double
  %211 = fdiv double %210, 1.000000e+02
  %212 = fmul double %207, %211
  %213 = fptosi double %212 to i32
  %214 = load i32*, i32** %9, align 8
  store i32 %213, i32* %214, align 4
  br label %215

215:                                              ; preds = %202, %193
  %216 = load %struct.m_geometry*, %struct.m_geometry** %14, align 8
  %217 = getelementptr inbounds %struct.m_geometry, %struct.m_geometry* %216, i32 0, i32 4
  %218 = load i64, i64* %217, align 8
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %229

220:                                              ; preds = %215
  %221 = load i32, i32* %13, align 4
  %222 = load i32*, i32** %11, align 8
  %223 = load i32, i32* %222, align 4
  %224 = sub nsw i32 %221, %223
  %225 = load i32*, i32** %9, align 8
  %226 = load i32, i32* %225, align 4
  %227 = sub nsw i32 %224, %226
  %228 = load i32*, i32** %9, align 8
  store i32 %227, i32* %228, align 4
  br label %229

229:                                              ; preds = %220, %215
  br label %230

230:                                              ; preds = %229, %187
  br label %231

231:                                              ; preds = %230, %139
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
