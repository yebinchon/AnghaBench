; ModuleID = '/home/carl/AnghaBench/mpv/stream/extr_stream_bluray.c_remove_prefix.c'
source_filename = "/home/carl/AnghaBench/mpv/stream/extr_stream_bluray.c_remove_prefix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @remove_prefix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_prefix(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = call i64 @strlen(i8* %5)
  store i64 %6, i64* %3, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %7

7:                                                ; preds = %22, %1
  %8 = load i64, i64* %3, align 8
  %9 = icmp ugt i64 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %7
  %11 = load i8*, i8** %4, align 8
  %12 = load i8*, i8** %2, align 8
  %13 = load i64, i64* %3, align 8
  %14 = sub i64 %13, 1
  %15 = getelementptr inbounds i8, i8* %12, i64 %14
  %16 = load i8, i8* %15, align 1
  %17 = call i64 @strchr(i8* %11, i8 signext %16)
  %18 = icmp ne i64 %17, 0
  %19 = xor i1 %18, true
  br label %20

20:                                               ; preds = %10, %7
  %21 = phi i1 [ false, %7 ], [ %19, %10 ]
  br i1 %21, label %22, label %25

22:                                               ; preds = %20
  %23 = load i64, i64* %3, align 8
  %24 = add i64 %23, -1
  store i64 %24, i64* %3, align 8
  br label %7

25:                                               ; preds = %20
  br label %26

26:                                               ; preds = %40, %25
  %27 = load i64, i64* %3, align 8
  %28 = icmp ugt i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %26
  %30 = load i8*, i8** %4, align 8
  %31 = load i8*, i8** %2, align 8
  %32 = load i64, i64* %3, align 8
  %33 = sub i64 %32, 1
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = call i64 @strchr(i8* %30, i8 signext %35)
  %37 = icmp ne i64 %36, 0
  br label %38

38:                                               ; preds = %29, %26
  %39 = phi i1 [ false, %26 ], [ %37, %29 ]
  br i1 %39, label %40, label %43

40:                                               ; preds = %38
  %41 = load i64, i64* %3, align 8
  %42 = add i64 %41, -1
  store i64 %42, i64* %3, align 8
  br label %26

43:                                               ; preds = %38
  %44 = load i8*, i8** %2, align 8
  %45 = load i64, i64* %3, align 8
  %46 = getelementptr inbounds i8, i8* %44, i64 %45
  store i8 0, i8* %46, align 1
  ret void
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
