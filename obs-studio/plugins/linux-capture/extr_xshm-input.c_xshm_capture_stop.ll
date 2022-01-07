; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/linux-capture/extr_xshm-input.c_xshm_capture_stop.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/linux-capture/extr_xshm-input.c_xshm_capture_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xshm_data = type { i32*, i32*, i32*, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xshm_data*)* @xshm_capture_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xshm_capture_stop(%struct.xshm_data* %0) #0 {
  %2 = alloca %struct.xshm_data*, align 8
  store %struct.xshm_data* %0, %struct.xshm_data** %2, align 8
  %3 = call i32 (...) @obs_enter_graphics()
  %4 = load %struct.xshm_data*, %struct.xshm_data** %2, align 8
  %5 = getelementptr inbounds %struct.xshm_data, %struct.xshm_data* %4, i32 0, i32 4
  %6 = load i32*, i32** %5, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %15

8:                                                ; preds = %1
  %9 = load %struct.xshm_data*, %struct.xshm_data** %2, align 8
  %10 = getelementptr inbounds %struct.xshm_data, %struct.xshm_data* %9, i32 0, i32 4
  %11 = load i32*, i32** %10, align 8
  %12 = call i32 @gs_texture_destroy(i32* %11)
  %13 = load %struct.xshm_data*, %struct.xshm_data** %2, align 8
  %14 = getelementptr inbounds %struct.xshm_data, %struct.xshm_data* %13, i32 0, i32 4
  store i32* null, i32** %14, align 8
  br label %15

15:                                               ; preds = %8, %1
  %16 = load %struct.xshm_data*, %struct.xshm_data** %2, align 8
  %17 = getelementptr inbounds %struct.xshm_data, %struct.xshm_data* %16, i32 0, i32 3
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %15
  %21 = load %struct.xshm_data*, %struct.xshm_data** %2, align 8
  %22 = getelementptr inbounds %struct.xshm_data, %struct.xshm_data* %21, i32 0, i32 3
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @xcb_xcursor_destroy(i32* %23)
  %25 = load %struct.xshm_data*, %struct.xshm_data** %2, align 8
  %26 = getelementptr inbounds %struct.xshm_data, %struct.xshm_data* %25, i32 0, i32 3
  store i32* null, i32** %26, align 8
  br label %27

27:                                               ; preds = %20, %15
  %28 = call i32 (...) @obs_leave_graphics()
  %29 = load %struct.xshm_data*, %struct.xshm_data** %2, align 8
  %30 = getelementptr inbounds %struct.xshm_data, %struct.xshm_data* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %40

33:                                               ; preds = %27
  %34 = load %struct.xshm_data*, %struct.xshm_data** %2, align 8
  %35 = getelementptr inbounds %struct.xshm_data, %struct.xshm_data* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @xshm_xcb_detach(i32* %36)
  %38 = load %struct.xshm_data*, %struct.xshm_data** %2, align 8
  %39 = getelementptr inbounds %struct.xshm_data, %struct.xshm_data* %38, i32 0, i32 2
  store i32* null, i32** %39, align 8
  br label %40

40:                                               ; preds = %33, %27
  %41 = load %struct.xshm_data*, %struct.xshm_data** %2, align 8
  %42 = getelementptr inbounds %struct.xshm_data, %struct.xshm_data* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %52

45:                                               ; preds = %40
  %46 = load %struct.xshm_data*, %struct.xshm_data** %2, align 8
  %47 = getelementptr inbounds %struct.xshm_data, %struct.xshm_data* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @xcb_disconnect(i32* %48)
  %50 = load %struct.xshm_data*, %struct.xshm_data** %2, align 8
  %51 = getelementptr inbounds %struct.xshm_data, %struct.xshm_data* %50, i32 0, i32 1
  store i32* null, i32** %51, align 8
  br label %52

52:                                               ; preds = %45, %40
  %53 = load %struct.xshm_data*, %struct.xshm_data** %2, align 8
  %54 = getelementptr inbounds %struct.xshm_data, %struct.xshm_data* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %64

57:                                               ; preds = %52
  %58 = load %struct.xshm_data*, %struct.xshm_data** %2, align 8
  %59 = getelementptr inbounds %struct.xshm_data, %struct.xshm_data* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @bfree(i32* %60)
  %62 = load %struct.xshm_data*, %struct.xshm_data** %2, align 8
  %63 = getelementptr inbounds %struct.xshm_data, %struct.xshm_data* %62, i32 0, i32 0
  store i32* null, i32** %63, align 8
  br label %64

64:                                               ; preds = %57, %52
  ret void
}

declare dso_local i32 @obs_enter_graphics(...) #1

declare dso_local i32 @gs_texture_destroy(i32*) #1

declare dso_local i32 @xcb_xcursor_destroy(i32*) #1

declare dso_local i32 @obs_leave_graphics(...) #1

declare dso_local i32 @xshm_xcb_detach(i32*) #1

declare dso_local i32 @xcb_disconnect(i32*) #1

declare dso_local i32 @bfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
