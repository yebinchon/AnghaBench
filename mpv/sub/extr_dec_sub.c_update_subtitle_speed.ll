; ModuleID = '/home/carl/AnghaBench/mpv/sub/extr_dec_sub.c_update_subtitle_speed.c'
source_filename = "/home/carl/AnghaBench/mpv/sub/extr_dec_sub.c_update_subtitle_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dec_sub = type { double, i32, %struct.TYPE_2__*, %struct.mp_subtitle_opts* }
%struct.TYPE_2__ = type { i32 }
%struct.mp_subtitle_opts = type { i32, i32 }

@.str = private unnamed_addr constant [50 x i8] c"Frame based format, dummy FPS: %f, video FPS: %f\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dec_sub*)* @update_subtitle_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_subtitle_speed(%struct.dec_sub* %0) #0 {
  %2 = alloca %struct.dec_sub*, align 8
  %3 = alloca %struct.mp_subtitle_opts*, align 8
  store %struct.dec_sub* %0, %struct.dec_sub** %2, align 8
  %4 = load %struct.dec_sub*, %struct.dec_sub** %2, align 8
  %5 = getelementptr inbounds %struct.dec_sub, %struct.dec_sub* %4, i32 0, i32 3
  %6 = load %struct.mp_subtitle_opts*, %struct.mp_subtitle_opts** %5, align 8
  store %struct.mp_subtitle_opts* %6, %struct.mp_subtitle_opts** %3, align 8
  %7 = load %struct.dec_sub*, %struct.dec_sub** %2, align 8
  %8 = getelementptr inbounds %struct.dec_sub, %struct.dec_sub* %7, i32 0, i32 0
  store double 1.000000e+00, double* %8, align 8
  %9 = load %struct.dec_sub*, %struct.dec_sub** %2, align 8
  %10 = getelementptr inbounds %struct.dec_sub, %struct.dec_sub* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %45

13:                                               ; preds = %1
  %14 = load %struct.dec_sub*, %struct.dec_sub** %2, align 8
  %15 = getelementptr inbounds %struct.dec_sub, %struct.dec_sub* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %45

20:                                               ; preds = %13
  %21 = load %struct.dec_sub*, %struct.dec_sub** %2, align 8
  %22 = load %struct.dec_sub*, %struct.dec_sub** %2, align 8
  %23 = getelementptr inbounds %struct.dec_sub, %struct.dec_sub* %22, i32 0, i32 2
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.dec_sub*, %struct.dec_sub** %2, align 8
  %28 = getelementptr inbounds %struct.dec_sub, %struct.dec_sub* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @MP_VERBOSE(%struct.dec_sub* %21, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %29)
  %31 = load %struct.dec_sub*, %struct.dec_sub** %2, align 8
  %32 = getelementptr inbounds %struct.dec_sub, %struct.dec_sub* %31, i32 0, i32 2
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.dec_sub*, %struct.dec_sub** %2, align 8
  %37 = getelementptr inbounds %struct.dec_sub, %struct.dec_sub* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = sdiv i32 %35, %38
  %40 = sitofp i32 %39 to double
  %41 = load %struct.dec_sub*, %struct.dec_sub** %2, align 8
  %42 = getelementptr inbounds %struct.dec_sub, %struct.dec_sub* %41, i32 0, i32 0
  %43 = load double, double* %42, align 8
  %44 = fmul double %43, %40
  store double %44, double* %42, align 8
  br label %45

45:                                               ; preds = %20, %13, %1
  %46 = load %struct.mp_subtitle_opts*, %struct.mp_subtitle_opts** %3, align 8
  %47 = getelementptr inbounds %struct.mp_subtitle_opts, %struct.mp_subtitle_opts* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %68

50:                                               ; preds = %45
  %51 = load %struct.dec_sub*, %struct.dec_sub** %2, align 8
  %52 = getelementptr inbounds %struct.dec_sub, %struct.dec_sub* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %68

55:                                               ; preds = %50
  %56 = load %struct.mp_subtitle_opts*, %struct.mp_subtitle_opts** %3, align 8
  %57 = getelementptr inbounds %struct.mp_subtitle_opts, %struct.mp_subtitle_opts* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.dec_sub*, %struct.dec_sub** %2, align 8
  %60 = getelementptr inbounds %struct.dec_sub, %struct.dec_sub* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = sdiv i32 %58, %61
  %63 = sitofp i32 %62 to double
  %64 = load %struct.dec_sub*, %struct.dec_sub** %2, align 8
  %65 = getelementptr inbounds %struct.dec_sub, %struct.dec_sub* %64, i32 0, i32 0
  %66 = load double, double* %65, align 8
  %67 = fmul double %66, %63
  store double %67, double* %65, align 8
  br label %68

68:                                               ; preds = %55, %50, %45
  %69 = load %struct.mp_subtitle_opts*, %struct.mp_subtitle_opts** %3, align 8
  %70 = getelementptr inbounds %struct.mp_subtitle_opts, %struct.mp_subtitle_opts* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = sitofp i32 %71 to double
  %73 = load %struct.dec_sub*, %struct.dec_sub** %2, align 8
  %74 = getelementptr inbounds %struct.dec_sub, %struct.dec_sub* %73, i32 0, i32 0
  %75 = load double, double* %74, align 8
  %76 = fmul double %75, %72
  store double %76, double* %74, align 8
  ret void
}

declare dso_local i32 @MP_VERBOSE(%struct.dec_sub*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
