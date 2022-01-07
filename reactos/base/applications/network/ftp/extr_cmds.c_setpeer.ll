; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/network/ftp/extr_cmds.c_setpeer.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/network/ftp/extr_cmds.c_setpeer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@connected = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Already connected to %s, use close first.\0A\00", align 1
@hostname = common dso_local global i8* null, align 8
@stdout = common dso_local global i32 0, align 4
@code = common dso_local global i32 0, align 4
@line = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"(to) \00", align 1
@margc = common dso_local global i32 0, align 4
@margv = common dso_local global i8** null, align 8
@.str.3 = private unnamed_addr constant [28 x i8] c"usage: %s host-name [port]\0A\00", align 1
@portnum = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [26 x i8] c"%s: bad port number-- %s\0A\00", align 1
@autologin = common dso_local global i64 0, align 8
@verbose = common dso_local global i32 0, align 4
@debug = common dso_local global i64 0, align 8
@allbinary = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [5 x i8] c"SYST\00", align 1
@COMPLETE = common dso_local global i64 0, align 8
@reply_string = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [27 x i8] c"Remote system type is %s.\0A\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"215 UNIX Type: L8\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"Using %s mode to transfer files.\0A\00", align 1
@typename = common dso_local global i8* null, align 8
@.str.9 = private unnamed_addr constant [11 x i8] c"215 TOPS20\00", align 1
@.str.10 = private unnamed_addr constant [77 x i8] c"Remember to set tenex mode when transfering binary files from this machine.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setpeer(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %9 = load i32, i32* @connected, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load i8*, i8** @hostname, align 8
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* %12)
  %14 = load i32, i32* @stdout, align 4
  %15 = call i32 @fflush(i32 %14)
  store i32 -1, i32* @code, align 4
  br label %161

16:                                               ; preds = %2
  %17 = load i32, i32* %3, align 4
  %18 = icmp slt i32 %17, 2
  br i1 %18, label %19, label %33

19:                                               ; preds = %16
  %20 = load i32*, i32** @line, align 8
  %21 = call i32 @strcat(i32* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %23 = load i32, i32* @stdout, align 4
  %24 = call i32 @fflush(i32 %23)
  %25 = load i32*, i32** @line, align 8
  %26 = load i32*, i32** @line, align 8
  %27 = call i64 @strlen(i32* %26)
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = call i32 @gets(i32* %28)
  %30 = call i32 (...) @makeargv()
  %31 = load i32, i32* @margc, align 4
  store i32 %31, i32* %3, align 4
  %32 = load i8**, i8*** @margv, align 8
  store i8** %32, i8*** %4, align 8
  br label %33

33:                                               ; preds = %19, %16
  %34 = load i32, i32* %3, align 4
  %35 = icmp sgt i32 %34, 3
  br i1 %35, label %36, label %43

36:                                               ; preds = %33
  %37 = load i8**, i8*** %4, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i8* %39)
  %41 = load i32, i32* @stdout, align 4
  %42 = call i32 @fflush(i32 %41)
  store i32 -1, i32* @code, align 4
  br label %161

43:                                               ; preds = %33
  %44 = load i32, i32* %3, align 4
  %45 = icmp sgt i32 %44, 2
  br i1 %45, label %46, label %70

46:                                               ; preds = %43
  %47 = load i8**, i8*** %4, align 8
  %48 = getelementptr inbounds i8*, i8** %47, i64 2
  %49 = load i8*, i8** %48, align 8
  %50 = call i64 @atoi(i8* %49)
  store i64 %50, i64* @portnum, align 8
  %51 = load i64, i64* @portnum, align 8
  %52 = icmp sle i64 %51, 0
  br i1 %52, label %53, label %67

53:                                               ; preds = %46
  %54 = load i8**, i8*** %4, align 8
  %55 = getelementptr inbounds i8*, i8** %54, i64 1
  %56 = load i8*, i8** %55, align 8
  %57 = load i8**, i8*** %4, align 8
  %58 = getelementptr inbounds i8*, i8** %57, i64 2
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* %56, i8* %59)
  %61 = load i8**, i8*** %4, align 8
  %62 = getelementptr inbounds i8*, i8** %61, i64 0
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i8* %63)
  %65 = load i32, i32* @stdout, align 4
  %66 = call i32 @fflush(i32 %65)
  store i32 -1, i32* @code, align 4
  br label %161

67:                                               ; preds = %46
  %68 = load i64, i64* @portnum, align 8
  %69 = call i64 @htons(i64 %68)
  store i64 %69, i64* @portnum, align 8
  br label %70

70:                                               ; preds = %67, %43
  %71 = load i8**, i8*** %4, align 8
  %72 = getelementptr inbounds i8*, i8** %71, i64 1
  %73 = load i8*, i8** %72, align 8
  %74 = load i64, i64* @portnum, align 8
  %75 = call i8* @hookup(i8* %73, i64 %74)
  store i8* %75, i8** %5, align 8
  %76 = load i8*, i8** %5, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %158

78:                                               ; preds = %70
  store i32 1, i32* @connected, align 4
  %79 = load i64, i64* @autologin, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %78
  %82 = load i8**, i8*** %4, align 8
  %83 = getelementptr inbounds i8*, i8** %82, i64 1
  %84 = load i8*, i8** %83, align 8
  %85 = call i32 @login(i8* %84)
  br label %86

86:                                               ; preds = %81, %78
  %87 = load i32, i32* @verbose, align 4
  store i32 %87, i32* %6, align 4
  %88 = load i64, i64* @debug, align 8
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  store i32 -1, i32* @verbose, align 4
  br label %91

91:                                               ; preds = %90, %86
  store i64 0, i64* @allbinary, align 8
  %92 = call i64 @command(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %93 = load i64, i64* @COMPLETE, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %134

95:                                               ; preds = %91
  %96 = load i32, i32* %6, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %134

98:                                               ; preds = %95
  %99 = load i8*, i8** @reply_string, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 4
  %101 = call i8* @index(i8* %100, i8 signext 32)
  store i8* %101, i8** %7, align 8
  %102 = load i8*, i8** %7, align 8
  %103 = icmp eq i8* %102, null
  br i1 %103, label %104, label %108

104:                                              ; preds = %98
  %105 = load i8*, i8** @reply_string, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 4
  %107 = call i8* @index(i8* %106, i8 signext 13)
  store i8* %107, i8** %7, align 8
  br label %108

108:                                              ; preds = %104, %98
  %109 = load i8*, i8** %7, align 8
  %110 = icmp ne i8* %109, null
  br i1 %110, label %111, label %124

111:                                              ; preds = %108
  %112 = load i8*, i8** %7, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 -1
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  %116 = icmp eq i32 %115, 46
  br i1 %116, label %117, label %120

117:                                              ; preds = %111
  %118 = load i8*, i8** %7, align 8
  %119 = getelementptr inbounds i8, i8* %118, i32 -1
  store i8* %119, i8** %7, align 8
  br label %120

120:                                              ; preds = %117, %111
  %121 = load i8*, i8** %7, align 8
  %122 = load i8, i8* %121, align 1
  store i8 %122, i8* %8, align 1
  %123 = load i8*, i8** %7, align 8
  store i8 0, i8* %123, align 1
  br label %124

124:                                              ; preds = %120, %108
  %125 = load i8*, i8** @reply_string, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 4
  %127 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i8* %126)
  %128 = load i8*, i8** %7, align 8
  %129 = icmp ne i8* %128, null
  br i1 %129, label %130, label %133

130:                                              ; preds = %124
  %131 = load i8, i8* %8, align 1
  %132 = load i8*, i8** %7, align 8
  store i8 %131, i8* %132, align 1
  br label %133

133:                                              ; preds = %130, %124
  br label %134

134:                                              ; preds = %133, %95, %91
  %135 = load i8*, i8** @reply_string, align 8
  %136 = call i32 @strncmp(i8* %135, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i32 17)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %146, label %138

138:                                              ; preds = %134
  %139 = call i32 @setbinary(i32 0, i32* null)
  %140 = load i32, i32* %6, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %138
  %143 = load i8*, i8** @typename, align 8
  %144 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0), i8* %143)
  br label %145

145:                                              ; preds = %142, %138
  br label %156

146:                                              ; preds = %134
  %147 = load i32, i32* %6, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %155

149:                                              ; preds = %146
  %150 = load i8*, i8** @reply_string, align 8
  %151 = call i32 @strncmp(i8* %150, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i32 10)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %155, label %153

153:                                              ; preds = %149
  %154 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.10, i64 0, i64 0))
  br label %155

155:                                              ; preds = %153, %149, %146
  br label %156

156:                                              ; preds = %155, %145
  %157 = load i32, i32* %6, align 4
  store i32 %157, i32* @verbose, align 4
  br label %158

158:                                              ; preds = %156, %70
  %159 = load i32, i32* @stdout, align 4
  %160 = call i32 @fflush(i32 %159)
  br label %161

161:                                              ; preds = %158, %53, %36, %11
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @strcat(i32*, i8*) #1

declare dso_local i32 @gets(i32*) #1

declare dso_local i64 @strlen(i32*) #1

declare dso_local i32 @makeargv(...) #1

declare dso_local i64 @atoi(i8*) #1

declare dso_local i64 @htons(i64) #1

declare dso_local i8* @hookup(i8*, i64) #1

declare dso_local i32 @login(i8*) #1

declare dso_local i64 @command(i8*) #1

declare dso_local i8* @index(i8*, i8 signext) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @setbinary(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
