; ModuleID = '/home/carl/AnghaBench/openpilot/selfdrive/controls/lib/longitudinal_mpc/lib_mpc_export/extr_acado_solver.c_acado_multCTQC.c'
source_filename = "/home/carl/AnghaBench/openpilot/selfdrive/controls/lib/longitudinal_mpc/lib_mpc_export/extr_acado_solver.c_acado_multCTQC.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@acadoWorkspace = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acado_multCTQC(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = getelementptr inbounds i32, i32* %5, i64 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32*, i32** %4, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 0
  %10 = load i32, i32* %9, align 4
  %11 = mul nsw i32 %7, %10
  %12 = load i32*, i32** %3, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 3
  %14 = load i32, i32* %13, align 4
  %15 = load i32*, i32** %4, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 3
  %17 = load i32, i32* %16, align 4
  %18 = mul nsw i32 %14, %17
  %19 = add nsw i32 %11, %18
  %20 = load i32*, i32** %3, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 6
  %22 = load i32, i32* %21, align 4
  %23 = load i32*, i32** %4, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 6
  %25 = load i32, i32* %24, align 4
  %26 = mul nsw i32 %22, %25
  %27 = add nsw i32 %19, %26
  %28 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acadoWorkspace, i32 0, i32 0), align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, %27
  store i32 %31, i32* %29, align 4
  %32 = load i32*, i32** %3, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %4, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = load i32, i32* %36, align 4
  %38 = mul nsw i32 %34, %37
  %39 = load i32*, i32** %3, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 3
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %4, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 4
  %44 = load i32, i32* %43, align 4
  %45 = mul nsw i32 %41, %44
  %46 = add nsw i32 %38, %45
  %47 = load i32*, i32** %3, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 6
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** %4, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 7
  %52 = load i32, i32* %51, align 4
  %53 = mul nsw i32 %49, %52
  %54 = add nsw i32 %46, %53
  %55 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acadoWorkspace, i32 0, i32 0), align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 1
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, %54
  store i32 %58, i32* %56, align 4
  %59 = load i32*, i32** %3, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %4, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 2
  %64 = load i32, i32* %63, align 4
  %65 = mul nsw i32 %61, %64
  %66 = load i32*, i32** %3, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 3
  %68 = load i32, i32* %67, align 4
  %69 = load i32*, i32** %4, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 5
  %71 = load i32, i32* %70, align 4
  %72 = mul nsw i32 %68, %71
  %73 = add nsw i32 %65, %72
  %74 = load i32*, i32** %3, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 6
  %76 = load i32, i32* %75, align 4
  %77 = load i32*, i32** %4, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 8
  %79 = load i32, i32* %78, align 4
  %80 = mul nsw i32 %76, %79
  %81 = add nsw i32 %73, %80
  %82 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acadoWorkspace, i32 0, i32 0), align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 2
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %84, %81
  store i32 %85, i32* %83, align 4
  %86 = load i32*, i32** %3, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32*, i32** %4, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 0
  %91 = load i32, i32* %90, align 4
  %92 = mul nsw i32 %88, %91
  %93 = load i32*, i32** %3, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 4
  %95 = load i32, i32* %94, align 4
  %96 = load i32*, i32** %4, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 3
  %98 = load i32, i32* %97, align 4
  %99 = mul nsw i32 %95, %98
  %100 = add nsw i32 %92, %99
  %101 = load i32*, i32** %3, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 7
  %103 = load i32, i32* %102, align 4
  %104 = load i32*, i32** %4, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 6
  %106 = load i32, i32* %105, align 4
  %107 = mul nsw i32 %103, %106
  %108 = add nsw i32 %100, %107
  %109 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acadoWorkspace, i32 0, i32 0), align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 23
  %111 = load i32, i32* %110, align 4
  %112 = add nsw i32 %111, %108
  store i32 %112, i32* %110, align 4
  %113 = load i32*, i32** %3, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 1
  %115 = load i32, i32* %114, align 4
  %116 = load i32*, i32** %4, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 1
  %118 = load i32, i32* %117, align 4
  %119 = mul nsw i32 %115, %118
  %120 = load i32*, i32** %3, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 4
  %122 = load i32, i32* %121, align 4
  %123 = load i32*, i32** %4, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 4
  %125 = load i32, i32* %124, align 4
  %126 = mul nsw i32 %122, %125
  %127 = add nsw i32 %119, %126
  %128 = load i32*, i32** %3, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 7
  %130 = load i32, i32* %129, align 4
  %131 = load i32*, i32** %4, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 7
  %133 = load i32, i32* %132, align 4
  %134 = mul nsw i32 %130, %133
  %135 = add nsw i32 %127, %134
  %136 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acadoWorkspace, i32 0, i32 0), align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 24
  %138 = load i32, i32* %137, align 4
  %139 = add nsw i32 %138, %135
  store i32 %139, i32* %137, align 4
  %140 = load i32*, i32** %3, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 1
  %142 = load i32, i32* %141, align 4
  %143 = load i32*, i32** %4, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 2
  %145 = load i32, i32* %144, align 4
  %146 = mul nsw i32 %142, %145
  %147 = load i32*, i32** %3, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 4
  %149 = load i32, i32* %148, align 4
  %150 = load i32*, i32** %4, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 5
  %152 = load i32, i32* %151, align 4
  %153 = mul nsw i32 %149, %152
  %154 = add nsw i32 %146, %153
  %155 = load i32*, i32** %3, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 7
  %157 = load i32, i32* %156, align 4
  %158 = load i32*, i32** %4, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 8
  %160 = load i32, i32* %159, align 4
  %161 = mul nsw i32 %157, %160
  %162 = add nsw i32 %154, %161
  %163 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acadoWorkspace, i32 0, i32 0), align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 25
  %165 = load i32, i32* %164, align 4
  %166 = add nsw i32 %165, %162
  store i32 %166, i32* %164, align 4
  %167 = load i32*, i32** %3, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 2
  %169 = load i32, i32* %168, align 4
  %170 = load i32*, i32** %4, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 0
  %172 = load i32, i32* %171, align 4
  %173 = mul nsw i32 %169, %172
  %174 = load i32*, i32** %3, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 5
  %176 = load i32, i32* %175, align 4
  %177 = load i32*, i32** %4, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 3
  %179 = load i32, i32* %178, align 4
  %180 = mul nsw i32 %176, %179
  %181 = add nsw i32 %173, %180
  %182 = load i32*, i32** %3, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 8
  %184 = load i32, i32* %183, align 4
  %185 = load i32*, i32** %4, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 6
  %187 = load i32, i32* %186, align 4
  %188 = mul nsw i32 %184, %187
  %189 = add nsw i32 %181, %188
  %190 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acadoWorkspace, i32 0, i32 0), align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 46
  %192 = load i32, i32* %191, align 4
  %193 = add nsw i32 %192, %189
  store i32 %193, i32* %191, align 4
  %194 = load i32*, i32** %3, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 2
  %196 = load i32, i32* %195, align 4
  %197 = load i32*, i32** %4, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 1
  %199 = load i32, i32* %198, align 4
  %200 = mul nsw i32 %196, %199
  %201 = load i32*, i32** %3, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 5
  %203 = load i32, i32* %202, align 4
  %204 = load i32*, i32** %4, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 4
  %206 = load i32, i32* %205, align 4
  %207 = mul nsw i32 %203, %206
  %208 = add nsw i32 %200, %207
  %209 = load i32*, i32** %3, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 8
  %211 = load i32, i32* %210, align 4
  %212 = load i32*, i32** %4, align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 7
  %214 = load i32, i32* %213, align 4
  %215 = mul nsw i32 %211, %214
  %216 = add nsw i32 %208, %215
  %217 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acadoWorkspace, i32 0, i32 0), align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 47
  %219 = load i32, i32* %218, align 4
  %220 = add nsw i32 %219, %216
  store i32 %220, i32* %218, align 4
  %221 = load i32*, i32** %3, align 8
  %222 = getelementptr inbounds i32, i32* %221, i64 2
  %223 = load i32, i32* %222, align 4
  %224 = load i32*, i32** %4, align 8
  %225 = getelementptr inbounds i32, i32* %224, i64 2
  %226 = load i32, i32* %225, align 4
  %227 = mul nsw i32 %223, %226
  %228 = load i32*, i32** %3, align 8
  %229 = getelementptr inbounds i32, i32* %228, i64 5
  %230 = load i32, i32* %229, align 4
  %231 = load i32*, i32** %4, align 8
  %232 = getelementptr inbounds i32, i32* %231, i64 5
  %233 = load i32, i32* %232, align 4
  %234 = mul nsw i32 %230, %233
  %235 = add nsw i32 %227, %234
  %236 = load i32*, i32** %3, align 8
  %237 = getelementptr inbounds i32, i32* %236, i64 8
  %238 = load i32, i32* %237, align 4
  %239 = load i32*, i32** %4, align 8
  %240 = getelementptr inbounds i32, i32* %239, i64 8
  %241 = load i32, i32* %240, align 4
  %242 = mul nsw i32 %238, %241
  %243 = add nsw i32 %235, %242
  %244 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acadoWorkspace, i32 0, i32 0), align 8
  %245 = getelementptr inbounds i32, i32* %244, i64 48
  %246 = load i32, i32* %245, align 4
  %247 = add nsw i32 %246, %243
  store i32 %247, i32* %245, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
