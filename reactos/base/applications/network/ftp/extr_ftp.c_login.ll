; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/network/ftp/extr_ftp.c_login.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/network/ftp/extr_ftp.c_login.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@code = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Name (%s:%s): \00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"Name (%s): \00", align 1
@stdout = common dso_local global i32 0, align 4
@stdin = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"USER %s\00", align 1
@CONTINUE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"Password:\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"PASS %s\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"Account:\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"ACCT %s\00", align 1
@COMPLETE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [15 x i8] c"Login failed.\0A\00", align 1
@proxy = common dso_local global i64 0, align 8
@macnum = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [5 x i8] c"init\00", align 1
@macros = common dso_local global %struct.TYPE_2__* null, align 8
@line = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [6 x i8] c"$init\00", align 1
@margc = common dso_local global i32 0, align 4
@margv = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @login(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca [80 x i8], align 16
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %12, align 4
  store i8* null, i8** %10, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %8, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = call i32 @ruserpass(i8* %14, i8** %5, i8** %6, i8** %7)
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i32 -1, i32* @code, align 4
  store i32 0, i32* %2, align 4
  br label %132

19:                                               ; preds = %1
  %20 = load i32, i32* %11, align 4
  %21 = icmp ne i32 0, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load i8*, i8** %5, align 8
  store i8* %23, i8** %8, align 8
  %24 = load i8*, i8** %6, align 8
  store i8* %24, i8** %9, align 8
  %25 = load i8*, i8** %7, align 8
  store i8* %25, i8** %10, align 8
  br label %26

26:                                               ; preds = %22, %19
  br label %27

27:                                               ; preds = %59, %26
  %28 = load i8*, i8** %8, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %60

30:                                               ; preds = %27
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  %31 = load i8*, i8** %13, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load i8*, i8** %3, align 8
  %35 = load i8*, i8** %13, align 8
  %36 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %34, i8* %35)
  br label %40

37:                                               ; preds = %30
  %38 = load i8*, i8** %3, align 8
  %39 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %38)
  br label %40

40:                                               ; preds = %37, %33
  %41 = load i32, i32* @stdout, align 4
  %42 = call i32 @fflush(i32 %41)
  %43 = getelementptr inbounds [80 x i8], [80 x i8]* %4, i64 0, i64 0
  %44 = load i32, i32* @stdin, align 4
  %45 = call i32 @fgets(i8* %43, i32 79, i32 %44)
  %46 = getelementptr inbounds [80 x i8], [80 x i8]* %4, i64 0, i64 0
  %47 = call i32 @strlen(i8* %46)
  %48 = sub nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [80 x i8], [80 x i8]* %4, i64 0, i64 %49
  store i8 0, i8* %50, align 1
  %51 = getelementptr inbounds [80 x i8], [80 x i8]* %4, i64 0, i64 0
  %52 = load i8, i8* %51, align 16
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %40
  %56 = load i8*, i8** %13, align 8
  store i8* %56, i8** %8, align 8
  br label %59

57:                                               ; preds = %40
  %58 = getelementptr inbounds [80 x i8], [80 x i8]* %4, i64 0, i64 0
  store i8* %58, i8** %8, align 8
  br label %59

59:                                               ; preds = %57, %55
  br label %27

60:                                               ; preds = %27
  %61 = load i8*, i8** %8, align 8
  %62 = call i32 @command(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* %61)
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* @CONTINUE, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %76

66:                                               ; preds = %60
  %67 = load i8*, i8** %9, align 8
  %68 = icmp eq i8* %67, null
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  %70 = call i8* @getpass(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  store i8* %70, i8** %9, align 8
  br label %71

71:                                               ; preds = %69, %66
  %72 = load i8*, i8** %9, align 8
  %73 = call i32 @command(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* %72)
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* @stdin, align 4
  %75 = call i32 @fflush(i32 %74)
  br label %76

76:                                               ; preds = %71, %60
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* @CONTINUE, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %86

80:                                               ; preds = %76
  %81 = load i32, i32* %12, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %12, align 4
  %83 = call i8* @getpass(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  store i8* %83, i8** %10, align 8
  %84 = load i8*, i8** %10, align 8
  %85 = call i32 @command(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* %84)
  store i32 %85, i32* %11, align 4
  br label %86

86:                                               ; preds = %80, %76
  %87 = load i32, i32* %11, align 4
  %88 = load i32, i32* @COMPLETE, align 4
  %89 = icmp ne i32 %87, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %86
  %91 = load i32, i32* @stderr, align 4
  %92 = call i32 @fprintf(i32 %91, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %132

93:                                               ; preds = %86
  %94 = load i32, i32* %12, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %102, label %96

96:                                               ; preds = %93
  %97 = load i8*, i8** %10, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %99, label %102

99:                                               ; preds = %96
  %100 = load i8*, i8** %10, align 8
  %101 = call i32 @command(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* %100)
  br label %102

102:                                              ; preds = %99, %96, %93
  %103 = load i64, i64* @proxy, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %102
  store i32 1, i32* %2, align 4
  br label %132

106:                                              ; preds = %102
  store i32 0, i32* %11, align 4
  br label %107

107:                                              ; preds = %128, %106
  %108 = load i32, i32* %11, align 4
  %109 = load i32, i32* @macnum, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %131

111:                                              ; preds = %107
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** @macros, align 8
  %113 = load i32, i32* %11, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @strcmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %127, label %120

120:                                              ; preds = %111
  %121 = load i32, i32* @line, align 4
  %122 = call i32 @strcpy(i32 %121, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  %123 = call i32 (...) @makeargv()
  %124 = load i32, i32* @margc, align 4
  %125 = load i32, i32* @margv, align 4
  %126 = call i32 @domacro(i32 %124, i32 %125)
  br label %131

127:                                              ; preds = %111
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %11, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %11, align 4
  br label %107

131:                                              ; preds = %120, %107
  store i32 1, i32* %2, align 4
  br label %132

132:                                              ; preds = %131, %105, %90, %18
  %133 = load i32, i32* %2, align 4
  ret i32 %133
}

declare dso_local i32 @ruserpass(i8*, i8**, i8**, i8**) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @fgets(i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @command(i8*, i8*) #1

declare dso_local i8* @getpass(i8*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @makeargv(...) #1

declare dso_local i32 @domacro(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
