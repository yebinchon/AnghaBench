; ModuleID = '/home/carl/AnghaBench/poco/JSON/src/extr_pdjson.c_read_unicode_cp.c'
source_filename = "/home/carl/AnghaBench/poco/JSON/src/extr_pdjson.c_read_unicode_cp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_6__*)* }

@EOF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"unterminated string literal in unicode\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"bad escape unicode byte, '%c'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_5__*)* @read_unicode_cp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @read_unicode_cp(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i64 0, i64* %4, align 8
  store i32 12, i32* %5, align 4
  store i64 0, i64* %6, align 8
  br label %9

9:                                                ; preds = %45, %1
  %10 = load i64, i64* %6, align 8
  %11 = icmp ult i64 %10, 4
  br i1 %11, label %12, label %48

12:                                               ; preds = %9
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)** %15, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = call i32 %16(%struct.TYPE_6__* %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @EOF, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %12
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %25 = call i32 (%struct.TYPE_5__*, i8*, ...) @json_error(%struct.TYPE_5__* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  store i64 -1, i64* %2, align 8
  br label %50

26:                                               ; preds = %12
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @hexchar(i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 (%struct.TYPE_5__*, i8*, ...) @json_error(%struct.TYPE_5__* %31, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %32)
  store i64 -1, i64* %2, align 8
  br label %50

34:                                               ; preds = %26
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %5, align 4
  %38 = shl i32 1, %37
  %39 = mul nsw i32 %36, %38
  %40 = sext i32 %39 to i64
  %41 = load i64, i64* %4, align 8
  %42 = add nsw i64 %41, %40
  store i64 %42, i64* %4, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sub nsw i32 %43, 4
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %35
  %46 = load i64, i64* %6, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %6, align 8
  br label %9

48:                                               ; preds = %9
  %49 = load i64, i64* %4, align 8
  store i64 %49, i64* %2, align 8
  br label %50

50:                                               ; preds = %48, %30, %23
  %51 = load i64, i64* %2, align 8
  ret i64 %51
}

declare dso_local i32 @json_error(%struct.TYPE_5__*, i8*, ...) #1

declare dso_local i32 @hexchar(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
