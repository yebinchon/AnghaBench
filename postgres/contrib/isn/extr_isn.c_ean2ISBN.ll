; ModuleID = '/home/carl/AnghaBench/postgres/contrib/isn/extr_isn.c_ean2ISBN.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/isn/extr_isn.c_ean2ISBN.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"978-\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ean2ISBN to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ean2ISBN(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = call i64 @strncmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %5, i32 4)
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %36

8:                                                ; preds = %1
  %9 = load i8*, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 4
  %12 = call i32 @hyphenate(i8* %9, i8* %11, i32* null, i32* null)
  %13 = load i8*, i8** %2, align 8
  %14 = call i32 @weight_checkdig(i8* %13, i32 10)
  store i32 %14, i32* %4, align 4
  %15 = load i8*, i8** %2, align 8
  %16 = call i8* @strchr(i8* %15, i8 signext 0)
  store i8* %16, i8** %3, align 8
  br label %17

17:                                               ; preds = %24, %8
  %18 = load i8*, i8** %3, align 8
  %19 = getelementptr inbounds i8, i8* %18, i32 -1
  store i8* %19, i8** %3, align 8
  %20 = load i8, i8* %19, align 1
  %21 = call i32 @isdigit(i8 zeroext %20)
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  br label %17

25:                                               ; preds = %17
  %26 = load i32, i32* %4, align 4
  %27 = icmp eq i32 %26, 10
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load i8*, i8** %3, align 8
  store i8 88, i8* %29, align 1
  br label %35

30:                                               ; preds = %25
  %31 = load i32, i32* %4, align 4
  %32 = add i32 %31, 48
  %33 = trunc i32 %32 to i8
  %34 = load i8*, i8** %3, align 8
  store i8 %33, i8* %34, align 1
  br label %35

35:                                               ; preds = %30, %28
  br label %36

36:                                               ; preds = %35, %1
  ret void
}

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @hyphenate(i8*, i8*, i32*, i32*) #1

declare dso_local i32 @weight_checkdig(i8*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @isdigit(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
