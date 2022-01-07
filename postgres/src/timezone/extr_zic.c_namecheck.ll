; ModuleID = '/home/carl/AnghaBench/postgres/src/timezone/extr_zic.c_namecheck.c'
source_filename = "/home/carl/AnghaBench/postgres/src/timezone/extr_zic.c_namecheck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@namecheck.benign = internal constant [56 x i8] c"-/_abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ\00", align 16
@namecheck.printable_and_not_benign = internal constant [41 x i8] c" !\22#$%&'()*+,.0123456789:;<=>?@[\\]^`{|}~\00", align 16
@noise = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"file name '%s' contains byte '%c'\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"file name '%s' contains byte '\\%o'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @namecheck to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @namecheck(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  store i8* %7, i8** %5, align 8
  %8 = load i8*, i8** %3, align 8
  store i8* %8, i8** %4, align 8
  br label %9

9:                                                ; preds = %50, %1
  %10 = load i8*, i8** %4, align 8
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  br i1 %12, label %13, label %53

13:                                               ; preds = %9
  %14 = load i8*, i8** %4, align 8
  %15 = load i8, i8* %14, align 1
  store i8 %15, i8* %6, align 1
  %16 = load i64, i64* @noise, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %35

18:                                               ; preds = %13
  %19 = load i8, i8* %6, align 1
  %20 = call i64 @strchr(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @namecheck.benign, i64 0, i64 0), i8 zeroext %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %35, label %22

22:                                               ; preds = %18
  %23 = load i8, i8* %6, align 1
  %24 = call i64 @strchr(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @namecheck.printable_and_not_benign, i64 0, i64 0), i8 zeroext %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = call i32 @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %30

28:                                               ; preds = %22
  %29 = call i32 @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi i32 [ %27, %26 ], [ %29, %28 ]
  %32 = load i8*, i8** %3, align 8
  %33 = load i8, i8* %6, align 1
  %34 = call i32 @warning(i32 %31, i8* %32, i8 zeroext %33)
  br label %35

35:                                               ; preds = %30, %18, %13
  %36 = load i8, i8* %6, align 1
  %37 = zext i8 %36 to i32
  %38 = icmp eq i32 %37, 47
  br i1 %38, label %39, label %49

39:                                               ; preds = %35
  %40 = load i8*, i8** %3, align 8
  %41 = load i8*, i8** %5, align 8
  %42 = load i8*, i8** %4, align 8
  %43 = call i32 @componentcheck(i8* %40, i8* %41, i8* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %39
  store i32 0, i32* %2, align 4
  br label %58

46:                                               ; preds = %39
  %47 = load i8*, i8** %4, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 1
  store i8* %48, i8** %5, align 8
  br label %49

49:                                               ; preds = %46, %35
  br label %50

50:                                               ; preds = %49
  %51 = load i8*, i8** %4, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %4, align 8
  br label %9

53:                                               ; preds = %9
  %54 = load i8*, i8** %3, align 8
  %55 = load i8*, i8** %5, align 8
  %56 = load i8*, i8** %4, align 8
  %57 = call i32 @componentcheck(i8* %54, i8* %55, i8* %56)
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %53, %45
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i64 @strchr(i8*, i8 zeroext) #1

declare dso_local i32 @warning(i32, i8*, i8 zeroext) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @componentcheck(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
