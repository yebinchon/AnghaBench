; ModuleID = '/home/carl/AnghaBench/radare2/libr/cons/extr_grep.c_strchr_ns.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/cons/extr_grep.c_strchr_ns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8)* @strchr_ns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @strchr_ns(i8* %0, i8 signext %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8 %1, i8* %5, align 1
  %8 = load i8*, i8** %4, align 8
  %9 = load i8, i8* %5, align 1
  %10 = call i8* @strchr(i8* %8, i8 signext %9)
  store i8* %10, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %35

13:                                               ; preds = %2
  %14 = load i8*, i8** %6, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = icmp ugt i8* %14, %15
  br i1 %16, label %17, label %35

17:                                               ; preds = %13
  %18 = load i8*, i8** %6, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 -1
  store i8* %19, i8** %7, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 92
  br i1 %23, label %24, label %34

24:                                               ; preds = %17
  %25 = load i8*, i8** %7, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = call i64 @strlen(i8* %27)
  %29 = add nsw i64 %28, 1
  %30 = call i32 @memmove(i8* %25, i8* %26, i64 %29)
  %31 = load i8*, i8** %6, align 8
  %32 = load i8, i8* %5, align 1
  %33 = call i8* @strchr_ns(i8* %31, i8 signext %32)
  store i8* %33, i8** %3, align 8
  br label %37

34:                                               ; preds = %17
  br label %35

35:                                               ; preds = %34, %13, %2
  %36 = load i8*, i8** %6, align 8
  store i8* %36, i8** %3, align 8
  br label %37

37:                                               ; preds = %35, %24
  %38 = load i8*, i8** %3, align 8
  ret i8* %38
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
