; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_video.c_add_new_frame.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_video.c_add_new_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { i64, %struct.mp_image** }
%struct.mp_image = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.MPContext*, %struct.mp_image*)* @add_new_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_new_frame(%struct.MPContext* %0, %struct.mp_image* %1) #0 {
  %3 = alloca %struct.MPContext*, align 8
  %4 = alloca %struct.mp_image*, align 8
  store %struct.MPContext* %0, %struct.MPContext** %3, align 8
  store %struct.mp_image* %1, %struct.mp_image** %4, align 8
  %5 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %6 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %9 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %8, i32 0, i32 1
  %10 = load %struct.mp_image**, %struct.mp_image*** %9, align 8
  %11 = call i64 @MP_ARRAY_SIZE(%struct.mp_image** %10)
  %12 = icmp slt i64 %7, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  %16 = ptrtoint %struct.mp_image* %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  %19 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %20 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %19, i32 0, i32 1
  %21 = load %struct.mp_image**, %struct.mp_image*** %20, align 8
  %22 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %23 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, 1
  store i64 %25, i64* %23, align 8
  %26 = getelementptr inbounds %struct.mp_image*, %struct.mp_image** %21, i64 %24
  store %struct.mp_image* %18, %struct.mp_image** %26, align 8
  %27 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %28 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, 1
  br i1 %30, label %31, label %34

31:                                               ; preds = %2
  %32 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %33 = call i32 @handle_new_frame(%struct.MPContext* %32)
  br label %34

34:                                               ; preds = %31, %2
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @MP_ARRAY_SIZE(%struct.mp_image**) #1

declare dso_local i32 @handle_new_frame(%struct.MPContext*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
