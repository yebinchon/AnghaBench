; ModuleID = '/home/carl/AnghaBench/php-src/ext/intl/extr_intl_error.c_intl_error_get_message.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/intl/extr_intl_error.c_intl_error_get_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }

@.str = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @intl_error_get_message(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i8* null, i8** %4, align 8
  store i32* null, i32** %5, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %7 = icmp ne %struct.TYPE_4__* %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = call %struct.TYPE_4__* (...) @intl_g_error_get()
  store %struct.TYPE_4__* %9, %struct.TYPE_4__** %3, align 8
  %10 = icmp ne %struct.TYPE_4__* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  %12 = call i32* (...) @ZSTR_EMPTY_ALLOC()
  store i32* %12, i32** %2, align 8
  br label %34

13:                                               ; preds = %8, %1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i8* @u_errorName(i32 %16)
  store i8* %17, i8** %4, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %13
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to i8*
  %27 = load i8*, i8** %4, align 8
  %28 = call i32* (i32, i8*, i8*, ...) @strpprintf(i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %26, i8* %27)
  store i32* %28, i32** %5, align 8
  br label %32

29:                                               ; preds = %13
  %30 = load i8*, i8** %4, align 8
  %31 = call i32* (i32, i8*, i8*, ...) @strpprintf(i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %30)
  store i32* %31, i32** %5, align 8
  br label %32

32:                                               ; preds = %29, %22
  %33 = load i32*, i32** %5, align 8
  store i32* %33, i32** %2, align 8
  br label %34

34:                                               ; preds = %32, %11
  %35 = load i32*, i32** %2, align 8
  ret i32* %35
}

declare dso_local %struct.TYPE_4__* @intl_g_error_get(...) #1

declare dso_local i32* @ZSTR_EMPTY_ALLOC(...) #1

declare dso_local i8* @u_errorName(i32) #1

declare dso_local i32* @strpprintf(i32, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
