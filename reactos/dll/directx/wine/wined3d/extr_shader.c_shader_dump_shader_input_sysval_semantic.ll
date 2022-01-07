; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_shader.c_shader_dump_shader_input_sysval_semantic.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_shader.c_shader_dump_shader_input_sysval_semantic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.wined3d_string_buffer = type { i32 }

@shader_input_sysval_semantic_names = common dso_local global %struct.TYPE_3__* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"unknown_shader_input_sysval_semantic(%#x)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_string_buffer*, i32)* @shader_dump_shader_input_sysval_semantic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_dump_shader_input_sysval_semantic(%struct.wined3d_string_buffer* %0, i32 %1) #0 {
  %3 = alloca %struct.wined3d_string_buffer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.wined3d_string_buffer* %0, %struct.wined3d_string_buffer** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %30, %2
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** @shader_input_sysval_semantic_names, align 8
  %9 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %8)
  %10 = icmp ult i32 %7, %9
  br i1 %10, label %11, label %33

11:                                               ; preds = %6
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** @shader_input_sysval_semantic_names, align 8
  %13 = load i32, i32* %5, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %11
  %21 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** @shader_input_sysval_semantic_names, align 8
  %23 = load i32, i32* %5, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @shader_addline(%struct.wined3d_string_buffer* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %37

29:                                               ; preds = %11
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %5, align 4
  %32 = add i32 %31, 1
  store i32 %32, i32* %5, align 4
  br label %6

33:                                               ; preds = %6
  %34 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @shader_addline(%struct.wined3d_string_buffer* %34, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %33, %20
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @shader_addline(%struct.wined3d_string_buffer*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
