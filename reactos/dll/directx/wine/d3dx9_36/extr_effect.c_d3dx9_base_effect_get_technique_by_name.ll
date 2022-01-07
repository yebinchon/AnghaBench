; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_effect.c_d3dx9_base_effect_get_technique_by_name.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_effect.c_d3dx9_base_effect_get_technique_by_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3dx9_base_effect = type { i32 }
%struct.d3dx_technique = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"Returning technique %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Technique not found.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.d3dx9_base_effect*, i8*)* @d3dx9_base_effect_get_technique_by_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @d3dx9_base_effect_get_technique_by_name(%struct.d3dx9_base_effect* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.d3dx9_base_effect*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.d3dx_technique*, align 8
  %7 = alloca i32*, align 8
  store %struct.d3dx9_base_effect* %0, %struct.d3dx9_base_effect** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %4, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call %struct.d3dx_technique* @get_technique_by_name(%struct.d3dx9_base_effect* %8, i8* %9)
  store %struct.d3dx_technique* %10, %struct.d3dx_technique** %6, align 8
  %11 = load %struct.d3dx_technique*, %struct.d3dx_technique** %6, align 8
  %12 = icmp ne %struct.d3dx_technique* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load %struct.d3dx_technique*, %struct.d3dx_technique** %6, align 8
  %15 = call i32* @get_technique_handle(%struct.d3dx_technique* %14)
  store i32* %15, i32** %7, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = call i32 @TRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32* %16)
  %18 = load i32*, i32** %7, align 8
  store i32* %18, i32** %3, align 8
  br label %21

19:                                               ; preds = %2
  %20 = call i32 @WARN(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  store i32* null, i32** %3, align 8
  br label %21

21:                                               ; preds = %19, %13
  %22 = load i32*, i32** %3, align 8
  ret i32* %22
}

declare dso_local %struct.d3dx_technique* @get_technique_by_name(%struct.d3dx9_base_effect*, i8*) #1

declare dso_local i32* @get_technique_handle(%struct.d3dx_technique*) #1

declare dso_local i32 @TRACE(i8*, i32*) #1

declare dso_local i32 @WARN(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
