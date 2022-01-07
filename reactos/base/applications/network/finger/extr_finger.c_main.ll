; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/network/finger/extr_finger.c_main.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/network/finger/extr_finger.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"lmps\00", align 1
@EOF = common dso_local global i32 0, align 4
@lflag = common dso_local global i32 0, align 4
@mflag = common dso_local global i32 0, align 4
@pplan = common dso_local global i32 0, align 4
@sflag = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"usage: finger [-lmps] login [...]\0A\00", align 1
@optind = common dso_local global i64 0, align 8
@now = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  br label %7

7:                                                ; preds = %24, %2
  %8 = load i32, i32* %4, align 4
  %9 = load i8**, i8*** %5, align 8
  %10 = call i32 @getopt(i32 %8, i8** %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* @EOF, align 4
  %12 = icmp ne i32 %10, %11
  br i1 %12, label %13, label %25

13:                                               ; preds = %7
  %14 = load i32, i32* %6, align 4
  switch i32 %14, label %20 [
    i32 108, label %15
    i32 109, label %16
    i32 112, label %17
    i32 115, label %18
    i32 63, label %19
  ]

15:                                               ; preds = %13
  store i32 1, i32* @lflag, align 4
  br label %24

16:                                               ; preds = %13
  store i32 1, i32* @mflag, align 4
  br label %24

17:                                               ; preds = %13
  store i32 1, i32* @pplan, align 4
  br label %24

18:                                               ; preds = %13
  store i32 1, i32* @sflag, align 4
  br label %24

19:                                               ; preds = %13
  br label %20

20:                                               ; preds = %13, %19
  %21 = load i32, i32* @stderr, align 4
  %22 = call i32 @fprintf(i32 %21, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %23 = call i32 @exit(i32 1) #3
  unreachable

24:                                               ; preds = %18, %17, %16, %15
  br label %7

25:                                               ; preds = %7
  %26 = load i64, i64* @optind, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = sub nsw i64 %28, %26
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %4, align 4
  %31 = load i64, i64* @optind, align 8
  %32 = load i8**, i8*** %5, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i64 %31
  store i8** %33, i8*** %5, align 8
  %34 = call i32 @time(i32* @now)
  %35 = load i8**, i8*** %5, align 8
  %36 = load i8*, i8** %35, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %25
  %39 = call i32 (...) @usage()
  br label %48

40:                                               ; preds = %25
  %41 = load i32, i32* %4, align 4
  %42 = load i8**, i8*** %5, align 8
  %43 = call i32 @userlist(i32 %41, i8** %42)
  %44 = load i32, i32* @sflag, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %40
  store i32 1, i32* @lflag, align 4
  br label %47

47:                                               ; preds = %46, %40
  br label %48

48:                                               ; preds = %47, %38
  ret i32 0
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @userlist(i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
