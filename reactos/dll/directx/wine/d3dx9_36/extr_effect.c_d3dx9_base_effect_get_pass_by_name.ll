; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_effect.c_d3dx9_base_effect_get_pass_by_name.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_effect.c_d3dx9_base_effect_get_pass_by_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3dx9_base_effect = type { i32 }
%struct.d3dx_technique = type { i32, %struct.d3dx_pass* }
%struct.d3dx_pass = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"Returning pass %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Pass not found.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.d3dx9_base_effect*, i32*, i8*)* @d3dx9_base_effect_get_pass_by_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @d3dx9_base_effect_get_pass_by_name(%struct.d3dx9_base_effect* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.d3dx9_base_effect*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.d3dx_technique*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.d3dx_pass*, align 8
  store %struct.d3dx9_base_effect* %0, %struct.d3dx9_base_effect** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %5, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = call %struct.d3dx_technique* @get_valid_technique(%struct.d3dx9_base_effect* %11, i32* %12)
  store %struct.d3dx_technique* %13, %struct.d3dx_technique** %8, align 8
  %14 = load %struct.d3dx_technique*, %struct.d3dx_technique** %8, align 8
  %15 = icmp ne %struct.d3dx_technique* %14, null
  br i1 %15, label %16, label %49

16:                                               ; preds = %3
  %17 = load i8*, i8** %7, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %49

19:                                               ; preds = %16
  store i32 0, i32* %9, align 4
  br label %20

20:                                               ; preds = %45, %19
  %21 = load i32, i32* %9, align 4
  %22 = load %struct.d3dx_technique*, %struct.d3dx_technique** %8, align 8
  %23 = getelementptr inbounds %struct.d3dx_technique, %struct.d3dx_technique* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ult i32 %21, %24
  br i1 %25, label %26, label %48

26:                                               ; preds = %20
  %27 = load %struct.d3dx_technique*, %struct.d3dx_technique** %8, align 8
  %28 = getelementptr inbounds %struct.d3dx_technique, %struct.d3dx_technique* %27, i32 0, i32 1
  %29 = load %struct.d3dx_pass*, %struct.d3dx_pass** %28, align 8
  %30 = load i32, i32* %9, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.d3dx_pass, %struct.d3dx_pass* %29, i64 %31
  store %struct.d3dx_pass* %32, %struct.d3dx_pass** %10, align 8
  %33 = load %struct.d3dx_pass*, %struct.d3dx_pass** %10, align 8
  %34 = getelementptr inbounds %struct.d3dx_pass, %struct.d3dx_pass* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i8*, i8** %7, align 8
  %37 = call i32 @strcmp(i32 %35, i8* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %26
  %40 = load %struct.d3dx_pass*, %struct.d3dx_pass** %10, align 8
  %41 = call i32 @TRACE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), %struct.d3dx_pass* %40)
  %42 = load %struct.d3dx_pass*, %struct.d3dx_pass** %10, align 8
  %43 = call i32* @get_pass_handle(%struct.d3dx_pass* %42)
  store i32* %43, i32** %4, align 8
  br label %51

44:                                               ; preds = %26
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %9, align 4
  %47 = add i32 %46, 1
  store i32 %47, i32* %9, align 4
  br label %20

48:                                               ; preds = %20
  br label %49

49:                                               ; preds = %48, %16, %3
  %50 = call i32 @WARN(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store i32* null, i32** %4, align 8
  br label %51

51:                                               ; preds = %49, %39
  %52 = load i32*, i32** %4, align 8
  ret i32* %52
}

declare dso_local %struct.d3dx_technique* @get_valid_technique(%struct.d3dx9_base_effect*, i32*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @TRACE(i8*, %struct.d3dx_pass*) #1

declare dso_local i32* @get_pass_handle(%struct.d3dx_pass*) #1

declare dso_local i32 @WARN(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
