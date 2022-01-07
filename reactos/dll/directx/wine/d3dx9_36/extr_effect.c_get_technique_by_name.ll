; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_effect.c_get_technique_by_name.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_effect.c_get_technique_by_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3dx_technique = type { i32 }
%struct.d3dx9_base_effect = type { i64, %struct.d3dx_technique* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.d3dx_technique* (%struct.d3dx9_base_effect*, i8*)* @get_technique_by_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.d3dx_technique* @get_technique_by_name(%struct.d3dx9_base_effect* %0, i8* %1) #0 {
  %3 = alloca %struct.d3dx_technique*, align 8
  %4 = alloca %struct.d3dx9_base_effect*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.d3dx9_base_effect* %0, %struct.d3dx9_base_effect** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store %struct.d3dx_technique* null, %struct.d3dx_technique** %3, align 8
  br label %39

10:                                               ; preds = %2
  store i64 0, i64* %6, align 8
  br label %11

11:                                               ; preds = %35, %10
  %12 = load i64, i64* %6, align 8
  %13 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %4, align 8
  %14 = getelementptr inbounds %struct.d3dx9_base_effect, %struct.d3dx9_base_effect* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ult i64 %12, %15
  br i1 %16, label %17, label %38

17:                                               ; preds = %11
  %18 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %4, align 8
  %19 = getelementptr inbounds %struct.d3dx9_base_effect, %struct.d3dx9_base_effect* %18, i32 0, i32 1
  %20 = load %struct.d3dx_technique*, %struct.d3dx_technique** %19, align 8
  %21 = load i64, i64* %6, align 8
  %22 = getelementptr inbounds %struct.d3dx_technique, %struct.d3dx_technique* %20, i64 %21
  %23 = getelementptr inbounds %struct.d3dx_technique, %struct.d3dx_technique* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i8*, i8** %5, align 8
  %26 = call i32 @strcmp(i32 %24, i8* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %17
  %29 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %4, align 8
  %30 = getelementptr inbounds %struct.d3dx9_base_effect, %struct.d3dx9_base_effect* %29, i32 0, i32 1
  %31 = load %struct.d3dx_technique*, %struct.d3dx_technique** %30, align 8
  %32 = load i64, i64* %6, align 8
  %33 = getelementptr inbounds %struct.d3dx_technique, %struct.d3dx_technique* %31, i64 %32
  store %struct.d3dx_technique* %33, %struct.d3dx_technique** %3, align 8
  br label %39

34:                                               ; preds = %17
  br label %35

35:                                               ; preds = %34
  %36 = load i64, i64* %6, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %6, align 8
  br label %11

38:                                               ; preds = %11
  store %struct.d3dx_technique* null, %struct.d3dx_technique** %3, align 8
  br label %39

39:                                               ; preds = %38, %28, %9
  %40 = load %struct.d3dx_technique*, %struct.d3dx_technique** %3, align 8
  ret %struct.d3dx_technique* %40
}

declare dso_local i32 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
