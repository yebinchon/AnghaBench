; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_effect.c_d3dx9_base_effect_get_pass.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_effect.c_d3dx9_base_effect_get_pass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3dx9_base_effect = type { i32 }
%struct.d3dx_technique = type { i64, i32* }

@.str = private unnamed_addr constant [19 x i8] c"Returning pass %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Pass not found.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.d3dx9_base_effect*, i32*, i64)* @d3dx9_base_effect_get_pass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @d3dx9_base_effect_get_pass(%struct.d3dx9_base_effect* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.d3dx9_base_effect*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.d3dx_technique*, align 8
  store %struct.d3dx9_base_effect* %0, %struct.d3dx9_base_effect** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %5, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = call %struct.d3dx_technique* @get_valid_technique(%struct.d3dx9_base_effect* %9, i32* %10)
  store %struct.d3dx_technique* %11, %struct.d3dx_technique** %8, align 8
  %12 = load %struct.d3dx_technique*, %struct.d3dx_technique** %8, align 8
  %13 = icmp ne %struct.d3dx_technique* %12, null
  br i1 %13, label %14, label %33

14:                                               ; preds = %3
  %15 = load i64, i64* %7, align 8
  %16 = load %struct.d3dx_technique*, %struct.d3dx_technique** %8, align 8
  %17 = getelementptr inbounds %struct.d3dx_technique, %struct.d3dx_technique* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ult i64 %15, %18
  br i1 %19, label %20, label %33

20:                                               ; preds = %14
  %21 = load %struct.d3dx_technique*, %struct.d3dx_technique** %8, align 8
  %22 = getelementptr inbounds %struct.d3dx_technique, %struct.d3dx_technique* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = load i64, i64* %7, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = call i32 @TRACE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32* %25)
  %27 = load %struct.d3dx_technique*, %struct.d3dx_technique** %8, align 8
  %28 = getelementptr inbounds %struct.d3dx_technique, %struct.d3dx_technique* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* %7, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = call i32* @get_pass_handle(i32* %31)
  store i32* %32, i32** %4, align 8
  br label %35

33:                                               ; preds = %14, %3
  %34 = call i32 @WARN(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store i32* null, i32** %4, align 8
  br label %35

35:                                               ; preds = %33, %20
  %36 = load i32*, i32** %4, align 8
  ret i32* %36
}

declare dso_local %struct.d3dx_technique* @get_valid_technique(%struct.d3dx9_base_effect*, i32*) #1

declare dso_local i32 @TRACE(i8*, i32*) #1

declare dso_local i32* @get_pass_handle(i32*) #1

declare dso_local i32 @WARN(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
