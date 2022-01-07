; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_effect.c_get_parameter_element_by_name.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_effect.c_get_parameter_element_by_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3dx9_base_effect = type { i32 }
%struct.d3dx_parameter = type { i64, %struct.d3dx_parameter* }

@.str = private unnamed_addr constant [23 x i8] c"parameter %p, name %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Returning parameter %p\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Unhandled case \22%c\22\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Parameter not found\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.d3dx_parameter* (%struct.d3dx9_base_effect*, %struct.d3dx_parameter*, i8*)* @get_parameter_element_by_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.d3dx_parameter* @get_parameter_element_by_name(%struct.d3dx9_base_effect* %0, %struct.d3dx_parameter* %1, i8* %2) #0 {
  %4 = alloca %struct.d3dx_parameter*, align 8
  %5 = alloca %struct.d3dx9_base_effect*, align 8
  %6 = alloca %struct.d3dx_parameter*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.d3dx_parameter*, align 8
  %10 = alloca i8*, align 8
  store %struct.d3dx9_base_effect* %0, %struct.d3dx9_base_effect** %5, align 8
  store %struct.d3dx_parameter* %1, %struct.d3dx_parameter** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %6, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = call i32 @debugstr_a(i8* %12)
  %14 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %struct.d3dx_parameter* %11, i32 %13)
  %15 = load i8*, i8** %7, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load i8*, i8** %7, align 8
  %19 = load i8, i8* %18, align 1
  %20 = icmp ne i8 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %17, %3
  store %struct.d3dx_parameter* null, %struct.d3dx_parameter** %4, align 8
  br label %67

22:                                               ; preds = %17
  %23 = load i8*, i8** %7, align 8
  %24 = call i64 @atoi(i8* %23)
  store i64 %24, i64* %8, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = call i8* @strchr(i8* %25, i8 signext 93)
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  store i8* %27, i8** %10, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = ptrtoint i8* %28 to i64
  %31 = ptrtoint i8* %29 to i64
  %32 = sub i64 %30, %31
  %33 = icmp sgt i64 %32, 1
  br i1 %33, label %34, label %65

34:                                               ; preds = %22
  %35 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %6, align 8
  %36 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %8, align 8
  %39 = icmp ugt i64 %37, %38
  br i1 %39, label %40, label %65

40:                                               ; preds = %34
  %41 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %6, align 8
  %42 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %41, i32 0, i32 1
  %43 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %42, align 8
  %44 = load i64, i64* %8, align 8
  %45 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %43, i64 %44
  store %struct.d3dx_parameter* %45, %struct.d3dx_parameter** %9, align 8
  %46 = load i8*, i8** %10, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %10, align 8
  %48 = load i8, i8* %46, align 1
  %49 = sext i8 %48 to i32
  switch i32 %49, label %59 [
    i32 46, label %50
    i32 0, label %55
  ]

50:                                               ; preds = %40
  %51 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %5, align 8
  %52 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %53 = load i8*, i8** %10, align 8
  %54 = call %struct.d3dx_parameter* @get_parameter_by_name(%struct.d3dx9_base_effect* %51, %struct.d3dx_parameter* %52, i8* %53)
  store %struct.d3dx_parameter* %54, %struct.d3dx_parameter** %4, align 8
  br label %67

55:                                               ; preds = %40
  %56 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %57 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), %struct.d3dx_parameter* %56)
  %58 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  store %struct.d3dx_parameter* %58, %struct.d3dx_parameter** %4, align 8
  br label %67

59:                                               ; preds = %40
  %60 = load i8*, i8** %10, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 -1
  store i8* %61, i8** %10, align 8
  %62 = load i8, i8* %61, align 1
  %63 = call i32 @FIXME(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8 signext %62)
  br label %64

64:                                               ; preds = %59
  br label %65

65:                                               ; preds = %64, %34, %22
  %66 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  store %struct.d3dx_parameter* null, %struct.d3dx_parameter** %4, align 8
  br label %67

67:                                               ; preds = %65, %55, %50, %21
  %68 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %4, align 8
  ret %struct.d3dx_parameter* %68
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @debugstr_a(i8*) #1

declare dso_local i64 @atoi(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local %struct.d3dx_parameter* @get_parameter_by_name(%struct.d3dx9_base_effect*, %struct.d3dx_parameter*, i8*) #1

declare dso_local i32 @FIXME(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
