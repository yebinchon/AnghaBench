; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_shader_hw_map2gl.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_shader_hw_map2gl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_shader_instruction = type { i32, i32, i32*, %struct.wined3d_shader_dst_param*, %struct.TYPE_2__* }
%struct.wined3d_shader_dst_param = type { i32 }
%struct.TYPE_2__ = type { %struct.wined3d_string_buffer* }
%struct.wined3d_string_buffer = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"ABS\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"XPD\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"DP3\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"DP4\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"DST\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"FRC\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"LIT\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"LRP\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"MAD\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"MAX\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"MIN\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"MOV\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"MUL\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"SGE\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"SLT\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"SUB\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"ARR\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"DDX\00", align 1
@.str.19 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.20 = private unnamed_addr constant [22 x i8] c"Unhandled opcode %s.\0A\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"%s%s %s%s;\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_shader_instruction*)* @shader_hw_map2gl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_hw_map2gl(%struct.wined3d_shader_instruction* %0) #0 {
  %2 = alloca %struct.wined3d_shader_instruction*, align 8
  %3 = alloca %struct.wined3d_string_buffer*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [256 x i8], align 16
  %6 = alloca [50 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca %struct.wined3d_shader_dst_param*, align 8
  %9 = alloca [100 x i8], align 16
  store %struct.wined3d_shader_instruction* %0, %struct.wined3d_shader_instruction** %2, align 8
  %10 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %11 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %10, i32 0, i32 4
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %13, align 8
  store %struct.wined3d_string_buffer* %14, %struct.wined3d_string_buffer** %3, align 8
  %15 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %16 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %15, i32 0, i32 3
  %17 = load %struct.wined3d_shader_dst_param*, %struct.wined3d_shader_dst_param** %16, align 8
  %18 = getelementptr inbounds %struct.wined3d_shader_dst_param, %struct.wined3d_shader_dst_param* %17, i64 0
  store %struct.wined3d_shader_dst_param* %18, %struct.wined3d_shader_dst_param** %8, align 8
  %19 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %20 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  switch i32 %21, label %41 [
    i32 146, label %22
    i32 145, label %23
    i32 144, label %24
    i32 143, label %25
    i32 142, label %26
    i32 141, label %27
    i32 139, label %28
    i32 138, label %29
    i32 137, label %30
    i32 136, label %31
    i32 135, label %32
    i32 134, label %33
    i32 133, label %34
    i32 131, label %35
    i32 130, label %36
    i32 129, label %37
    i32 128, label %38
    i32 132, label %39
    i32 140, label %40
  ]

22:                                               ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %47

23:                                               ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  br label %47

24:                                               ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %4, align 8
  br label %47

25:                                               ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %4, align 8
  br label %47

26:                                               ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8** %4, align 8
  br label %47

27:                                               ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8** %4, align 8
  br label %47

28:                                               ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8** %4, align 8
  br label %47

29:                                               ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8** %4, align 8
  br label %47

30:                                               ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8** %4, align 8
  br label %47

31:                                               ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8** %4, align 8
  br label %47

32:                                               ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8** %4, align 8
  br label %47

33:                                               ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i8** %4, align 8
  br label %47

34:                                               ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8** %4, align 8
  br label %47

35:                                               ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i8** %4, align 8
  br label %47

36:                                               ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i8** %4, align 8
  br label %47

37:                                               ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i8** %4, align 8
  br label %47

38:                                               ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), i8** %4, align 8
  br label %47

39:                                               ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i8** %4, align 8
  br label %47

40:                                               ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i8** %4, align 8
  br label %47

41:                                               ; preds = %1
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i64 0, i64 0), i8** %4, align 8
  %42 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %43 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @debug_d3dshaderinstructionhandler(i32 %44)
  %46 = call i32 @FIXME(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i64 0, i64 0), i32 %45)
  br label %47

47:                                               ; preds = %41, %40, %39, %38, %37, %36, %35, %34, %33, %32, %31, %30, %29, %28, %27, %26, %25, %24, %23, %22
  %48 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  store i8 0, i8* %48, align 16
  %49 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %50 = load %struct.wined3d_shader_dst_param*, %struct.wined3d_shader_dst_param** %8, align 8
  %51 = getelementptr inbounds [50 x i8], [50 x i8]* %6, i64 0, i64 0
  %52 = call i32 @shader_arb_get_dst_param(%struct.wined3d_shader_instruction* %49, %struct.wined3d_shader_dst_param* %50, i8* %51)
  store i32 0, i32* %7, align 4
  br label %53

53:                                               ; preds = %75, %47
  %54 = load i32, i32* %7, align 4
  %55 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %56 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp ult i32 %54, %57
  br i1 %58, label %59, label %78

59:                                               ; preds = %53
  %60 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %61 = call i32 @strcat(i8* %60, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0))
  %62 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %63 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %64 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %7, align 4
  %70 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 0
  %71 = call i32 @shader_arb_get_src_param(%struct.wined3d_shader_instruction* %62, i32* %68, i32 %69, i8* %70)
  %72 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %73 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 0
  %74 = call i32 @strcat(i8* %72, i8* %73)
  br label %75

75:                                               ; preds = %59
  %76 = load i32, i32* %7, align 4
  %77 = add i32 %76, 1
  store i32 %77, i32* %7, align 4
  br label %53

78:                                               ; preds = %53
  %79 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %80 = load i8*, i8** %4, align 8
  %81 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %82 = call i32 @shader_arb_get_modifier(%struct.wined3d_shader_instruction* %81)
  %83 = getelementptr inbounds [50 x i8], [50 x i8]* %6, i64 0, i64 0
  %84 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %85 = call i32 @shader_addline(%struct.wined3d_string_buffer* %79, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i64 0, i64 0), i8* %80, i32 %82, i8* %83, i8* %84)
  ret void
}

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i32 @debug_d3dshaderinstructionhandler(i32) #1

declare dso_local i32 @shader_arb_get_dst_param(%struct.wined3d_shader_instruction*, %struct.wined3d_shader_dst_param*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @shader_arb_get_src_param(%struct.wined3d_shader_instruction*, i32*, i32, i8*) #1

declare dso_local i32 @shader_addline(%struct.wined3d_string_buffer*, i8*, i8*, i32, i8*, i8*) #1

declare dso_local i32 @shader_arb_get_modifier(%struct.wined3d_shader_instruction*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
