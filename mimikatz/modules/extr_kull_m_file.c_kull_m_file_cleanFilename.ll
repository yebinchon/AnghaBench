; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_file.c_kull_m_file_cleanFilename.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_file.c_kull_m_file_cleanFilename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kull_m_file_forbiddenChars = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kull_m_file_cleanFilename(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  store i64 0, i64* %3, align 8
  br label %5

5:                                                ; preds = %36, %1
  %6 = load i32*, i32** %2, align 8
  %7 = load i64, i64* %3, align 8
  %8 = getelementptr inbounds i32, i32* %6, i64 %7
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %39

11:                                               ; preds = %5
  store i64 0, i64* %4, align 8
  br label %12

12:                                               ; preds = %32, %11
  %13 = load i64, i64* %4, align 8
  %14 = load i32*, i32** @kull_m_file_forbiddenChars, align 8
  %15 = call i64 @ARRAYSIZE(i32* %14)
  %16 = icmp ult i64 %13, %15
  br i1 %16, label %17, label %35

17:                                               ; preds = %12
  %18 = load i32*, i32** %2, align 8
  %19 = load i64, i64* %3, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = load i32*, i32** @kull_m_file_forbiddenChars, align 8
  %23 = load i64, i64* %4, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %21, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %17
  %28 = load i32*, i32** %2, align 8
  %29 = load i64, i64* %3, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  store i32 126, i32* %30, align 4
  br label %31

31:                                               ; preds = %27, %17
  br label %32

32:                                               ; preds = %31
  %33 = load i64, i64* %4, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %4, align 8
  br label %12

35:                                               ; preds = %12
  br label %36

36:                                               ; preds = %35
  %37 = load i64, i64* %3, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %3, align 8
  br label %5

39:                                               ; preds = %5
  ret void
}

declare dso_local i64 @ARRAYSIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
