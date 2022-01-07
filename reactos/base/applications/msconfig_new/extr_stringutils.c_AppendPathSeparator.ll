; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/msconfig_new/extr_stringutils.c_AppendPathSeparator.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/msconfig_new/extr_stringutils.c_AppendPathSeparator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64* @AppendPathSeparator(i64* %0) #0 {
  %2 = alloca i64*, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i64, align 8
  store i64* %0, i64** %3, align 8
  store i64 0, i64* %4, align 8
  %5 = load i64*, i64** %3, align 8
  %6 = icmp ne i64* %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load i64*, i64** %3, align 8
  %9 = call i64 @_tcslen(i64* %8)
  store i64 %9, i64* %4, align 8
  %10 = load i64, i64* @MAX_PATH, align 8
  %11 = icmp uge i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %7, %1
  store i64* null, i64** %2, align 8
  br label %35

13:                                               ; preds = %7
  %14 = load i64, i64* %4, align 8
  %15 = icmp uge i64 %14, 1
  br i1 %15, label %16, label %33

16:                                               ; preds = %13
  %17 = load i64, i64* %4, align 8
  %18 = sub i64 %17, 1
  %19 = load i64*, i64** %3, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 %18
  store i64* %20, i64** %3, align 8
  %21 = load i64*, i64** %3, align 8
  %22 = getelementptr inbounds i64, i64* %21, i32 1
  store i64* %22, i64** %3, align 8
  %23 = load i64, i64* %21, align 8
  %24 = call i64 @_T(i8 signext 92)
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %16
  %27 = call i64 @_T(i8 signext 92)
  %28 = load i64*, i64** %3, align 8
  %29 = getelementptr inbounds i64, i64* %28, i32 1
  store i64* %29, i64** %3, align 8
  store i64 %27, i64* %28, align 8
  %30 = call i64 @_T(i8 signext 0)
  %31 = load i64*, i64** %3, align 8
  store i64 %30, i64* %31, align 8
  br label %32

32:                                               ; preds = %26, %16
  br label %33

33:                                               ; preds = %32, %13
  %34 = load i64*, i64** %3, align 8
  store i64* %34, i64** %2, align 8
  br label %35

35:                                               ; preds = %33, %12
  %36 = load i64*, i64** %2, align 8
  ret i64* %36
}

declare dso_local i64 @_tcslen(i64*) #1

declare dso_local i64 @_T(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
