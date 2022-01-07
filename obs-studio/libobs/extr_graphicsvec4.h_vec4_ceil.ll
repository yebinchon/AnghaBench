; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_graphicsvec4.h_vec4_ceil.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_graphicsvec4.h_vec4_ceil.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vec4 = type { i8*, i8*, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vec4*, %struct.vec4*)* @vec4_ceil to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vec4_ceil(%struct.vec4* %0, %struct.vec4* %1) #0 {
  %3 = alloca %struct.vec4*, align 8
  %4 = alloca %struct.vec4*, align 8
  store %struct.vec4* %0, %struct.vec4** %3, align 8
  store %struct.vec4* %1, %struct.vec4** %4, align 8
  %5 = load %struct.vec4*, %struct.vec4** %4, align 8
  %6 = getelementptr inbounds %struct.vec4, %struct.vec4* %5, i32 0, i32 3
  %7 = load i8*, i8** %6, align 8
  %8 = call i8* @ceilf(i8* %7)
  %9 = load %struct.vec4*, %struct.vec4** %3, align 8
  %10 = getelementptr inbounds %struct.vec4, %struct.vec4* %9, i32 0, i32 3
  store i8* %8, i8** %10, align 8
  %11 = load %struct.vec4*, %struct.vec4** %4, align 8
  %12 = getelementptr inbounds %struct.vec4, %struct.vec4* %11, i32 0, i32 2
  %13 = load i8*, i8** %12, align 8
  %14 = call i8* @ceilf(i8* %13)
  %15 = load %struct.vec4*, %struct.vec4** %3, align 8
  %16 = getelementptr inbounds %struct.vec4, %struct.vec4* %15, i32 0, i32 2
  store i8* %14, i8** %16, align 8
  %17 = load %struct.vec4*, %struct.vec4** %4, align 8
  %18 = getelementptr inbounds %struct.vec4, %struct.vec4* %17, i32 0, i32 1
  %19 = load i8*, i8** %18, align 8
  %20 = call i8* @ceilf(i8* %19)
  %21 = load %struct.vec4*, %struct.vec4** %3, align 8
  %22 = getelementptr inbounds %struct.vec4, %struct.vec4* %21, i32 0, i32 1
  store i8* %20, i8** %22, align 8
  %23 = load %struct.vec4*, %struct.vec4** %4, align 8
  %24 = getelementptr inbounds %struct.vec4, %struct.vec4* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = call i8* @ceilf(i8* %25)
  %27 = load %struct.vec4*, %struct.vec4** %3, align 8
  %28 = getelementptr inbounds %struct.vec4, %struct.vec4* %27, i32 0, i32 0
  store i8* %26, i8** %28, align 8
  ret void
}

declare dso_local i8* @ceilf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
