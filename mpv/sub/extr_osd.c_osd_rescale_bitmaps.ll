; ModuleID = '/home/carl/AnghaBench/mpv/sub/extr_osd.c_osd_rescale_bitmaps.c'
source_filename = "/home/carl/AnghaBench/mpv/sub/extr_osd.c_osd_rescale_bitmaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sub_bitmaps = type { i32, %struct.sub_bitmap* }
%struct.sub_bitmap = type { i32, i32, i32, double, i32, double }
%struct.mp_osd_res = type { i32, i32, i32, i32, i32, i32, double }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @osd_rescale_bitmaps(%struct.sub_bitmaps* %0, i32 %1, i32 %2, %struct.mp_osd_res* byval(%struct.mp_osd_res) align 8 %3, double %4) #0 {
  %6 = alloca %struct.sub_bitmaps*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.sub_bitmap*, align 8
  store %struct.sub_bitmaps* %0, %struct.sub_bitmaps** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store double %4, double* %9, align 8
  %18 = getelementptr inbounds %struct.mp_osd_res, %struct.mp_osd_res* %3, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = getelementptr inbounds %struct.mp_osd_res, %struct.mp_osd_res* %3, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = sub nsw i32 %19, %21
  %23 = getelementptr inbounds %struct.mp_osd_res, %struct.mp_osd_res* %3, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = sub nsw i32 %22, %24
  store i32 %25, i32* %10, align 4
  %26 = getelementptr inbounds %struct.mp_osd_res, %struct.mp_osd_res* %3, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.mp_osd_res, %struct.mp_osd_res* %3, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = sub nsw i32 %27, %29
  %31 = getelementptr inbounds %struct.mp_osd_res, %struct.mp_osd_res* %3, i32 0, i32 5
  %32 = load i32, i32* %31, align 4
  %33 = sub nsw i32 %30, %32
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %10, align 4
  %35 = sitofp i32 %34 to double
  %36 = load i32, i32* %7, align 4
  %37 = sitofp i32 %36 to double
  %38 = fdiv double %35, %37
  store double %38, double* %12, align 8
  %39 = load i32, i32* %11, align 4
  %40 = sitofp i32 %39 to double
  %41 = load i32, i32* %8, align 4
  %42 = sitofp i32 %41 to double
  %43 = fdiv double %40, %42
  store double %43, double* %13, align 8
  %44 = load double, double* %9, align 8
  %45 = fcmp olt double %44, 0.000000e+00
  br i1 %45, label %46, label %53

46:                                               ; preds = %5
  %47 = load double, double* %12, align 8
  %48 = load double, double* %13, align 8
  %49 = fdiv double %47, %48
  %50 = getelementptr inbounds %struct.mp_osd_res, %struct.mp_osd_res* %3, i32 0, i32 6
  %51 = load double, double* %50, align 8
  %52 = fdiv double %49, %51
  store double %52, double* %9, align 8
  br label %53

53:                                               ; preds = %46, %5
  %54 = load double, double* %9, align 8
  %55 = fcmp ogt double %54, 0.000000e+00
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load double, double* %9, align 8
  %58 = load double, double* %12, align 8
  %59 = fdiv double %58, %57
  store double %59, double* %12, align 8
  br label %60

60:                                               ; preds = %56, %53
  %61 = load i32, i32* %10, align 4
  %62 = sdiv i32 %61, 2
  %63 = load i32, i32* %7, align 4
  %64 = sitofp i32 %63 to double
  %65 = load double, double* %12, align 8
  %66 = fmul double %64, %65
  %67 = fptosi double %66 to i32
  %68 = sdiv i32 %67, 2
  %69 = sub nsw i32 %62, %68
  store i32 %69, i32* %14, align 4
  %70 = load i32, i32* %11, align 4
  %71 = sdiv i32 %70, 2
  %72 = load i32, i32* %8, align 4
  %73 = sitofp i32 %72 to double
  %74 = load double, double* %13, align 8
  %75 = fmul double %73, %74
  %76 = fptosi double %75 to i32
  %77 = sdiv i32 %76, 2
  %78 = sub nsw i32 %71, %77
  store i32 %78, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %79

79:                                               ; preds = %138, %60
  %80 = load i32, i32* %16, align 4
  %81 = load %struct.sub_bitmaps*, %struct.sub_bitmaps** %6, align 8
  %82 = getelementptr inbounds %struct.sub_bitmaps, %struct.sub_bitmaps* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp slt i32 %80, %83
  br i1 %84, label %85, label %141

85:                                               ; preds = %79
  %86 = load %struct.sub_bitmaps*, %struct.sub_bitmaps** %6, align 8
  %87 = getelementptr inbounds %struct.sub_bitmaps, %struct.sub_bitmaps* %86, i32 0, i32 1
  %88 = load %struct.sub_bitmap*, %struct.sub_bitmap** %87, align 8
  %89 = load i32, i32* %16, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.sub_bitmap, %struct.sub_bitmap* %88, i64 %90
  store %struct.sub_bitmap* %91, %struct.sub_bitmap** %17, align 8
  %92 = load %struct.sub_bitmap*, %struct.sub_bitmap** %17, align 8
  %93 = getelementptr inbounds %struct.sub_bitmap, %struct.sub_bitmap* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = sitofp i32 %94 to double
  %96 = load double, double* %12, align 8
  %97 = fmul double %95, %96
  %98 = fptosi double %97 to i32
  %99 = load i32, i32* %14, align 4
  %100 = add nsw i32 %98, %99
  %101 = getelementptr inbounds %struct.mp_osd_res, %struct.mp_osd_res* %3, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %100, %102
  %104 = load %struct.sub_bitmap*, %struct.sub_bitmap** %17, align 8
  %105 = getelementptr inbounds %struct.sub_bitmap, %struct.sub_bitmap* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 8
  %106 = load %struct.sub_bitmap*, %struct.sub_bitmap** %17, align 8
  %107 = getelementptr inbounds %struct.sub_bitmap, %struct.sub_bitmap* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = sitofp i32 %108 to double
  %110 = load double, double* %13, align 8
  %111 = fmul double %109, %110
  %112 = fptosi double %111 to i32
  %113 = load i32, i32* %15, align 4
  %114 = add nsw i32 %112, %113
  %115 = getelementptr inbounds %struct.mp_osd_res, %struct.mp_osd_res* %3, i32 0, i32 4
  %116 = load i32, i32* %115, align 8
  %117 = add nsw i32 %114, %116
  %118 = load %struct.sub_bitmap*, %struct.sub_bitmap** %17, align 8
  %119 = getelementptr inbounds %struct.sub_bitmap, %struct.sub_bitmap* %118, i32 0, i32 1
  store i32 %117, i32* %119, align 4
  %120 = load %struct.sub_bitmap*, %struct.sub_bitmap** %17, align 8
  %121 = getelementptr inbounds %struct.sub_bitmap, %struct.sub_bitmap* %120, i32 0, i32 3
  %122 = load double, double* %121, align 8
  %123 = load double, double* %12, align 8
  %124 = fmul double %122, %123
  %125 = fadd double %124, 5.000000e-01
  %126 = fptosi double %125 to i32
  %127 = load %struct.sub_bitmap*, %struct.sub_bitmap** %17, align 8
  %128 = getelementptr inbounds %struct.sub_bitmap, %struct.sub_bitmap* %127, i32 0, i32 2
  store i32 %126, i32* %128, align 8
  %129 = load %struct.sub_bitmap*, %struct.sub_bitmap** %17, align 8
  %130 = getelementptr inbounds %struct.sub_bitmap, %struct.sub_bitmap* %129, i32 0, i32 5
  %131 = load double, double* %130, align 8
  %132 = load double, double* %13, align 8
  %133 = fmul double %131, %132
  %134 = fadd double %133, 5.000000e-01
  %135 = fptosi double %134 to i32
  %136 = load %struct.sub_bitmap*, %struct.sub_bitmap** %17, align 8
  %137 = getelementptr inbounds %struct.sub_bitmap, %struct.sub_bitmap* %136, i32 0, i32 4
  store i32 %135, i32* %137, align 8
  br label %138

138:                                              ; preds = %85
  %139 = load i32, i32* %16, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %16, align 4
  br label %79

141:                                              ; preds = %79
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
