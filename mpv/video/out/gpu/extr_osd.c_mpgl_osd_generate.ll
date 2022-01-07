; ModuleID = '/home/carl/AnghaBench/mpv/video/out/gpu/extr_osd.c_mpgl_osd_generate.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/gpu/extr_osd.c_mpgl_osd_generate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpgl_osd = type { i32, i32, %struct.mpgl_osd_part**, i32, i32, i32 }
%struct.mpgl_osd_part = type { i64, i64 }
%struct.mp_osd_res = type { i32 }

@MAX_OSD_PARTS = common dso_local global i32 0, align 4
@gen_osd_cb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mpgl_osd_generate(%struct.mpgl_osd* %0, i32 %1, double %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.mp_osd_res, align 4
  %7 = alloca %struct.mpgl_osd*, align 8
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.mpgl_osd_part*, align 8
  %14 = getelementptr inbounds %struct.mp_osd_res, %struct.mp_osd_res* %6, i32 0, i32 0
  store i32 %1, i32* %14, align 4
  store %struct.mpgl_osd* %0, %struct.mpgl_osd** %7, align 8
  store double %2, double* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %15

15:                                               ; preds = %28, %5
  %16 = load i32, i32* %11, align 4
  %17 = load i32, i32* @MAX_OSD_PARTS, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %31

19:                                               ; preds = %15
  %20 = load %struct.mpgl_osd*, %struct.mpgl_osd** %7, align 8
  %21 = getelementptr inbounds %struct.mpgl_osd, %struct.mpgl_osd* %20, i32 0, i32 2
  %22 = load %struct.mpgl_osd_part**, %struct.mpgl_osd_part*** %21, align 8
  %23 = load i32, i32* %11, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.mpgl_osd_part*, %struct.mpgl_osd_part** %22, i64 %24
  %26 = load %struct.mpgl_osd_part*, %struct.mpgl_osd_part** %25, align 8
  %27 = getelementptr inbounds %struct.mpgl_osd_part, %struct.mpgl_osd_part* %26, i32 0, i32 0
  store i64 0, i64* %27, align 8
  br label %28

28:                                               ; preds = %19
  %29 = load i32, i32* %11, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %11, align 4
  br label %15

31:                                               ; preds = %15
  %32 = load %struct.mpgl_osd*, %struct.mpgl_osd** %7, align 8
  %33 = load i32, i32* %9, align 4
  %34 = getelementptr inbounds %struct.mp_osd_res, %struct.mp_osd_res* %6, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @set_res(%struct.mpgl_osd* %32, i32 %35, i32 %33)
  %37 = load %struct.mpgl_osd*, %struct.mpgl_osd** %7, align 8
  %38 = getelementptr inbounds %struct.mpgl_osd, %struct.mpgl_osd* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.mpgl_osd*, %struct.mpgl_osd** %7, align 8
  %41 = getelementptr inbounds %struct.mpgl_osd, %struct.mpgl_osd* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = load double, double* %8, align 8
  %44 = load i32, i32* %10, align 4
  %45 = load %struct.mpgl_osd*, %struct.mpgl_osd** %7, align 8
  %46 = getelementptr inbounds %struct.mpgl_osd, %struct.mpgl_osd* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @gen_osd_cb, align 4
  %49 = load %struct.mpgl_osd*, %struct.mpgl_osd** %7, align 8
  %50 = call i32 @osd_draw(i32 %39, i32 %42, double %43, i32 %44, i32 %47, i32 %48, %struct.mpgl_osd* %49)
  %51 = load i32, i32* %9, align 4
  %52 = load %struct.mpgl_osd*, %struct.mpgl_osd** %7, align 8
  %53 = getelementptr inbounds %struct.mpgl_osd, %struct.mpgl_osd* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  store i32 0, i32* %12, align 4
  br label %54

54:                                               ; preds = %82, %31
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* @MAX_OSD_PARTS, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %85

58:                                               ; preds = %54
  %59 = load %struct.mpgl_osd*, %struct.mpgl_osd** %7, align 8
  %60 = getelementptr inbounds %struct.mpgl_osd, %struct.mpgl_osd* %59, i32 0, i32 2
  %61 = load %struct.mpgl_osd_part**, %struct.mpgl_osd_part*** %60, align 8
  %62 = load i32, i32* %12, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.mpgl_osd_part*, %struct.mpgl_osd_part** %61, i64 %63
  %65 = load %struct.mpgl_osd_part*, %struct.mpgl_osd_part** %64, align 8
  store %struct.mpgl_osd_part* %65, %struct.mpgl_osd_part** %13, align 8
  %66 = load %struct.mpgl_osd_part*, %struct.mpgl_osd_part** %13, align 8
  %67 = getelementptr inbounds %struct.mpgl_osd_part, %struct.mpgl_osd_part* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.mpgl_osd_part*, %struct.mpgl_osd_part** %13, align 8
  %70 = getelementptr inbounds %struct.mpgl_osd_part, %struct.mpgl_osd_part* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %68, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %58
  %74 = load %struct.mpgl_osd*, %struct.mpgl_osd** %7, align 8
  %75 = getelementptr inbounds %struct.mpgl_osd, %struct.mpgl_osd* %74, i32 0, i32 1
  store i32 1, i32* %75, align 4
  br label %76

76:                                               ; preds = %73, %58
  %77 = load %struct.mpgl_osd_part*, %struct.mpgl_osd_part** %13, align 8
  %78 = getelementptr inbounds %struct.mpgl_osd_part, %struct.mpgl_osd_part* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.mpgl_osd_part*, %struct.mpgl_osd_part** %13, align 8
  %81 = getelementptr inbounds %struct.mpgl_osd_part, %struct.mpgl_osd_part* %80, i32 0, i32 1
  store i64 %79, i64* %81, align 8
  br label %82

82:                                               ; preds = %76
  %83 = load i32, i32* %12, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %12, align 4
  br label %54

85:                                               ; preds = %54
  ret void
}

declare dso_local i32 @set_res(%struct.mpgl_osd*, i32, i32) #1

declare dso_local i32 @osd_draw(i32, i32, double, i32, i32, i32, %struct.mpgl_osd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
