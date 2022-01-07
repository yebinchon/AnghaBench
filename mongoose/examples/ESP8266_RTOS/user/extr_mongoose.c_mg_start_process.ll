; ModuleID = '/home/carl/AnghaBench/mongoose/examples/ESP8266_RTOS/user/extr_mongoose.c_mg_start_process.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/ESP8266_RTOS/user/extr_mongoose.c_mg_start_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SIGCHLD = common dso_local global i32 0, align 4
@SIG_DFL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Status: 500\0D\0A\0D\0A500 Server Error: %s%s%s: %s\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@errno = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*, i8**, i8*, i32)* @mg_start_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mg_start_process(i8* %0, i8* %1, i8* %2, i8** %3, i8* %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca [500 x i8], align 16
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8** %3, i8*** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %16 = call i64 (...) @fork()
  store i64 %16, i64* %14, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = load i64, i64* %14, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %69

20:                                               ; preds = %6
  %21 = load i8*, i8** %11, align 8
  %22 = call i32 @chdir(i8* %21)
  store i32 %22, i32* %15, align 4
  %23 = load i32, i32* %15, align 4
  %24 = load i32, i32* %12, align 4
  %25 = call i32 @dup2(i32 %24, i32 0)
  %26 = load i32, i32* %12, align 4
  %27 = call i32 @dup2(i32 %26, i32 1)
  %28 = load i32, i32* %12, align 4
  %29 = call i32 @closesocket(i32 %28)
  %30 = load i32, i32* @SIGCHLD, align 4
  %31 = load i32, i32* @SIG_DFL, align 4
  %32 = call i32 @signal(i32 %30, i32 %31)
  %33 = load i8*, i8** %7, align 8
  %34 = icmp eq i8* %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %20
  %36 = load i8*, i8** %8, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = load i8**, i8*** %10, align 8
  %39 = call i32 (i8*, i8*, i8*, ...) @execle(i8* %36, i8* %37, i8* null, i8** %38)
  br label %46

40:                                               ; preds = %20
  %41 = load i8*, i8** %7, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = load i8**, i8*** %10, align 8
  %45 = call i32 (i8*, i8*, i8*, ...) @execle(i8* %41, i8* %42, i8* %43, i8* null, i8** %44)
  br label %46

46:                                               ; preds = %40, %35
  %47 = getelementptr inbounds [500 x i8], [500 x i8]* %13, i64 0, i64 0
  %48 = load i8*, i8** %7, align 8
  %49 = icmp eq i8* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  br label %53

51:                                               ; preds = %46
  %52 = load i8*, i8** %7, align 8
  br label %53

53:                                               ; preds = %51, %50
  %54 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %50 ], [ %52, %51 ]
  %55 = load i8*, i8** %7, align 8
  %56 = icmp eq i8* %55, null
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %59 = load i8*, i8** %8, align 8
  %60 = load i32, i32* @errno, align 4
  %61 = call i32 @strerror(i32 %60)
  %62 = call i32 @snprintf(i8* %47, i32 500, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i8* %54, i8* %58, i8* %59, i32 %61)
  %63 = getelementptr inbounds [500 x i8], [500 x i8]* %13, i64 0, i64 0
  %64 = getelementptr inbounds [500 x i8], [500 x i8]* %13, i64 0, i64 0
  %65 = call i32 @strlen(i8* %64)
  %66 = call i32 @send(i32 1, i8* %63, i32 %65, i32 0)
  %67 = load i32, i32* @EXIT_FAILURE, align 4
  %68 = call i32 @_exit(i32 %67) #3
  unreachable

69:                                               ; preds = %6
  %70 = load i64, i64* %14, align 8
  %71 = icmp ne i64 %70, 0
  %72 = zext i1 %71 to i32
  ret i32 %72
}

declare dso_local i64 @fork(...) #1

declare dso_local i32 @chdir(i8*) #1

declare dso_local i32 @dup2(i32, i32) #1

declare dso_local i32 @closesocket(i32) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @execle(i8*, i8*, i8*, ...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @send(i32, i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
