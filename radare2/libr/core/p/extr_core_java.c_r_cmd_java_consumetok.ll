; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/p/extr_core_java.c_r_cmd_java_consumetok.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/p/extr_core_java.c_r_cmd_java_consumetok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8, i64)* @r_cmd_java_consumetok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @r_cmd_java_consumetok(i8* %0, i8 signext %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8 %1, i8* %6, align 1
  store i64 %2, i64* %7, align 8
  %10 = load i8*, i8** %5, align 8
  store i8* %10, i8** %8, align 8
  store i64 0, i64* %9, align 8
  %11 = load i8*, i8** %8, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %3
  %14 = load i8*, i8** %8, align 8
  store i8* %14, i8** %4, align 8
  br label %42

15:                                               ; preds = %3
  %16 = load i64, i64* %7, align 8
  %17 = icmp eq i64 %16, -1
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i8*, i8** %5, align 8
  %20 = call i64 @strlen(i8* %19)
  store i64 %20, i64* %7, align 8
  br label %21

21:                                               ; preds = %18, %15
  br label %22

22:                                               ; preds = %35, %21
  %23 = load i64, i64* %9, align 8
  %24 = load i64, i64* %7, align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %26, label %40

26:                                               ; preds = %22
  %27 = load i8*, i8** %8, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = load i8, i8* %6, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %29, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  br label %40

34:                                               ; preds = %26
  br label %35

35:                                               ; preds = %34
  %36 = load i64, i64* %9, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %9, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %8, align 8
  br label %22

40:                                               ; preds = %33, %22
  %41 = load i8*, i8** %8, align 8
  store i8* %41, i8** %4, align 8
  br label %42

42:                                               ; preds = %40, %13
  %43 = load i8*, i8** %4, align 8
  ret i8* %43
}

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
