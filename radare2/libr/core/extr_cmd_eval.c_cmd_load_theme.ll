; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_cmd_eval.c_cmd_load_theme.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_cmd_eval.c_cmd_load_theme.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"default\00", align 1
@curtheme = common dso_local global i8* null, align 8
@R2_HOME_THEMES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@R2_THEMES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"eco: cannot open colorscheme profile (%s)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i8*)* @cmd_load_theme to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_load_theme(%struct.TYPE_6__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %6, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load i8*, i8** %5, align 8
  %16 = load i8, i8* %15, align 1
  %17 = icmp ne i8 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %14, %2
  store i32 0, i32* %3, align 4
  br label %107

19:                                               ; preds = %14
  %20 = load i8*, i8** %5, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 @strlen(i8* %21)
  %23 = call i32 @r_str_cmp(i8* %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %34, label %25

25:                                               ; preds = %19
  %26 = load i8*, i8** %5, align 8
  %27 = call i8* @strdup(i8* %26)
  store i8* %27, i8** @curtheme, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @r_cons_pal_init(i32 %32)
  store i32 1, i32* %3, align 4
  br label %107

34:                                               ; preds = %19
  %35 = load i8*, i8** %5, align 8
  %36 = call i8* @strdup(i8* %35)
  store i8* %36, i8** %8, align 8
  %37 = load i32, i32* @R2_HOME_THEMES, align 4
  %38 = call i32 @R_JOIN_2_PATHS(i32 %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i8*, i8** %8, align 8
  %40 = call i8* @r_str_newf(i32 %38, i8* %39)
  store i8* %40, i8** %9, align 8
  %41 = load i8*, i8** %9, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %34
  %44 = load i8*, i8** %9, align 8
  %45 = call i8* @r_str_home(i8* %44)
  br label %47

46:                                               ; preds = %34
  br label %47

47:                                               ; preds = %46, %43
  %48 = phi i8* [ %45, %43 ], [ null, %46 ]
  store i8* %48, i8** %10, align 8
  %49 = load i8*, i8** %9, align 8
  %50 = call i32 @free(i8* %49)
  %51 = load i32, i32* @R2_THEMES, align 4
  %52 = call i32 @R_JOIN_2_PATHS(i32 %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %53 = load i8*, i8** %8, align 8
  %54 = call i8* @r_str_newf(i32 %52, i8* %53)
  store i8* %54, i8** %9, align 8
  %55 = load i8*, i8** %9, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %47
  %58 = load i8*, i8** %9, align 8
  %59 = call i8* @r_str_r2_prefix(i8* %58)
  br label %61

60:                                               ; preds = %47
  br label %61

61:                                               ; preds = %60, %57
  %62 = phi i8* [ %59, %57 ], [ null, %60 ]
  store i8* %62, i8** %7, align 8
  %63 = load i8*, i8** %9, align 8
  %64 = call i32 @free(i8* %63)
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %66 = load i8*, i8** %10, align 8
  %67 = call i64 @load_theme(%struct.TYPE_6__* %65, i8* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %96, label %69

69:                                               ; preds = %61
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %71 = load i8*, i8** %7, align 8
  %72 = call i64 @load_theme(%struct.TYPE_6__* %70, i8* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %69
  %75 = load i8*, i8** @curtheme, align 8
  %76 = load i8*, i8** %8, align 8
  %77 = call i8* @r_str_dup(i8* %75, i8* %76)
  store i8* %77, i8** @curtheme, align 8
  br label %95

78:                                               ; preds = %69
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %80 = load i8*, i8** %8, align 8
  %81 = call i64 @load_theme(%struct.TYPE_6__* %79, i8* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %78
  %84 = load i8*, i8** @curtheme, align 8
  %85 = load i8*, i8** %8, align 8
  %86 = call i8* @r_str_dup(i8* %84, i8* %85)
  store i8* %86, i8** @curtheme, align 8
  br label %94

87:                                               ; preds = %78
  %88 = load i8*, i8** %8, align 8
  %89 = call i8* @r_file_abspath(i8* %88)
  store i8* %89, i8** %11, align 8
  %90 = load i8*, i8** %11, align 8
  %91 = call i32 @eprintf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i8* %90)
  %92 = load i8*, i8** %11, align 8
  %93 = call i32 @free(i8* %92)
  store i32 1, i32* %6, align 4
  br label %94

94:                                               ; preds = %87, %83
  br label %95

95:                                               ; preds = %94, %74
  br label %96

96:                                               ; preds = %95, %61
  %97 = load i8*, i8** %10, align 8
  %98 = call i32 @free(i8* %97)
  %99 = load i8*, i8** %7, align 8
  %100 = call i32 @free(i8* %99)
  %101 = load i8*, i8** %8, align 8
  %102 = call i32 @free(i8* %101)
  %103 = load i32, i32* %6, align 4
  %104 = icmp ne i32 %103, 0
  %105 = xor i1 %104, true
  %106 = zext i1 %105 to i32
  store i32 %106, i32* %3, align 4
  br label %107

107:                                              ; preds = %96, %25, %18
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local i32 @r_str_cmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @r_cons_pal_init(i32) #1

declare dso_local i8* @r_str_newf(i32, i8*) #1

declare dso_local i32 @R_JOIN_2_PATHS(i32, i8*) #1

declare dso_local i8* @r_str_home(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @r_str_r2_prefix(i8*) #1

declare dso_local i64 @load_theme(%struct.TYPE_6__*, i8*) #1

declare dso_local i8* @r_str_dup(i8*, i8*) #1

declare dso_local i8* @r_file_abspath(i8*) #1

declare dso_local i32 @eprintf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
