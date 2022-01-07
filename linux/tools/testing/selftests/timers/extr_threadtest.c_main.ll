; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/timers/extr_threadtest.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/timers/extr_threadtest.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_THREADS = common dso_local global i32 0, align 4
@DEFAULT_THREAD_COUNT = common dso_local global i32 0, align 4
@DEFAULT_RUNTIME = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"t:n:i\00", align 1
@optarg = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"using independent threads\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"Usage: %s [-t <secs>] [-n <numthreads>] [-i]\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"\09-t: time to run\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"\09-n: number of threads\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"\09-i: use independent threads\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [19 x i8] c"%a, %d %b %Y %T %z\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.8 = private unnamed_addr constant [54 x i8] c"Testing consistency with %i threads for %ld seconds: \00", align 1
@done = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [6 x i8] c"[OK]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca [255 x i8], align 16
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8* (i8*)*, align 8
  %18 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %19 = load i32, i32* @MAX_THREADS, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %12, align 8
  %22 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %13, align 8
  store i32 0, i32* %16, align 4
  store i8* (i8*)* @shared_thread, i8* (i8*)** %17, align 8
  %23 = load i32, i32* @DEFAULT_THREAD_COUNT, align 4
  store i32 %23, i32* %6, align 4
  %24 = load i64, i64* @DEFAULT_RUNTIME, align 8
  store i64 %24, i64* %10, align 8
  br label %25

25:                                               ; preds = %50, %2
  %26 = load i32, i32* %4, align 4
  %27 = load i8**, i8*** %5, align 8
  %28 = call i32 @getopt(i32 %26, i8** %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %28, i32* %14, align 4
  %29 = icmp ne i32 %28, -1
  br i1 %29, label %30, label %51

30:                                               ; preds = %25
  %31 = load i32, i32* %14, align 4
  switch i32 %31, label %42 [
    i32 116, label %32
    i32 110, label %36
    i32 105, label %40
  ]

32:                                               ; preds = %30
  %33 = load i32, i32* @optarg, align 4
  %34 = call i8* @atoi(i32 %33)
  %35 = ptrtoint i8* %34 to i64
  store i64 %35, i64* %10, align 8
  br label %50

36:                                               ; preds = %30
  %37 = load i32, i32* @optarg, align 4
  %38 = call i8* @atoi(i32 %37)
  %39 = ptrtoint i8* %38 to i32
  store i32 %39, i32* %6, align 4
  br label %50

40:                                               ; preds = %30
  store i8* (i8*)* @independent_thread, i8* (i8*)** %17, align 8
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %50

42:                                               ; preds = %30
  %43 = load i8**, i8*** %5, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 0
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i8* %45)
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %18, align 4
  br label %125

50:                                               ; preds = %40, %36, %32
  br label %25

51:                                               ; preds = %25
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @MAX_THREADS, align 4
  %54 = icmp sgt i32 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = load i32, i32* @MAX_THREADS, align 4
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %55, %51
  %58 = load i32, i32* @stdout, align 4
  %59 = call i32 @setbuf(i32 %58, i32* null)
  %60 = call i64 @time(i64* null)
  store i64 %60, i64* %8, align 8
  %61 = getelementptr inbounds [255 x i8], [255 x i8]* %11, i64 0, i64 0
  %62 = call i32 @localtime(i64* %8)
  %63 = call i32 @strftime(i8* %61, i32 255, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i32 %62)
  %64 = getelementptr inbounds [255 x i8], [255 x i8]* %11, i64 0, i64 0
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* %64)
  %66 = load i32, i32* %6, align 4
  %67 = load i64, i64* %10, align 8
  %68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.8, i64 0, i64 0), i32 %66, i64 %67)
  %69 = load i32, i32* @stdout, align 4
  %70 = call i32 @fflush(i32 %69)
  store i32 0, i32* %7, align 4
  br label %71

71:                                               ; preds = %81, %57
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* %6, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %84

75:                                               ; preds = %71
  %76 = load i32, i32* %7, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %22, i64 %77
  %79 = load i8* (i8*)*, i8* (i8*)** %17, align 8
  %80 = call i32 @pthread_create(i32* %78, i32 0, i8* (i8*)* %79, i32 0)
  br label %81

81:                                               ; preds = %75
  %82 = load i32, i32* %7, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %7, align 4
  br label %71

84:                                               ; preds = %71
  br label %85

85:                                               ; preds = %101, %84
  %86 = call i64 @time(i64* %9)
  %87 = load i64, i64* %8, align 8
  %88 = load i64, i64* %10, align 8
  %89 = add nsw i64 %87, %88
  %90 = icmp slt i64 %86, %89
  br i1 %90, label %91, label %102

91:                                               ; preds = %85
  %92 = call i32 @sleep(i32 1)
  %93 = load i32, i32* @done, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %91
  store i32 1, i32* %16, align 4
  %96 = getelementptr inbounds [255 x i8], [255 x i8]* %11, i64 0, i64 0
  %97 = call i32 @localtime(i64* %9)
  %98 = call i32 @strftime(i8* %96, i32 255, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i32 %97)
  %99 = getelementptr inbounds [255 x i8], [255 x i8]* %11, i64 0, i64 0
  %100 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* %99)
  br label %104

101:                                              ; preds = %91
  br label %85

102:                                              ; preds = %85
  %103 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  store i32 1, i32* @done, align 4
  br label %104

104:                                              ; preds = %102, %95
  store i32 0, i32* %7, align 4
  br label %105

105:                                              ; preds = %115, %104
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* %6, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %118

109:                                              ; preds = %105
  %110 = load i32, i32* %7, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %22, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @pthread_join(i32 %113, i8** %15)
  br label %115

115:                                              ; preds = %109
  %116 = load i32, i32* %7, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %7, align 4
  br label %105

118:                                              ; preds = %105
  %119 = load i32, i32* %16, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %118
  %122 = call i32 (...) @ksft_exit_fail()
  br label %123

123:                                              ; preds = %121, %118
  %124 = call i32 (...) @ksft_exit_pass()
  store i32 %124, i32* %3, align 4
  store i32 1, i32* %18, align 4
  br label %125

125:                                              ; preds = %123, %42
  %126 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %126)
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @shared_thread(i8*) #2

declare dso_local i32 @getopt(i32, i8**, i8*) #2

declare dso_local i8* @atoi(i32) #2

declare dso_local i8* @independent_thread(i8*) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @setbuf(i32, i32*) #2

declare dso_local i64 @time(i64*) #2

declare dso_local i32 @strftime(i8*, i32, i8*, i32) #2

declare dso_local i32 @localtime(i64*) #2

declare dso_local i32 @fflush(i32) #2

declare !callback !2 dso_local i32 @pthread_create(i32*, i32, i8* (i8*)*, i32) #2

declare dso_local i32 @sleep(i32) #2

declare dso_local i32 @pthread_join(i32, i8**) #2

declare dso_local i32 @ksft_exit_fail(...) #2

declare dso_local i32 @ksft_exit_pass(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
