; ModuleID = '/home/carl/AnghaBench/nuklear/demo/x11_rawfb/extr_nuklear_rawfb.h_nk_rawfb_fill_triangle.c'
source_filename = "/home/carl/AnghaBench/nuklear/demo/x11_rawfb/extr_nuklear_rawfb.h_nk_rawfb_fill_triangle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rawfb_context = type { i32 }
%struct.nk_color = type { i32 }
%struct.nk_vec2i = type { i16, i16 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rawfb_context*, i16, i16, i16, i16, i16, i16, i32)* @nk_rawfb_fill_triangle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nk_rawfb_fill_triangle(%struct.rawfb_context* %0, i16 signext %1, i16 signext %2, i16 signext %3, i16 signext %4, i16 signext %5, i16 signext %6, i32 %7) #0 {
  %9 = alloca %struct.nk_color, align 4
  %10 = alloca %struct.rawfb_context*, align 8
  %11 = alloca i16, align 2
  %12 = alloca i16, align 2
  %13 = alloca i16, align 2
  %14 = alloca i16, align 2
  %15 = alloca i16, align 2
  %16 = alloca i16, align 2
  %17 = alloca [3 x %struct.nk_vec2i], align 2
  %18 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %9, i32 0, i32 0
  store i32 %7, i32* %18, align 4
  store %struct.rawfb_context* %0, %struct.rawfb_context** %10, align 8
  store i16 %1, i16* %11, align 2
  store i16 %2, i16* %12, align 2
  store i16 %3, i16* %13, align 2
  store i16 %4, i16* %14, align 2
  store i16 %5, i16* %15, align 2
  store i16 %6, i16* %16, align 2
  %19 = load i16, i16* %11, align 2
  %20 = getelementptr inbounds [3 x %struct.nk_vec2i], [3 x %struct.nk_vec2i]* %17, i64 0, i64 0
  %21 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %20, i32 0, i32 0
  store i16 %19, i16* %21, align 2
  %22 = load i16, i16* %12, align 2
  %23 = getelementptr inbounds [3 x %struct.nk_vec2i], [3 x %struct.nk_vec2i]* %17, i64 0, i64 0
  %24 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %23, i32 0, i32 1
  store i16 %22, i16* %24, align 2
  %25 = load i16, i16* %13, align 2
  %26 = getelementptr inbounds [3 x %struct.nk_vec2i], [3 x %struct.nk_vec2i]* %17, i64 0, i64 1
  %27 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %26, i32 0, i32 0
  store i16 %25, i16* %27, align 2
  %28 = load i16, i16* %14, align 2
  %29 = getelementptr inbounds [3 x %struct.nk_vec2i], [3 x %struct.nk_vec2i]* %17, i64 0, i64 1
  %30 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %29, i32 0, i32 1
  store i16 %28, i16* %30, align 2
  %31 = load i16, i16* %15, align 2
  %32 = getelementptr inbounds [3 x %struct.nk_vec2i], [3 x %struct.nk_vec2i]* %17, i64 0, i64 2
  %33 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %32, i32 0, i32 0
  store i16 %31, i16* %33, align 2
  %34 = load i16, i16* %16, align 2
  %35 = getelementptr inbounds [3 x %struct.nk_vec2i], [3 x %struct.nk_vec2i]* %17, i64 0, i64 2
  %36 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %35, i32 0, i32 1
  store i16 %34, i16* %36, align 2
  %37 = load %struct.rawfb_context*, %struct.rawfb_context** %10, align 8
  %38 = getelementptr inbounds [3 x %struct.nk_vec2i], [3 x %struct.nk_vec2i]* %17, i64 0, i64 0
  %39 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %9, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @nk_rawfb_fill_polygon(%struct.rawfb_context* %37, %struct.nk_vec2i* %38, i32 3, i32 %40)
  ret void
}

declare dso_local i32 @nk_rawfb_fill_polygon(%struct.rawfb_context*, %struct.nk_vec2i*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
