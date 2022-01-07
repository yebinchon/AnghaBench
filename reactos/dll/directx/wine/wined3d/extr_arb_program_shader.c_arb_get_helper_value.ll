; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_arb_get_helper_value.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_arb_get_helper_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WINED3D_SHADER_TYPE_VERTEX = common dso_local global i32 0, align 4
@WINED3D_SHADER_TYPE_PIXEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Unsupported shader type '%s'.\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"bad\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"ps_helper_const.x\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"ps_helper_const.y\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"coefmul.x\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"ps_helper_const.xxxy\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"ps_helper_const.z\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"helper_const.x\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"helper_const.y\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"helper_const.z\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"helper_const.w\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"helper_const.xxxy\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"rel_addr_const.y\00", align 1
@.str.13 = private unnamed_addr constant [52 x i8] c"Unmanaged %s shader helper constant requested: %u.\0A\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"pixel\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"vertex\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"0.0\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"1.0\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"2.0\00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"{0.0, 0.0, 0.0, 1.0}\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"1e-8\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i32)* @arb_get_helper_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @arb_get_helper_value(i32 %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @WINED3D_SHADER_TYPE_VERTEX, align 4
  %8 = icmp ne i32 %6, %7
  br i1 %8, label %9, label %17

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @WINED3D_SHADER_TYPE_PIXEL, align 4
  %12 = icmp ne i32 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @debug_shader_type(i32 %14)
  %16 = call i32 @ERR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %15)
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %54

17:                                               ; preds = %9, %2
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @WINED3D_SHADER_TYPE_PIXEL, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %30

21:                                               ; preds = %17
  %22 = load i32, i32* %5, align 4
  switch i32 %22, label %28 [
    i32 128, label %23
    i32 131, label %24
    i32 130, label %25
    i32 133, label %26
    i32 132, label %27
  ]

23:                                               ; preds = %21
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  br label %54

24:                                               ; preds = %21
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8** %3, align 8
  br label %54

25:                                               ; preds = %21
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8** %3, align 8
  br label %54

26:                                               ; preds = %21
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i8** %3, align 8
  br label %54

27:                                               ; preds = %21
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i8** %3, align 8
  br label %54

28:                                               ; preds = %21
  br label %29

29:                                               ; preds = %28
  br label %39

30:                                               ; preds = %17
  %31 = load i32, i32* %5, align 4
  switch i32 %31, label %38 [
    i32 128, label %32
    i32 131, label %33
    i32 130, label %34
    i32 132, label %35
    i32 133, label %36
    i32 129, label %37
  ]

32:                                               ; preds = %30
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i8** %3, align 8
  br label %54

33:                                               ; preds = %30
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i8** %3, align 8
  br label %54

34:                                               ; preds = %30
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i8** %3, align 8
  br label %54

35:                                               ; preds = %30
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i8** %3, align 8
  br label %54

36:                                               ; preds = %30
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i8** %3, align 8
  br label %54

37:                                               ; preds = %30
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0), i8** %3, align 8
  br label %54

38:                                               ; preds = %30
  br label %39

39:                                               ; preds = %38, %29
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @WINED3D_SHADER_TYPE_PIXEL, align 4
  %42 = icmp eq i32 %40, %41
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0)
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @FIXME(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.13, i64 0, i64 0), i8* %44, i32 %45)
  %47 = load i32, i32* %5, align 4
  switch i32 %47, label %53 [
    i32 128, label %48
    i32 131, label %49
    i32 130, label %50
    i32 133, label %51
    i32 132, label %52
  ]

48:                                               ; preds = %39
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), i8** %3, align 8
  br label %54

49:                                               ; preds = %39
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i8** %3, align 8
  br label %54

50:                                               ; preds = %39
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i8** %3, align 8
  br label %54

51:                                               ; preds = %39
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.19, i64 0, i64 0), i8** %3, align 8
  br label %54

52:                                               ; preds = %39
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i8** %3, align 8
  br label %54

53:                                               ; preds = %39
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %54

54:                                               ; preds = %53, %52, %51, %50, %49, %48, %37, %36, %35, %34, %33, %32, %27, %26, %25, %24, %23, %13
  %55 = load i8*, i8** %3, align 8
  ret i8* %55
}

declare dso_local i32 @ERR(i8*, i32) #1

declare dso_local i32 @debug_shader_type(i32) #1

declare dso_local i32 @FIXME(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
