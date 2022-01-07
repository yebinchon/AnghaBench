; ModuleID = '/home/carl/AnghaBench/reactos/base/shell/cmd/extr_strtoclr.c_chop_blank.c'
source_filename = "/home/carl/AnghaBench/reactos/base/shell/cmd/extr_strtoclr.c_chop_blank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CP_BLANK_NOT_FOUND = common dso_local global i32 0, align 4
@CP_END_OF_STRING = common dso_local global i32 0, align 4
@CP_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64**)* @chop_blank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chop_blank(i64** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64**, align 8
  %4 = alloca i64*, align 8
  store i64** %0, i64*** %3, align 8
  %5 = load i64**, i64*** %3, align 8
  %6 = load i64*, i64** %5, align 8
  %7 = call i64 @_T(i8 signext 32)
  %8 = call i64* @_tcschr(i64* %6, i64 %7)
  store i64* %8, i64** %4, align 8
  %9 = load i64*, i64** %4, align 8
  %10 = icmp ne i64* %9, null
  br i1 %10, label %23, label %11

11:                                               ; preds = %1
  %12 = load i64**, i64*** %3, align 8
  %13 = load i64*, i64** %12, align 8
  %14 = call i64 @_T(i8 signext 0)
  %15 = call i64* @_tcschr(i64* %13, i64 %14)
  store i64* %15, i64** %4, align 8
  %16 = load i64*, i64** %4, align 8
  %17 = icmp ne i64* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %11
  %19 = load i64*, i64** %4, align 8
  %20 = load i64**, i64*** %3, align 8
  store i64* %19, i64** %20, align 8
  br label %21

21:                                               ; preds = %18, %11
  %22 = load i32, i32* @CP_BLANK_NOT_FOUND, align 4
  store i32 %22, i32* %2, align 4
  br label %45

23:                                               ; preds = %1
  br label %24

24:                                               ; preds = %29, %23
  %25 = load i64*, i64** %4, align 8
  %26 = load i64, i64* %25, align 8
  %27 = call i64 @_istspace(i64 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i64*, i64** %4, align 8
  %31 = getelementptr inbounds i64, i64* %30, i32 1
  store i64* %31, i64** %4, align 8
  br label %24

32:                                               ; preds = %24
  %33 = load i64*, i64** %4, align 8
  %34 = load i64, i64* %33, align 8
  %35 = call i64 @_T(i8 signext 0)
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load i64*, i64** %4, align 8
  %39 = load i64**, i64*** %3, align 8
  store i64* %38, i64** %39, align 8
  %40 = load i32, i32* @CP_END_OF_STRING, align 4
  store i32 %40, i32* %2, align 4
  br label %45

41:                                               ; preds = %32
  %42 = load i64*, i64** %4, align 8
  %43 = load i64**, i64*** %3, align 8
  store i64* %42, i64** %43, align 8
  %44 = load i32, i32* @CP_OK, align 4
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %41, %37, %21
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i64* @_tcschr(i64*, i64) #1

declare dso_local i64 @_T(i8 signext) #1

declare dso_local i64 @_istspace(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
