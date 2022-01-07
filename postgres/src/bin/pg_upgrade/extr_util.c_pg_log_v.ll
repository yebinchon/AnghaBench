; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_upgrade/extr_util.c_pg_log_v.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_upgrade/extr_util.c_pg_log_v.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32* }

@QUERY_ALLOC = common dso_local global i32 0, align 4
@log_opts = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [6 x i8] c"  %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@stdout = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"  %s%-*.*s\0D\00", align 1
@MESSAGE_WIDTH = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"\0A%s\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"Failure, exiting\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i32)* @pg_log_v to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pg_log_v(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @QUERY_ALLOC, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %7, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %8, align 8
  %13 = trunc i64 %10 to i32
  %14 = load i8*, i8** %5, align 8
  %15 = call i8* @_(i8* %14)
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @vsnprintf(i8* %12, i32 %13, i8* %15, i32 %16)
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 129
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 130
  br i1 %22, label %26, label %23

23:                                               ; preds = %20, %3
  %24 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @log_opts, i32 0, i32 0), align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %41

26:                                               ; preds = %23, %20
  %27 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @log_opts, i32 0, i32 1), align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %41

29:                                               ; preds = %26
  %30 = load i32, i32* %4, align 4
  %31 = icmp eq i32 %30, 130
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @log_opts, i32 0, i32 1), align 8
  %34 = call i32 @fprintf(i32* %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %12)
  br label %38

35:                                               ; preds = %29
  %36 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @log_opts, i32 0, i32 1), align 8
  %37 = call i32 @fprintf(i32* %36, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %12)
  br label %38

38:                                               ; preds = %35, %32
  %39 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @log_opts, i32 0, i32 1), align 8
  %40 = call i32 @fflush(i32* %39)
  br label %41

41:                                               ; preds = %38, %26, %23
  %42 = load i32, i32* %4, align 4
  switch i32 %42, label %98 [
    i32 129, label %43
    i32 130, label %49
    i32 131, label %91
    i32 128, label %91
    i32 132, label %93
  ]

43:                                               ; preds = %41
  %44 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @log_opts, i32 0, i32 0), align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %12)
  br label %48

48:                                               ; preds = %46, %43
  br label %99

49:                                               ; preds = %41
  %50 = load i32*, i32** @stdout, align 8
  %51 = call i32 @fileno(i32* %50)
  %52 = call i32 @isatty(i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %88

54:                                               ; preds = %49
  %55 = call i32 @strlen(i8* %12)
  %56 = sext i32 %55 to i64
  %57 = inttoptr i64 %56 to i8*
  %58 = load i8*, i8** @MESSAGE_WIDTH, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 -2
  %60 = icmp ule i8* %57, %59
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  %63 = load i8*, i8** @MESSAGE_WIDTH, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 -2
  %65 = load i8*, i8** @MESSAGE_WIDTH, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 -2
  %67 = call i32 @strlen(i8* %12)
  %68 = sext i32 %67 to i64
  %69 = inttoptr i64 %68 to i8*
  %70 = load i8*, i8** @MESSAGE_WIDTH, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 -2
  %72 = icmp ule i8* %69, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %54
  br label %85

74:                                               ; preds = %54
  %75 = call i32 @strlen(i8* %12)
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %12, i64 %76
  %78 = load i8*, i8** @MESSAGE_WIDTH, align 8
  %79 = ptrtoint i8* %77 to i64
  %80 = ptrtoint i8* %78 to i64
  %81 = sub i64 %79, %80
  %82 = add nsw i64 %81, 3
  %83 = add nsw i64 %82, 2
  %84 = inttoptr i64 %83 to i8*
  br label %85

85:                                               ; preds = %74, %73
  %86 = phi i8* [ %12, %73 ], [ %84, %74 ]
  %87 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %62, i8* %64, i8* %66, i8* %86)
  br label %90

88:                                               ; preds = %49
  %89 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %12)
  br label %90

90:                                               ; preds = %88, %85
  br label %99

91:                                               ; preds = %41, %41
  %92 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %12)
  br label %99

93:                                               ; preds = %41
  %94 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %12)
  %95 = call i8* @_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  %96 = call i32 (i8*, ...) @printf(i8* %95)
  %97 = call i32 @exit(i32 1) #4
  unreachable

98:                                               ; preds = %41
  br label %99

99:                                               ; preds = %98, %91, %90, %48
  %100 = load i32*, i32** @stdout, align 8
  %101 = call i32 @fflush(i32* %100)
  %102 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %102)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @vsnprintf(i8*, i32, i8*, i32) #2

declare dso_local i8* @_(i8*) #2

declare dso_local i32 @fprintf(i32*, i8*, i8*) #2

declare dso_local i32 @fflush(i32*) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @isatty(i32) #2

declare dso_local i32 @fileno(i32*) #2

declare dso_local i32 @strlen(i8*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
