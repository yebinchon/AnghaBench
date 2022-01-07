; ModuleID = '/home/carl/AnghaBench/memcached/extr_testapp.c_safe_send.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_testapp.c_safe_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (%struct.TYPE_3__*, i8*, i64)* }

@con = common dso_local global %struct.TYPE_3__* null, align 8
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Failed to write: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i32)* @safe_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @safe_send(i8* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  store i64 0, i64* %7, align 8
  %11 = load i8*, i8** %4, align 8
  store i8* %11, i8** %8, align 8
  br label %12

12:                                               ; preds = %61, %3
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* %7, align 8
  %15 = sub i64 %13, %14
  store i64 %15, i64* %9, align 8
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %12
  %19 = load i64, i64* %9, align 8
  %20 = icmp ugt i64 %19, 1024
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = call i32 (...) @rand()
  %23 = srem i32 %22, 1023
  %24 = add nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  store i64 %25, i64* %9, align 8
  br label %26

26:                                               ; preds = %21, %18
  br label %27

27:                                               ; preds = %26, %12
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** @con, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32 (%struct.TYPE_3__*, i8*, i64)*, i32 (%struct.TYPE_3__*, i8*, i64)** %29, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** @con, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = load i64, i64* %7, align 8
  %34 = getelementptr inbounds i8, i8* %32, i64 %33
  %35 = load i64, i64* %9, align 8
  %36 = call i32 %30(%struct.TYPE_3__* %31, i8* %34, i64 %35)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %50

39:                                               ; preds = %27
  %40 = load i64, i64* @errno, align 8
  %41 = load i64, i64* @EINTR, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %39
  %44 = load i32, i32* @stderr, align 4
  %45 = load i64, i64* @errno, align 8
  %46 = call i8* @strerror(i64 %45)
  %47 = call i32 (i32, i8*, ...) @fprintf(i32 %44, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %46)
  %48 = call i32 (...) @abort() #3
  unreachable

49:                                               ; preds = %39
  br label %60

50:                                               ; preds = %27
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = call i32 @usleep(i32 100)
  br label %55

55:                                               ; preds = %53, %50
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = load i64, i64* %7, align 8
  %59 = add i64 %58, %57
  store i64 %59, i64* %7, align 8
  br label %60

60:                                               ; preds = %55, %49
  br label %61

61:                                               ; preds = %60
  %62 = load i64, i64* %7, align 8
  %63 = load i64, i64* %5, align 8
  %64 = icmp ult i64 %62, %63
  br i1 %64, label %12, label %65

65:                                               ; preds = %61
  ret void
}

declare dso_local i32 @rand(...) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @strerror(i64) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @usleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
