; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_patterns.c_classend.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_patterns.c_classend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.match_state = type { i8* }

@.str = private unnamed_addr constant [34 x i8] c"malformed pattern (ends with '%')\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"malformed pattern (missing ']')\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.match_state*, i8*)* @classend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @classend(%struct.match_state* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.match_state*, align 8
  %5 = alloca i8*, align 8
  store %struct.match_state* %0, %struct.match_state** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load i8*, i8** %5, align 8
  %7 = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %7, i8** %5, align 8
  %8 = load i8, i8* %6, align 1
  %9 = sext i8 %8 to i32
  switch i32 %9, label %64 [
    i32 128, label %10
    i32 91, label %22
  ]

10:                                               ; preds = %2
  %11 = load i8*, i8** %5, align 8
  %12 = load %struct.match_state*, %struct.match_state** %4, align 8
  %13 = getelementptr inbounds %struct.match_state, %struct.match_state* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = icmp eq i8* %11, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  %17 = load %struct.match_state*, %struct.match_state** %4, align 8
  %18 = call i32 @match_error(%struct.match_state* %17, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %16, %10
  %20 = load i8*, i8** %5, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 1
  store i8* %21, i8** %3, align 8
  br label %66

22:                                               ; preds = %2
  %23 = load i8*, i8** %5, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 94
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i8*, i8** %5, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %5, align 8
  br label %30

30:                                               ; preds = %27, %22
  br label %31

31:                                               ; preds = %56, %30
  %32 = load i8*, i8** %5, align 8
  %33 = load %struct.match_state*, %struct.match_state** %4, align 8
  %34 = getelementptr inbounds %struct.match_state, %struct.match_state* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = icmp eq i8* %32, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load %struct.match_state*, %struct.match_state** %4, align 8
  %39 = call i32 @match_error(%struct.match_state* %38, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %61

40:                                               ; preds = %31
  %41 = load i8*, i8** %5, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %5, align 8
  %43 = load i8, i8* %41, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 128
  br i1 %45, label %46, label %55

46:                                               ; preds = %40
  %47 = load i8*, i8** %5, align 8
  %48 = load %struct.match_state*, %struct.match_state** %4, align 8
  %49 = getelementptr inbounds %struct.match_state, %struct.match_state* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = icmp ult i8* %47, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %46
  %53 = load i8*, i8** %5, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %5, align 8
  br label %55

55:                                               ; preds = %52, %46, %40
  br label %56

56:                                               ; preds = %55
  %57 = load i8*, i8** %5, align 8
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp ne i32 %59, 93
  br i1 %60, label %31, label %61

61:                                               ; preds = %56, %37
  %62 = load i8*, i8** %5, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 1
  store i8* %63, i8** %3, align 8
  br label %66

64:                                               ; preds = %2
  %65 = load i8*, i8** %5, align 8
  store i8* %65, i8** %3, align 8
  br label %66

66:                                               ; preds = %64, %61, %19
  %67 = load i8*, i8** %3, align 8
  ret i8* %67
}

declare dso_local i32 @match_error(%struct.match_state*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
