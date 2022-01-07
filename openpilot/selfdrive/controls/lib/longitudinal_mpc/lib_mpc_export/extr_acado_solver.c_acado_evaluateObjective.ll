; ModuleID = '/home/carl/AnghaBench/openpilot/selfdrive/controls/lib/longitudinal_mpc/lib_mpc_export/extr_acado_solver.c_acado_evaluateObjective.c'
source_filename = "/home/carl/AnghaBench/openpilot/selfdrive/controls/lib/longitudinal_mpc/lib_mpc_export/extr_acado_solver.c_acado_evaluateObjective.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32*, i32*, i32*, i32* }
%struct.TYPE_3__ = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32* }

@acadoVariables = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@acadoWorkspace = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acado_evaluateObjective() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %129, %0
  %3 = load i32, i32* %1, align 4
  %4 = icmp slt i32 %3, 20
  br i1 %4, label %5, label %132

5:                                                ; preds = %2
  %6 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acadoVariables, i32 0, i32 2), align 8
  %7 = load i32, i32* %1, align 4
  %8 = mul nsw i32 %7, 3
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i32, i32* %6, i64 %9
  %11 = load i32, i32* %10, align 4
  %12 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @acadoWorkspace, i32 0, i32 4), align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  store i32 %11, i32* %13, align 4
  %14 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acadoVariables, i32 0, i32 2), align 8
  %15 = load i32, i32* %1, align 4
  %16 = mul nsw i32 %15, 3
  %17 = add nsw i32 %16, 1
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %14, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @acadoWorkspace, i32 0, i32 4), align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  store i32 %20, i32* %22, align 4
  %23 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acadoVariables, i32 0, i32 2), align 8
  %24 = load i32, i32* %1, align 4
  %25 = mul nsw i32 %24, 3
  %26 = add nsw i32 %25, 2
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %23, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @acadoWorkspace, i32 0, i32 4), align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 2
  store i32 %29, i32* %31, align 4
  %32 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acadoVariables, i32 0, i32 4), align 8
  %33 = load i32, i32* %1, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @acadoWorkspace, i32 0, i32 4), align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 3
  store i32 %36, i32* %38, align 4
  %39 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acadoVariables, i32 0, i32 1), align 8
  %40 = load i32, i32* %1, align 4
  %41 = mul nsw i32 %40, 2
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %39, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @acadoWorkspace, i32 0, i32 4), align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 4
  store i32 %44, i32* %46, align 4
  %47 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acadoVariables, i32 0, i32 1), align 8
  %48 = load i32, i32* %1, align 4
  %49 = mul nsw i32 %48, 2
  %50 = add nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %47, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @acadoWorkspace, i32 0, i32 4), align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 5
  store i32 %53, i32* %55, align 4
  %56 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @acadoWorkspace, i32 0, i32 4), align 8
  %57 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @acadoWorkspace, i32 0, i32 2), align 8
  %58 = call i32 @acado_evaluateLSQ(i32* %56, i32* %57)
  %59 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @acadoWorkspace, i32 0, i32 2), align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @acadoWorkspace, i32 0, i32 9), align 8
  %63 = load i32, i32* %1, align 4
  %64 = mul nsw i32 %63, 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %62, i64 %65
  store i32 %61, i32* %66, align 4
  %67 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @acadoWorkspace, i32 0, i32 2), align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @acadoWorkspace, i32 0, i32 9), align 8
  %71 = load i32, i32* %1, align 4
  %72 = mul nsw i32 %71, 4
  %73 = add nsw i32 %72, 1
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %70, i64 %74
  store i32 %69, i32* %75, align 4
  %76 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @acadoWorkspace, i32 0, i32 2), align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 2
  %78 = load i32, i32* %77, align 4
  %79 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @acadoWorkspace, i32 0, i32 9), align 8
  %80 = load i32, i32* %1, align 4
  %81 = mul nsw i32 %80, 4
  %82 = add nsw i32 %81, 2
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %79, i64 %83
  store i32 %78, i32* %84, align 4
  %85 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @acadoWorkspace, i32 0, i32 2), align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 3
  %87 = load i32, i32* %86, align 4
  %88 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @acadoWorkspace, i32 0, i32 9), align 8
  %89 = load i32, i32* %1, align 4
  %90 = mul nsw i32 %89, 4
  %91 = add nsw i32 %90, 3
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %88, i64 %92
  store i32 %87, i32* %93, align 4
  %94 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @acadoWorkspace, i32 0, i32 2), align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 4
  %96 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acadoVariables, i32 0, i32 3), align 8
  %97 = load i32, i32* %1, align 4
  %98 = mul nsw i32 %97, 16
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %96, i64 %99
  %101 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @acadoWorkspace, i32 0, i32 8), align 8
  %102 = load i32, i32* %1, align 4
  %103 = mul nsw i32 %102, 9
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %101, i64 %104
  %106 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @acadoWorkspace, i32 0, i32 7), align 8
  %107 = load i32, i32* %1, align 4
  %108 = mul nsw i32 %107, 12
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %106, i64 %109
  %111 = call i32 @acado_setObjQ1Q2(i32* %95, i32* %100, i32* %105, i32* %110)
  %112 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @acadoWorkspace, i32 0, i32 2), align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 16
  %114 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acadoVariables, i32 0, i32 3), align 8
  %115 = load i32, i32* %1, align 4
  %116 = mul nsw i32 %115, 16
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %114, i64 %117
  %119 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @acadoWorkspace, i32 0, i32 6), align 8
  %120 = load i32, i32* %1, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @acadoWorkspace, i32 0, i32 5), align 8
  %124 = load i32, i32* %1, align 4
  %125 = mul nsw i32 %124, 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %123, i64 %126
  %128 = call i32 @acado_setObjR1R2(i32* %113, i32* %118, i32* %122, i32* %127)
  br label %129

129:                                              ; preds = %5
  %130 = load i32, i32* %1, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %1, align 4
  br label %2

132:                                              ; preds = %2
  %133 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acadoVariables, i32 0, i32 2), align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 60
  %135 = load i32, i32* %134, align 4
  %136 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @acadoWorkspace, i32 0, i32 4), align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 0
  store i32 %135, i32* %137, align 4
  %138 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acadoVariables, i32 0, i32 2), align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 61
  %140 = load i32, i32* %139, align 4
  %141 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @acadoWorkspace, i32 0, i32 4), align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 1
  store i32 %140, i32* %142, align 4
  %143 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acadoVariables, i32 0, i32 2), align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 62
  %145 = load i32, i32* %144, align 4
  %146 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @acadoWorkspace, i32 0, i32 4), align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 2
  store i32 %145, i32* %147, align 4
  %148 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acadoVariables, i32 0, i32 1), align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 40
  %150 = load i32, i32* %149, align 4
  %151 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @acadoWorkspace, i32 0, i32 4), align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 3
  store i32 %150, i32* %152, align 4
  %153 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acadoVariables, i32 0, i32 1), align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 41
  %155 = load i32, i32* %154, align 4
  %156 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @acadoWorkspace, i32 0, i32 4), align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 4
  store i32 %155, i32* %157, align 4
  %158 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @acadoWorkspace, i32 0, i32 4), align 8
  %159 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @acadoWorkspace, i32 0, i32 2), align 8
  %160 = call i32 @acado_evaluateLSQEndTerm(i32* %158, i32* %159)
  %161 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @acadoWorkspace, i32 0, i32 2), align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 0
  %163 = load i32, i32* %162, align 4
  %164 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @acadoWorkspace, i32 0, i32 3), align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 0
  store i32 %163, i32* %165, align 4
  %166 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @acadoWorkspace, i32 0, i32 2), align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 1
  %168 = load i32, i32* %167, align 4
  %169 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @acadoWorkspace, i32 0, i32 3), align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 1
  store i32 %168, i32* %170, align 4
  %171 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @acadoWorkspace, i32 0, i32 2), align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 2
  %173 = load i32, i32* %172, align 4
  %174 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @acadoWorkspace, i32 0, i32 3), align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 2
  store i32 %173, i32* %175, align 4
  %176 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @acadoWorkspace, i32 0, i32 2), align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 3
  %178 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acadoVariables, i32 0, i32 0), align 8
  %179 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @acadoWorkspace, i32 0, i32 1), align 4
  %180 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @acadoWorkspace, i32 0, i32 0), align 8
  %181 = call i32 @acado_setObjQN1QN2(i32* %177, i32 %178, i32 %179, i32 %180)
  ret void
}

declare dso_local i32 @acado_evaluateLSQ(i32*, i32*) #1

declare dso_local i32 @acado_setObjQ1Q2(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @acado_setObjR1R2(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @acado_evaluateLSQEndTerm(i32*, i32*) #1

declare dso_local i32 @acado_setObjQN1QN2(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
