; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_asmparser.c_check_reg_type.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_asmparser.c_check_reg_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shader_reg = type { i32, i64, i64 }
%struct.allowed_reg_type = type { i32, i64, i64 }

@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shader_reg*, %struct.allowed_reg_type*)* @check_reg_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_reg_type(%struct.shader_reg* %0, %struct.allowed_reg_type* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.shader_reg*, align 8
  %5 = alloca %struct.allowed_reg_type*, align 8
  %6 = alloca i32, align 4
  store %struct.shader_reg* %0, %struct.shader_reg** %4, align 8
  store %struct.allowed_reg_type* %1, %struct.allowed_reg_type** %5, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %58, %2
  %8 = load %struct.allowed_reg_type*, %struct.allowed_reg_type** %5, align 8
  %9 = load i32, i32* %6, align 4
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %struct.allowed_reg_type, %struct.allowed_reg_type* %8, i64 %10
  %12 = getelementptr inbounds %struct.allowed_reg_type, %struct.allowed_reg_type* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, -1
  br i1 %14, label %15, label %61

15:                                               ; preds = %7
  %16 = load %struct.shader_reg*, %struct.shader_reg** %4, align 8
  %17 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.allowed_reg_type*, %struct.allowed_reg_type** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.allowed_reg_type, %struct.allowed_reg_type* %19, i64 %21
  %23 = getelementptr inbounds %struct.allowed_reg_type, %struct.allowed_reg_type* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp eq i32 %18, %24
  br i1 %25, label %26, label %58

26:                                               ; preds = %15
  %27 = load %struct.shader_reg*, %struct.shader_reg** %4, align 8
  %28 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %26
  %32 = load %struct.allowed_reg_type*, %struct.allowed_reg_type** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.allowed_reg_type, %struct.allowed_reg_type* %32, i64 %34
  %36 = getelementptr inbounds %struct.allowed_reg_type, %struct.allowed_reg_type* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  %40 = load i32, i32* @TRUE, align 4
  store i32 %40, i32* %3, align 4
  br label %63

41:                                               ; preds = %31
  %42 = load i32, i32* @FALSE, align 4
  store i32 %42, i32* %3, align 4
  br label %63

43:                                               ; preds = %26
  %44 = load %struct.shader_reg*, %struct.shader_reg** %4, align 8
  %45 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.allowed_reg_type*, %struct.allowed_reg_type** %5, align 8
  %48 = load i32, i32* %6, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.allowed_reg_type, %struct.allowed_reg_type* %47, i64 %49
  %51 = getelementptr inbounds %struct.allowed_reg_type, %struct.allowed_reg_type* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp slt i64 %46, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %43
  %55 = load i32, i32* @TRUE, align 4
  store i32 %55, i32* %3, align 4
  br label %63

56:                                               ; preds = %43
  %57 = load i32, i32* @FALSE, align 4
  store i32 %57, i32* %3, align 4
  br label %63

58:                                               ; preds = %15
  %59 = load i32, i32* %6, align 4
  %60 = add i32 %59, 1
  store i32 %60, i32* %6, align 4
  br label %7

61:                                               ; preds = %7
  %62 = load i32, i32* @FALSE, align 4
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %61, %56, %54, %41, %39
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
