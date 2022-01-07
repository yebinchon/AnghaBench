; ModuleID = '/home/carl/AnghaBench/mpv/sub/extr_dec_sub.c_sub_get_text.c'
source_filename = "/home/carl/AnghaBench/mpv/sub/extr_dec_sub.c_sub_get_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dec_sub = type { double, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8* (%struct.TYPE_4__*, double)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @sub_get_text(%struct.dec_sub* %0, double %1) #0 {
  %3 = alloca %struct.dec_sub*, align 8
  %4 = alloca double, align 8
  %5 = alloca i8*, align 8
  store %struct.dec_sub* %0, %struct.dec_sub** %3, align 8
  store double %1, double* %4, align 8
  %6 = load %struct.dec_sub*, %struct.dec_sub** %3, align 8
  %7 = getelementptr inbounds %struct.dec_sub, %struct.dec_sub* %6, i32 0, i32 1
  %8 = call i32 @pthread_mutex_lock(i32* %7)
  store i8* null, i8** %5, align 8
  %9 = load %struct.dec_sub*, %struct.dec_sub** %3, align 8
  %10 = load double, double* %4, align 8
  %11 = call double @pts_to_subtitle(%struct.dec_sub* %9, double %10)
  store double %11, double* %4, align 8
  %12 = load double, double* %4, align 8
  %13 = load %struct.dec_sub*, %struct.dec_sub** %3, align 8
  %14 = getelementptr inbounds %struct.dec_sub, %struct.dec_sub* %13, i32 0, i32 0
  store double %12, double* %14, align 8
  %15 = load %struct.dec_sub*, %struct.dec_sub** %3, align 8
  %16 = call i32 @update_segment(%struct.dec_sub* %15)
  %17 = load %struct.dec_sub*, %struct.dec_sub** %3, align 8
  %18 = getelementptr inbounds %struct.dec_sub, %struct.dec_sub* %17, i32 0, i32 2
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i8* (%struct.TYPE_4__*, double)*, i8* (%struct.TYPE_4__*, double)** %22, align 8
  %24 = icmp ne i8* (%struct.TYPE_4__*, double)* %23, null
  br i1 %24, label %25, label %38

25:                                               ; preds = %2
  %26 = load %struct.dec_sub*, %struct.dec_sub** %3, align 8
  %27 = getelementptr inbounds %struct.dec_sub, %struct.dec_sub* %26, i32 0, i32 2
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i8* (%struct.TYPE_4__*, double)*, i8* (%struct.TYPE_4__*, double)** %31, align 8
  %33 = load %struct.dec_sub*, %struct.dec_sub** %3, align 8
  %34 = getelementptr inbounds %struct.dec_sub, %struct.dec_sub* %33, i32 0, i32 2
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = load double, double* %4, align 8
  %37 = call i8* %32(%struct.TYPE_4__* %35, double %36)
  store i8* %37, i8** %5, align 8
  br label %38

38:                                               ; preds = %25, %2
  %39 = load %struct.dec_sub*, %struct.dec_sub** %3, align 8
  %40 = getelementptr inbounds %struct.dec_sub, %struct.dec_sub* %39, i32 0, i32 1
  %41 = call i32 @pthread_mutex_unlock(i32* %40)
  %42 = load i8*, i8** %5, align 8
  ret i8* %42
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local double @pts_to_subtitle(%struct.dec_sub*, double) #1

declare dso_local i32 @update_segment(%struct.dec_sub*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
