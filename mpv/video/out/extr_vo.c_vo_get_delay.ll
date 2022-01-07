; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo.c_vo_get_delay.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo.c_vo_get_delay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { %struct.vo_internal* }
%struct.vo_internal = type { i32, i32, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @vo_get_delay(%struct.vo* %0) #0 {
  %2 = alloca %struct.vo*, align 8
  %3 = alloca %struct.vo_internal*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.vo* %0, %struct.vo** %2, align 8
  %6 = load %struct.vo*, %struct.vo** %2, align 8
  %7 = getelementptr inbounds %struct.vo, %struct.vo* %6, i32 0, i32 0
  %8 = load %struct.vo_internal*, %struct.vo_internal** %7, align 8
  store %struct.vo_internal* %8, %struct.vo_internal** %3, align 8
  %9 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %10 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %9, i32 0, i32 2
  %11 = call i32 @pthread_mutex_lock(i32* %10)
  %12 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %13 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  store i32 0, i32* %4, align 4
  %19 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %20 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %65

23:                                               ; preds = %1
  %24 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %25 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp sgt i32 %26, 1
  br i1 %27, label %28, label %65

28:                                               ; preds = %23
  %29 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %30 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %29, i32 0, i32 3
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = icmp ne %struct.TYPE_2__* %31, null
  br i1 %32, label %33, label %65

33:                                               ; preds = %28
  %34 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %35 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %4, align 4
  %37 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %38 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %5, align 4
  %44 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %45 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %44, i32 0, i32 3
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %48, %49
  %51 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %52 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = mul nsw i32 %50, %53
  %55 = load i32, i32* %4, align 4
  %56 = add nsw i32 %55, %54
  store i32 %56, i32* %4, align 4
  %57 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %58 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %57, i32 0, i32 3
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %33
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %63, %33
  br label %65

65:                                               ; preds = %64, %28, %23, %1
  %66 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %67 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %66, i32 0, i32 2
  %68 = call i32 @pthread_mutex_unlock(i32* %67)
  %69 = load i32, i32* %4, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %65
  %72 = load i32, i32* %4, align 4
  %73 = call i32 (...) @mp_time_us()
  %74 = sub nsw i32 %72, %73
  %75 = sitofp i32 %74 to double
  %76 = fdiv double %75, 1.000000e+06
  br label %78

77:                                               ; preds = %65
  br label %78

78:                                               ; preds = %77, %71
  %79 = phi double [ %76, %71 ], [ 0.000000e+00, %77 ]
  ret double %79
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @mp_time_us(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
