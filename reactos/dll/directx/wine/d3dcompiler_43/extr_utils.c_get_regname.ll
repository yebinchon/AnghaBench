; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_utils.c_get_regname.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_utils.c_get_regname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shader_reg = type { i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"r%u\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"v%u\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"c%u\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"a%u\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"t%u\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"oPos\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"oFog\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"oPts\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"Unexpected RASTOUT\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"oD%u\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"oT%u\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"o%u\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"i%u\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"oC%u\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"oDepth\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"s%u\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"b%u\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"aL\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"vPos\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"vFace\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"unexpected misctype\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"l%u\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"p%u\00", align 1
@.str.23 = private unnamed_addr constant [20 x i8] c"unknown regname %#x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.shader_reg*)* @get_regname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_regname(%struct.shader_reg* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.shader_reg*, align 8
  store %struct.shader_reg* %0, %struct.shader_reg** %3, align 8
  %4 = load %struct.shader_reg*, %struct.shader_reg** %3, align 8
  %5 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %94 [
    i32 133, label %7
    i32 141, label %12
    i32 145, label %17
    i32 148, label %22
    i32 131, label %27
    i32 135, label %32
    i32 147, label %40
    i32 132, label %45
    i32 137, label %50
    i32 143, label %55
    i32 146, label %60
    i32 142, label %65
    i32 134, label %66
    i32 144, label %71
    i32 139, label %76
    i32 138, label %77
    i32 140, label %84
    i32 136, label %89
  ]

7:                                                ; preds = %1
  %8 = load %struct.shader_reg*, %struct.shader_reg** %3, align 8
  %9 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i8* @wine_dbg_sprintf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %10)
  store i8* %11, i8** %2, align 8
  br label %99

12:                                               ; preds = %1
  %13 = load %struct.shader_reg*, %struct.shader_reg** %3, align 8
  %14 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i8* @wine_dbg_sprintf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %15)
  store i8* %16, i8** %2, align 8
  br label %99

17:                                               ; preds = %1
  %18 = load %struct.shader_reg*, %struct.shader_reg** %3, align 8
  %19 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i8* @wine_dbg_sprintf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %20)
  store i8* %21, i8** %2, align 8
  br label %99

22:                                               ; preds = %1
  %23 = load %struct.shader_reg*, %struct.shader_reg** %3, align 8
  %24 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i8* @wine_dbg_sprintf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %25)
  store i8* %26, i8** %2, align 8
  br label %99

27:                                               ; preds = %1
  %28 = load %struct.shader_reg*, %struct.shader_reg** %3, align 8
  %29 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i8* @wine_dbg_sprintf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %30)
  store i8* %31, i8** %2, align 8
  br label %99

32:                                               ; preds = %1
  %33 = load %struct.shader_reg*, %struct.shader_reg** %3, align 8
  %34 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  switch i32 %35, label %39 [
    i32 128, label %36
    i32 130, label %37
    i32 129, label %38
  ]

36:                                               ; preds = %32
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %99

37:                                               ; preds = %32
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8** %2, align 8
  br label %99

38:                                               ; preds = %32
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8** %2, align 8
  br label %99

39:                                               ; preds = %32
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i8** %2, align 8
  br label %99

40:                                               ; preds = %1
  %41 = load %struct.shader_reg*, %struct.shader_reg** %3, align 8
  %42 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i8* @wine_dbg_sprintf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 %43)
  store i8* %44, i8** %2, align 8
  br label %99

45:                                               ; preds = %1
  %46 = load %struct.shader_reg*, %struct.shader_reg** %3, align 8
  %47 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i8* @wine_dbg_sprintf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32 %48)
  store i8* %49, i8** %2, align 8
  br label %99

50:                                               ; preds = %1
  %51 = load %struct.shader_reg*, %struct.shader_reg** %3, align 8
  %52 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i8* @wine_dbg_sprintf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %53)
  store i8* %54, i8** %2, align 8
  br label %99

55:                                               ; preds = %1
  %56 = load %struct.shader_reg*, %struct.shader_reg** %3, align 8
  %57 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i8* @wine_dbg_sprintf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i32 %58)
  store i8* %59, i8** %2, align 8
  br label %99

60:                                               ; preds = %1
  %61 = load %struct.shader_reg*, %struct.shader_reg** %3, align 8
  %62 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i8* @wine_dbg_sprintf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i32 %63)
  store i8* %64, i8** %2, align 8
  br label %99

65:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i8** %2, align 8
  br label %99

66:                                               ; preds = %1
  %67 = load %struct.shader_reg*, %struct.shader_reg** %3, align 8
  %68 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i8* @wine_dbg_sprintf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i32 %69)
  store i8* %70, i8** %2, align 8
  br label %99

71:                                               ; preds = %1
  %72 = load %struct.shader_reg*, %struct.shader_reg** %3, align 8
  %73 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i8* @wine_dbg_sprintf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), i32 %74)
  store i8* %75, i8** %2, align 8
  br label %99

76:                                               ; preds = %1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), i8** %2, align 8
  br label %99

77:                                               ; preds = %1
  %78 = load %struct.shader_reg*, %struct.shader_reg** %3, align 8
  %79 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  switch i32 %80, label %83 [
    i32 0, label %81
    i32 1, label %82
  ]

81:                                               ; preds = %77
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), i8** %2, align 8
  br label %99

82:                                               ; preds = %77
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0), i8** %2, align 8
  br label %99

83:                                               ; preds = %77
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i64 0, i64 0), i8** %2, align 8
  br label %99

84:                                               ; preds = %1
  %85 = load %struct.shader_reg*, %struct.shader_reg** %3, align 8
  %86 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i8* @wine_dbg_sprintf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0), i32 %87)
  store i8* %88, i8** %2, align 8
  br label %99

89:                                               ; preds = %1
  %90 = load %struct.shader_reg*, %struct.shader_reg** %3, align 8
  %91 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i8* @wine_dbg_sprintf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), i32 %92)
  store i8* %93, i8** %2, align 8
  br label %99

94:                                               ; preds = %1
  %95 = load %struct.shader_reg*, %struct.shader_reg** %3, align 8
  %96 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i8* @wine_dbg_sprintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i64 0, i64 0), i32 %97)
  store i8* %98, i8** %2, align 8
  br label %99

99:                                               ; preds = %94, %89, %84, %83, %82, %81, %76, %71, %66, %65, %60, %55, %50, %45, %40, %39, %38, %37, %36, %27, %22, %17, %12, %7
  %100 = load i8*, i8** %2, align 8
  ret i8* %100
}

declare dso_local i8* @wine_dbg_sprintf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
