; ModuleID = '/home/carl/AnghaBench/postgres/contrib/isn/extr_isn.c_checkdig.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/isn/extr_isn.c_checkdig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @checkdig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @checkdig(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp eq i32 %10, 77
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 3, i32* %6, align 4
  store i32 1, i32* %7, align 4
  br label %13

13:                                               ; preds = %12, %2
  br label %14

14:                                               ; preds = %51, %13
  %15 = load i8*, i8** %3, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load i32, i32* %4, align 4
  %21 = icmp ugt i32 %20, 1
  br label %22

22:                                               ; preds = %19, %14
  %23 = phi i1 [ false, %14 ], [ %21, %19 ]
  br i1 %23, label %24, label %54

24:                                               ; preds = %22
  %25 = load i8*, i8** %3, align 8
  %26 = load i8, i8* %25, align 1
  %27 = call i64 @isdigit(i8 zeroext %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %51

29:                                               ; preds = %24
  %30 = load i32, i32* %7, align 4
  %31 = add i32 %30, 1
  store i32 %31, i32* %7, align 4
  %32 = urem i32 %30, 2
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %29
  %35 = load i8*, i8** %3, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = sub nsw i32 %37, 48
  %39 = load i32, i32* %6, align 4
  %40 = add i32 %39, %38
  store i32 %40, i32* %6, align 4
  br label %48

41:                                               ; preds = %29
  %42 = load i8*, i8** %3, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = sub nsw i32 %44, 48
  %46 = load i32, i32* %5, align 4
  %47 = add i32 %46, %45
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %41, %34
  %49 = load i32, i32* %4, align 4
  %50 = add i32 %49, -1
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %48, %24
  %52 = load i8*, i8** %3, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %3, align 8
  br label %14

54:                                               ; preds = %22
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* %6, align 4
  %57 = mul i32 3, %56
  %58 = add i32 %55, %57
  %59 = urem i32 %58, 10
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %5, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %54
  %63 = load i32, i32* %5, align 4
  %64 = sub i32 10, %63
  store i32 %64, i32* %5, align 4
  br label %65

65:                                               ; preds = %62, %54
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local i64 @isdigit(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
