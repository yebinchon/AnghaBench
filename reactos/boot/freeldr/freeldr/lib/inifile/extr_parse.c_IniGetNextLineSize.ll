; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/lib/inifile/extr_parse.c_IniGetNextLineSize.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/lib/inifile/extr_parse.c_IniGetNextLineSize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @IniGetNextLineSize(i8* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %7, align 8
  br label %8

8:                                                ; preds = %23, %3
  %9 = load i64, i64* %6, align 8
  %10 = load i64, i64* %5, align 8
  %11 = icmp ult i64 %9, %10
  br i1 %11, label %12, label %26

12:                                               ; preds = %8
  %13 = load i64, i64* %7, align 8
  %14 = add i64 %13, 1
  store i64 %14, i64* %7, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = load i64, i64* %6, align 8
  %17 = getelementptr inbounds i8, i8* %15, i64 %16
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 10
  br i1 %20, label %21, label %22

21:                                               ; preds = %12
  br label %26

22:                                               ; preds = %12
  br label %23

23:                                               ; preds = %22
  %24 = load i64, i64* %6, align 8
  %25 = add i64 %24, 1
  store i64 %25, i64* %6, align 8
  br label %8

26:                                               ; preds = %21, %8
  %27 = load i64, i64* %7, align 8
  %28 = add i64 %27, 1
  store i64 %28, i64* %7, align 8
  %29 = load i64, i64* %7, align 8
  ret i64 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
