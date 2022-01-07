; ModuleID = '/home/carl/AnghaBench/openpilot/selfdrive/controls/lib/lateral_mpc/lib_mpc_export/extr_acado_solver.c_acado_initializeNodesByForwardSimulation.c'
source_filename = "/home/carl/AnghaBench/openpilot/selfdrive/controls/lib/lateral_mpc/lib_mpc_export/extr_acado_solver.c_acado_initializeNodesByForwardSimulation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32*, i32* }
%struct.TYPE_3__ = type { i32* }

@acadoVariables = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@acadoWorkspace = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acado_initializeNodesByForwardSimulation() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %242, %0
  %3 = load i32, i32* %1, align 4
  %4 = icmp slt i32 %3, 20
  br i1 %4, label %5, label %245

5:                                                ; preds = %2
  %6 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acadoVariables, i32 0, i32 0), align 8
  %7 = load i32, i32* %1, align 4
  %8 = mul nsw i32 %7, 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i32, i32* %6, i64 %9
  %11 = load i32, i32* %10, align 4
  %12 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @acadoWorkspace, i32 0, i32 0), align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  store i32 %11, i32* %13, align 4
  %14 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acadoVariables, i32 0, i32 0), align 8
  %15 = load i32, i32* %1, align 4
  %16 = mul nsw i32 %15, 4
  %17 = add nsw i32 %16, 1
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %14, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @acadoWorkspace, i32 0, i32 0), align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  store i32 %20, i32* %22, align 4
  %23 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acadoVariables, i32 0, i32 0), align 8
  %24 = load i32, i32* %1, align 4
  %25 = mul nsw i32 %24, 4
  %26 = add nsw i32 %25, 2
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %23, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @acadoWorkspace, i32 0, i32 0), align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 2
  store i32 %29, i32* %31, align 4
  %32 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acadoVariables, i32 0, i32 0), align 8
  %33 = load i32, i32* %1, align 4
  %34 = mul nsw i32 %33, 4
  %35 = add nsw i32 %34, 3
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %32, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @acadoWorkspace, i32 0, i32 0), align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 3
  store i32 %38, i32* %40, align 4
  %41 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acadoVariables, i32 0, i32 2), align 8
  %42 = load i32, i32* %1, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @acadoWorkspace, i32 0, i32 0), align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 24
  store i32 %45, i32* %47, align 4
  %48 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acadoVariables, i32 0, i32 1), align 8
  %49 = load i32, i32* %1, align 4
  %50 = mul nsw i32 %49, 17
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %48, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @acadoWorkspace, i32 0, i32 0), align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 25
  store i32 %53, i32* %55, align 4
  %56 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acadoVariables, i32 0, i32 1), align 8
  %57 = load i32, i32* %1, align 4
  %58 = mul nsw i32 %57, 17
  %59 = add nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %56, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @acadoWorkspace, i32 0, i32 0), align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 26
  store i32 %62, i32* %64, align 4
  %65 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acadoVariables, i32 0, i32 1), align 8
  %66 = load i32, i32* %1, align 4
  %67 = mul nsw i32 %66, 17
  %68 = add nsw i32 %67, 2
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %65, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @acadoWorkspace, i32 0, i32 0), align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 27
  store i32 %71, i32* %73, align 4
  %74 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acadoVariables, i32 0, i32 1), align 8
  %75 = load i32, i32* %1, align 4
  %76 = mul nsw i32 %75, 17
  %77 = add nsw i32 %76, 3
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %74, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @acadoWorkspace, i32 0, i32 0), align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 28
  store i32 %80, i32* %82, align 4
  %83 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acadoVariables, i32 0, i32 1), align 8
  %84 = load i32, i32* %1, align 4
  %85 = mul nsw i32 %84, 17
  %86 = add nsw i32 %85, 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %83, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @acadoWorkspace, i32 0, i32 0), align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 29
  store i32 %89, i32* %91, align 4
  %92 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acadoVariables, i32 0, i32 1), align 8
  %93 = load i32, i32* %1, align 4
  %94 = mul nsw i32 %93, 17
  %95 = add nsw i32 %94, 5
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %92, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @acadoWorkspace, i32 0, i32 0), align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 30
  store i32 %98, i32* %100, align 4
  %101 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acadoVariables, i32 0, i32 1), align 8
  %102 = load i32, i32* %1, align 4
  %103 = mul nsw i32 %102, 17
  %104 = add nsw i32 %103, 6
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %101, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @acadoWorkspace, i32 0, i32 0), align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 31
  store i32 %107, i32* %109, align 4
  %110 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acadoVariables, i32 0, i32 1), align 8
  %111 = load i32, i32* %1, align 4
  %112 = mul nsw i32 %111, 17
  %113 = add nsw i32 %112, 7
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %110, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @acadoWorkspace, i32 0, i32 0), align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 32
  store i32 %116, i32* %118, align 4
  %119 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acadoVariables, i32 0, i32 1), align 8
  %120 = load i32, i32* %1, align 4
  %121 = mul nsw i32 %120, 17
  %122 = add nsw i32 %121, 8
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %119, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @acadoWorkspace, i32 0, i32 0), align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 33
  store i32 %125, i32* %127, align 4
  %128 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acadoVariables, i32 0, i32 1), align 8
  %129 = load i32, i32* %1, align 4
  %130 = mul nsw i32 %129, 17
  %131 = add nsw i32 %130, 9
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %128, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @acadoWorkspace, i32 0, i32 0), align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 34
  store i32 %134, i32* %136, align 4
  %137 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acadoVariables, i32 0, i32 1), align 8
  %138 = load i32, i32* %1, align 4
  %139 = mul nsw i32 %138, 17
  %140 = add nsw i32 %139, 10
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %137, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @acadoWorkspace, i32 0, i32 0), align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 35
  store i32 %143, i32* %145, align 4
  %146 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acadoVariables, i32 0, i32 1), align 8
  %147 = load i32, i32* %1, align 4
  %148 = mul nsw i32 %147, 17
  %149 = add nsw i32 %148, 11
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %146, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @acadoWorkspace, i32 0, i32 0), align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 36
  store i32 %152, i32* %154, align 4
  %155 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acadoVariables, i32 0, i32 1), align 8
  %156 = load i32, i32* %1, align 4
  %157 = mul nsw i32 %156, 17
  %158 = add nsw i32 %157, 12
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %155, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @acadoWorkspace, i32 0, i32 0), align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 37
  store i32 %161, i32* %163, align 4
  %164 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acadoVariables, i32 0, i32 1), align 8
  %165 = load i32, i32* %1, align 4
  %166 = mul nsw i32 %165, 17
  %167 = add nsw i32 %166, 13
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %164, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @acadoWorkspace, i32 0, i32 0), align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 38
  store i32 %170, i32* %172, align 4
  %173 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acadoVariables, i32 0, i32 1), align 8
  %174 = load i32, i32* %1, align 4
  %175 = mul nsw i32 %174, 17
  %176 = add nsw i32 %175, 14
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %173, i64 %177
  %179 = load i32, i32* %178, align 4
  %180 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @acadoWorkspace, i32 0, i32 0), align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 39
  store i32 %179, i32* %181, align 4
  %182 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acadoVariables, i32 0, i32 1), align 8
  %183 = load i32, i32* %1, align 4
  %184 = mul nsw i32 %183, 17
  %185 = add nsw i32 %184, 15
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %182, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @acadoWorkspace, i32 0, i32 0), align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 40
  store i32 %188, i32* %190, align 4
  %191 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acadoVariables, i32 0, i32 1), align 8
  %192 = load i32, i32* %1, align 4
  %193 = mul nsw i32 %192, 17
  %194 = add nsw i32 %193, 16
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %191, i64 %195
  %197 = load i32, i32* %196, align 4
  %198 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @acadoWorkspace, i32 0, i32 0), align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 41
  store i32 %197, i32* %199, align 4
  %200 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @acadoWorkspace, i32 0, i32 0), align 8
  %201 = load i32, i32* %1, align 4
  %202 = icmp eq i32 %201, 0
  %203 = zext i1 %202 to i32
  %204 = load i32, i32* %1, align 4
  %205 = call i32 @acado_integrate(i32* %200, i32 %203, i32 %204)
  %206 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @acadoWorkspace, i32 0, i32 0), align 8
  %207 = getelementptr inbounds i32, i32* %206, i64 0
  %208 = load i32, i32* %207, align 4
  %209 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acadoVariables, i32 0, i32 0), align 8
  %210 = load i32, i32* %1, align 4
  %211 = mul nsw i32 %210, 4
  %212 = add nsw i32 %211, 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %209, i64 %213
  store i32 %208, i32* %214, align 4
  %215 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @acadoWorkspace, i32 0, i32 0), align 8
  %216 = getelementptr inbounds i32, i32* %215, i64 1
  %217 = load i32, i32* %216, align 4
  %218 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acadoVariables, i32 0, i32 0), align 8
  %219 = load i32, i32* %1, align 4
  %220 = mul nsw i32 %219, 4
  %221 = add nsw i32 %220, 5
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32, i32* %218, i64 %222
  store i32 %217, i32* %223, align 4
  %224 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @acadoWorkspace, i32 0, i32 0), align 8
  %225 = getelementptr inbounds i32, i32* %224, i64 2
  %226 = load i32, i32* %225, align 4
  %227 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acadoVariables, i32 0, i32 0), align 8
  %228 = load i32, i32* %1, align 4
  %229 = mul nsw i32 %228, 4
  %230 = add nsw i32 %229, 6
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i32, i32* %227, i64 %231
  store i32 %226, i32* %232, align 4
  %233 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @acadoWorkspace, i32 0, i32 0), align 8
  %234 = getelementptr inbounds i32, i32* %233, i64 3
  %235 = load i32, i32* %234, align 4
  %236 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acadoVariables, i32 0, i32 0), align 8
  %237 = load i32, i32* %1, align 4
  %238 = mul nsw i32 %237, 4
  %239 = add nsw i32 %238, 7
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i32, i32* %236, i64 %240
  store i32 %235, i32* %241, align 4
  br label %242

242:                                              ; preds = %5
  %243 = load i32, i32* %1, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %1, align 4
  br label %2

245:                                              ; preds = %2
  ret void
}

declare dso_local i32 @acado_integrate(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
