; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_uninstal.c_main.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_uninstal.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRUE = common dso_local global i64 0, align 8
@interactive = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"This program will remove the following items:\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"\0ARemove %s (y/n)? \00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"them\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"it\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"gvim.exe\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.7 = private unnamed_addr constant [60 x i8] c"gvim.exe detected.  Attempting to unregister gvim with OLE\0A\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"gvim.exe -silent -unregister\00", align 1
@.str.9 = private unnamed_addr constant [68 x i8] c"\0AYou may now want to delete the Vim executables and runtime files.\0A\00", align 1
@.str.10 = private unnamed_addr constant [43 x i8] c"(They are still where you unpacked them.)\0A\00", align 1
@stdin = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [24 x i8] c"\0APress Enter to exit...\00", align 1
@BUFSIZE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@ICON_COUNT = common dso_local global i32 0, align 4
@VIM_STARTMENU = common dso_local global i8* null, align 8
@icon_link_names = common dso_local global i8** null, align 8
@icon_names = common dso_local global i8** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  %8 = load i64, i64* @TRUE, align 8
  store i64 %8, i64* @interactive, align 8
  %9 = load i8**, i8*** %5, align 8
  %10 = call i32 @do_inits(i8** %9)
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %13 = call i32 @remove_batfiles(i32 0)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %34

16:                                               ; preds = %2
  %17 = load i64, i64* @interactive, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %16
  %20 = load i32, i32* %6, align 4
  %21 = icmp sgt i32 %20, 1
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* %23)
  br label %25

25:                                               ; preds = %19, %16
  %26 = load i64, i64* @interactive, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = call i64 (...) @confirm()
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28, %25
  %32 = call i32 @remove_batfiles(i32 1)
  br label %33

33:                                               ; preds = %31, %28
  br label %34

34:                                               ; preds = %33, %2
  %35 = call i32* @fopen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  store i32* %35, i32** %7, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %43

38:                                               ; preds = %34
  %39 = load i32*, i32** %7, align 8
  %40 = call i32 @fclose(i32* %39)
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.7, i64 0, i64 0))
  %42 = call i32 @system(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0))
  br label %43

43:                                               ; preds = %38, %34
  %44 = call i32 (...) @delete_uninstall_key()
  %45 = load i64, i64* @interactive, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.9, i64 0, i64 0))
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.10, i64 0, i64 0))
  br label %50

50:                                               ; preds = %47, %43
  %51 = load i64, i64* @interactive, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %50
  %54 = load i32, i32* @stdin, align 4
  %55 = call i32 @rewind(i32 %54)
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0))
  %57 = call i32 (...) @getchar()
  br label %60

58:                                               ; preds = %50
  %59 = call i32 @sleep(i32 3)
  br label %60

60:                                               ; preds = %58, %53
  ret i32 0
}

declare dso_local i32 @do_inits(i8**) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @remove_batfiles(i32) #1

declare dso_local i64 @confirm(...) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @system(i8*) #1

declare dso_local i32 @delete_uninstall_key(...) #1

declare dso_local i32 @rewind(i32) #1

declare dso_local i32 @getchar(...) #1

declare dso_local i32 @sleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
