; ModuleID = '/home/carl/AnghaBench/radare2/libr/magic/extr_print.c_file_fmttime.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/magic/extr_print.c_file_fmttime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32 }

@file_fmttime.daylight = internal global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"*Invalid time*\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @file_fmttime(i64 %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.tm*, align 8
  %9 = alloca %struct.tm, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i64, i64* %4, align 8
  store i64 %10, i64* %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = call i8* @ctime(i64* %7)
  store i8* %14, i8** %6, align 8
  br label %29

15:                                               ; preds = %2
  %16 = load i32, i32* @file_fmttime.daylight, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i64, i64* %7, align 8
  %20 = add nsw i64 %19, 3600
  store i64 %20, i64* %7, align 8
  br label %21

21:                                               ; preds = %18, %15
  %22 = call %struct.tm* @gmtime_r(i64* %7, %struct.tm* %9)
  store %struct.tm* %22, %struct.tm** %8, align 8
  %23 = load %struct.tm*, %struct.tm** %8, align 8
  %24 = icmp ne %struct.tm* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %35

26:                                               ; preds = %21
  %27 = load %struct.tm*, %struct.tm** %8, align 8
  %28 = call i8* @asctime(%struct.tm* %27)
  store i8* %28, i8** %6, align 8
  br label %29

29:                                               ; preds = %26, %13
  %30 = load i8*, i8** %6, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = call i64 @strcspn(i8* %31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  store i8 0, i8* %33, align 1
  %34 = load i8*, i8** %6, align 8
  store i8* %34, i8** %3, align 8
  br label %35

35:                                               ; preds = %29, %25
  %36 = load i8*, i8** %3, align 8
  ret i8* %36
}

declare dso_local i8* @ctime(i64*) #1

declare dso_local %struct.tm* @gmtime_r(i64*, %struct.tm*) #1

declare dso_local i8* @asctime(%struct.tm*) #1

declare dso_local i64 @strcspn(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
