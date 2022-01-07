; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_preshader.c_get_ctab_constant_desc.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_preshader.c_get_ctab_constant_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctab_constant = type { i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"Could not get constant desc.\0A\00", align 1
@D3DERR_INVALIDCALL = common dso_local global i32 0, align 4
@D3D_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i32*)* @get_ctab_constant_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_ctab_constant_desc(i32* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.ctab_constant*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = call %struct.ctab_constant* @d3dx_shader_get_ctab_constant(i32* %11, i32 %12)
  store %struct.ctab_constant* %13, %struct.ctab_constant** %10, align 8
  %14 = load %struct.ctab_constant*, %struct.ctab_constant** %10, align 8
  %15 = icmp ne %struct.ctab_constant* %14, null
  br i1 %15, label %24, label %16

16:                                               ; preds = %4
  %17 = call i32 @FIXME(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %18 = load i32*, i32** %9, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i32*, i32** %9, align 8
  store i32 0, i32* %21, align 4
  br label %22

22:                                               ; preds = %20, %16
  %23 = load i32, i32* @D3DERR_INVALIDCALL, align 4
  store i32 %23, i32* %5, align 4
  br label %38

24:                                               ; preds = %4
  %25 = load %struct.ctab_constant*, %struct.ctab_constant** %10, align 8
  %26 = getelementptr inbounds %struct.ctab_constant, %struct.ctab_constant* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** %8, align 8
  store i32 %27, i32* %28, align 4
  %29 = load i32*, i32** %9, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %24
  %32 = load %struct.ctab_constant*, %struct.ctab_constant** %10, align 8
  %33 = getelementptr inbounds %struct.ctab_constant, %struct.ctab_constant* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %9, align 8
  store i32 %34, i32* %35, align 4
  br label %36

36:                                               ; preds = %31, %24
  %37 = load i32, i32* @D3D_OK, align 4
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %36, %22
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local %struct.ctab_constant* @d3dx_shader_get_ctab_constant(i32*, i32) #1

declare dso_local i32 @FIXME(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
