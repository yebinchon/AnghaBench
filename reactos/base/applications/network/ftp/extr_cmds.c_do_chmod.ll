; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/network/ftp/extr_cmds.c_do_chmod.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/network/ftp/extr_cmds.c_do_chmod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [26 x i8] c"usage: %s mode file-name\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@code = common dso_local global i32 0, align 4
@line = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"(mode and file-name) \00", align 1
@margc = common dso_local global i32 0, align 4
@margv = common dso_local global i8** null, align 8
@.str.3 = private unnamed_addr constant [17 x i8] c"SITE CHMOD %s %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_chmod(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = icmp eq i32 %5, 2
  br i1 %6, label %7, label %14

7:                                                ; preds = %2
  %8 = load i8**, i8*** %4, align 8
  %9 = getelementptr inbounds i8*, i8** %8, i64 0
  %10 = load i8*, i8** %9, align 8
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %10)
  %12 = load i32, i32* @stdout, align 4
  %13 = call i32 @fflush(i32 %12)
  store i32 -1, i32* @code, align 4
  br label %49

14:                                               ; preds = %2
  %15 = load i32, i32* %3, align 4
  %16 = icmp slt i32 %15, 3
  br i1 %16, label %17, label %31

17:                                               ; preds = %14
  %18 = load i32*, i32** @line, align 8
  %19 = call i32 @strcat(i32* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %21 = load i32, i32* @stdout, align 4
  %22 = call i32 @fflush(i32 %21)
  %23 = load i32*, i32** @line, align 8
  %24 = load i32*, i32** @line, align 8
  %25 = call i64 @strlen(i32* %24)
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = call i32 @gets(i32* %26)
  %28 = call i32 (...) @makeargv()
  %29 = load i32, i32* @margc, align 4
  store i32 %29, i32* %3, align 4
  %30 = load i8**, i8*** @margv, align 8
  store i8** %30, i8*** %4, align 8
  br label %31

31:                                               ; preds = %17, %14
  %32 = load i32, i32* %3, align 4
  %33 = icmp ne i32 %32, 3
  br i1 %33, label %34, label %41

34:                                               ; preds = %31
  %35 = load i8**, i8*** %4, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 0
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %37)
  %39 = load i32, i32* @stdout, align 4
  %40 = call i32 @fflush(i32 %39)
  store i32 -1, i32* @code, align 4
  br label %49

41:                                               ; preds = %31
  %42 = load i8**, i8*** %4, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i64 1
  %44 = load i8*, i8** %43, align 8
  %45 = load i8**, i8*** %4, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i64 2
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @command(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8* %44, i8* %47)
  br label %49

49:                                               ; preds = %41, %34, %7
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @strcat(i32*, i8*) #1

declare dso_local i32 @gets(i32*) #1

declare dso_local i64 @strlen(i32*) #1

declare dso_local i32 @makeargv(...) #1

declare dso_local i32 @command(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
