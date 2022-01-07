; ModuleID = '/home/carl/AnghaBench/phpredis/extr_library.c_redis_read_reply_type.c'
source_filename = "/home/carl/AnghaBench/phpredis/extr_library.c_redis_read_reply_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@EOF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"socket error on read socket\00", align 1
@TYPE_INT = common dso_local global i64 0, align 8
@TYPE_BULK = common dso_local global i64 0, align 8
@TYPE_MULTIBULK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @redis_read_reply_type(%struct.TYPE_4__* %0, i64* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca [255 x i8], align 16
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %10 = call i32 @redis_check_eof(%struct.TYPE_4__* %9, i32 0)
  %11 = icmp eq i32 -1, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i64, i64* @EOF, align 8
  %14 = load i64*, i64** %6, align 8
  store i64 %13, i64* %14, align 8
  store i32 -1, i32* %4, align 4
  br label %53

15:                                               ; preds = %3
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @php_stream_getc(i32 %18)
  %20 = load i64*, i64** %6, align 8
  store i64 %19, i64* %20, align 8
  %21 = load i64, i64* @EOF, align 8
  %22 = icmp eq i64 %19, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %15
  %24 = call i32 @REDIS_THROW_EXCEPTION(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 0)
  store i32 -1, i32* %4, align 4
  br label %53

25:                                               ; preds = %15
  %26 = load i64*, i64** %6, align 8
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @TYPE_INT, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %40, label %30

30:                                               ; preds = %25
  %31 = load i64*, i64** %6, align 8
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @TYPE_BULK, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %40, label %35

35:                                               ; preds = %30
  %36 = load i64*, i64** %6, align 8
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @TYPE_MULTIBULK, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %52

40:                                               ; preds = %35, %30, %25
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds [255 x i8], [255 x i8]* %8, i64 0, i64 0
  %45 = call i32* @php_stream_gets(i32 %43, i8* %44, i32 255)
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  store i32 -1, i32* %4, align 4
  br label %53

48:                                               ; preds = %40
  %49 = getelementptr inbounds [255 x i8], [255 x i8]* %8, i64 0, i64 0
  %50 = call i64 @atol(i8* %49)
  %51 = load i64*, i64** %7, align 8
  store i64 %50, i64* %51, align 8
  br label %52

52:                                               ; preds = %48, %35
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %52, %47, %23, %12
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @redis_check_eof(%struct.TYPE_4__*, i32) #1

declare dso_local i64 @php_stream_getc(i32) #1

declare dso_local i32 @REDIS_THROW_EXCEPTION(i8*, i32) #1

declare dso_local i32* @php_stream_gets(i32, i8*, i32) #1

declare dso_local i64 @atol(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
