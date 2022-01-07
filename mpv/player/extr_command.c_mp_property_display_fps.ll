; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_command.c_mp_property_display_fps.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_command.c_mp_property_display_fps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m_property = type { i32 }
%struct.TYPE_3__ = type { i64 }

@M_PROPERTY_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.m_property*, i32, i8*)* @mp_property_display_fps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mp_property_display_fps(i8* %0, %struct.m_property* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.m_property*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca double, align 8
  store i8* %0, i8** %6, align 8
  store %struct.m_property* %1, %struct.m_property** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %13, %struct.TYPE_3__** %10, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call double @vo_get_display_fps(i64 %21)
  br label %24

23:                                               ; preds = %4
  br label %24

24:                                               ; preds = %23, %18
  %25 = phi double [ %22, %18 ], [ 0.000000e+00, %23 ]
  store double %25, double* %11, align 8
  %26 = load double, double* %11, align 8
  %27 = fcmp ogt double %26, 0.000000e+00
  br i1 %27, label %28, label %37

28:                                               ; preds = %24
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @M_PROPERTY_SET, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = load i32, i32* %8, align 4
  %34 = load i8*, i8** %9, align 8
  %35 = load double, double* %11, align 8
  %36 = call i32 @m_property_double_ro(i32 %33, i8* %34, double %35)
  store i32 %36, i32* %5, align 4
  br label %43

37:                                               ; preds = %28, %24
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %39 = load %struct.m_property*, %struct.m_property** %7, align 8
  %40 = load i32, i32* %8, align 4
  %41 = load i8*, i8** %9, align 8
  %42 = call i32 @mp_property_generic_option(%struct.TYPE_3__* %38, %struct.m_property* %39, i32 %40, i8* %41)
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %37, %32
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local double @vo_get_display_fps(i64) #1

declare dso_local i32 @m_property_double_ro(i32, i8*, double) #1

declare dso_local i32 @mp_property_generic_option(%struct.TYPE_3__*, %struct.m_property*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
