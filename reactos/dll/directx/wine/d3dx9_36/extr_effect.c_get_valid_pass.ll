; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_effect.c_get_valid_pass.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_effect.c_get_valid_pass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3dx_pass = type { i32 }
%struct.d3dx9_base_effect = type { i32, %struct.d3dx_technique* }
%struct.d3dx_technique = type { i32, %struct.d3dx_pass* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.d3dx_pass* (%struct.d3dx9_base_effect*, i64)* @get_valid_pass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.d3dx_pass* @get_valid_pass(%struct.d3dx9_base_effect* %0, i64 %1) #0 {
  %3 = alloca %struct.d3dx_pass*, align 8
  %4 = alloca %struct.d3dx9_base_effect*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.d3dx_technique*, align 8
  store %struct.d3dx9_base_effect* %0, %struct.d3dx9_base_effect** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %50, %2
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %4, align 8
  %12 = getelementptr inbounds %struct.d3dx9_base_effect, %struct.d3dx9_base_effect* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ult i32 %10, %13
  br i1 %14, label %15, label %53

15:                                               ; preds = %9
  %16 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %4, align 8
  %17 = getelementptr inbounds %struct.d3dx9_base_effect, %struct.d3dx9_base_effect* %16, i32 0, i32 1
  %18 = load %struct.d3dx_technique*, %struct.d3dx_technique** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.d3dx_technique, %struct.d3dx_technique* %18, i64 %20
  store %struct.d3dx_technique* %21, %struct.d3dx_technique** %8, align 8
  store i32 0, i32* %7, align 4
  br label %22

22:                                               ; preds = %46, %15
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.d3dx_technique*, %struct.d3dx_technique** %8, align 8
  %25 = getelementptr inbounds %struct.d3dx_technique, %struct.d3dx_technique* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ult i32 %23, %26
  br i1 %27, label %28, label %49

28:                                               ; preds = %22
  %29 = load %struct.d3dx_technique*, %struct.d3dx_technique** %8, align 8
  %30 = getelementptr inbounds %struct.d3dx_technique, %struct.d3dx_technique* %29, i32 0, i32 1
  %31 = load %struct.d3dx_pass*, %struct.d3dx_pass** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.d3dx_pass, %struct.d3dx_pass* %31, i64 %33
  %35 = call i64 @get_pass_handle(%struct.d3dx_pass* %34)
  %36 = load i64, i64* %5, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %28
  %39 = load %struct.d3dx_technique*, %struct.d3dx_technique** %8, align 8
  %40 = getelementptr inbounds %struct.d3dx_technique, %struct.d3dx_technique* %39, i32 0, i32 1
  %41 = load %struct.d3dx_pass*, %struct.d3dx_pass** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.d3dx_pass, %struct.d3dx_pass* %41, i64 %43
  store %struct.d3dx_pass* %44, %struct.d3dx_pass** %3, align 8
  br label %54

45:                                               ; preds = %28
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %7, align 4
  %48 = add i32 %47, 1
  store i32 %48, i32* %7, align 4
  br label %22

49:                                               ; preds = %22
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %6, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %6, align 4
  br label %9

53:                                               ; preds = %9
  store %struct.d3dx_pass* null, %struct.d3dx_pass** %3, align 8
  br label %54

54:                                               ; preds = %53, %38
  %55 = load %struct.d3dx_pass*, %struct.d3dx_pass** %3, align 8
  ret %struct.d3dx_pass* %55
}

declare dso_local i64 @get_pass_handle(%struct.d3dx_pass*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
