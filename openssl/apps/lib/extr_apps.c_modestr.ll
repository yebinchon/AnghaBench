; ModuleID = '/home/carl/AnghaBench/openssl/apps/lib/extr_apps.c_modestr.c'
source_filename = "/home/carl/AnghaBench/openssl/apps/lib/extr_apps.c_modestr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"ab\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8, i32)* @modestr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @modestr(i8 signext %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  store i8 %0, i8* %4, align 1
  store i32 %1, i32* %5, align 4
  %6 = load i8, i8* %4, align 1
  %7 = sext i8 %6 to i32
  %8 = icmp eq i32 %7, 97
  br i1 %8, label %17, label %9

9:                                                ; preds = %2
  %10 = load i8, i8* %4, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 114
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = load i8, i8* %4, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 119
  br label %17

17:                                               ; preds = %13, %9, %2
  %18 = phi i1 [ true, %9 ], [ true, %2 ], [ %16, %13 ]
  %19 = zext i1 %18 to i32
  %20 = call i32 @OPENSSL_assert(i32 %19)
  %21 = load i8, i8* %4, align 1
  %22 = sext i8 %21 to i32
  switch i32 %22, label %41 [
    i32 97, label %23
    i32 114, label %29
    i32 119, label %35
  ]

23:                                               ; preds = %17
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @FMT_istext(i32 %24)
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)
  store i8* %28, i8** %3, align 8
  br label %42

29:                                               ; preds = %17
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @FMT_istext(i32 %30)
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  store i8* %34, i8** %3, align 8
  br label %42

35:                                               ; preds = %17
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @FMT_istext(i32 %36)
  %38 = icmp ne i32 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)
  store i8* %40, i8** %3, align 8
  br label %42

41:                                               ; preds = %17
  store i8* null, i8** %3, align 8
  br label %42

42:                                               ; preds = %41, %35, %29, %23
  %43 = load i8*, i8** %3, align 8
  ret i8* %43
}

declare dso_local i32 @OPENSSL_assert(i32) #1

declare dso_local i32 @FMT_istext(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
