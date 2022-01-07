; ModuleID = '/home/carl/AnghaBench/mpv/sub/extr_dec_sub.c_sub_control.c'
source_filename = "/home/carl/AnghaBench/mpv/sub/extr_dec_sub.c_sub_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dec_sub = type { double, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_5__*, i32, double*)* }

@CONTROL_UNKNOWN = common dso_local global i32 0, align 4
@CONTROL_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sub_control(%struct.dec_sub* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.dec_sub*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca double*, align 8
  %9 = alloca [2 x double], align 16
  store %struct.dec_sub* %0, %struct.dec_sub** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %10 = load i32, i32* @CONTROL_UNKNOWN, align 4
  store i32 %10, i32* %7, align 4
  %11 = load %struct.dec_sub*, %struct.dec_sub** %4, align 8
  %12 = getelementptr inbounds %struct.dec_sub, %struct.dec_sub* %11, i32 0, i32 1
  %13 = call i32 @pthread_mutex_lock(i32* %12)
  %14 = load i32, i32* %5, align 4
  switch i32 %14, label %73 [
    i32 129, label %15
    i32 128, label %23
  ]

15:                                               ; preds = %3
  %16 = load i8*, i8** %6, align 8
  %17 = bitcast i8* %16 to double*
  %18 = load double, double* %17, align 8
  %19 = load %struct.dec_sub*, %struct.dec_sub** %4, align 8
  %20 = getelementptr inbounds %struct.dec_sub, %struct.dec_sub* %19, i32 0, i32 0
  store double %18, double* %20, align 8
  %21 = load %struct.dec_sub*, %struct.dec_sub** %4, align 8
  %22 = call i32 @update_subtitle_speed(%struct.dec_sub* %21)
  br label %98

23:                                               ; preds = %3
  %24 = load i8*, i8** %6, align 8
  %25 = bitcast i8* %24 to double*
  store double* %25, double** %8, align 8
  %26 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 0
  %27 = load double*, double** %8, align 8
  %28 = getelementptr inbounds double, double* %27, i64 0
  %29 = load double, double* %28, align 8
  store double %29, double* %26, align 8
  %30 = getelementptr inbounds double, double* %26, i64 1
  %31 = load double*, double** %8, align 8
  %32 = getelementptr inbounds double, double* %31, i64 1
  %33 = load double, double* %32, align 8
  store double %33, double* %30, align 8
  %34 = load %struct.dec_sub*, %struct.dec_sub** %4, align 8
  %35 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 0
  %36 = load double, double* %35, align 16
  %37 = call double @pts_to_subtitle(%struct.dec_sub* %34, double %36)
  %38 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 0
  store double %37, double* %38, align 16
  %39 = load %struct.dec_sub*, %struct.dec_sub** %4, align 8
  %40 = getelementptr inbounds %struct.dec_sub, %struct.dec_sub* %39, i32 0, i32 2
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32 (%struct.TYPE_5__*, i32, double*)*, i32 (%struct.TYPE_5__*, i32, double*)** %44, align 8
  %46 = icmp ne i32 (%struct.TYPE_5__*, i32, double*)* %45, null
  br i1 %46, label %47, label %61

47:                                               ; preds = %23
  %48 = load %struct.dec_sub*, %struct.dec_sub** %4, align 8
  %49 = getelementptr inbounds %struct.dec_sub, %struct.dec_sub* %48, i32 0, i32 2
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32 (%struct.TYPE_5__*, i32, double*)*, i32 (%struct.TYPE_5__*, i32, double*)** %53, align 8
  %55 = load %struct.dec_sub*, %struct.dec_sub** %4, align 8
  %56 = getelementptr inbounds %struct.dec_sub, %struct.dec_sub* %55, i32 0, i32 2
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = load i32, i32* %5, align 4
  %59 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 0
  %60 = call i32 %54(%struct.TYPE_5__* %57, i32 %58, double* %59)
  store i32 %60, i32* %7, align 4
  br label %61

61:                                               ; preds = %47, %23
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @CONTROL_OK, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %61
  %66 = load %struct.dec_sub*, %struct.dec_sub** %4, align 8
  %67 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 0
  %68 = load double, double* %67, align 16
  %69 = call double @pts_from_subtitle(%struct.dec_sub* %66, double %68)
  %70 = load double*, double** %8, align 8
  %71 = getelementptr inbounds double, double* %70, i64 0
  store double %69, double* %71, align 8
  br label %72

72:                                               ; preds = %65, %61
  br label %98

73:                                               ; preds = %3
  %74 = load %struct.dec_sub*, %struct.dec_sub** %4, align 8
  %75 = getelementptr inbounds %struct.dec_sub, %struct.dec_sub* %74, i32 0, i32 2
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32 (%struct.TYPE_5__*, i32, double*)*, i32 (%struct.TYPE_5__*, i32, double*)** %79, align 8
  %81 = icmp ne i32 (%struct.TYPE_5__*, i32, double*)* %80, null
  br i1 %81, label %82, label %97

82:                                               ; preds = %73
  %83 = load %struct.dec_sub*, %struct.dec_sub** %4, align 8
  %84 = getelementptr inbounds %struct.dec_sub, %struct.dec_sub* %83, i32 0, i32 2
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i32 (%struct.TYPE_5__*, i32, double*)*, i32 (%struct.TYPE_5__*, i32, double*)** %88, align 8
  %90 = load %struct.dec_sub*, %struct.dec_sub** %4, align 8
  %91 = getelementptr inbounds %struct.dec_sub, %struct.dec_sub* %90, i32 0, i32 2
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %91, align 8
  %93 = load i32, i32* %5, align 4
  %94 = load i8*, i8** %6, align 8
  %95 = bitcast i8* %94 to double*
  %96 = call i32 %89(%struct.TYPE_5__* %92, i32 %93, double* %95)
  store i32 %96, i32* %7, align 4
  br label %97

97:                                               ; preds = %82, %73
  br label %98

98:                                               ; preds = %97, %72, %15
  %99 = load %struct.dec_sub*, %struct.dec_sub** %4, align 8
  %100 = getelementptr inbounds %struct.dec_sub, %struct.dec_sub* %99, i32 0, i32 1
  %101 = call i32 @pthread_mutex_unlock(i32* %100)
  %102 = load i32, i32* %7, align 4
  ret i32 %102
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @update_subtitle_speed(%struct.dec_sub*) #1

declare dso_local double @pts_to_subtitle(%struct.dec_sub*, double) #1

declare dso_local double @pts_from_subtitle(%struct.dec_sub*, double) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
