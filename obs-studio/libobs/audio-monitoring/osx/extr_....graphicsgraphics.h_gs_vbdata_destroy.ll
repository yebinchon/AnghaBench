; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/audio-monitoring/osx/extr_....graphicsgraphics.h_gs_vbdata_destroy.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/audio-monitoring/osx/extr_....graphicsgraphics.h_gs_vbdata_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_vb_data = type { i64, %struct.gs_vb_data*, %struct.gs_vb_data*, %struct.gs_vb_data*, %struct.gs_vb_data*, %struct.gs_vb_data*, %struct.gs_vb_data* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gs_vb_data*)* @gs_vbdata_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gs_vbdata_destroy(%struct.gs_vb_data* %0) #0 {
  %2 = alloca %struct.gs_vb_data*, align 8
  %3 = alloca i64, align 8
  store %struct.gs_vb_data* %0, %struct.gs_vb_data** %2, align 8
  %4 = load %struct.gs_vb_data*, %struct.gs_vb_data** %2, align 8
  %5 = icmp ne %struct.gs_vb_data* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %49

7:                                                ; preds = %1
  %8 = load %struct.gs_vb_data*, %struct.gs_vb_data** %2, align 8
  %9 = getelementptr inbounds %struct.gs_vb_data, %struct.gs_vb_data* %8, i32 0, i32 6
  %10 = load %struct.gs_vb_data*, %struct.gs_vb_data** %9, align 8
  %11 = call i32 @bfree(%struct.gs_vb_data* %10)
  %12 = load %struct.gs_vb_data*, %struct.gs_vb_data** %2, align 8
  %13 = getelementptr inbounds %struct.gs_vb_data, %struct.gs_vb_data* %12, i32 0, i32 5
  %14 = load %struct.gs_vb_data*, %struct.gs_vb_data** %13, align 8
  %15 = call i32 @bfree(%struct.gs_vb_data* %14)
  %16 = load %struct.gs_vb_data*, %struct.gs_vb_data** %2, align 8
  %17 = getelementptr inbounds %struct.gs_vb_data, %struct.gs_vb_data* %16, i32 0, i32 4
  %18 = load %struct.gs_vb_data*, %struct.gs_vb_data** %17, align 8
  %19 = call i32 @bfree(%struct.gs_vb_data* %18)
  %20 = load %struct.gs_vb_data*, %struct.gs_vb_data** %2, align 8
  %21 = getelementptr inbounds %struct.gs_vb_data, %struct.gs_vb_data* %20, i32 0, i32 3
  %22 = load %struct.gs_vb_data*, %struct.gs_vb_data** %21, align 8
  %23 = call i32 @bfree(%struct.gs_vb_data* %22)
  store i64 0, i64* %3, align 8
  br label %24

24:                                               ; preds = %39, %7
  %25 = load i64, i64* %3, align 8
  %26 = load %struct.gs_vb_data*, %struct.gs_vb_data** %2, align 8
  %27 = getelementptr inbounds %struct.gs_vb_data, %struct.gs_vb_data* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ult i64 %25, %28
  br i1 %29, label %30, label %42

30:                                               ; preds = %24
  %31 = load %struct.gs_vb_data*, %struct.gs_vb_data** %2, align 8
  %32 = getelementptr inbounds %struct.gs_vb_data, %struct.gs_vb_data* %31, i32 0, i32 1
  %33 = load %struct.gs_vb_data*, %struct.gs_vb_data** %32, align 8
  %34 = load i64, i64* %3, align 8
  %35 = getelementptr inbounds %struct.gs_vb_data, %struct.gs_vb_data* %33, i64 %34
  %36 = getelementptr inbounds %struct.gs_vb_data, %struct.gs_vb_data* %35, i32 0, i32 2
  %37 = load %struct.gs_vb_data*, %struct.gs_vb_data** %36, align 8
  %38 = call i32 @bfree(%struct.gs_vb_data* %37)
  br label %39

39:                                               ; preds = %30
  %40 = load i64, i64* %3, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %3, align 8
  br label %24

42:                                               ; preds = %24
  %43 = load %struct.gs_vb_data*, %struct.gs_vb_data** %2, align 8
  %44 = getelementptr inbounds %struct.gs_vb_data, %struct.gs_vb_data* %43, i32 0, i32 1
  %45 = load %struct.gs_vb_data*, %struct.gs_vb_data** %44, align 8
  %46 = call i32 @bfree(%struct.gs_vb_data* %45)
  %47 = load %struct.gs_vb_data*, %struct.gs_vb_data** %2, align 8
  %48 = call i32 @bfree(%struct.gs_vb_data* %47)
  br label %49

49:                                               ; preds = %42, %6
  ret void
}

declare dso_local i32 @bfree(%struct.gs_vb_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
