; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/cmdutils/schtasks/extr_schtasks.c_wmain.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/cmdutils/schtasks/extr_schtasks.c_wmain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Print current tasks state\0A\00", align 1
@change_optW = common dso_local global i32 0, align 4
@create_optW = common dso_local global i32 0, align 4
@delete_optW = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"Unsupported command %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wmain(i32 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32** %1, i32*** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %19, %2
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %22

11:                                               ; preds = %7
  %12 = load i32**, i32*** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32*, i32** %12, i64 %14
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @wine_dbgstr_w(i32* %16)
  %18 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %17)
  br label %19

19:                                               ; preds = %11
  %20 = load i32, i32* %5, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %5, align 4
  br label %7

22:                                               ; preds = %7
  %23 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %24 = call i32 @CoInitialize(i32* null)
  %25 = load i32, i32* %3, align 4
  %26 = icmp slt i32 %25, 2
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %77

29:                                               ; preds = %22
  %30 = load i32**, i32*** %4, align 8
  %31 = getelementptr inbounds i32*, i32** %30, i64 1
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* @change_optW, align 4
  %34 = call i32 @strcmpiW(i32* %32, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %29
  %37 = load i32, i32* %3, align 4
  %38 = sub nsw i32 %37, 2
  %39 = load i32**, i32*** %4, align 8
  %40 = getelementptr inbounds i32*, i32** %39, i64 2
  %41 = call i32 @change_command(i32 %38, i32** %40)
  store i32 %41, i32* %6, align 4
  br label %76

42:                                               ; preds = %29
  %43 = load i32**, i32*** %4, align 8
  %44 = getelementptr inbounds i32*, i32** %43, i64 1
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* @create_optW, align 4
  %47 = call i32 @strcmpiW(i32* %45, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %42
  %50 = load i32, i32* %3, align 4
  %51 = sub nsw i32 %50, 2
  %52 = load i32**, i32*** %4, align 8
  %53 = getelementptr inbounds i32*, i32** %52, i64 2
  %54 = call i32 @create_command(i32 %51, i32** %53)
  store i32 %54, i32* %6, align 4
  br label %75

55:                                               ; preds = %42
  %56 = load i32**, i32*** %4, align 8
  %57 = getelementptr inbounds i32*, i32** %56, i64 1
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* @delete_optW, align 4
  %60 = call i32 @strcmpiW(i32* %58, i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %68, label %62

62:                                               ; preds = %55
  %63 = load i32, i32* %3, align 4
  %64 = sub nsw i32 %63, 2
  %65 = load i32**, i32*** %4, align 8
  %66 = getelementptr inbounds i32*, i32** %65, i64 2
  %67 = call i32 @delete_command(i32 %64, i32** %66)
  store i32 %67, i32* %6, align 4
  br label %74

68:                                               ; preds = %55
  %69 = load i32**, i32*** %4, align 8
  %70 = getelementptr inbounds i32*, i32** %69, i64 1
  %71 = load i32*, i32** %70, align 8
  %72 = call i32 @debugstr_w(i32* %71)
  %73 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %72)
  br label %74

74:                                               ; preds = %68, %62
  br label %75

75:                                               ; preds = %74, %49
  br label %76

76:                                               ; preds = %75, %36
  br label %77

77:                                               ; preds = %76, %27
  %78 = call i32 (...) @CoUninitialize()
  %79 = load i32, i32* %6, align 4
  ret i32 %79
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @wine_dbgstr_w(i32*) #1

declare dso_local i32 @CoInitialize(i32*) #1

declare dso_local i32 @FIXME(i8*, ...) #1

declare dso_local i32 @strcmpiW(i32*, i32) #1

declare dso_local i32 @change_command(i32, i32**) #1

declare dso_local i32 @create_command(i32, i32**) #1

declare dso_local i32 @delete_command(i32, i32**) #1

declare dso_local i32 @debugstr_w(i32*) #1

declare dso_local i32 @CoUninitialize(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
