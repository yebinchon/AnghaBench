; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_utils.c_debug_base_type.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_utils.c_debug_base_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hlsl_type = type { i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"(unknown)\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"half\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"uint\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"bool\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"sampler\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"sampler1D\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"sampler2D\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"sampler3D\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"samplerCUBE\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"Unhandled case %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.hlsl_type*)* @debug_base_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @debug_base_type(%struct.hlsl_type* %0) #0 {
  %2 = alloca %struct.hlsl_type*, align 8
  %3 = alloca i8*, align 8
  store %struct.hlsl_type* %0, %struct.hlsl_type** %2, align 8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  %4 = load %struct.hlsl_type*, %struct.hlsl_type** %2, align 8
  %5 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %23 [
    i32 132, label %7
    i32 131, label %8
    i32 133, label %9
    i32 130, label %10
    i32 128, label %11
    i32 134, label %12
    i32 129, label %13
  ]

7:                                                ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %28

8:                                                ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  br label %28

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %3, align 8
  br label %28

10:                                               ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8** %3, align 8
  br label %28

11:                                               ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8** %3, align 8
  br label %28

12:                                               ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8** %3, align 8
  br label %28

13:                                               ; preds = %1
  %14 = load %struct.hlsl_type*, %struct.hlsl_type** %2, align 8
  %15 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %22 [
    i32 135, label %17
    i32 139, label %18
    i32 138, label %19
    i32 137, label %20
    i32 136, label %21
  ]

17:                                               ; preds = %13
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8** %3, align 8
  br label %22

18:                                               ; preds = %13
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8** %3, align 8
  br label %22

19:                                               ; preds = %13
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8** %3, align 8
  br label %22

20:                                               ; preds = %13
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8** %3, align 8
  br label %22

21:                                               ; preds = %13
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i8** %3, align 8
  br label %22

22:                                               ; preds = %13, %21, %20, %19, %18, %17
  br label %28

23:                                               ; preds = %1
  %24 = load %struct.hlsl_type*, %struct.hlsl_type** %2, align 8
  %25 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @FIXME(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %23, %22, %12, %11, %10, %9, %8, %7
  %29 = load i8*, i8** %3, align 8
  ret i8* %29
}

declare dso_local i32 @FIXME(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
