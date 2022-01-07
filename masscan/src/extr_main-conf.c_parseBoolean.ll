; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_main-conf.c_parseBoolean.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_main-conf.c_parseBoolean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @parseBoolean to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parseBoolean(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = icmp eq i8* %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = load i8*, i8** %3, align 8
  %8 = getelementptr inbounds i8, i8* %7, i64 0
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %6, %1
  store i32 1, i32* %2, align 4
  br label %49

13:                                               ; preds = %6
  %14 = load i8*, i8** %3, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  %16 = load i8, i8* %15, align 1
  %17 = call i64 @isdigit(i8 signext %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %13
  %20 = load i8*, i8** %3, align 8
  %21 = call i64 @strtoul(i8* %20, i32 0, i32 0)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %49

24:                                               ; preds = %19
  store i32 1, i32* %2, align 4
  br label %49

25:                                               ; preds = %13
  %26 = load i8*, i8** %3, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 0
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  switch i32 %29, label %48 [
    i32 116, label %30
    i32 84, label %30
    i32 102, label %31
    i32 70, label %31
    i32 111, label %32
    i32 79, label %32
    i32 89, label %46
    i32 121, label %46
    i32 110, label %47
    i32 78, label %47
  ]

30:                                               ; preds = %25, %25
  store i32 1, i32* %2, align 4
  br label %49

31:                                               ; preds = %25, %25
  store i32 0, i32* %2, align 4
  br label %49

32:                                               ; preds = %25, %25
  %33 = load i8*, i8** %3, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 1
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 102
  br i1 %37, label %44, label %38

38:                                               ; preds = %32
  %39 = load i8*, i8** %3, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 1
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 70
  br i1 %43, label %44, label %45

44:                                               ; preds = %38, %32
  store i32 0, i32* %2, align 4
  br label %49

45:                                               ; preds = %38
  store i32 1, i32* %2, align 4
  br label %49

46:                                               ; preds = %25, %25
  store i32 1, i32* %2, align 4
  br label %49

47:                                               ; preds = %25, %25
  store i32 0, i32* %2, align 4
  br label %49

48:                                               ; preds = %25
  store i32 1, i32* %2, align 4
  br label %49

49:                                               ; preds = %48, %47, %46, %45, %44, %31, %30, %24, %23, %12
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i64 @strtoul(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
