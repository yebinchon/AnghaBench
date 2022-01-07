; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_effect.c_param_set_data_pointer.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_effect.c_param_set_data_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3dx_parameter = type { i32, i32, i8*, i32, %struct.d3dx_parameter* }

@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.d3dx_parameter*, i8*, i64, i64)* @param_set_data_pointer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @param_set_data_pointer(%struct.d3dx_parameter* %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.d3dx_parameter*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.d3dx_parameter* %0, %struct.d3dx_parameter** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load i8*, i8** %6, align 8
  store i8* %12, i8** %9, align 8
  %13 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %5, align 8
  %14 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %4
  %18 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %5, align 8
  %19 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  br label %25

21:                                               ; preds = %4
  %22 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %5, align 8
  %23 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  br label %25

25:                                               ; preds = %21, %17
  %26 = phi i32 [ %20, %17 ], [ %24, %21 ]
  store i32 %26, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %27

27:                                               ; preds = %56, %25
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp ult i32 %28, %29
  br i1 %30, label %31, label %59

31:                                               ; preds = %27
  %32 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %5, align 8
  %33 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %32, i32 0, i32 4
  %34 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %33, align 8
  %35 = load i32, i32* %10, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %34, i64 %36
  %38 = load i8*, i8** %9, align 8
  %39 = load i64, i64* @TRUE, align 8
  %40 = load i64, i64* %8, align 8
  call void @param_set_data_pointer(%struct.d3dx_parameter* %37, i8* %38, i64 %39, i64 %40)
  %41 = load i8*, i8** %6, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %55

43:                                               ; preds = %31
  %44 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %5, align 8
  %45 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %44, i32 0, i32 4
  %46 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %45, align 8
  %47 = load i32, i32* %10, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %46, i64 %48
  %50 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = load i8*, i8** %9, align 8
  %53 = sext i32 %51 to i64
  %54 = getelementptr inbounds i8, i8* %52, i64 %53
  store i8* %54, i8** %9, align 8
  br label %55

55:                                               ; preds = %43, %31
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %10, align 4
  %58 = add i32 %57, 1
  store i32 %58, i32* %10, align 4
  br label %27

59:                                               ; preds = %27
  %60 = load i64, i64* %8, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %5, align 8
  %64 = load i64, i64* %7, align 8
  %65 = call i32 @free_parameter_data(%struct.d3dx_parameter* %63, i64 %64)
  br label %66

66:                                               ; preds = %62, %59
  %67 = load i8*, i8** %6, align 8
  %68 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %5, align 8
  %69 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %68, i32 0, i32 2
  store i8* %67, i8** %69, align 8
  ret void
}

declare dso_local i32 @free_parameter_data(%struct.d3dx_parameter*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
