; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/network/ftp/extr_cmds.c_mls.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/network/ftp/extr_cmds.c_mls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@line = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"(remote-files) \00", align 1
@stdout = common dso_local global i32 0, align 4
@margc = common dso_local global i32 0, align 4
@margv = common dso_local global i8** null, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"(local-file) \00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"usage:%s remote-files local-file\0A\00", align 1
@code = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"output to local-file:\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"NLST\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"LIST\00", align 1
@mname = common dso_local global i8* null, align 8
@mflag = common dso_local global i32 0, align 4
@jabort = external dso_local global i32, align 4
@fromatty = common dso_local global i64 0, align 8
@interactive = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [14 x i8] c"Continue with\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mls(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [1 x i8], align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %10 = load i32, i32* %3, align 4
  %11 = icmp slt i32 %10, 2
  br i1 %11, label %12, label %26

12:                                               ; preds = %2
  %13 = load i32*, i32** @line, align 8
  %14 = call i32 @strcat(i32* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %16 = load i32, i32* @stdout, align 4
  %17 = call i32 @fflush(i32 %16)
  %18 = load i32*, i32** @line, align 8
  %19 = load i32*, i32** @line, align 8
  %20 = call i64 @strlen(i32* %19)
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = call i32 @gets(i32* %21)
  %23 = call i32 (...) @makeargv()
  %24 = load i32, i32* @margc, align 4
  store i32 %24, i32* %3, align 4
  %25 = load i8**, i8*** @margv, align 8
  store i8** %25, i8*** %4, align 8
  br label %26

26:                                               ; preds = %12, %2
  %27 = load i32, i32* %3, align 4
  %28 = icmp slt i32 %27, 3
  br i1 %28, label %29, label %43

29:                                               ; preds = %26
  %30 = load i32*, i32** @line, align 8
  %31 = call i32 @strcat(i32* %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %33 = load i32, i32* @stdout, align 4
  %34 = call i32 @fflush(i32 %33)
  %35 = load i32*, i32** @line, align 8
  %36 = load i32*, i32** @line, align 8
  %37 = call i64 @strlen(i32* %36)
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = call i32 @gets(i32* %38)
  %40 = call i32 (...) @makeargv()
  %41 = load i32, i32* @margc, align 4
  store i32 %41, i32* %3, align 4
  %42 = load i8**, i8*** @margv, align 8
  store i8** %42, i8*** %4, align 8
  br label %43

43:                                               ; preds = %29, %26
  %44 = load i32, i32* %3, align 4
  %45 = icmp slt i32 %44, 3
  br i1 %45, label %46, label %53

46:                                               ; preds = %43
  %47 = load i8**, i8*** %4, align 8
  %48 = getelementptr inbounds i8*, i8** %47, i64 0
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i8* %49)
  %51 = load i32, i32* @stdout, align 4
  %52 = call i32 @fflush(i32 %51)
  store i32 -1, i32* @code, align 4
  br label %145

53:                                               ; preds = %43
  %54 = load i8**, i8*** %4, align 8
  %55 = load i32, i32* %3, align 4
  %56 = sub nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8*, i8** %54, i64 %57
  %59 = load i8*, i8** %58, align 8
  store i8* %59, i8** %6, align 8
  %60 = load i8**, i8*** %4, align 8
  %61 = load i32, i32* %3, align 4
  %62 = sub nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8*, i8** %60, i64 %63
  store i8* null, i8** %64, align 8
  %65 = load i8*, i8** %6, align 8
  %66 = call i64 @strcmp(i8* %65, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %82

68:                                               ; preds = %53
  %69 = load i8*, i8** %6, align 8
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp ne i32 %71, 124
  br i1 %72, label %73, label %82

73:                                               ; preds = %68
  %74 = call i32 @globulize(i8** %6)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = load i8*, i8** %6, align 8
  %78 = call i64 @confirm(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %76, %73
  store i32 -1, i32* @code, align 4
  br label %145

81:                                               ; preds = %76
  br label %82

82:                                               ; preds = %81, %68, %53
  %83 = load i8**, i8*** %4, align 8
  %84 = getelementptr inbounds i8*, i8** %83, i64 0
  %85 = load i8*, i8** %84, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 1
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp eq i32 %88, 108
  %90 = zext i1 %89 to i64
  %91 = select i1 %89, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0)
  store i8* %91, i8** %5, align 8
  %92 = load i8**, i8*** %4, align 8
  %93 = getelementptr inbounds i8*, i8** %92, i64 0
  %94 = load i8*, i8** %93, align 8
  store i8* %94, i8** @mname, align 8
  store i32 1, i32* @mflag, align 4
  %95 = load i32, i32* @jabort, align 4
  %96 = call i32 @setjmp(i32 %95) #3
  store i32 1, i32* %9, align 4
  br label %97

97:                                               ; preds = %141, %82
  %98 = load i32, i32* @mflag, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %97
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* %3, align 4
  %103 = sub nsw i32 %102, 1
  %104 = icmp slt i32 %101, %103
  br label %105

105:                                              ; preds = %100, %97
  %106 = phi i1 [ false, %97 ], [ %104, %100 ]
  br i1 %106, label %107, label %144

107:                                              ; preds = %105
  %108 = load i32, i32* %9, align 4
  %109 = icmp eq i32 %108, 1
  %110 = zext i1 %109 to i64
  %111 = select i1 %109, i32 119, i32 97
  %112 = trunc i32 %111 to i8
  %113 = getelementptr inbounds [1 x i8], [1 x i8]* %7, i64 0, i64 0
  store i8 %112, i8* %113, align 1
  %114 = load i8*, i8** %5, align 8
  %115 = load i8*, i8** %6, align 8
  %116 = load i8**, i8*** %4, align 8
  %117 = load i32, i32* %9, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8*, i8** %116, i64 %118
  %120 = load i8*, i8** %119, align 8
  %121 = getelementptr inbounds [1 x i8], [1 x i8]* %7, i64 0, i64 0
  %122 = call i32 @recvrequest(i8* %114, i8* %115, i8* %120, i8* %121, i32 0)
  %123 = load i32, i32* @mflag, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %140, label %125

125:                                              ; preds = %107
  %126 = load i64, i64* @fromatty, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %140

128:                                              ; preds = %125
  %129 = load i32, i32* @interactive, align 4
  store i32 %129, i32* %8, align 4
  store i32 1, i32* @interactive, align 4
  %130 = load i8**, i8*** %4, align 8
  %131 = getelementptr inbounds i8*, i8** %130, i64 0
  %132 = load i8*, i8** %131, align 8
  %133 = call i64 @confirm(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i8* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %128
  %136 = load i32, i32* @mflag, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* @mflag, align 4
  br label %138

138:                                              ; preds = %135, %128
  %139 = load i32, i32* %8, align 4
  store i32 %139, i32* @interactive, align 4
  br label %140

140:                                              ; preds = %138, %125, %107
  br label %141

141:                                              ; preds = %140
  %142 = load i32, i32* %9, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %9, align 4
  br label %97

144:                                              ; preds = %105
  store i32 0, i32* @mflag, align 4
  br label %145

145:                                              ; preds = %144, %80, %46
  ret void
}

declare dso_local i32 @strcat(i32*, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @gets(i32*) #1

declare dso_local i64 @strlen(i32*) #1

declare dso_local i32 @makeargv(...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @globulize(i8**) #1

declare dso_local i64 @confirm(i8*, i8*) #1

; Function Attrs: returns_twice
declare dso_local i32 @setjmp(i32) #2

declare dso_local i32 @recvrequest(i8*, i8*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { returns_twice }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
