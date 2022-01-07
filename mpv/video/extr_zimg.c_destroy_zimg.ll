; ModuleID = '/home/carl/AnghaBench/mpv/video/extr_zimg.c_destroy_zimg.c'
source_filename = "/home/carl/AnghaBench/mpv/video/extr_zimg.c_destroy_zimg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_zimg_context = type { i32, i32, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mp_zimg_context*)* @destroy_zimg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @destroy_zimg(%struct.mp_zimg_context* %0) #0 {
  %2 = alloca %struct.mp_zimg_context*, align 8
  store %struct.mp_zimg_context* %0, %struct.mp_zimg_context** %2, align 8
  %3 = load %struct.mp_zimg_context*, %struct.mp_zimg_context** %2, align 8
  %4 = getelementptr inbounds %struct.mp_zimg_context, %struct.mp_zimg_context* %3, i32 0, i32 3
  %5 = load i32*, i32** %4, align 8
  %6 = call i32 @free(i32* %5)
  %7 = load %struct.mp_zimg_context*, %struct.mp_zimg_context** %2, align 8
  %8 = getelementptr inbounds %struct.mp_zimg_context, %struct.mp_zimg_context* %7, i32 0, i32 3
  store i32* null, i32** %8, align 8
  %9 = load %struct.mp_zimg_context*, %struct.mp_zimg_context** %2, align 8
  %10 = getelementptr inbounds %struct.mp_zimg_context, %struct.mp_zimg_context* %9, i32 0, i32 2
  %11 = load i32*, i32** %10, align 8
  %12 = call i32 @zimg_filter_graph_free(i32* %11)
  %13 = load %struct.mp_zimg_context*, %struct.mp_zimg_context** %2, align 8
  %14 = getelementptr inbounds %struct.mp_zimg_context, %struct.mp_zimg_context* %13, i32 0, i32 2
  store i32* null, i32** %14, align 8
  %15 = load %struct.mp_zimg_context*, %struct.mp_zimg_context** %2, align 8
  %16 = getelementptr inbounds %struct.mp_zimg_context, %struct.mp_zimg_context* %15, i32 0, i32 1
  %17 = call i32 @TA_FREEP(i32* %16)
  %18 = load %struct.mp_zimg_context*, %struct.mp_zimg_context** %2, align 8
  %19 = getelementptr inbounds %struct.mp_zimg_context, %struct.mp_zimg_context* %18, i32 0, i32 0
  %20 = call i32 @TA_FREEP(i32* %19)
  ret void
}

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @zimg_filter_graph_free(i32*) #1

declare dso_local i32 @TA_FREEP(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
