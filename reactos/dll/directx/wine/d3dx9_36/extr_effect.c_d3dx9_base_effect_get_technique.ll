; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_effect.c_d3dx9_base_effect_get_technique.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_effect.c_d3dx9_base_effect_get_technique.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3dx9_base_effect = type { i64, i32* }

@.str = private unnamed_addr constant [29 x i8] c"Invalid argument specified.\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Returning technique %p.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.d3dx9_base_effect*, i64)* @d3dx9_base_effect_get_technique to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @d3dx9_base_effect_get_technique(%struct.d3dx9_base_effect* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.d3dx9_base_effect*, align 8
  %5 = alloca i64, align 8
  store %struct.d3dx9_base_effect* %0, %struct.d3dx9_base_effect** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %5, align 8
  %7 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %4, align 8
  %8 = getelementptr inbounds %struct.d3dx9_base_effect, %struct.d3dx9_base_effect* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp uge i64 %6, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = call i32 @WARN(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %3, align 8
  br label %26

13:                                               ; preds = %2
  %14 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %4, align 8
  %15 = getelementptr inbounds %struct.d3dx9_base_effect, %struct.d3dx9_base_effect* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = load i64, i64* %5, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  %19 = call i32 @TRACE(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32* %18)
  %20 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %4, align 8
  %21 = getelementptr inbounds %struct.d3dx9_base_effect, %struct.d3dx9_base_effect* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load i64, i64* %5, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = call i32* @get_technique_handle(i32* %24)
  store i32* %25, i32** %3, align 8
  br label %26

26:                                               ; preds = %13, %11
  %27 = load i32*, i32** %3, align 8
  ret i32* %27
}

declare dso_local i32 @WARN(i8*) #1

declare dso_local i32 @TRACE(i8*, i32*) #1

declare dso_local i32* @get_technique_handle(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
