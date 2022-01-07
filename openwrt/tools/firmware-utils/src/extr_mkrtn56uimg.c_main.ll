; ModuleID = '/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_mkrtn56uimg.c_main.c'
source_filename = "/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_mkrtn56uimg.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c":s:f:h?\00", align 1
@optarg = common dso_local global i8* null, align 8
@EXIT_FAILURE = common dso_local global i32 0, align 4
@EXIT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 129, i32* %9, align 4
  %10 = load i8**, i8*** %5, align 8
  %11 = getelementptr inbounds i8*, i8** %10, i64 0
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %8, align 8
  br label %13

13:                                               ; preds = %29, %2
  %14 = load i32, i32* %4, align 4
  %15 = load i8**, i8*** %5, align 8
  %16 = call i32 @getopt(i32 %14, i8** %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 %16, i32* %6, align 4
  %17 = icmp ne i32 %16, -1
  br i1 %17, label %18, label %30

18:                                               ; preds = %13
  %19 = load i32, i32* %6, align 4
  switch i32 %19, label %25 [
    i32 115, label %20
    i32 102, label %22
    i32 104, label %24
  ]

20:                                               ; preds = %18
  store i32 128, i32* %9, align 4
  %21 = load i8*, i8** @optarg, align 8
  store i8* %21, i8** %7, align 8
  br label %29

22:                                               ; preds = %18
  store i32 130, i32* %9, align 4
  %23 = load i8*, i8** @optarg, align 8
  store i8* %23, i8** %7, align 8
  br label %29

24:                                               ; preds = %18
  store i32 129, i32* %9, align 4
  br label %25

25:                                               ; preds = %18, %24
  %26 = load i8*, i8** %8, align 8
  %27 = load i32, i32* @EXIT_FAILURE, align 4
  %28 = call i32 @usage(i8* %26, i32 %27)
  store i32 129, i32* %9, align 4
  br label %29

29:                                               ; preds = %25, %22, %20
  br label %13

30:                                               ; preds = %13
  %31 = load i8*, i8** %7, align 8
  %32 = icmp eq i8* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i32 129, i32* %9, align 4
  br label %34

34:                                               ; preds = %33, %30
  %35 = load i32, i32* %9, align 4
  switch i32 %35, label %45 [
    i32 129, label %36
    i32 130, label %40
    i32 128, label %40
  ]

36:                                               ; preds = %34
  %37 = load i8*, i8** %8, align 8
  %38 = load i32, i32* @EXIT_FAILURE, align 4
  %39 = call i32 @usage(i8* %37, i32 %38)
  br label %45

40:                                               ; preds = %34, %34
  %41 = load i8*, i8** %8, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @process_image(i8* %41, i8* %42, i32 %43)
  store i32 %44, i32* %3, align 4
  br label %47

45:                                               ; preds = %34, %36
  %46 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %45, %40
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(i8*, i32) #1

declare dso_local i32 @process_image(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
