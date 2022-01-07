; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_osd.c_set_osd_msg_va.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_osd.c_set_osd_msg_va.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.MPContext*, i32, i32, i8*, i32)* @set_osd_msg_va to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_osd_msg_va(%struct.MPContext* %0, i32 %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.MPContext*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.MPContext* %0, %struct.MPContext** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %12 = load i32, i32* %8, align 4
  %13 = load %struct.MPContext*, %struct.MPContext** %7, align 8
  %14 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %13, i32 0, i32 5
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp sgt i32 %12, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %52

20:                                               ; preds = %5
  %21 = load %struct.MPContext*, %struct.MPContext** %7, align 8
  %22 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @talloc_free(i32 %23)
  %25 = load %struct.MPContext*, %struct.MPContext** %7, align 8
  %26 = load i8*, i8** %10, align 8
  %27 = load i32, i32* %11, align 4
  %28 = call i32 @talloc_vasprintf(%struct.MPContext* %25, i8* %26, i32 %27)
  %29 = load %struct.MPContext*, %struct.MPContext** %7, align 8
  %30 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %29, i32 0, i32 4
  store i32 %28, i32* %30, align 8
  %31 = load %struct.MPContext*, %struct.MPContext** %7, align 8
  %32 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %31, i32 0, i32 0
  store i32 0, i32* %32, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sitofp i32 %33 to double
  %35 = fdiv double %34, 1.000000e+03
  %36 = fptosi double %35 to i32
  %37 = load %struct.MPContext*, %struct.MPContext** %7, align 8
  %38 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.MPContext*, %struct.MPContext** %7, align 8
  %40 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %39, i32 0, i32 2
  store i32 1, i32* %40, align 8
  %41 = load %struct.MPContext*, %struct.MPContext** %7, align 8
  %42 = call i32 @mp_wakeup_core(%struct.MPContext* %41)
  %43 = load %struct.MPContext*, %struct.MPContext** %7, align 8
  %44 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp sle i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %20
  %48 = call i32 (...) @mp_time_sec()
  %49 = load %struct.MPContext*, %struct.MPContext** %7, align 8
  %50 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 4
  br label %51

51:                                               ; preds = %47, %20
  store i32 1, i32* %6, align 4
  br label %52

52:                                               ; preds = %51, %19
  %53 = load i32, i32* %6, align 4
  ret i32 %53
}

declare dso_local i32 @talloc_free(i32) #1

declare dso_local i32 @talloc_vasprintf(%struct.MPContext*, i8*, i32) #1

declare dso_local i32 @mp_wakeup_core(%struct.MPContext*) #1

declare dso_local i32 @mp_time_sec(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
