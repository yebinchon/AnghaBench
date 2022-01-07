; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_dosinst.c_install_vimfilesdir.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_dosinst.c_install_vimfilesdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BUFSIZE = common dso_local global i32 0, align 4
@vimfiles_dir_choice = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"VIM\00", align 1
@installdir = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Internal error: $HOME is NULL\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"c:\\\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"%s\\vimfiles\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"Creating the following directories in \22%s\22:\0A\00", align 1
@vimfiles_subdirs = common dso_local global i8** null, align 8
@.str.6 = private unnamed_addr constant [6 x i8] c"%s\\%s\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"  %s\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @install_vimfilesdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @install_vimfilesdir(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %10 = load i32, i32* @BUFSIZE, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %5, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %6, align 8
  %14 = load i32, i32* @BUFSIZE, align 4
  %15 = zext i32 %14 to i64
  %16 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %7, align 8
  %17 = load i32, i32* @BUFSIZE, align 4
  %18 = zext i32 %17 to i64
  %19 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %8, align 8
  %20 = load i32, i32* @vimfiles_dir_choice, align 4
  switch i32 %20, label %42 [
    i32 128, label %21
    i32 130, label %32
    i32 129, label %41
  ]

21:                                               ; preds = %1
  %22 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i8* %22, i8** %4, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i32, i32* @installdir, align 4
  %27 = call i32 @dir_remove_last(i32 %26, i8* %13)
  br label %31

28:                                               ; preds = %21
  %29 = load i8*, i8** %4, align 8
  %30 = call i32 @strcpy(i8* %13, i8* %29)
  br label %31

31:                                               ; preds = %28, %25
  br label %42

32:                                               ; preds = %1
  %33 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i8* %33, i8** %4, align 8
  %34 = load i8*, i8** %4, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %4, align 8
  br label %38

38:                                               ; preds = %36, %32
  %39 = load i8*, i8** %4, align 8
  %40 = call i32 @strcpy(i8* %13, i8* %39)
  br label %42

41:                                               ; preds = %1
  store i32 1, i32* %9, align 4
  br label %70

42:                                               ; preds = %1, %38, %31
  %43 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* %13)
  %44 = call i32 @vim_mkdir(i8* %16, i32 493)
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i8* %16)
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %65, %42
  %47 = load i32, i32* %3, align 4
  %48 = load i8**, i8*** @vimfiles_subdirs, align 8
  %49 = call i32 @TABLE_SIZE(i8** %48)
  %50 = icmp slt i32 %47, %49
  br i1 %50, label %51, label %68

51:                                               ; preds = %46
  %52 = load i8**, i8*** @vimfiles_subdirs, align 8
  %53 = load i32, i32* %3, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8*, i8** %52, i64 %54
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* %16, i8* %56)
  %58 = load i8**, i8*** @vimfiles_subdirs, align 8
  %59 = load i32, i32* %3, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8*, i8** %58, i64 %60
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* %62)
  %64 = call i32 @vim_mkdir(i8* %19, i32 493)
  br label %65

65:                                               ; preds = %51
  %66 = load i32, i32* %3, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %3, align 4
  br label %46

68:                                               ; preds = %46
  %69 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %70

70:                                               ; preds = %68, %41
  %71 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %71)
  %72 = load i32, i32* %9, align 4
  switch i32 %72, label %74 [
    i32 0, label %73
    i32 1, label %73
  ]

73:                                               ; preds = %70, %70
  ret void

74:                                               ; preds = %70
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @getenv(i8*) #2

declare dso_local i32 @dir_remove_last(i32, i8*) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @sprintf(i8*, i8*, i8*, ...) #2

declare dso_local i32 @vim_mkdir(i8*, i32) #2

declare dso_local i32 @TABLE_SIZE(i8**) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
