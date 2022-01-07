; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_hlsl.tab.c_new_struct_type.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_hlsl.tab.c_new_struct_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.hlsl_type = type { i8*, i32, i32, i32, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { %struct.list* }
%struct.list = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"Out of memory.\0A\00", align 1
@HLSL_CLASS_STRUCT = common dso_local global i32 0, align 4
@hlsl_ctx = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hlsl_type* (i8*, i32, %struct.list*)* @new_struct_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hlsl_type* @new_struct_type(i8* %0, i32 %1, %struct.list* %2) #0 {
  %4 = alloca %struct.hlsl_type*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.list*, align 8
  %8 = alloca %struct.hlsl_type*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.list* %2, %struct.list** %7, align 8
  %9 = call %struct.hlsl_type* @d3dcompiler_alloc(i32 40)
  store %struct.hlsl_type* %9, %struct.hlsl_type** %8, align 8
  %10 = load %struct.hlsl_type*, %struct.hlsl_type** %8, align 8
  %11 = icmp ne %struct.hlsl_type* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %3
  %13 = call i32 @ERR(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store %struct.hlsl_type* null, %struct.hlsl_type** %4, align 8
  br label %36

14:                                               ; preds = %3
  %15 = load i32, i32* @HLSL_CLASS_STRUCT, align 4
  %16 = load %struct.hlsl_type*, %struct.hlsl_type** %8, align 8
  %17 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %16, i32 0, i32 6
  store i32 %15, i32* %17, align 4
  %18 = load i8*, i8** %5, align 8
  %19 = load %struct.hlsl_type*, %struct.hlsl_type** %8, align 8
  %20 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %19, i32 0, i32 0
  store i8* %18, i8** %20, align 8
  %21 = load %struct.hlsl_type*, %struct.hlsl_type** %8, align 8
  %22 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %21, i32 0, i32 2
  store i32 1, i32* %22, align 4
  %23 = load %struct.hlsl_type*, %struct.hlsl_type** %8, align 8
  %24 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %23, i32 0, i32 1
  store i32 1, i32* %24, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.hlsl_type*, %struct.hlsl_type** %8, align 8
  %27 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %26, i32 0, i32 5
  store i32 %25, i32* %27, align 8
  %28 = load %struct.list*, %struct.list** %7, align 8
  %29 = load %struct.hlsl_type*, %struct.hlsl_type** %8, align 8
  %30 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  store %struct.list* %28, %struct.list** %31, align 8
  %32 = load %struct.hlsl_type*, %struct.hlsl_type** %8, align 8
  %33 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %32, i32 0, i32 3
  %34 = call i32 @list_add_tail(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @hlsl_ctx, i32 0, i32 0), i32* %33)
  %35 = load %struct.hlsl_type*, %struct.hlsl_type** %8, align 8
  store %struct.hlsl_type* %35, %struct.hlsl_type** %4, align 8
  br label %36

36:                                               ; preds = %14, %12
  %37 = load %struct.hlsl_type*, %struct.hlsl_type** %4, align 8
  ret %struct.hlsl_type* %37
}

declare dso_local %struct.hlsl_type* @d3dcompiler_alloc(i32) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
