; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_patterns.c_singlematch.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_patterns.c_singlematch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.match_state = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.match_state*, i8*, i8*, i8*)* @singlematch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @singlematch(%struct.match_state* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.match_state*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.match_state* %0, %struct.match_state** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = load %struct.match_state*, %struct.match_state** %6, align 8
  %13 = getelementptr inbounds %struct.match_state, %struct.match_state* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = icmp uge i8* %11, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %45

17:                                               ; preds = %4
  %18 = load i8*, i8** %7, align 8
  %19 = load i8, i8* %18, align 1
  %20 = call i32 @uchar(i8 signext %19)
  store i32 %20, i32* %10, align 4
  %21 = load i8*, i8** %8, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  switch i32 %23, label %38 [
    i32 46, label %24
    i32 128, label %25
    i32 91, label %32
  ]

24:                                               ; preds = %17
  store i32 1, i32* %5, align 4
  br label %45

25:                                               ; preds = %17
  %26 = load i32, i32* %10, align 4
  %27 = load i8*, i8** %8, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 1
  %29 = load i8, i8* %28, align 1
  %30 = call i32 @uchar(i8 signext %29)
  %31 = call i32 @match_class(i32 %26, i32 %30)
  store i32 %31, i32* %5, align 4
  br label %45

32:                                               ; preds = %17
  %33 = load i32, i32* %10, align 4
  %34 = load i8*, i8** %8, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 -1
  %37 = call i32 @matchbracketclass(i32 %33, i8* %34, i8* %36)
  store i32 %37, i32* %5, align 4
  br label %45

38:                                               ; preds = %17
  %39 = load i8*, i8** %8, align 8
  %40 = load i8, i8* %39, align 1
  %41 = call i32 @uchar(i8 signext %40)
  %42 = load i32, i32* %10, align 4
  %43 = icmp eq i32 %41, %42
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %38, %32, %25, %24, %16
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local i32 @uchar(i8 signext) #1

declare dso_local i32 @match_class(i32, i32) #1

declare dso_local i32 @matchbracketclass(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
