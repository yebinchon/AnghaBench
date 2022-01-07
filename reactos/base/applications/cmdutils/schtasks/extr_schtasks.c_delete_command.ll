; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/cmdutils/schtasks/extr_schtasks.c_delete_command.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/cmdutils/schtasks/extr_schtasks.c_delete_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@f_optW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"force opt\0A\00", align 1
@tn_optW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"Missing /tn value\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Duplicated /tn argument\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Unsupported argument %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Missing /tn argument\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32**)* @delete_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @delete_command(i32 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32** %1, i32*** %5, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  br label %10

10:                                               ; preds = %58, %2
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %59

13:                                               ; preds = %10
  %14 = load i32**, i32*** %5, align 8
  %15 = getelementptr inbounds i32*, i32** %14, i64 0
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* @f_optW, align 4
  %18 = call i32 @strcmpiW(i32* %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %13
  %21 = call i32 @TRACE(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* %4, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* %4, align 4
  %24 = load i32**, i32*** %5, align 8
  %25 = getelementptr inbounds i32*, i32** %24, i32 1
  store i32** %25, i32*** %5, align 8
  br label %58

26:                                               ; preds = %13
  %27 = load i32**, i32*** %5, align 8
  %28 = getelementptr inbounds i32*, i32** %27, i64 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* @tn_optW, align 4
  %31 = call i32 @strcmpiW(i32* %29, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %51, label %33

33:                                               ; preds = %26
  %34 = load i32, i32* %4, align 4
  %35 = icmp slt i32 %34, 2
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %84

38:                                               ; preds = %33
  %39 = load i32*, i32** %6, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %84

43:                                               ; preds = %38
  %44 = load i32**, i32*** %5, align 8
  %45 = getelementptr inbounds i32*, i32** %44, i64 1
  %46 = load i32*, i32** %45, align 8
  store i32* %46, i32** %6, align 8
  %47 = load i32, i32* %4, align 4
  %48 = sub nsw i32 %47, 2
  store i32 %48, i32* %4, align 4
  %49 = load i32**, i32*** %5, align 8
  %50 = getelementptr inbounds i32*, i32** %49, i64 2
  store i32** %50, i32*** %5, align 8
  br label %57

51:                                               ; preds = %26
  %52 = load i32**, i32*** %5, align 8
  %53 = getelementptr inbounds i32*, i32** %52, i64 0
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @debugstr_w(i32* %54)
  %56 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %55)
  store i32 1, i32* %3, align 4
  br label %84

57:                                               ; preds = %43
  br label %58

58:                                               ; preds = %57, %20
  br label %10

59:                                               ; preds = %10
  %60 = load i32*, i32** %6, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %64, label %62

62:                                               ; preds = %59
  %63 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %84

64:                                               ; preds = %59
  %65 = call i32* (...) @get_tasks_root_folder()
  store i32* %65, i32** %7, align 8
  %66 = load i32*, i32** %7, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %64
  store i32 1, i32* %3, align 4
  br label %84

69:                                               ; preds = %64
  %70 = load i32*, i32** %6, align 8
  %71 = call i32 @SysAllocString(i32* %70)
  store i32 %71, i32* %8, align 4
  %72 = load i32*, i32** %7, align 8
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @ITaskFolder_DeleteTask(i32* %72, i32 %73, i32 0)
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* %8, align 4
  %76 = call i32 @SysFreeString(i32 %75)
  %77 = load i32*, i32** %7, align 8
  %78 = call i32 @ITaskFolder_Release(i32* %77)
  %79 = load i32, i32* %9, align 4
  %80 = call i64 @FAILED(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %69
  store i32 1, i32* %3, align 4
  br label %84

83:                                               ; preds = %69
  store i32 0, i32* %3, align 4
  br label %84

84:                                               ; preds = %83, %82, %68, %62, %51, %41, %36
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32 @strcmpiW(i32*, i32) #1

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @FIXME(i8*, ...) #1

declare dso_local i32 @debugstr_w(i32*) #1

declare dso_local i32* @get_tasks_root_folder(...) #1

declare dso_local i32 @SysAllocString(i32*) #1

declare dso_local i32 @ITaskFolder_DeleteTask(i32*, i32, i32) #1

declare dso_local i32 @SysFreeString(i32) #1

declare dso_local i32 @ITaskFolder_Release(i32*) #1

declare dso_local i64 @FAILED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
