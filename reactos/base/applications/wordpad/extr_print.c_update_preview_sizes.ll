; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/wordpad/extr_print.c_update_preview_sizes.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/wordpad/extr_print.c_update_preview_sizes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, float, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, float }
%struct.TYPE_11__ = type { i32, i32 }

@preview = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@min_spacing = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64)* @update_preview_sizes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_preview_sizes(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_11__, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  store i32 %0, i32* %3, align 4
  store i64 %1, i64* %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @GetClientRect(i32 %9, %struct.TYPE_11__* %5)
  %11 = load i64, i64* %4, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @preview, i32 0, i32 0), align 4
  %15 = icmp ne i32 %14, 1
  br i1 %15, label %16, label %65

16:                                               ; preds = %13, %2
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @preview, i32 0, i32 0), align 4
  %18 = icmp eq i32 %17, 2
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store float 1.000000e+00, float* %6, align 4
  br label %63

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @min_spacing, align 4
  %24 = mul nsw i32 %23, 2
  %25 = sub nsw i32 %22, %24
  %26 = sitofp i32 %25 to float
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @preview, i32 0, i32 5, i32 0), align 4
  %28 = sitofp i32 %27 to float
  %29 = fdiv float %26, %28
  store float %29, float* %7, align 4
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @min_spacing, align 4
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @preview, i32 0, i32 1), align 4
  %34 = add nsw i32 %33, 1
  %35 = mul nsw i32 %32, %34
  %36 = sub nsw i32 %31, %35
  %37 = sitofp i32 %36 to float
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @preview, i32 0, i32 1), align 4
  %39 = sitofp i32 %38 to float
  %40 = load float, float* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @preview, i32 0, i32 5, i32 1), align 4
  %41 = fmul float %39, %40
  %42 = fdiv float %37, %41
  store float %42, float* %8, align 4
  %43 = load float, float* %8, align 4
  %44 = load float, float* %7, align 4
  %45 = fcmp ogt float %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %20
  %47 = load float, float* %7, align 4
  store float %47, float* %6, align 4
  br label %50

48:                                               ; preds = %20
  %49 = load float, float* %8, align 4
  store float %49, float* %6, align 4
  br label %50

50:                                               ; preds = %48, %46
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @preview, i32 0, i32 0), align 4
  %52 = icmp eq i32 %51, 1
  br i1 %52, label %53, label %62

53:                                               ; preds = %50
  %54 = load float, float* %6, align 4
  %55 = fpext float %54 to double
  %56 = fsub double 1.000000e+00, %55
  %57 = fdiv double %56, 2.000000e+00
  %58 = load float, float* %6, align 4
  %59 = fpext float %58 to double
  %60 = fadd double %59, %57
  %61 = fptrunc double %60 to float
  store float %61, float* %6, align 4
  br label %62

62:                                               ; preds = %53, %50
  br label %63

63:                                               ; preds = %62, %19
  %64 = load float, float* %6, align 4
  store float %64, float* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @preview, i32 0, i32 2), align 4
  br label %65

65:                                               ; preds = %63, %13
  %66 = load float, float* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @preview, i32 0, i32 5, i32 1), align 4
  %67 = load float, float* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @preview, i32 0, i32 2), align 4
  %68 = fmul float %66, %67
  %69 = fptosi float %68 to i32
  store i32 %69, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @preview, i32 0, i32 4, i32 0), align 4
  %70 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @preview, i32 0, i32 5, i32 0), align 4
  %71 = sitofp i32 %70 to float
  %72 = load float, float* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @preview, i32 0, i32 2), align 4
  %73 = fmul float %71, %72
  %74 = fptosi float %73 to i32
  store i32 %74, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @preview, i32 0, i32 4, i32 1), align 4
  %75 = load i32, i32* @min_spacing, align 4
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @preview, i32 0, i32 4, i32 1), align 4
  %79 = sub nsw i32 %77, %78
  %80 = sdiv i32 %79, 2
  %81 = call i32 @max(i32 %75, i32 %80)
  store i32 %81, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @preview, i32 0, i32 3, i32 1), align 4
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @preview, i32 0, i32 4, i32 0), align 4
  %85 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @preview, i32 0, i32 1), align 4
  %86 = mul nsw i32 %84, %85
  %87 = sub nsw i32 %83, %86
  %88 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @preview, i32 0, i32 1), align 4
  %89 = add nsw i32 %88, 1
  %90 = sdiv i32 %87, %89
  store i32 %90, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @preview, i32 0, i32 3, i32 0), align 4
  %91 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @preview, i32 0, i32 3, i32 0), align 4
  %92 = load i32, i32* @min_spacing, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %65
  %95 = load i32, i32* @min_spacing, align 4
  store i32 %95, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @preview, i32 0, i32 3, i32 0), align 4
  br label %96

96:                                               ; preds = %94, %65
  %97 = load i32, i32* %3, align 4
  %98 = call i32 @update_preview_scrollbars(i32 %97, %struct.TYPE_11__* %5)
  ret void
}

declare dso_local i32 @GetClientRect(i32, %struct.TYPE_11__*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @update_preview_scrollbars(i32, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
