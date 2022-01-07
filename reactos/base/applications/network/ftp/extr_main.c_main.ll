; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/network/ftp/extr_main.c_main.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/network/ftp/extr_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8* }
%struct.servent = type { i32 }

@O_BINARY = common dso_local global i32 0, align 4
@_fmode = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Could not initialize Windows socket interface.\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"ftp\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"ftp: ftp/tcp: unknown service\0A\00", align 1
@portnum = common dso_local global i32 0, align 4
@doglob = common dso_local global i32 0, align 4
@interactive = common dso_local global i32 0, align 4
@autologin = common dso_local global i32 0, align 4
@SO_DEBUG = common dso_local global i32 0, align 4
@options = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@verbose = common dso_local global i32 0, align 4
@trace = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"ftp: %c: unknown option\0A\00", align 1
@fromatty = common dso_local global i32 0, align 4
@typename = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [6 x i8] c"ascii\00", align 1
@TYPE_A = common dso_local global i32 0, align 4
@type = common dso_local global i32 0, align 4
@formname = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [10 x i8] c"non-print\00", align 1
@FORM_N = common dso_local global i32 0, align 4
@form = common dso_local global i32 0, align 4
@modename = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [7 x i8] c"stream\00", align 1
@MODE_S = common dso_local global i32 0, align 4
@mode = common dso_local global i32 0, align 4
@structname = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@STRU_F = common dso_local global i32 0, align 4
@stru = common dso_local global i32 0, align 4
@bytename = common dso_local global i8* null, align 8
@.str.9 = private unnamed_addr constant [2 x i8] c"8\00", align 1
@bytesize = common dso_local global i32 0, align 4
@cpend = common dso_local global i64 0, align 8
@proxy = common dso_local global i64 0, align 8
@passivemode = common dso_local global i32 0, align 4
@crflag = common dso_local global i32 0, align 4
@home = common dso_local global i8* null, align 8
@.str.10 = private unnamed_addr constant [4 x i8] c"C:/\00", align 1
@toplevel = common dso_local global i32 0, align 4
@MAXPATHLEN = common dso_local global i32 0, align 4
@pw = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.servent*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %12 = load i32, i32* @O_BINARY, align 4
  store i32 %12, i32* @_fmode, align 4
  %13 = call i32 @MAKEWORD(i32 1, i32 1)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = call i32 @WSAStartup(i32 %14, i32* %10)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load i32, i32* @stderr, align 4
  %20 = call i32 (i32, i8*, ...) @fprintf(i32 %19, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %21 = call i32 @exit(i32 1) #4
  unreachable

22:                                               ; preds = %2
  %23 = call %struct.servent* @getservbyname(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store %struct.servent* %23, %struct.servent** %11, align 8
  %24 = load %struct.servent*, %struct.servent** %11, align 8
  %25 = icmp eq %struct.servent* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load i32, i32* @stderr, align 4
  %28 = call i32 (i32, i8*, ...) @fprintf(i32 %27, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %29 = call i32 @exit(i32 1) #4
  unreachable

30:                                               ; preds = %22
  %31 = load %struct.servent*, %struct.servent** %11, align 8
  %32 = getelementptr inbounds %struct.servent, %struct.servent* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* @portnum, align 4
  store i32 1, i32* @doglob, align 4
  store i32 1, i32* @interactive, align 4
  store i32 1, i32* @autologin, align 4
  %34 = load i32, i32* %4, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %4, align 4
  %36 = load i8**, i8*** %5, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i32 1
  store i8** %37, i8*** %5, align 8
  br label %38

38:                                               ; preds = %87, %30
  %39 = load i32, i32* %4, align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %38
  %42 = load i8**, i8*** %5, align 8
  %43 = load i8*, i8** %42, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 45
  br label %47

47:                                               ; preds = %41, %38
  %48 = phi i1 [ false, %38 ], [ %46, %41 ]
  br i1 %48, label %49, label %92

49:                                               ; preds = %47
  %50 = load i8**, i8*** %5, align 8
  %51 = load i8*, i8** %50, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 1
  store i8* %52, i8** %6, align 8
  br label %53

53:                                               ; preds = %84, %49
  %54 = load i8*, i8** %6, align 8
  %55 = load i8, i8* %54, align 1
  %56 = icmp ne i8 %55, 0
  br i1 %56, label %57, label %87

57:                                               ; preds = %53
  %58 = load i8*, i8** %6, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  switch i32 %60, label %76 [
    i32 100, label %61
    i32 118, label %67
    i32 116, label %70
    i32 105, label %73
    i32 110, label %74
    i32 103, label %75
  ]

61:                                               ; preds = %57
  %62 = load i32, i32* @SO_DEBUG, align 4
  %63 = load i32, i32* @options, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* @options, align 4
  %65 = load i32, i32* @debug, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* @debug, align 4
  br label %83

67:                                               ; preds = %57
  %68 = load i32, i32* @verbose, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* @verbose, align 4
  br label %83

70:                                               ; preds = %57
  %71 = load i32, i32* @trace, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* @trace, align 4
  br label %83

73:                                               ; preds = %57
  store i32 0, i32* @interactive, align 4
  br label %83

74:                                               ; preds = %57
  store i32 0, i32* @autologin, align 4
  br label %83

75:                                               ; preds = %57
  store i32 0, i32* @doglob, align 4
  br label %83

76:                                               ; preds = %57
  %77 = load i32, i32* @stdout, align 4
  %78 = load i8*, i8** %6, align 8
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = call i32 (i32, i8*, ...) @fprintf(i32 %77, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %80)
  %82 = call i32 @exit(i32 1) #4
  unreachable

83:                                               ; preds = %75, %74, %73, %70, %67, %61
  br label %84

84:                                               ; preds = %83
  %85 = load i8*, i8** %6, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %6, align 8
  br label %53

87:                                               ; preds = %53
  %88 = load i32, i32* %4, align 4
  %89 = add nsw i32 %88, -1
  store i32 %89, i32* %4, align 4
  %90 = load i8**, i8*** %5, align 8
  %91 = getelementptr inbounds i8*, i8** %90, i32 1
  store i8** %91, i8*** %5, align 8
  br label %38

92:                                               ; preds = %47
  store i32 1, i32* @fromatty, align 4
  %93 = load i8*, i8** @typename, align 8
  %94 = call i64 @strcpy(i8* %93, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %95 = load i32, i32* @TYPE_A, align 4
  store i32 %95, i32* @type, align 4
  %96 = load i8*, i8** @formname, align 8
  %97 = call i64 @strcpy(i8* %96, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %98 = load i32, i32* @FORM_N, align 4
  store i32 %98, i32* @form, align 4
  %99 = load i8*, i8** @modename, align 8
  %100 = call i64 @strcpy(i8* %99, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %101 = load i32, i32* @MODE_S, align 4
  store i32 %101, i32* @mode, align 4
  %102 = load i8*, i8** @structname, align 8
  %103 = call i64 @strcpy(i8* %102, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %104 = load i32, i32* @STRU_F, align 4
  store i32 %104, i32* @stru, align 4
  %105 = load i8*, i8** @bytename, align 8
  %106 = call i64 @strcpy(i8* %105, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  store i32 8, i32* @bytesize, align 4
  %107 = load i32, i32* @fromatty, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %92
  %110 = load i32, i32* @verbose, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* @verbose, align 4
  br label %112

112:                                              ; preds = %109, %92
  store i64 0, i64* @cpend, align 8
  store i64 0, i64* @proxy, align 8
  store i32 1, i32* @passivemode, align 4
  store i32 1, i32* @crflag, align 4
  %113 = load i8*, i8** @home, align 8
  %114 = call i64 @strcpy(i8* %113, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0))
  %115 = load i32, i32* %4, align 4
  %116 = icmp sgt i32 %115, 0
  br i1 %116, label %117, label %129

117:                                              ; preds = %112
  %118 = load i32, i32* @toplevel, align 4
  %119 = call i64 @setjmp(i32 %118) #5
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %117
  %122 = call i32 @exit(i32 0) #4
  unreachable

123:                                              ; preds = %117
  %124 = load i32, i32* %4, align 4
  %125 = add nsw i32 %124, 1
  %126 = load i8**, i8*** %5, align 8
  %127 = getelementptr inbounds i8*, i8** %126, i64 -1
  %128 = call i32 @setpeer(i32 %125, i8** %127)
  br label %129

129:                                              ; preds = %123, %112
  %130 = load i32, i32* @toplevel, align 4
  %131 = call i64 @setjmp(i32 %130) #5
  %132 = icmp eq i64 %131, 0
  %133 = zext i1 %132 to i32
  store i32 %133, i32* %7, align 4
  %134 = load i32, i32* %7, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %129
  br label %137

137:                                              ; preds = %136, %129
  br label %138

138:                                              ; preds = %138, %137
  %139 = load i32, i32* %7, align 4
  %140 = call i32 @cmdscanner(i32 %139)
  store i32 1, i32* %7, align 4
  br label %138
}

declare dso_local i32 @MAKEWORD(i32, i32) #1

declare dso_local i32 @WSAStartup(i32, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local %struct.servent* @getservbyname(i8*, i8*) #1

declare dso_local i64 @strcpy(i8*, i8*) #1

; Function Attrs: returns_twice
declare dso_local i64 @setjmp(i32) #3

declare dso_local i32 @setpeer(i32, i8**) #1

declare dso_local i32 @cmdscanner(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }
attributes #5 = { returns_twice }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
