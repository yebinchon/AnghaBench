; ModuleID = '/home/carl/AnghaBench/poco/JSON/src/extr_pdjson.c_read_value.c'
source_filename = "/home/carl/AnghaBench/poco/JSON/src/extr_pdjson.c_read_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"unexpected end of data\00", align 1
@JSON_ERROR = common dso_local global i32 0, align 4
@JSON_OBJECT = common dso_local global i32 0, align 4
@JSON_ARRAY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"ull\00", align 1
@JSON_NULL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"alse\00", align 1
@JSON_FALSE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"rue\00", align 1
@JSON_TRUE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"unexpected byte, '%c'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32)* @read_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_value(%struct.TYPE_9__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %48 [
    i32 128, label %11
    i32 123, label %15
    i32 91, label %19
    i32 34, label %23
    i32 110, label %26
    i32 102, label %30
    i32 116, label %34
    i32 48, label %38
    i32 49, label %38
    i32 50, label %38
    i32 51, label %38
    i32 52, label %38
    i32 53, label %38
    i32 54, label %38
    i32 55, label %38
    i32 56, label %38
    i32 57, label %38
    i32 45, label %38
  ]

11:                                               ; preds = %2
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %13 = call i32 (%struct.TYPE_9__*, i8*, ...) @json_error(%struct.TYPE_9__* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %14 = load i32, i32* @JSON_ERROR, align 4
  store i32 %14, i32* %3, align 4
  br label %53

15:                                               ; preds = %2
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %17 = load i32, i32* @JSON_OBJECT, align 4
  %18 = call i32 @push(%struct.TYPE_9__* %16, i32 %17)
  store i32 %18, i32* %3, align 4
  br label %53

19:                                               ; preds = %2
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %21 = load i32, i32* @JSON_ARRAY, align 4
  %22 = call i32 @push(%struct.TYPE_9__* %20, i32 %21)
  store i32 %22, i32* %3, align 4
  br label %53

23:                                               ; preds = %2
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %25 = call i32 @read_string(%struct.TYPE_9__* %24)
  store i32 %25, i32* %3, align 4
  br label %53

26:                                               ; preds = %2
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %28 = load i32, i32* @JSON_NULL, align 4
  %29 = call i32 @is_match(%struct.TYPE_9__* %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %28)
  store i32 %29, i32* %3, align 4
  br label %53

30:                                               ; preds = %2
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %32 = load i32, i32* @JSON_FALSE, align 4
  %33 = call i32 @is_match(%struct.TYPE_9__* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %32)
  store i32 %33, i32* %3, align 4
  br label %53

34:                                               ; preds = %2
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %36 = load i32, i32* @JSON_TRUE, align 4
  %37 = call i32 @is_match(%struct.TYPE_9__* %35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %36)
  store i32 %37, i32* %3, align 4
  br label %53

38:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %40 = call i32 @init_string(%struct.TYPE_9__* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i32, i32* @JSON_ERROR, align 4
  store i32 %43, i32* %3, align 4
  br label %53

44:                                               ; preds = %38
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @read_number(%struct.TYPE_9__* %45, i32 %46)
  store i32 %47, i32* %3, align 4
  br label %53

48:                                               ; preds = %2
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %50 = load i32, i32* %5, align 4
  %51 = call i32 (%struct.TYPE_9__*, i8*, ...) @json_error(%struct.TYPE_9__* %49, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* @JSON_ERROR, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %48, %44, %42, %34, %30, %26, %23, %19, %15, %11
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @json_error(%struct.TYPE_9__*, i8*, ...) #1

declare dso_local i32 @push(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @read_string(%struct.TYPE_9__*) #1

declare dso_local i32 @is_match(%struct.TYPE_9__*, i8*, i32) #1

declare dso_local i32 @init_string(%struct.TYPE_9__*) #1

declare dso_local i32 @read_number(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
