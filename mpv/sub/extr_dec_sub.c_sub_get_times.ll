; ModuleID = '/home/carl/AnghaBench/mpv/sub/extr_dec_sub.c_sub_get_times.c'
source_filename = "/home/carl/AnghaBench/mpv/sub/extr_dec_sub.c_sub_get_times.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dec_sub = type { double, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 (%struct.TYPE_4__*, double)* }
%struct.sd_times = type { i32, i32 }

@MP_NOPTS_VALUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sub_get_times(%struct.dec_sub* %0, double %1) #0 {
  %3 = alloca %struct.sd_times, align 4
  %4 = alloca %struct.dec_sub*, align 8
  %5 = alloca double, align 8
  %6 = alloca %struct.sd_times, align 4
  store %struct.dec_sub* %0, %struct.dec_sub** %4, align 8
  store double %1, double* %5, align 8
  %7 = load %struct.dec_sub*, %struct.dec_sub** %4, align 8
  %8 = getelementptr inbounds %struct.dec_sub, %struct.dec_sub* %7, i32 0, i32 1
  %9 = call i32 @pthread_mutex_lock(i32* %8)
  %10 = getelementptr inbounds %struct.sd_times, %struct.sd_times* %3, i32 0, i32 0
  %11 = load i32, i32* @MP_NOPTS_VALUE, align 4
  store i32 %11, i32* %10, align 4
  %12 = getelementptr inbounds %struct.sd_times, %struct.sd_times* %3, i32 0, i32 1
  %13 = load i32, i32* @MP_NOPTS_VALUE, align 4
  store i32 %13, i32* %12, align 4
  %14 = load %struct.dec_sub*, %struct.dec_sub** %4, align 8
  %15 = load double, double* %5, align 8
  %16 = call double @pts_to_subtitle(%struct.dec_sub* %14, double %15)
  store double %16, double* %5, align 8
  %17 = load double, double* %5, align 8
  %18 = load %struct.dec_sub*, %struct.dec_sub** %4, align 8
  %19 = getelementptr inbounds %struct.dec_sub, %struct.dec_sub* %18, i32 0, i32 0
  store double %17, double* %19, align 8
  %20 = load %struct.dec_sub*, %struct.dec_sub** %4, align 8
  %21 = call i32 @update_segment(%struct.dec_sub* %20)
  %22 = load %struct.dec_sub*, %struct.dec_sub** %4, align 8
  %23 = getelementptr inbounds %struct.dec_sub, %struct.dec_sub* %22, i32 0, i32 2
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i64 (%struct.TYPE_4__*, double)*, i64 (%struct.TYPE_4__*, double)** %27, align 8
  %29 = icmp ne i64 (%struct.TYPE_4__*, double)* %28, null
  br i1 %29, label %30, label %46

30:                                               ; preds = %2
  %31 = load %struct.dec_sub*, %struct.dec_sub** %4, align 8
  %32 = getelementptr inbounds %struct.dec_sub, %struct.dec_sub* %31, i32 0, i32 2
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i64 (%struct.TYPE_4__*, double)*, i64 (%struct.TYPE_4__*, double)** %36, align 8
  %38 = load %struct.dec_sub*, %struct.dec_sub** %4, align 8
  %39 = getelementptr inbounds %struct.dec_sub, %struct.dec_sub* %38, i32 0, i32 2
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = load double, double* %5, align 8
  %42 = call i64 %37(%struct.TYPE_4__* %40, double %41)
  %43 = bitcast %struct.sd_times* %6 to i64*
  store i64 %42, i64* %43, align 4
  %44 = bitcast %struct.sd_times* %3 to i8*
  %45 = bitcast %struct.sd_times* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %44, i8* align 4 %45, i64 8, i1 false)
  br label %46

46:                                               ; preds = %30, %2
  %47 = load %struct.dec_sub*, %struct.dec_sub** %4, align 8
  %48 = getelementptr inbounds %struct.dec_sub, %struct.dec_sub* %47, i32 0, i32 1
  %49 = call i32 @pthread_mutex_unlock(i32* %48)
  %50 = bitcast %struct.sd_times* %3 to i64*
  %51 = load i64, i64* %50, align 4
  ret i64 %51
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local double @pts_to_subtitle(%struct.dec_sub*, double) #1

declare dso_local i32 @update_segment(%struct.dec_sub*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
