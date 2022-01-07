; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_shader-parser.h_shader_var_init_param.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_shader-parser.h_shader_var_init_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shader_var = type { i8*, i8*, i64, i32, i64, i32*, i32 }

@SHADER_VAR_UNIFORM = common dso_local global i32 0, align 4
@SHADER_VAR_CONST = common dso_local global i32 0, align 4
@SHADER_VAR_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.shader_var*, i8*, i8*, i32, i32)* @shader_var_init_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_var_init_param(%struct.shader_var* %0, i8* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.shader_var*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.shader_var* %0, %struct.shader_var** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load i32, i32* %9, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %5
  %14 = load i32, i32* @SHADER_VAR_UNIFORM, align 4
  %15 = load %struct.shader_var*, %struct.shader_var** %6, align 8
  %16 = getelementptr inbounds %struct.shader_var, %struct.shader_var* %15, i32 0, i32 6
  store i32 %14, i32* %16, align 8
  br label %29

17:                                               ; preds = %5
  %18 = load i32, i32* %10, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load i32, i32* @SHADER_VAR_CONST, align 4
  %22 = load %struct.shader_var*, %struct.shader_var** %6, align 8
  %23 = getelementptr inbounds %struct.shader_var, %struct.shader_var* %22, i32 0, i32 6
  store i32 %21, i32* %23, align 8
  br label %28

24:                                               ; preds = %17
  %25 = load i32, i32* @SHADER_VAR_NONE, align 4
  %26 = load %struct.shader_var*, %struct.shader_var** %6, align 8
  %27 = getelementptr inbounds %struct.shader_var, %struct.shader_var* %26, i32 0, i32 6
  store i32 %25, i32* %27, align 8
  br label %28

28:                                               ; preds = %24, %20
  br label %29

29:                                               ; preds = %28, %13
  %30 = load i8*, i8** %7, align 8
  %31 = load %struct.shader_var*, %struct.shader_var** %6, align 8
  %32 = getelementptr inbounds %struct.shader_var, %struct.shader_var* %31, i32 0, i32 0
  store i8* %30, i8** %32, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = load %struct.shader_var*, %struct.shader_var** %6, align 8
  %35 = getelementptr inbounds %struct.shader_var, %struct.shader_var* %34, i32 0, i32 1
  store i8* %33, i8** %35, align 8
  %36 = load %struct.shader_var*, %struct.shader_var** %6, align 8
  %37 = getelementptr inbounds %struct.shader_var, %struct.shader_var* %36, i32 0, i32 5
  store i32* null, i32** %37, align 8
  %38 = load %struct.shader_var*, %struct.shader_var** %6, align 8
  %39 = getelementptr inbounds %struct.shader_var, %struct.shader_var* %38, i32 0, i32 4
  store i64 0, i64* %39, align 8
  %40 = load %struct.shader_var*, %struct.shader_var** %6, align 8
  %41 = getelementptr inbounds %struct.shader_var, %struct.shader_var* %40, i32 0, i32 2
  store i64 -1, i64* %41, align 8
  %42 = load %struct.shader_var*, %struct.shader_var** %6, align 8
  %43 = getelementptr inbounds %struct.shader_var, %struct.shader_var* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @da_init(i32 %44)
  ret void
}

declare dso_local i32 @da_init(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
