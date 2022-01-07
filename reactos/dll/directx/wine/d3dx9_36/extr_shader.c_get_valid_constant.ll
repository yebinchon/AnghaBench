; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_shader.c_get_valid_constant.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_shader.c_get_valid_constant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctab_constant = type { i32 }
%struct.ID3DXConstantTableImpl = type { %struct.ctab_constant*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ctab_constant* (%struct.ID3DXConstantTableImpl*, i32)* @get_valid_constant to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ctab_constant* @get_valid_constant(%struct.ID3DXConstantTableImpl* %0, i32 %1) #0 {
  %3 = alloca %struct.ctab_constant*, align 8
  %4 = alloca %struct.ID3DXConstantTableImpl*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ctab_constant*, align 8
  %7 = alloca i64, align 8
  store %struct.ID3DXConstantTableImpl* %0, %struct.ID3DXConstantTableImpl** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store %struct.ctab_constant* null, %struct.ctab_constant** %3, align 8
  br label %54

11:                                               ; preds = %2
  store i64 0, i64* %7, align 8
  br label %12

12:                                               ; preds = %47, %11
  %13 = load i64, i64* %7, align 8
  %14 = load %struct.ID3DXConstantTableImpl*, %struct.ID3DXConstantTableImpl** %4, align 8
  %15 = getelementptr inbounds %struct.ID3DXConstantTableImpl, %struct.ID3DXConstantTableImpl* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ult i64 %13, %17
  br i1 %18, label %19, label %50

19:                                               ; preds = %12
  %20 = load %struct.ID3DXConstantTableImpl*, %struct.ID3DXConstantTableImpl** %4, align 8
  %21 = getelementptr inbounds %struct.ID3DXConstantTableImpl, %struct.ID3DXConstantTableImpl* %20, i32 0, i32 0
  %22 = load %struct.ctab_constant*, %struct.ctab_constant** %21, align 8
  %23 = load i64, i64* %7, align 8
  %24 = getelementptr inbounds %struct.ctab_constant, %struct.ctab_constant* %22, i64 %23
  %25 = call i32 @handle_from_constant(%struct.ctab_constant* %24)
  %26 = load i32, i32* %5, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %19
  %29 = load %struct.ID3DXConstantTableImpl*, %struct.ID3DXConstantTableImpl** %4, align 8
  %30 = getelementptr inbounds %struct.ID3DXConstantTableImpl, %struct.ID3DXConstantTableImpl* %29, i32 0, i32 0
  %31 = load %struct.ctab_constant*, %struct.ctab_constant** %30, align 8
  %32 = load i64, i64* %7, align 8
  %33 = getelementptr inbounds %struct.ctab_constant, %struct.ctab_constant* %31, i64 %32
  store %struct.ctab_constant* %33, %struct.ctab_constant** %3, align 8
  br label %54

34:                                               ; preds = %19
  %35 = load %struct.ID3DXConstantTableImpl*, %struct.ID3DXConstantTableImpl** %4, align 8
  %36 = getelementptr inbounds %struct.ID3DXConstantTableImpl, %struct.ID3DXConstantTableImpl* %35, i32 0, i32 0
  %37 = load %struct.ctab_constant*, %struct.ctab_constant** %36, align 8
  %38 = load i64, i64* %7, align 8
  %39 = getelementptr inbounds %struct.ctab_constant, %struct.ctab_constant* %37, i64 %38
  %40 = load i32, i32* %5, align 4
  %41 = call %struct.ctab_constant* @is_valid_sub_constant(%struct.ctab_constant* %39, i32 %40)
  store %struct.ctab_constant* %41, %struct.ctab_constant** %6, align 8
  %42 = load %struct.ctab_constant*, %struct.ctab_constant** %6, align 8
  %43 = icmp ne %struct.ctab_constant* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %34
  %45 = load %struct.ctab_constant*, %struct.ctab_constant** %6, align 8
  store %struct.ctab_constant* %45, %struct.ctab_constant** %3, align 8
  br label %54

46:                                               ; preds = %34
  br label %47

47:                                               ; preds = %46
  %48 = load i64, i64* %7, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %7, align 8
  br label %12

50:                                               ; preds = %12
  %51 = load %struct.ID3DXConstantTableImpl*, %struct.ID3DXConstantTableImpl** %4, align 8
  %52 = load i32, i32* %5, align 4
  %53 = call %struct.ctab_constant* @get_constant_by_name(%struct.ID3DXConstantTableImpl* %51, i32* null, i32 %52)
  store %struct.ctab_constant* %53, %struct.ctab_constant** %3, align 8
  br label %54

54:                                               ; preds = %50, %44, %28, %10
  %55 = load %struct.ctab_constant*, %struct.ctab_constant** %3, align 8
  ret %struct.ctab_constant* %55
}

declare dso_local i32 @handle_from_constant(%struct.ctab_constant*) #1

declare dso_local %struct.ctab_constant* @is_valid_sub_constant(%struct.ctab_constant*, i32) #1

declare dso_local %struct.ctab_constant* @get_constant_by_name(%struct.ID3DXConstantTableImpl*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
