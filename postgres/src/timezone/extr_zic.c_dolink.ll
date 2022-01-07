; ModuleID = '/home/carl/AnghaBench/postgres/src/timezone/extr_zic.c_dolink.c'
source_filename = "/home/carl/AnghaBench/postgres/src/timezone/extr_zic.c_dolink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"%s: link from %s/%s failed: %s\0A\00", align 1
@progname = common dso_local global i8* null, align 8
@directory = common dso_local global i8* null, align 8
@EPERM = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"%s: Can't remove %s/%s: %s\0A\00", align 1
@ENOTSUP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"%s: Can't read %s/%s: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"%s: Can't create %s/%s: %s\0A\00", align 1
@EOF = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [39 x i8] c"copy used because hard link failed: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32)* @dolink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dolink(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %15 = load i8*, i8** %4, align 8
  %16 = call i64 @itsdir(i8* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %3
  %19 = load i32, i32* @stderr, align 4
  %20 = call i8* @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %21 = load i8*, i8** @progname, align 8
  %22 = load i8*, i8** @directory, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = load i32, i32* @EPERM, align 4
  %25 = call i8* @strerror(i32 %24)
  %26 = call i32 @fprintf(i32 %19, i8* %20, i8* %21, i8* %22, i8* %23, i8* %25)
  %27 = load i32, i32* @EXIT_FAILURE, align 4
  %28 = call i32 @exit(i32 %27) #3
  unreachable

29:                                               ; preds = %3
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i8*, i8** %5, align 8
  %34 = call i32 @itssymlink(i8* %33)
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %32, %29
  %36 = load i8*, i8** %5, align 8
  %37 = call i64 @remove(i8* %36)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  store i32 1, i32* %7, align 4
  br label %57

40:                                               ; preds = %35
  %41 = load i32, i32* @errno, align 4
  %42 = load i32, i32* @ENOENT, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %56

44:                                               ; preds = %40
  %45 = load i32, i32* @errno, align 4
  %46 = call i8* @strerror(i32 %45)
  store i8* %46, i8** %9, align 8
  %47 = load i32, i32* @stderr, align 4
  %48 = call i8* @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i8*, i8** @progname, align 8
  %50 = load i8*, i8** @directory, align 8
  %51 = load i8*, i8** %5, align 8
  %52 = load i8*, i8** %9, align 8
  %53 = call i32 @fprintf(i32 %47, i8* %48, i8* %49, i8* %50, i8* %51, i8* %52)
  %54 = load i32, i32* @EXIT_FAILURE, align 4
  %55 = call i32 @exit(i32 %54) #3
  unreachable

56:                                               ; preds = %40
  br label %57

57:                                               ; preds = %56, %39
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = load i32, i32* @ENOTSUP, align 4
  br label %66

62:                                               ; preds = %57
  %63 = load i8*, i8** %4, align 8
  %64 = load i8*, i8** %5, align 8
  %65 = call i32 @hardlinkerr(i8* %63, i8* %64)
  br label %66

66:                                               ; preds = %62, %60
  %67 = phi i32 [ %61, %60 ], [ %65, %62 ]
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* @ENOENT, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %80

71:                                               ; preds = %66
  %72 = load i32, i32* %7, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %80, label %74

74:                                               ; preds = %71
  %75 = load i8*, i8** %5, align 8
  %76 = call i32 @mkdirs(i8* %75, i32 1)
  store i32 1, i32* %7, align 4
  %77 = load i8*, i8** %4, align 8
  %78 = load i8*, i8** %5, align 8
  %79 = call i32 @hardlinkerr(i8* %77, i8* %78)
  store i32 %79, i32* %8, align 4
  br label %80

80:                                               ; preds = %74, %71, %66
  %81 = load i32, i32* %8, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %145

83:                                               ; preds = %80
  %84 = load i8*, i8** %4, align 8
  %85 = call i32* @fopen(i8* %84, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i32* %85, i32** %10, align 8
  %86 = load i32*, i32** %10, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %100, label %88

88:                                               ; preds = %83
  %89 = load i32, i32* @errno, align 4
  %90 = call i8* @strerror(i32 %89)
  store i8* %90, i8** %13, align 8
  %91 = load i32, i32* @stderr, align 4
  %92 = call i8* @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %93 = load i8*, i8** @progname, align 8
  %94 = load i8*, i8** @directory, align 8
  %95 = load i8*, i8** %4, align 8
  %96 = load i8*, i8** %13, align 8
  %97 = call i32 @fprintf(i32 %91, i8* %92, i8* %93, i8* %94, i8* %95, i8* %96)
  %98 = load i32, i32* @EXIT_FAILURE, align 4
  %99 = call i32 @exit(i32 %98) #3
  unreachable

100:                                              ; preds = %83
  %101 = load i8*, i8** %5, align 8
  %102 = call i32* @fopen(i8* %101, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  store i32* %102, i32** %11, align 8
  %103 = load i32*, i32** %11, align 8
  %104 = icmp ne i32* %103, null
  br i1 %104, label %117, label %105

105:                                              ; preds = %100
  %106 = load i32, i32* @errno, align 4
  %107 = call i8* @strerror(i32 %106)
  store i8* %107, i8** %14, align 8
  %108 = load i32, i32* @stderr, align 4
  %109 = call i8* @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %110 = load i8*, i8** @progname, align 8
  %111 = load i8*, i8** @directory, align 8
  %112 = load i8*, i8** %5, align 8
  %113 = load i8*, i8** %14, align 8
  %114 = call i32 @fprintf(i32 %108, i8* %109, i8* %110, i8* %111, i8* %112, i8* %113)
  %115 = load i32, i32* @EXIT_FAILURE, align 4
  %116 = call i32 @exit(i32 %115) #3
  unreachable

117:                                              ; preds = %100
  br label %118

118:                                              ; preds = %123, %117
  %119 = load i32*, i32** %10, align 8
  %120 = call i32 @getc(i32* %119)
  store i32 %120, i32* %12, align 4
  %121 = load i32, i32* @EOF, align 4
  %122 = icmp ne i32 %120, %121
  br i1 %122, label %123, label %127

123:                                              ; preds = %118
  %124 = load i32, i32* %12, align 4
  %125 = load i32*, i32** %11, align 8
  %126 = call i32 @putc(i32 %124, i32* %125)
  br label %118

127:                                              ; preds = %118
  %128 = load i32*, i32** %10, align 8
  %129 = load i8*, i8** @directory, align 8
  %130 = load i8*, i8** %4, align 8
  %131 = call i32 @close_file(i32* %128, i8* %129, i8* %130)
  %132 = load i32*, i32** %11, align 8
  %133 = load i8*, i8** @directory, align 8
  %134 = load i8*, i8** %5, align 8
  %135 = call i32 @close_file(i32* %132, i8* %133, i8* %134)
  %136 = load i32, i32* %8, align 4
  %137 = load i32, i32* @ENOTSUP, align 4
  %138 = icmp ne i32 %136, %137
  br i1 %138, label %139, label %144

139:                                              ; preds = %127
  %140 = call i8* @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0))
  %141 = load i32, i32* %8, align 4
  %142 = call i8* @strerror(i32 %141)
  %143 = call i32 @warning(i8* %140, i8* %142)
  br label %144

144:                                              ; preds = %139, %127
  br label %145

145:                                              ; preds = %144, %80
  ret void
}

declare dso_local i64 @itsdir(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i8* @strerror(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @itssymlink(i8*) #1

declare dso_local i64 @remove(i8*) #1

declare dso_local i32 @hardlinkerr(i8*, i8*) #1

declare dso_local i32 @mkdirs(i8*, i32) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @getc(i32*) #1

declare dso_local i32 @putc(i32, i32*) #1

declare dso_local i32 @close_file(i32*, i8*, i8*) #1

declare dso_local i32 @warning(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
