; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_get_ffp_fragment_op_arg.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_get_ffp_fragment_op_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_string_buffer = type { i32 }

@ARG_UNUSED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"<unused arg>\00", align 1
@WINED3DTA_SELECTMASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"ffp_varying_diffuse\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"ret\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"tex0\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"tex1\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"tex2\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"tex3\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"tex4\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"tex5\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"tex6\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"tex7\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"<invalid texture>\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"tex_factor\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"ffp_varying_specular\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"temp_reg\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"tss_const0\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"tss_const1\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"tss_const2\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"tss_const3\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"tss_const4\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"tss_const5\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"tss_const6\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"tss_const7\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"<invalid constant>\00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"<unhandled arg>\00", align 1
@WINED3DTA_COMPLEMENT = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [25 x i8] c"arg%u = vec4(1.0) - %s;\0A\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"arg0\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"arg1\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"arg2\00", align 1
@WINED3DTA_ALPHAREPLICATE = common dso_local global i32 0, align 4
@.str.29 = private unnamed_addr constant [21 x i8] c"arg%u = vec4(%s.w);\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.wined3d_string_buffer*, i32, i32, i32)* @shader_glsl_get_ffp_fragment_op_arg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @shader_glsl_get_ffp_fragment_op_arg(%struct.wined3d_string_buffer* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.wined3d_string_buffer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.wined3d_string_buffer* %0, %struct.wined3d_string_buffer** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %9, align 4
  %12 = load i32, i32* @ARG_UNUSED, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  br label %99

15:                                               ; preds = %4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @WINED3DTA_SELECTMASK, align 4
  %18 = and i32 %16, %17
  switch i32 %18, label %48 [
    i32 132, label %19
    i32 133, label %20
    i32 129, label %21
    i32 128, label %33
    i32 131, label %34
    i32 130, label %35
    i32 134, label %36
  ]

19:                                               ; preds = %15
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8** %10, align 8
  br label %49

20:                                               ; preds = %15
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %10, align 8
  br label %49

21:                                               ; preds = %15
  %22 = load i32, i32* %8, align 4
  switch i32 %22, label %31 [
    i32 0, label %23
    i32 1, label %24
    i32 2, label %25
    i32 3, label %26
    i32 4, label %27
    i32 5, label %28
    i32 6, label %29
    i32 7, label %30
  ]

23:                                               ; preds = %21
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %10, align 8
  br label %32

24:                                               ; preds = %21
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8** %10, align 8
  br label %32

25:                                               ; preds = %21
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8** %10, align 8
  br label %32

26:                                               ; preds = %21
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8** %10, align 8
  br label %32

27:                                               ; preds = %21
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8** %10, align 8
  br label %32

28:                                               ; preds = %21
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8** %10, align 8
  br label %32

29:                                               ; preds = %21
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8** %10, align 8
  br label %32

30:                                               ; preds = %21
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8** %10, align 8
  br label %32

31:                                               ; preds = %21
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i8** %10, align 8
  br label %32

32:                                               ; preds = %31, %30, %29, %28, %27, %26, %25, %24, %23
  br label %49

33:                                               ; preds = %15
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i8** %10, align 8
  br label %49

34:                                               ; preds = %15
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0), i8** %10, align 8
  br label %49

35:                                               ; preds = %15
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0), i8** %10, align 8
  br label %49

36:                                               ; preds = %15
  %37 = load i32, i32* %8, align 4
  switch i32 %37, label %46 [
    i32 0, label %38
    i32 1, label %39
    i32 2, label %40
    i32 3, label %41
    i32 4, label %42
    i32 5, label %43
    i32 6, label %44
    i32 7, label %45
  ]

38:                                               ; preds = %36
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0), i8** %10, align 8
  br label %47

39:                                               ; preds = %36
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0), i8** %10, align 8
  br label %47

40:                                               ; preds = %36
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0), i8** %10, align 8
  br label %47

41:                                               ; preds = %36
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0), i8** %10, align 8
  br label %47

42:                                               ; preds = %36
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0), i8** %10, align 8
  br label %47

43:                                               ; preds = %36
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i64 0, i64 0), i8** %10, align 8
  br label %47

44:                                               ; preds = %36
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i64 0, i64 0), i8** %10, align 8
  br label %47

45:                                               ; preds = %36
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i64 0, i64 0), i8** %10, align 8
  br label %47

46:                                               ; preds = %36
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.23, i64 0, i64 0), i8** %10, align 8
  br label %47

47:                                               ; preds = %46, %45, %44, %43, %42, %41, %40, %39, %38
  br label %49

48:                                               ; preds = %15
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.24, i64 0, i64 0), i8** %5, align 8
  br label %99

49:                                               ; preds = %47, %35, %34, %33, %32, %20, %19
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* @WINED3DTA_COMPLEMENT, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %73

54:                                               ; preds = %49
  %55 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %6, align 8
  %56 = load i32, i32* %7, align 4
  %57 = load i8*, i8** %10, align 8
  %58 = call i32 @shader_addline(%struct.wined3d_string_buffer* %55, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.25, i64 0, i64 0), i32 %56, i8* %57)
  %59 = load i32, i32* %7, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0), i8** %10, align 8
  br label %72

62:                                               ; preds = %54
  %63 = load i32, i32* %7, align 4
  %64 = icmp eq i32 %63, 1
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), i8** %10, align 8
  br label %71

66:                                               ; preds = %62
  %67 = load i32, i32* %7, align 4
  %68 = icmp eq i32 %67, 2
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i64 0, i64 0), i8** %10, align 8
  br label %70

70:                                               ; preds = %69, %66
  br label %71

71:                                               ; preds = %70, %65
  br label %72

72:                                               ; preds = %71, %61
  br label %73

73:                                               ; preds = %72, %49
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* @WINED3DTA_ALPHAREPLICATE, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %97

78:                                               ; preds = %73
  %79 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %6, align 8
  %80 = load i32, i32* %7, align 4
  %81 = load i8*, i8** %10, align 8
  %82 = call i32 @shader_addline(%struct.wined3d_string_buffer* %79, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 %80, i8* %81)
  %83 = load i32, i32* %7, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %78
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0), i8** %10, align 8
  br label %96

86:                                               ; preds = %78
  %87 = load i32, i32* %7, align 4
  %88 = icmp eq i32 %87, 1
  br i1 %88, label %89, label %90

89:                                               ; preds = %86
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), i8** %10, align 8
  br label %95

90:                                               ; preds = %86
  %91 = load i32, i32* %7, align 4
  %92 = icmp eq i32 %91, 2
  br i1 %92, label %93, label %94

93:                                               ; preds = %90
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i64 0, i64 0), i8** %10, align 8
  br label %94

94:                                               ; preds = %93, %90
  br label %95

95:                                               ; preds = %94, %89
  br label %96

96:                                               ; preds = %95, %85
  br label %97

97:                                               ; preds = %96, %73
  %98 = load i8*, i8** %10, align 8
  store i8* %98, i8** %5, align 8
  br label %99

99:                                               ; preds = %97, %48, %14
  %100 = load i8*, i8** %5, align 8
  ret i8* %100
}

declare dso_local i32 @shader_addline(%struct.wined3d_string_buffer*, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
