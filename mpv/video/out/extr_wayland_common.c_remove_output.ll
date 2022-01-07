; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_wayland_common.c_remove_output.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_wayland_common.c_remove_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo_wayland_output = type { %struct.vo_wayland_output*, %struct.vo_wayland_output*, i32, i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"Deregistering output %s %s (0x%x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vo_wayland_output*)* @remove_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_output(%struct.vo_wayland_output* %0) #0 {
  %2 = alloca %struct.vo_wayland_output*, align 8
  store %struct.vo_wayland_output* %0, %struct.vo_wayland_output** %2, align 8
  %3 = load %struct.vo_wayland_output*, %struct.vo_wayland_output** %2, align 8
  %4 = icmp ne %struct.vo_wayland_output* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %33

6:                                                ; preds = %1
  %7 = load %struct.vo_wayland_output*, %struct.vo_wayland_output** %2, align 8
  %8 = getelementptr inbounds %struct.vo_wayland_output, %struct.vo_wayland_output* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.vo_wayland_output*, %struct.vo_wayland_output** %2, align 8
  %11 = getelementptr inbounds %struct.vo_wayland_output, %struct.vo_wayland_output* %10, i32 0, i32 1
  %12 = load %struct.vo_wayland_output*, %struct.vo_wayland_output** %11, align 8
  %13 = load %struct.vo_wayland_output*, %struct.vo_wayland_output** %2, align 8
  %14 = getelementptr inbounds %struct.vo_wayland_output, %struct.vo_wayland_output* %13, i32 0, i32 0
  %15 = load %struct.vo_wayland_output*, %struct.vo_wayland_output** %14, align 8
  %16 = load %struct.vo_wayland_output*, %struct.vo_wayland_output** %2, align 8
  %17 = getelementptr inbounds %struct.vo_wayland_output, %struct.vo_wayland_output* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @MP_VERBOSE(i32 %9, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), %struct.vo_wayland_output* %12, %struct.vo_wayland_output* %15, i32 %18)
  %20 = load %struct.vo_wayland_output*, %struct.vo_wayland_output** %2, align 8
  %21 = getelementptr inbounds %struct.vo_wayland_output, %struct.vo_wayland_output* %20, i32 0, i32 2
  %22 = call i32 @wl_list_remove(i32* %21)
  %23 = load %struct.vo_wayland_output*, %struct.vo_wayland_output** %2, align 8
  %24 = getelementptr inbounds %struct.vo_wayland_output, %struct.vo_wayland_output* %23, i32 0, i32 1
  %25 = load %struct.vo_wayland_output*, %struct.vo_wayland_output** %24, align 8
  %26 = call i32 @talloc_free(%struct.vo_wayland_output* %25)
  %27 = load %struct.vo_wayland_output*, %struct.vo_wayland_output** %2, align 8
  %28 = getelementptr inbounds %struct.vo_wayland_output, %struct.vo_wayland_output* %27, i32 0, i32 0
  %29 = load %struct.vo_wayland_output*, %struct.vo_wayland_output** %28, align 8
  %30 = call i32 @talloc_free(%struct.vo_wayland_output* %29)
  %31 = load %struct.vo_wayland_output*, %struct.vo_wayland_output** %2, align 8
  %32 = call i32 @talloc_free(%struct.vo_wayland_output* %31)
  br label %33

33:                                               ; preds = %6, %5
  ret void
}

declare dso_local i32 @MP_VERBOSE(i32, i8*, %struct.vo_wayland_output*, %struct.vo_wayland_output*, i32) #1

declare dso_local i32 @wl_list_remove(i32*) #1

declare dso_local i32 @talloc_free(%struct.vo_wayland_output*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
