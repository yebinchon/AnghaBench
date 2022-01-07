; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/extr_esil_cfg.c_condrets_strtok.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/extr_esil_cfg.c_condrets_strtok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8)* @condrets_strtok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @condrets_strtok(i8* %0, i8 signext %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8 %1, i8* %5, align 1
  %7 = load i8*, i8** %4, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store i8* null, i8** %3, align 8
  br label %39

10:                                               ; preds = %2
  store i64 0, i64* %6, align 8
  br label %11

11:                                               ; preds = %10, %35
  %12 = load i8*, i8** %4, align 8
  %13 = load i64, i64* %6, align 8
  %14 = getelementptr inbounds i8, i8* %12, i64 %13
  %15 = load i8, i8* %14, align 1
  %16 = icmp ne i8 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %11
  br label %38

18:                                               ; preds = %11
  %19 = load i8*, i8** %4, align 8
  %20 = load i64, i64* %6, align 8
  %21 = getelementptr inbounds i8, i8* %19, i64 %20
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = load i8, i8* %5, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %23, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %18
  %28 = load i8*, i8** %4, align 8
  %29 = load i64, i64* %6, align 8
  %30 = getelementptr inbounds i8, i8* %28, i64 %29
  store i8 0, i8* %30, align 1
  %31 = load i8*, i8** %4, align 8
  %32 = load i64, i64* %6, align 8
  %33 = add i64 %32, 1
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  store i8* %34, i8** %3, align 8
  br label %39

35:                                               ; preds = %18
  %36 = load i64, i64* %6, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %6, align 8
  br label %11

38:                                               ; preds = %17
  store i8* null, i8** %3, align 8
  br label %39

39:                                               ; preds = %38, %27, %9
  %40 = load i8*, i8** %3, align 8
  ret i8* %40
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
