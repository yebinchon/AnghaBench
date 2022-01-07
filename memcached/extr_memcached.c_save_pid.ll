; ModuleID = '/home/carl/AnghaBench/memcached/extr_memcached.c_save_pid.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_memcached.c_save_pid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@F_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stderr = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [65 x i8] c"WARNING: The pid file contained the following (running) pid: %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%s.tmp\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"Could not open the pid file %s for writing\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"Could not close the pid file %s\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"Could not rename the pid file from %s to %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @save_pid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @save_pid(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca [1024 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca [1024 x i8], align 16
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = load i32, i32* @F_OK, align 4
  %9 = call i64 @access(i8* %7, i32 %8)
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %38

11:                                               ; preds = %1
  %12 = load i8*, i8** %2, align 8
  %13 = call i32* @fopen(i8* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %13, i32** %3, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %37

15:                                               ; preds = %11
  %16 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %17 = load i32*, i32** %3, align 8
  %18 = call i32* @fgets(i8* %16, i32 1024, i32* %17)
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %34

20:                                               ; preds = %15
  %21 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %22 = call i64 @safe_strtoul(i8* %21, i32* %5)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %20
  %25 = load i32, i32* %5, align 4
  %26 = call i64 @kill(i32 %25, i32 0)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = load i32*, i32** @stderr, align 8
  %30 = load i32, i32* %5, align 4
  %31 = zext i32 %30 to i64
  %32 = call i32 @fprintf(i32* %29, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i64 %31)
  br label %33

33:                                               ; preds = %28, %24, %20
  br label %34

34:                                               ; preds = %33, %15
  %35 = load i32*, i32** %3, align 8
  %36 = call i32 @fclose(i32* %35)
  br label %37

37:                                               ; preds = %34, %11
  br label %38

38:                                               ; preds = %37, %1
  %39 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %40 = load i8*, i8** %2, align 8
  %41 = call i32 @snprintf(i8* %39, i32 1024, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %40)
  %42 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %43 = call i32* @fopen(i8* %42, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32* %43, i32** %3, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %38
  %46 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %47 = call i32 (i8*, i8*, ...) @vperror(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i8* %46)
  br label %67

48:                                               ; preds = %38
  %49 = load i32*, i32** %3, align 8
  %50 = call i64 (...) @getpid()
  %51 = call i32 @fprintf(i32* %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i64 %50)
  %52 = load i32*, i32** %3, align 8
  %53 = call i32 @fclose(i32* %52)
  %54 = icmp eq i32 %53, -1
  br i1 %54, label %55, label %58

55:                                               ; preds = %48
  %56 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %57 = call i32 (i8*, i8*, ...) @vperror(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i8* %56)
  br label %58

58:                                               ; preds = %55, %48
  %59 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %60 = load i8*, i8** %2, align 8
  %61 = call i64 @rename(i8* %59, i8* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %65 = load i8*, i8** %2, align 8
  %66 = call i32 (i8*, i8*, ...) @vperror(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0), i8* %64, i8* %65)
  br label %67

67:                                               ; preds = %45, %63, %58
  ret void
}

declare dso_local i64 @access(i8*, i32) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32* @fgets(i8*, i32, i32*) #1

declare dso_local i64 @safe_strtoul(i8*, i32*) #1

declare dso_local i64 @kill(i32, i32) #1

declare dso_local i32 @fprintf(i32*, i8*, i64) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @vperror(i8*, i8*, ...) #1

declare dso_local i64 @getpid(...) #1

declare dso_local i64 @rename(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
