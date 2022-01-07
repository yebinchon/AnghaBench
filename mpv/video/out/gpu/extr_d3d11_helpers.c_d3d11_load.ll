; ModuleID = '/home/carl/AnghaBench/mpv/video/out/gpu/extr_d3d11_helpers.c_d3d11_load.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/gpu/extr_d3d11_helpers.c_d3d11_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i32] [i32 100, i32 51, i32 100, i32 49, i32 49, i32 46, i32 100, i32 108, i32 108, i32 0], align 4
@.str.1 = private unnamed_addr constant [9 x i32] [i32 100, i32 120, i32 103, i32 105, i32 46, i32 100, i32 108, i32 108, i32 0], align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"D3D11CreateDevice\00", align 1
@pD3D11CreateDevice = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [19 x i8] c"CreateDXGIFactory1\00", align 1
@pCreateDXGIFactory1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @d3d11_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @d3d11_load() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 @LoadLibraryW(i8* bitcast ([10 x i32]* @.str to i8*))
  store i32 %3, i32* %1, align 4
  %4 = call i32 @LoadLibraryW(i8* bitcast ([9 x i32]* @.str.1 to i8*))
  store i32 %4, i32* %2, align 4
  %5 = load i32, i32* %1, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %0
  %8 = load i32, i32* %2, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %7, %0
  br label %16

11:                                               ; preds = %7
  %12 = load i32, i32* %1, align 4
  %13 = call i64 @GetProcAddress(i32 %12, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  store i64 %13, i64* @pD3D11CreateDevice, align 8
  %14 = load i32, i32* %2, align 4
  %15 = call i64 @GetProcAddress(i32 %14, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  store i64 %15, i64* @pCreateDXGIFactory1, align 8
  br label %16

16:                                               ; preds = %11, %10
  ret void
}

declare dso_local i32 @LoadLibraryW(i8*) #1

declare dso_local i64 @GetProcAddress(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
