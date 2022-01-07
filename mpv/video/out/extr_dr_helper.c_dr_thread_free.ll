; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_dr_helper.c_dr_thread_free.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_dr_helper.c_dr_thread_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.free_dr_context = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @dr_thread_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dr_thread_free(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.free_dr_context*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.free_dr_context*
  store %struct.free_dr_context* %6, %struct.free_dr_context** %3, align 8
  %7 = load %struct.free_dr_context*, %struct.free_dr_context** %3, align 8
  %8 = getelementptr inbounds %struct.free_dr_context, %struct.free_dr_context* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = call i64 @atomic_fetch_add(i32* %10, i32 -1)
  store i64 %11, i64* %4, align 8
  %12 = load i64, i64* %4, align 8
  %13 = call i32 @assert(i64 %12)
  %14 = load %struct.free_dr_context*, %struct.free_dr_context** %3, align 8
  %15 = getelementptr inbounds %struct.free_dr_context, %struct.free_dr_context* %14, i32 0, i32 0
  %16 = call i32 @av_buffer_unref(i32* %15)
  %17 = load %struct.free_dr_context*, %struct.free_dr_context** %3, align 8
  %18 = call i32 @talloc_free(%struct.free_dr_context* %17)
  ret void
}

declare dso_local i64 @atomic_fetch_add(i32*, i32) #1

declare dso_local i32 @assert(i64) #1

declare dso_local i32 @av_buffer_unref(i32*) #1

declare dso_local i32 @talloc_free(%struct.free_dr_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
