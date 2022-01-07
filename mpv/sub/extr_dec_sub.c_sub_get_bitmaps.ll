; ModuleID = '/home/carl/AnghaBench/mpv/sub/extr_dec_sub.c_sub_get_bitmaps.c'
source_filename = "/home/carl/AnghaBench/mpv/sub/extr_dec_sub.c_sub_get_bitmaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dec_sub = type { double, double, %struct.TYPE_4__*, %struct.mp_subtitle_opts* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_4__*, i32, i32, double, %struct.sub_bitmaps*)* }
%struct.mp_subtitle_opts = type { i64 }
%struct.sub_bitmaps = type { i32 }
%struct.mp_osd_res = type { i32 }

@MP_NOPTS_VALUE = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sub_get_bitmaps(%struct.dec_sub* %0, i32 %1, i32 %2, double %3, %struct.sub_bitmaps* %4) #0 {
  %6 = alloca %struct.mp_osd_res, align 4
  %7 = alloca %struct.dec_sub*, align 8
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca %struct.sub_bitmaps*, align 8
  %11 = alloca %struct.mp_subtitle_opts*, align 8
  %12 = getelementptr inbounds %struct.mp_osd_res, %struct.mp_osd_res* %6, i32 0, i32 0
  store i32 %1, i32* %12, align 4
  store %struct.dec_sub* %0, %struct.dec_sub** %7, align 8
  store i32 %2, i32* %8, align 4
  store double %3, double* %9, align 8
  store %struct.sub_bitmaps* %4, %struct.sub_bitmaps** %10, align 8
  %13 = load %struct.dec_sub*, %struct.dec_sub** %7, align 8
  %14 = getelementptr inbounds %struct.dec_sub, %struct.dec_sub* %13, i32 0, i32 3
  %15 = load %struct.mp_subtitle_opts*, %struct.mp_subtitle_opts** %14, align 8
  store %struct.mp_subtitle_opts* %15, %struct.mp_subtitle_opts** %11, align 8
  %16 = load %struct.dec_sub*, %struct.dec_sub** %7, align 8
  %17 = load double, double* %9, align 8
  %18 = call double @pts_to_subtitle(%struct.dec_sub* %16, double %17)
  store double %18, double* %9, align 8
  %19 = load double, double* %9, align 8
  %20 = load %struct.dec_sub*, %struct.dec_sub** %7, align 8
  %21 = getelementptr inbounds %struct.dec_sub, %struct.dec_sub* %20, i32 0, i32 0
  store double %19, double* %21, align 8
  %22 = load %struct.dec_sub*, %struct.dec_sub** %7, align 8
  %23 = call i32 @update_segment(%struct.dec_sub* %22)
  %24 = load %struct.dec_sub*, %struct.dec_sub** %7, align 8
  %25 = getelementptr inbounds %struct.dec_sub, %struct.dec_sub* %24, i32 0, i32 1
  %26 = load double, double* %25, align 8
  %27 = load double, double* @MP_NOPTS_VALUE, align 8
  %28 = fcmp une double %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %5
  %30 = load double, double* %9, align 8
  %31 = load %struct.dec_sub*, %struct.dec_sub** %7, align 8
  %32 = getelementptr inbounds %struct.dec_sub, %struct.dec_sub* %31, i32 0, i32 1
  %33 = load double, double* %32, align 8
  %34 = fcmp oge double %30, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %67

36:                                               ; preds = %29, %5
  %37 = load %struct.mp_subtitle_opts*, %struct.mp_subtitle_opts** %11, align 8
  %38 = getelementptr inbounds %struct.mp_subtitle_opts, %struct.mp_subtitle_opts* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %67

41:                                               ; preds = %36
  %42 = load %struct.dec_sub*, %struct.dec_sub** %7, align 8
  %43 = getelementptr inbounds %struct.dec_sub, %struct.dec_sub* %42, i32 0, i32 2
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32 (%struct.TYPE_4__*, i32, i32, double, %struct.sub_bitmaps*)*, i32 (%struct.TYPE_4__*, i32, i32, double, %struct.sub_bitmaps*)** %47, align 8
  %49 = icmp ne i32 (%struct.TYPE_4__*, i32, i32, double, %struct.sub_bitmaps*)* %48, null
  br i1 %49, label %50, label %67

50:                                               ; preds = %41
  %51 = load %struct.dec_sub*, %struct.dec_sub** %7, align 8
  %52 = getelementptr inbounds %struct.dec_sub, %struct.dec_sub* %51, i32 0, i32 2
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32 (%struct.TYPE_4__*, i32, i32, double, %struct.sub_bitmaps*)*, i32 (%struct.TYPE_4__*, i32, i32, double, %struct.sub_bitmaps*)** %56, align 8
  %58 = load %struct.dec_sub*, %struct.dec_sub** %7, align 8
  %59 = getelementptr inbounds %struct.dec_sub, %struct.dec_sub* %58, i32 0, i32 2
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = load i32, i32* %8, align 4
  %62 = load double, double* %9, align 8
  %63 = load %struct.sub_bitmaps*, %struct.sub_bitmaps** %10, align 8
  %64 = getelementptr inbounds %struct.mp_osd_res, %struct.mp_osd_res* %6, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 %57(%struct.TYPE_4__* %60, i32 %65, i32 %61, double %62, %struct.sub_bitmaps* %63)
  br label %67

67:                                               ; preds = %35, %50, %41, %36
  ret void
}

declare dso_local double @pts_to_subtitle(%struct.dec_sub*, double) #1

declare dso_local i32 @update_segment(%struct.dec_sub*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
