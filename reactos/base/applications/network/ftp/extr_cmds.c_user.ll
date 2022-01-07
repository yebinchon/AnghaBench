; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/network/ftp/extr_cmds.c_user.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/network/ftp/extr_cmds.c_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@line = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"(username) \00", align 1
@stdout = common dso_local global i32 0, align 4
@margc = common dso_local global i32 0, align 4
@margv = common dso_local global i8** null, align 8
@.str.2 = private unnamed_addr constant [41 x i8] c"usage: %s username [password] [account]\0A\00", align 1
@code = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"USER %s\00", align 1
@CONTINUE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"Password: \00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"PASS %s\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"Account: \00", align 1
@stdin = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"ACCT %s\00", align 1
@COMPLETE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [15 x i8] c"Login failed.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @user(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca [80 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp slt i32 %8, 2
  br i1 %9, label %10, label %25

10:                                               ; preds = %2
  %11 = load i8*, i8** @line, align 8
  %12 = call i32 @strcat(i8* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %14 = load i32, i32* @stdout, align 4
  %15 = call i32 @fflush(i32 %14)
  %16 = load i8*, i8** @line, align 8
  %17 = load i8*, i8** @line, align 8
  %18 = call i32 @strlen(i8* %17)
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %16, i64 %19
  %21 = call i32 @gets(i8* %20)
  %22 = call i32 (...) @makeargv()
  %23 = load i32, i32* @margc, align 4
  store i32 %23, i32* %3, align 4
  %24 = load i8**, i8*** @margv, align 8
  store i8** %24, i8*** %4, align 8
  br label %25

25:                                               ; preds = %10, %2
  %26 = load i32, i32* %3, align 4
  %27 = icmp sgt i32 %26, 4
  br i1 %27, label %28, label %35

28:                                               ; preds = %25
  %29 = load i8**, i8*** %4, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 0
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i8* %31)
  %33 = load i32, i32* @stdout, align 4
  %34 = call i32 @fflush(i32 %33)
  store i32 -1, i32* @code, align 4
  br label %110

35:                                               ; preds = %25
  %36 = load i8**, i8*** %4, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 1
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @command(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @CONTINUE, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %57

43:                                               ; preds = %35
  %44 = load i32, i32* %3, align 4
  %45 = icmp slt i32 %44, 3
  br i1 %45, label %46, label %52

46:                                               ; preds = %43
  %47 = call i8* (i8*, ...) bitcast (i8* (...)* @getpass to i8* (i8*, ...)*)(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %48 = load i8**, i8*** %4, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i64 2
  store i8* %47, i8** %49, align 8
  %50 = load i32, i32* %3, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %46, %43
  %53 = load i8**, i8*** %4, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i64 2
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @command(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* %55)
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %52, %35
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @CONTINUE, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %90

61:                                               ; preds = %57
  %62 = load i32, i32* %3, align 4
  %63 = icmp slt i32 %62, 4
  br i1 %63, label %64, label %83

64:                                               ; preds = %61
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %66 = load i32, i32* @stdout, align 4
  %67 = call i32 @fflush(i32 %66)
  %68 = load i32, i32* @stdout, align 4
  %69 = call i32 @fflush(i32 %68)
  %70 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i64 0, i64 0
  %71 = load i32, i32* @stdin, align 4
  %72 = call i32 @fgets(i8* %70, i32 79, i32 %71)
  %73 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i64 0, i64 0
  %74 = call i32 @strlen(i8* %73)
  %75 = sub nsw i32 %74, 1
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i64 0, i64 %76
  store i8 0, i8* %77, align 1
  %78 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i64 0, i64 0
  %79 = load i8**, i8*** %4, align 8
  %80 = getelementptr inbounds i8*, i8** %79, i64 3
  store i8* %78, i8** %80, align 8
  %81 = load i32, i32* %3, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %64, %61
  %84 = load i8**, i8*** %4, align 8
  %85 = getelementptr inbounds i8*, i8** %84, i64 3
  %86 = load i8*, i8** %85, align 8
  %87 = call i32 @command(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* %86)
  store i32 %87, i32* %6, align 4
  %88 = load i32, i32* %7, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %7, align 4
  br label %90

90:                                               ; preds = %83, %57
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* @COMPLETE, align 4
  %93 = icmp ne i32 %91, %92
  br i1 %93, label %94, label %99

94:                                               ; preds = %90
  %95 = load i32, i32* @stdout, align 4
  %96 = call i32 @fprintf(i32 %95, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  %97 = load i32, i32* @stdout, align 4
  %98 = call i32 @fflush(i32 %97)
  br label %110

99:                                               ; preds = %90
  %100 = load i32, i32* %7, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %110, label %102

102:                                              ; preds = %99
  %103 = load i32, i32* %3, align 4
  %104 = icmp eq i32 %103, 4
  br i1 %104, label %105, label %110

105:                                              ; preds = %102
  %106 = load i8**, i8*** %4, align 8
  %107 = getelementptr inbounds i8*, i8** %106, i64 3
  %108 = load i8*, i8** %107, align 8
  %109 = call i32 @command(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* %108)
  br label %110

110:                                              ; preds = %28, %94, %105, %102, %99
  ret void
}

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @gets(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @makeargv(...) #1

declare dso_local i32 @command(i8*, i8*) #1

declare dso_local i8* @getpass(...) #1

declare dso_local i32 @fgets(i8*, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
