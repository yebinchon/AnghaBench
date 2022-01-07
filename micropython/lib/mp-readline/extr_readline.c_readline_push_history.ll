; ModuleID = '/home/carl/AnghaBench/micropython/lib/mp-readline/extr_readline.c_readline_push_history.c'
source_filename = "/home/carl/AnghaBench/micropython/lib/mp-readline/extr_readline.c_readline_push_history.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@readline_hist = common dso_local global i32 0, align 4
@READLINE_HIST_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @readline_push_history(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = getelementptr inbounds i8, i8* %5, i64 0
  %7 = load i8, i8* %6, align 1
  %8 = sext i8 %7 to i32
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %57

10:                                               ; preds = %1
  %11 = load i32, i32* @readline_hist, align 4
  %12 = call i8** @MP_STATE_PORT(i32 %11)
  %13 = getelementptr inbounds i8*, i8** %12, i64 0
  %14 = load i8*, i8** %13, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %24, label %16

16:                                               ; preds = %10
  %17 = load i32, i32* @readline_hist, align 4
  %18 = call i8** @MP_STATE_PORT(i32 %17)
  %19 = getelementptr inbounds i8*, i8** %18, i64 0
  %20 = load i8*, i8** %19, align 8
  %21 = load i8*, i8** %2, align 8
  %22 = call i64 @strcmp(i8* %20, i8* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %57

24:                                               ; preds = %16, %10
  %25 = load i8*, i8** %2, align 8
  %26 = call i8* @str_dup_maybe(i8* %25)
  store i8* %26, i8** %3, align 8
  %27 = load i8*, i8** %3, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %56

29:                                               ; preds = %24
  %30 = load i32, i32* @READLINE_HIST_SIZE, align 4
  %31 = sub nsw i32 %30, 1
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %48, %29
  %33 = load i32, i32* %4, align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %51

35:                                               ; preds = %32
  %36 = load i32, i32* @readline_hist, align 4
  %37 = call i8** @MP_STATE_PORT(i32 %36)
  %38 = load i32, i32* %4, align 4
  %39 = sub nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8*, i8** %37, i64 %40
  %42 = load i8*, i8** %41, align 8
  %43 = load i32, i32* @readline_hist, align 4
  %44 = call i8** @MP_STATE_PORT(i32 %43)
  %45 = load i32, i32* %4, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8*, i8** %44, i64 %46
  store i8* %42, i8** %47, align 8
  br label %48

48:                                               ; preds = %35
  %49 = load i32, i32* %4, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %4, align 4
  br label %32

51:                                               ; preds = %32
  %52 = load i8*, i8** %3, align 8
  %53 = load i32, i32* @readline_hist, align 4
  %54 = call i8** @MP_STATE_PORT(i32 %53)
  %55 = getelementptr inbounds i8*, i8** %54, i64 0
  store i8* %52, i8** %55, align 8
  br label %56

56:                                               ; preds = %51, %24
  br label %57

57:                                               ; preds = %56, %16, %1
  ret void
}

declare dso_local i8** @MP_STATE_PORT(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @str_dup_maybe(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
