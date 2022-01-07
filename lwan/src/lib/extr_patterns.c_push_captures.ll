; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_patterns.c_push_captures.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_patterns.c_push_captures.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.match_state = type { i32 }
%struct.str_find = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.match_state*, i8*, i8*, %struct.str_find*, i64)* @push_captures to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @push_captures(%struct.match_state* %0, i8* %1, i8* %2, %struct.str_find* %3, i64 %4) #0 {
  %6 = alloca %struct.match_state*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.str_find*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.match_state* %0, %struct.match_state** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.str_find* %3, %struct.str_find** %9, align 8
  store i64 %4, i64* %10, align 8
  %13 = load %struct.match_state*, %struct.match_state** %6, align 8
  %14 = getelementptr inbounds %struct.match_state, %struct.match_state* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp sle i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %5
  %18 = load i8*, i8** %7, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  br label %25

21:                                               ; preds = %17, %5
  %22 = load %struct.match_state*, %struct.match_state** %6, align 8
  %23 = getelementptr inbounds %struct.match_state, %struct.match_state* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  br label %25

25:                                               ; preds = %21, %20
  %26 = phi i32 [ 1, %20 ], [ %24, %21 ]
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  %28 = load i64, i64* %10, align 8
  %29 = trunc i64 %28 to i32
  %30 = icmp sgt i32 %27, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i64, i64* %10, align 8
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %12, align 4
  br label %34

34:                                               ; preds = %31, %25
  store i32 0, i32* %11, align 4
  br label %35

35:                                               ; preds = %52, %34
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* %12, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %55

39:                                               ; preds = %35
  %40 = load %struct.match_state*, %struct.match_state** %6, align 8
  %41 = load i32, i32* %11, align 4
  %42 = load i8*, i8** %7, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = load %struct.str_find*, %struct.str_find** %9, align 8
  %45 = load i32, i32* %11, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.str_find, %struct.str_find* %44, i64 %46
  %48 = call i32 @push_onecapture(%struct.match_state* %40, i32 %41, i8* %42, i8* %43, %struct.str_find* %47)
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %50, label %51

50:                                               ; preds = %39
  br label %55

51:                                               ; preds = %39
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %11, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %11, align 4
  br label %35

55:                                               ; preds = %50, %35
  %56 = load i32, i32* %12, align 4
  ret i32 %56
}

declare dso_local i32 @push_onecapture(%struct.match_state*, i32, i8*, i8*, %struct.str_find*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
