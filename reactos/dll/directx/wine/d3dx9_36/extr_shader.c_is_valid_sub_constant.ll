; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_shader.c_is_valid_sub_constant.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_shader.c_is_valid_sub_constant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctab_constant = type { %struct.ctab_constant*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ctab_constant* (%struct.ctab_constant*, i32)* @is_valid_sub_constant to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ctab_constant* @is_valid_sub_constant(%struct.ctab_constant* %0, i32 %1) #0 {
  %3 = alloca %struct.ctab_constant*, align 8
  %4 = alloca %struct.ctab_constant*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ctab_constant*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.ctab_constant* %0, %struct.ctab_constant** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.ctab_constant*, %struct.ctab_constant** %4, align 8
  %10 = getelementptr inbounds %struct.ctab_constant, %struct.ctab_constant* %9, i32 0, i32 0
  %11 = load %struct.ctab_constant*, %struct.ctab_constant** %10, align 8
  %12 = icmp ne %struct.ctab_constant* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store %struct.ctab_constant* null, %struct.ctab_constant** %3, align 8
  br label %69

14:                                               ; preds = %2
  %15 = load %struct.ctab_constant*, %struct.ctab_constant** %4, align 8
  %16 = getelementptr inbounds %struct.ctab_constant, %struct.ctab_constant* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp sgt i32 %18, 1
  br i1 %19, label %20, label %26

20:                                               ; preds = %14
  %21 = load %struct.ctab_constant*, %struct.ctab_constant** %4, align 8
  %22 = getelementptr inbounds %struct.ctab_constant, %struct.ctab_constant* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  br label %31

26:                                               ; preds = %14
  %27 = load %struct.ctab_constant*, %struct.ctab_constant** %4, align 8
  %28 = getelementptr inbounds %struct.ctab_constant, %struct.ctab_constant* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  br label %31

31:                                               ; preds = %26, %20
  %32 = phi i64 [ %25, %20 ], [ %30, %26 ]
  store i64 %32, i64* %8, align 8
  store i64 0, i64* %7, align 8
  br label %33

33:                                               ; preds = %65, %31
  %34 = load i64, i64* %7, align 8
  %35 = load i64, i64* %8, align 8
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %37, label %68

37:                                               ; preds = %33
  %38 = load %struct.ctab_constant*, %struct.ctab_constant** %4, align 8
  %39 = getelementptr inbounds %struct.ctab_constant, %struct.ctab_constant* %38, i32 0, i32 0
  %40 = load %struct.ctab_constant*, %struct.ctab_constant** %39, align 8
  %41 = load i64, i64* %7, align 8
  %42 = getelementptr inbounds %struct.ctab_constant, %struct.ctab_constant* %40, i64 %41
  %43 = call i32 @handle_from_constant(%struct.ctab_constant* %42)
  %44 = load i32, i32* %5, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %37
  %47 = load %struct.ctab_constant*, %struct.ctab_constant** %4, align 8
  %48 = getelementptr inbounds %struct.ctab_constant, %struct.ctab_constant* %47, i32 0, i32 0
  %49 = load %struct.ctab_constant*, %struct.ctab_constant** %48, align 8
  %50 = load i64, i64* %7, align 8
  %51 = getelementptr inbounds %struct.ctab_constant, %struct.ctab_constant* %49, i64 %50
  store %struct.ctab_constant* %51, %struct.ctab_constant** %3, align 8
  br label %69

52:                                               ; preds = %37
  %53 = load %struct.ctab_constant*, %struct.ctab_constant** %4, align 8
  %54 = getelementptr inbounds %struct.ctab_constant, %struct.ctab_constant* %53, i32 0, i32 0
  %55 = load %struct.ctab_constant*, %struct.ctab_constant** %54, align 8
  %56 = load i64, i64* %7, align 8
  %57 = getelementptr inbounds %struct.ctab_constant, %struct.ctab_constant* %55, i64 %56
  %58 = load i32, i32* %5, align 4
  %59 = call %struct.ctab_constant* @is_valid_sub_constant(%struct.ctab_constant* %57, i32 %58)
  store %struct.ctab_constant* %59, %struct.ctab_constant** %6, align 8
  %60 = load %struct.ctab_constant*, %struct.ctab_constant** %6, align 8
  %61 = icmp ne %struct.ctab_constant* %60, null
  br i1 %61, label %62, label %64

62:                                               ; preds = %52
  %63 = load %struct.ctab_constant*, %struct.ctab_constant** %6, align 8
  store %struct.ctab_constant* %63, %struct.ctab_constant** %3, align 8
  br label %69

64:                                               ; preds = %52
  br label %65

65:                                               ; preds = %64
  %66 = load i64, i64* %7, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %7, align 8
  br label %33

68:                                               ; preds = %33
  store %struct.ctab_constant* null, %struct.ctab_constant** %3, align 8
  br label %69

69:                                               ; preds = %68, %62, %46, %13
  %70 = load %struct.ctab_constant*, %struct.ctab_constant** %3, align 8
  ret %struct.ctab_constant* %70
}

declare dso_local i32 @handle_from_constant(%struct.ctab_constant*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
