; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/network/ftp/extr_cmds.c_mget.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/network/ftp/extr_cmds.c_mget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXPATHLEN = common dso_local global i32 0, align 4
@line = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"(remote-files) \00", align 1
@stdout = common dso_local global i32 0, align 4
@margc = common dso_local global i32 0, align 4
@margv = common dso_local global i8** null, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"usage:%s remote-files\0A\00", align 1
@code = common dso_local global i32 0, align 4
@mname = common dso_local global i8* null, align 8
@mflag = common dso_local global i32 0, align 4
@jabort = external dso_local global i32, align 4
@proxy = common dso_local global i32 0, align 4
@mcase = common dso_local global i64 0, align 8
@ntflag = common dso_local global i64 0, align 8
@mapflag = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"RETR\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@interactive = common dso_local global i32 0, align 4
@fromatty = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [14 x i8] c"Continue with\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"mget\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mget(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %12 = load i32, i32* @MAXPATHLEN, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %8, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %9, align 8
  %16 = load i32, i32* %3, align 4
  %17 = icmp slt i32 %16, 2
  br i1 %17, label %18, label %32

18:                                               ; preds = %2
  %19 = load i32*, i32** @line, align 8
  %20 = call i32 @strcat(i32* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i32, i32* @stdout, align 4
  %23 = call i32 @fflush(i32 %22)
  %24 = load i32*, i32** @line, align 8
  %25 = load i32*, i32** @line, align 8
  %26 = call i64 @strlen(i32* %25)
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = call i32 @gets(i32* %27)
  %29 = call i32 (...) @makeargv()
  %30 = load i32, i32* @margc, align 4
  store i32 %30, i32* %3, align 4
  %31 = load i8**, i8*** @margv, align 8
  store i8** %31, i8*** %4, align 8
  br label %32

32:                                               ; preds = %18, %2
  %33 = load i32, i32* %3, align 4
  %34 = icmp slt i32 %33, 2
  br i1 %34, label %35, label %42

35:                                               ; preds = %32
  %36 = load i8**, i8*** %4, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 0
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* %38)
  %40 = load i32, i32* @stdout, align 4
  %41 = call i32 @fflush(i32 %40)
  store i32 -1, i32* @code, align 4
  store i32 1, i32* %11, align 4
  br label %164

42:                                               ; preds = %32
  %43 = load i8**, i8*** %4, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 0
  %45 = load i8*, i8** %44, align 8
  store i8* %45, i8** @mname, align 8
  store i32 1, i32* @mflag, align 4
  %46 = load i32, i32* @jabort, align 4
  %47 = call i32 @setjmp(i32 %46) #4
  br label %48

48:                                               ; preds = %162, %58, %42
  %49 = load i8**, i8*** %4, align 8
  %50 = load i32, i32* @proxy, align 4
  %51 = call i8* @remglob(i8** %49, i32 %50)
  store i8* %51, i8** %5, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %163

53:                                               ; preds = %48
  %54 = load i8*, i8** %5, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  store i32 0, i32* @mflag, align 4
  br label %48

59:                                               ; preds = %53
  %60 = load i32, i32* @mflag, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %162

62:                                               ; preds = %59
  %63 = load i8**, i8*** %4, align 8
  %64 = getelementptr inbounds i8*, i8** %63, i64 0
  %65 = load i8*, i8** %64, align 8
  %66 = load i8*, i8** %5, align 8
  %67 = call i64 @confirm(i8* %65, i8* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %162

69:                                               ; preds = %62
  %70 = load i8*, i8** %5, align 8
  store i8* %70, i8** %6, align 8
  %71 = load i64, i64* @mcase, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %121

73:                                               ; preds = %69
  br label %74

74:                                               ; preds = %87, %73
  %75 = load i8*, i8** %6, align 8
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %74
  %80 = load i8*, i8** %6, align 8
  %81 = load i8, i8* %80, align 1
  %82 = call i32 @islower(i8 signext %81)
  %83 = icmp ne i32 %82, 0
  %84 = xor i1 %83, true
  br label %85

85:                                               ; preds = %79, %74
  %86 = phi i1 [ false, %74 ], [ %84, %79 ]
  br i1 %86, label %87, label %90

87:                                               ; preds = %85
  %88 = load i8*, i8** %6, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %89, i8** %6, align 8
  br label %74

90:                                               ; preds = %85
  %91 = load i8*, i8** %6, align 8
  %92 = load i8, i8* %91, align 1
  %93 = icmp ne i8 %92, 0
  br i1 %93, label %120, label %94

94:                                               ; preds = %90
  %95 = load i8*, i8** %5, align 8
  store i8* %95, i8** %6, align 8
  store i8* %15, i8** %7, align 8
  br label %96

96:                                               ; preds = %114, %94
  %97 = load i8*, i8** %6, align 8
  %98 = load i8, i8* %97, align 1
  %99 = load i8*, i8** %7, align 8
  store i8 %98, i8* %99, align 1
  %100 = icmp ne i8 %98, 0
  br i1 %100, label %101, label %119

101:                                              ; preds = %96
  %102 = load i8*, i8** %7, align 8
  %103 = load i8, i8* %102, align 1
  %104 = call i64 @isupper(i8 signext %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %114

106:                                              ; preds = %101
  %107 = load i8*, i8** %7, align 8
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = add nsw i32 97, %109
  %111 = sub nsw i32 %110, 65
  %112 = trunc i32 %111 to i8
  %113 = load i8*, i8** %7, align 8
  store i8 %112, i8* %113, align 1
  br label %114

114:                                              ; preds = %106, %101
  %115 = load i8*, i8** %6, align 8
  %116 = getelementptr inbounds i8, i8* %115, i32 1
  store i8* %116, i8** %6, align 8
  %117 = load i8*, i8** %7, align 8
  %118 = getelementptr inbounds i8, i8* %117, i32 1
  store i8* %118, i8** %7, align 8
  br label %96

119:                                              ; preds = %96
  br label %120

120:                                              ; preds = %119, %90
  store i8* %15, i8** %6, align 8
  br label %121

121:                                              ; preds = %120, %69
  %122 = load i64, i64* @ntflag, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %121
  %125 = load i8*, i8** %6, align 8
  %126 = call i8* @dotrans(i8* %125)
  store i8* %126, i8** %6, align 8
  br label %127

127:                                              ; preds = %124, %121
  %128 = load i64, i64* @mapflag, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %127
  %131 = load i8*, i8** %6, align 8
  %132 = call i8* @domap(i8* %131)
  store i8* %132, i8** %6, align 8
  br label %133

133:                                              ; preds = %130, %127
  %134 = load i8*, i8** %6, align 8
  %135 = load i8*, i8** %5, align 8
  %136 = load i8*, i8** %6, align 8
  %137 = load i8*, i8** %5, align 8
  %138 = icmp ne i8* %136, %137
  br i1 %138, label %143, label %139

139:                                              ; preds = %133
  %140 = load i32, i32* @interactive, align 4
  %141 = icmp ne i32 %140, 0
  %142 = xor i1 %141, true
  br label %143

143:                                              ; preds = %139, %133
  %144 = phi i1 [ true, %133 ], [ %142, %139 ]
  %145 = zext i1 %144 to i32
  %146 = call i32 @recvrequest(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %134, i8* %135, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i32 %145)
  %147 = load i32, i32* @mflag, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %161, label %149

149:                                              ; preds = %143
  %150 = load i64, i64* @fromatty, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %161

152:                                              ; preds = %149
  %153 = load i32, i32* @interactive, align 4
  store i32 %153, i32* %10, align 4
  store i32 1, i32* @interactive, align 4
  %154 = call i64 @confirm(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %152
  %157 = load i32, i32* @mflag, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* @mflag, align 4
  br label %159

159:                                              ; preds = %156, %152
  %160 = load i32, i32* %10, align 4
  store i32 %160, i32* @interactive, align 4
  br label %161

161:                                              ; preds = %159, %149, %143
  br label %162

162:                                              ; preds = %161, %62, %59
  br label %48

163:                                              ; preds = %48
  store i32 0, i32* @mflag, align 4
  store i32 0, i32* %11, align 4
  br label %164

164:                                              ; preds = %163, %35
  %165 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %165)
  %166 = load i32, i32* %11, align 4
  switch i32 %166, label %168 [
    i32 0, label %167
    i32 1, label %167
  ]

167:                                              ; preds = %164, %164
  ret void

168:                                              ; preds = %164
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strcat(i32*, i8*) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @fflush(i32) #2

declare dso_local i32 @gets(i32*) #2

declare dso_local i64 @strlen(i32*) #2

declare dso_local i32 @makeargv(...) #2

; Function Attrs: returns_twice
declare dso_local i32 @setjmp(i32) #3

declare dso_local i8* @remglob(i8**, i32) #2

declare dso_local i64 @confirm(i8*, i8*) #2

declare dso_local i32 @islower(i8 signext) #2

declare dso_local i64 @isupper(i8 signext) #2

declare dso_local i8* @dotrans(i8*) #2

declare dso_local i8* @domap(i8*) #2

declare dso_local i32 @recvrequest(i8*, i8*, i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { returns_twice }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
