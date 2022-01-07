; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_command.c_mp_property_vsync_jitter.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_command.c_mp_property_vsync_jitter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m_property = type { i32 }
%struct.TYPE_2__ = type { %struct.vo* }
%struct.vo = type { i32 }

@M_PROPERTY_UNAVAILABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.m_property*, i32, i8*)* @mp_property_vsync_jitter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mp_property_vsync_jitter(i8* %0, %struct.m_property* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.m_property*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_2__*, align 8
  %11 = alloca %struct.vo*, align 8
  %12 = alloca double, align 8
  store i8* %0, i8** %6, align 8
  store %struct.m_property* %1, %struct.m_property** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %14, %struct.TYPE_2__** %10, align 8
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.vo*, %struct.vo** %16, align 8
  store %struct.vo* %17, %struct.vo** %11, align 8
  %18 = load %struct.vo*, %struct.vo** %11, align 8
  %19 = icmp ne %struct.vo* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* @M_PROPERTY_UNAVAILABLE, align 4
  store i32 %21, i32* %5, align 4
  br label %34

22:                                               ; preds = %4
  %23 = load %struct.vo*, %struct.vo** %11, align 8
  %24 = call double @vo_get_estimated_vsync_jitter(%struct.vo* %23)
  store double %24, double* %12, align 8
  %25 = load double, double* %12, align 8
  %26 = fcmp olt double %25, 0.000000e+00
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* @M_PROPERTY_UNAVAILABLE, align 4
  store i32 %28, i32* %5, align 4
  br label %34

29:                                               ; preds = %22
  %30 = load i32, i32* %8, align 4
  %31 = load i8*, i8** %9, align 8
  %32 = load double, double* %12, align 8
  %33 = call i32 @m_property_double_ro(i32 %30, i8* %31, double %32)
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %29, %27, %20
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

declare dso_local double @vo_get_estimated_vsync_jitter(%struct.vo*) #1

declare dso_local i32 @m_property_double_ro(i32, i8*, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
