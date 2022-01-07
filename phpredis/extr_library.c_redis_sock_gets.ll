; ModuleID = '/home/carl/AnghaBench/phpredis/extr_library.c_redis_sock_gets.c'
source_filename = "/home/carl/AnghaBench/phpredis/extr_library.c_redis_sock_gets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"read error on connection to %s\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"read error on connection to %s:%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @redis_sock_gets(%struct.TYPE_5__* %0, i8* %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %12 = call i32 @redis_check_eof(%struct.TYPE_5__* %11, i32 0)
  %13 = icmp eq i32 -1, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %59

15:                                               ; preds = %4
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load i8*, i8** %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load i64*, i64** %9, align 8
  %22 = call i32* @php_stream_get_line(i32 %18, i8* %19, i32 %20, i64* %21)
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %51

24:                                               ; preds = %15
  store i8* null, i8** %10, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @ZSTR_VAL(i32 %32)
  %34 = call i32 (i8**, i32, i8*, i32, ...) @spprintf(i8** %10, i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %33)
  br label %44

35:                                               ; preds = %24
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @ZSTR_VAL(i32 %38)
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 (i8**, i32, i8*, i32, ...) @spprintf(i8** %10, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %39, i64 %42)
  br label %44

44:                                               ; preds = %35, %29
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %46 = call i32 @redis_sock_disconnect(%struct.TYPE_5__* %45, i32 1)
  %47 = load i8*, i8** %10, align 8
  %48 = call i32 @REDIS_THROW_EXCEPTION(i8* %47, i32 0)
  %49 = load i8*, i8** %10, align 8
  %50 = call i32 @efree(i8* %49)
  store i32 -1, i32* %5, align 4
  br label %59

51:                                               ; preds = %15
  %52 = load i64*, i64** %9, align 8
  %53 = load i64, i64* %52, align 8
  %54 = sub i64 %53, 2
  store i64 %54, i64* %52, align 8
  %55 = load i8*, i8** %7, align 8
  %56 = load i64*, i64** %9, align 8
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  store i8 0, i8* %58, align 1
  store i32 0, i32* %5, align 4
  br label %59

59:                                               ; preds = %51, %44, %14
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i32 @redis_check_eof(%struct.TYPE_5__*, i32) #1

declare dso_local i32* @php_stream_get_line(i32, i8*, i32, i64*) #1

declare dso_local i32 @spprintf(i8**, i32, i8*, i32, ...) #1

declare dso_local i32 @ZSTR_VAL(i32) #1

declare dso_local i32 @redis_sock_disconnect(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @REDIS_THROW_EXCEPTION(i8*, i32) #1

declare dso_local i32 @efree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
