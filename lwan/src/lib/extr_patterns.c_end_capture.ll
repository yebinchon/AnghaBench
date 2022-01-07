; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_patterns.c_end_capture.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_patterns.c_end_capture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.match_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8*, i32 }

@CAP_UNFINISHED = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.match_state*, i8*, i8*)* @end_capture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @end_capture(%struct.match_state* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.match_state*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.match_state* %0, %struct.match_state** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.match_state*, %struct.match_state** %5, align 8
  %11 = call i32 @capture_to_close(%struct.match_state* %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %51

15:                                               ; preds = %3
  %16 = load i8*, i8** %6, align 8
  %17 = load %struct.match_state*, %struct.match_state** %5, align 8
  %18 = getelementptr inbounds %struct.match_state, %struct.match_state* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = sub i64 0, %25
  %27 = getelementptr inbounds i8, i8* %16, i64 %26
  %28 = load %struct.match_state*, %struct.match_state** %5, align 8
  %29 = getelementptr inbounds %struct.match_state, %struct.match_state* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i8* %27, i8** %34, align 8
  %35 = load %struct.match_state*, %struct.match_state** %5, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = call i8* @match(%struct.match_state* %35, i8* %36, i8* %37)
  store i8* %38, i8** %9, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %40, label %49

40:                                               ; preds = %15
  %41 = load i8*, i8** @CAP_UNFINISHED, align 8
  %42 = load %struct.match_state*, %struct.match_state** %5, align 8
  %43 = getelementptr inbounds %struct.match_state, %struct.match_state* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  store i8* %41, i8** %48, align 8
  br label %49

49:                                               ; preds = %40, %15
  %50 = load i8*, i8** %9, align 8
  store i8* %50, i8** %4, align 8
  br label %51

51:                                               ; preds = %49, %14
  %52 = load i8*, i8** %4, align 8
  ret i8* %52
}

declare dso_local i32 @capture_to_close(%struct.match_state*) #1

declare dso_local i8* @match(%struct.match_state*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
