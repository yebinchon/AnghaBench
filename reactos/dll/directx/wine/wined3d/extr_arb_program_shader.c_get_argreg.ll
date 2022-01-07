; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_get_argreg.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_get_argreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_string_buffer = type { i32 }

@ARG_UNUSED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"unused\00", align 1
@WINED3DTA_SELECTMASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"fragment.color.primary\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"ret\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"tex0\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"tex1\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"tex2\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"tex3\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"tex4\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"tex5\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"tex6\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"tex7\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"unknown texture\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"tfactor\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"fragment.color.secondary\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"tempreg\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"const0\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"const1\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"const2\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"const3\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"const4\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"const5\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"const6\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"const7\00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"unknown constant\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@WINED3DTA_COMPLEMENT = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [25 x i8] c"SUB arg%u, const.x, %s;\0A\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"arg0\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"arg1\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"arg2\00", align 1
@WINED3DTA_ALPHAREPLICATE = common dso_local global i32 0, align 4
@.str.29 = private unnamed_addr constant [18 x i8] c"MOV arg%u, %s.w;\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.wined3d_string_buffer*, i32, i32, i32)* @get_argreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_argreg(%struct.wined3d_string_buffer* %0, i32 %1, i32 %2, i32 %3) #0 {
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
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  br label %95

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
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8** %10, align 8
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
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i8** %10, align 8
  br label %32

32:                                               ; preds = %31, %30, %29, %28, %27, %26, %25, %24, %23
  br label %49

33:                                               ; preds = %15
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i8** %10, align 8
  br label %49

34:                                               ; preds = %15
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i64 0, i64 0), i8** %10, align 8
  br label %49

35:                                               ; preds = %15
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i8** %10, align 8
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
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i8** %10, align 8
  br label %47

39:                                               ; preds = %36
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0), i8** %10, align 8
  br label %47

40:                                               ; preds = %36
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0), i8** %10, align 8
  br label %47

41:                                               ; preds = %36
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0), i8** %10, align 8
  br label %47

42:                                               ; preds = %36
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0), i8** %10, align 8
  br label %47

43:                                               ; preds = %36
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0), i8** %10, align 8
  br label %47

44:                                               ; preds = %36
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0), i8** %10, align 8
  br label %47

45:                                               ; preds = %36
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i64 0, i64 0), i8** %10, align 8
  br label %47

46:                                               ; preds = %36
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i64 0, i64 0), i8** %10, align 8
  br label %47

47:                                               ; preds = %46, %45, %44, %43, %42, %41, %40, %39, %38
  br label %49

48:                                               ; preds = %15
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0), i8** %5, align 8
  br label %95

49:                                               ; preds = %47, %35, %34, %33, %32, %20, %19
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* @WINED3DTA_COMPLEMENT, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %71

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
  br label %62

62:                                               ; preds = %61, %54
  %63 = load i32, i32* %7, align 4
  %64 = icmp eq i32 %63, 1
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), i8** %10, align 8
  br label %66

66:                                               ; preds = %65, %62
  %67 = load i32, i32* %7, align 4
  %68 = icmp eq i32 %67, 2
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i64 0, i64 0), i8** %10, align 8
  br label %70

70:                                               ; preds = %69, %66
  br label %71

71:                                               ; preds = %70, %49
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* @WINED3DTA_ALPHAREPLICATE, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %93

76:                                               ; preds = %71
  %77 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %6, align 8
  %78 = load i32, i32* %7, align 4
  %79 = load i8*, i8** %10, align 8
  %80 = call i32 @shader_addline(%struct.wined3d_string_buffer* %77, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.29, i64 0, i64 0), i32 %78, i8* %79)
  %81 = load i32, i32* %7, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %76
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0), i8** %10, align 8
  br label %84

84:                                               ; preds = %83, %76
  %85 = load i32, i32* %7, align 4
  %86 = icmp eq i32 %85, 1
  br i1 %86, label %87, label %88

87:                                               ; preds = %84
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), i8** %10, align 8
  br label %88

88:                                               ; preds = %87, %84
  %89 = load i32, i32* %7, align 4
  %90 = icmp eq i32 %89, 2
  br i1 %90, label %91, label %92

91:                                               ; preds = %88
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i64 0, i64 0), i8** %10, align 8
  br label %92

92:                                               ; preds = %91, %88
  br label %93

93:                                               ; preds = %92, %71
  %94 = load i8*, i8** %10, align 8
  store i8* %94, i8** %5, align 8
  br label %95

95:                                               ; preds = %93, %48, %14
  %96 = load i8*, i8** %5, align 8
  ret i8* %96
}

declare dso_local i32 @shader_addline(%struct.wined3d_string_buffer*, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
