; ModuleID = '/home/carl/AnghaBench/openpilot/selfdrive/controls/lib/longitudinal_mpc/lib_mpc_export/extr_acado_solver.c_acado_shiftStates.c'
source_filename = "/home/carl/AnghaBench/openpilot/selfdrive/controls/lib/longitudinal_mpc/lib_mpc_export/extr_acado_solver.c_acado_shiftStates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8**, i8**, i8** }
%struct.TYPE_3__ = type { i8** }

@acadoVariables = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@acadoWorkspace = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acado_shiftStates(i32 %0, i8** %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8** %2, i8*** %6, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %50, %3
  %9 = load i32, i32* %7, align 4
  %10 = icmp slt i32 %9, 20
  br i1 %10, label %11, label %53

11:                                               ; preds = %8
  %12 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acadoVariables, i32 0, i32 0), align 8
  %13 = load i32, i32* %7, align 4
  %14 = mul nsw i32 %13, 3
  %15 = add nsw i32 %14, 3
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8*, i8** %12, i64 %16
  %18 = load i8*, i8** %17, align 8
  %19 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acadoVariables, i32 0, i32 0), align 8
  %20 = load i32, i32* %7, align 4
  %21 = mul nsw i32 %20, 3
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8*, i8** %19, i64 %22
  store i8* %18, i8** %23, align 8
  %24 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acadoVariables, i32 0, i32 0), align 8
  %25 = load i32, i32* %7, align 4
  %26 = mul nsw i32 %25, 3
  %27 = add nsw i32 %26, 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8*, i8** %24, i64 %28
  %30 = load i8*, i8** %29, align 8
  %31 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acadoVariables, i32 0, i32 0), align 8
  %32 = load i32, i32* %7, align 4
  %33 = mul nsw i32 %32, 3
  %34 = add nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8*, i8** %31, i64 %35
  store i8* %30, i8** %36, align 8
  %37 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acadoVariables, i32 0, i32 0), align 8
  %38 = load i32, i32* %7, align 4
  %39 = mul nsw i32 %38, 3
  %40 = add nsw i32 %39, 5
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8*, i8** %37, i64 %41
  %43 = load i8*, i8** %42, align 8
  %44 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acadoVariables, i32 0, i32 0), align 8
  %45 = load i32, i32* %7, align 4
  %46 = mul nsw i32 %45, 3
  %47 = add nsw i32 %46, 2
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8*, i8** %44, i64 %48
  store i8* %43, i8** %49, align 8
  br label %50

50:                                               ; preds = %11
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %7, align 4
  br label %8

53:                                               ; preds = %8
  %54 = load i32, i32* %4, align 4
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %56, label %75

56:                                               ; preds = %53
  %57 = load i8**, i8*** %5, align 8
  %58 = icmp ne i8** %57, null
  br i1 %58, label %59, label %75

59:                                               ; preds = %56
  %60 = load i8**, i8*** %5, align 8
  %61 = getelementptr inbounds i8*, i8** %60, i64 0
  %62 = load i8*, i8** %61, align 8
  %63 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acadoVariables, i32 0, i32 0), align 8
  %64 = getelementptr inbounds i8*, i8** %63, i64 60
  store i8* %62, i8** %64, align 8
  %65 = load i8**, i8*** %5, align 8
  %66 = getelementptr inbounds i8*, i8** %65, i64 1
  %67 = load i8*, i8** %66, align 8
  %68 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acadoVariables, i32 0, i32 0), align 8
  %69 = getelementptr inbounds i8*, i8** %68, i64 61
  store i8* %67, i8** %69, align 8
  %70 = load i8**, i8*** %5, align 8
  %71 = getelementptr inbounds i8*, i8** %70, i64 2
  %72 = load i8*, i8** %71, align 8
  %73 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acadoVariables, i32 0, i32 0), align 8
  %74 = getelementptr inbounds i8*, i8** %73, i64 62
  store i8* %72, i8** %74, align 8
  br label %137

75:                                               ; preds = %56, %53
  %76 = load i32, i32* %4, align 4
  %77 = icmp eq i32 %76, 2
  br i1 %77, label %78, label %136

78:                                               ; preds = %75
  %79 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acadoVariables, i32 0, i32 0), align 8
  %80 = getelementptr inbounds i8*, i8** %79, i64 60
  %81 = load i8*, i8** %80, align 8
  %82 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @acadoWorkspace, i32 0, i32 0), align 8
  %83 = getelementptr inbounds i8*, i8** %82, i64 0
  store i8* %81, i8** %83, align 8
  %84 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acadoVariables, i32 0, i32 0), align 8
  %85 = getelementptr inbounds i8*, i8** %84, i64 61
  %86 = load i8*, i8** %85, align 8
  %87 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @acadoWorkspace, i32 0, i32 0), align 8
  %88 = getelementptr inbounds i8*, i8** %87, i64 1
  store i8* %86, i8** %88, align 8
  %89 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acadoVariables, i32 0, i32 0), align 8
  %90 = getelementptr inbounds i8*, i8** %89, i64 62
  %91 = load i8*, i8** %90, align 8
  %92 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @acadoWorkspace, i32 0, i32 0), align 8
  %93 = getelementptr inbounds i8*, i8** %92, i64 2
  store i8* %91, i8** %93, align 8
  %94 = load i8**, i8*** %6, align 8
  %95 = icmp ne i8** %94, null
  br i1 %95, label %96, label %102

96:                                               ; preds = %78
  %97 = load i8**, i8*** %6, align 8
  %98 = getelementptr inbounds i8*, i8** %97, i64 0
  %99 = load i8*, i8** %98, align 8
  %100 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @acadoWorkspace, i32 0, i32 0), align 8
  %101 = getelementptr inbounds i8*, i8** %100, i64 15
  store i8* %99, i8** %101, align 8
  br label %108

102:                                              ; preds = %78
  %103 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acadoVariables, i32 0, i32 2), align 8
  %104 = getelementptr inbounds i8*, i8** %103, i64 19
  %105 = load i8*, i8** %104, align 8
  %106 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @acadoWorkspace, i32 0, i32 0), align 8
  %107 = getelementptr inbounds i8*, i8** %106, i64 15
  store i8* %105, i8** %107, align 8
  br label %108

108:                                              ; preds = %102, %96
  %109 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acadoVariables, i32 0, i32 1), align 8
  %110 = getelementptr inbounds i8*, i8** %109, i64 40
  %111 = load i8*, i8** %110, align 8
  %112 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @acadoWorkspace, i32 0, i32 0), align 8
  %113 = getelementptr inbounds i8*, i8** %112, i64 16
  store i8* %111, i8** %113, align 8
  %114 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acadoVariables, i32 0, i32 1), align 8
  %115 = getelementptr inbounds i8*, i8** %114, i64 41
  %116 = load i8*, i8** %115, align 8
  %117 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @acadoWorkspace, i32 0, i32 0), align 8
  %118 = getelementptr inbounds i8*, i8** %117, i64 17
  store i8* %116, i8** %118, align 8
  %119 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @acadoWorkspace, i32 0, i32 0), align 8
  %120 = call i32 @acado_integrate(i8** %119, i32 1, i32 19)
  %121 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @acadoWorkspace, i32 0, i32 0), align 8
  %122 = getelementptr inbounds i8*, i8** %121, i64 0
  %123 = load i8*, i8** %122, align 8
  %124 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acadoVariables, i32 0, i32 0), align 8
  %125 = getelementptr inbounds i8*, i8** %124, i64 60
  store i8* %123, i8** %125, align 8
  %126 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @acadoWorkspace, i32 0, i32 0), align 8
  %127 = getelementptr inbounds i8*, i8** %126, i64 1
  %128 = load i8*, i8** %127, align 8
  %129 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acadoVariables, i32 0, i32 0), align 8
  %130 = getelementptr inbounds i8*, i8** %129, i64 61
  store i8* %128, i8** %130, align 8
  %131 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @acadoWorkspace, i32 0, i32 0), align 8
  %132 = getelementptr inbounds i8*, i8** %131, i64 2
  %133 = load i8*, i8** %132, align 8
  %134 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acadoVariables, i32 0, i32 0), align 8
  %135 = getelementptr inbounds i8*, i8** %134, i64 62
  store i8* %133, i8** %135, align 8
  br label %136

136:                                              ; preds = %108, %75
  br label %137

137:                                              ; preds = %136, %59
  ret void
}

declare dso_local i32 @acado_integrate(i8**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
