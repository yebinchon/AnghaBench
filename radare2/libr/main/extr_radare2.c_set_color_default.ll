; ModuleID = '/home/carl/AnghaBench/radare2/libr/main/extr_radare2.c_set_color_default.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/main/extr_radare2.c_set_color_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"COLORTERM\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"truecolor\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"24bit\00", align 1
@r = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"scr.color\00", align 1
@COLOR_MODE_16M = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"256color\00", align 1
@COLOR_MODE_256 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1
@COLOR_MODE_DISABLED = common dso_local global i32 0, align 4
@COLOR_MODE_16 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @set_color_default to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_color_default() #0 {
  %1 = alloca i8*, align 8
  %2 = call i8* @r_sys_getenv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i8* %2, i8** %1, align 8
  %3 = load i8*, i8** %1, align 8
  %4 = icmp ne i8* %3, null
  br i1 %4, label %5, label %18

5:                                                ; preds = %0
  %6 = load i8*, i8** %1, align 8
  %7 = call i64 @r_str_endswith(i8* %6, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = load i8*, i8** %1, align 8
  %11 = call i64 @r_str_endswith(i8* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %9, %5
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @r, i32 0, i32 0), align 4
  %15 = load i32, i32* @COLOR_MODE_16M, align 4
  %16 = call i32 @r_config_set_i(i32 %14, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %15)
  br label %17

17:                                               ; preds = %13, %9
  br label %54

18:                                               ; preds = %0
  %19 = call i8* @r_sys_getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  store i8* %19, i8** %1, align 8
  %20 = load i8*, i8** %1, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  br label %57

23:                                               ; preds = %18
  %24 = load i8*, i8** %1, align 8
  %25 = call i64 @r_str_endswith(i8* %24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load i8*, i8** %1, align 8
  %29 = call i64 @r_str_endswith(i8* %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %27, %23
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @r, i32 0, i32 0), align 4
  %33 = load i32, i32* @COLOR_MODE_16M, align 4
  %34 = call i32 @r_config_set_i(i32 %32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %33)
  br label %53

35:                                               ; preds = %27
  %36 = load i8*, i8** %1, align 8
  %37 = call i64 @r_str_endswith(i8* %36, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @r, i32 0, i32 0), align 4
  %41 = load i32, i32* @COLOR_MODE_256, align 4
  %42 = call i32 @r_config_set_i(i32 %40, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %41)
  br label %52

43:                                               ; preds = %35
  %44 = load i8*, i8** %1, align 8
  %45 = call i32 @strcmp(i8* %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @r, i32 0, i32 0), align 4
  %49 = load i32, i32* @COLOR_MODE_DISABLED, align 4
  %50 = call i32 @r_config_set_i(i32 %48, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %47, %43
  br label %52

52:                                               ; preds = %51, %39
  br label %53

53:                                               ; preds = %52, %31
  br label %54

54:                                               ; preds = %53, %17
  %55 = load i8*, i8** %1, align 8
  %56 = call i32 @free(i8* %55)
  br label %57

57:                                               ; preds = %54, %22
  ret void
}

declare dso_local i8* @r_sys_getenv(i8*) #1

declare dso_local i64 @r_str_endswith(i8*, i8*) #1

declare dso_local i32 @r_config_set_i(i32, i8*, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
