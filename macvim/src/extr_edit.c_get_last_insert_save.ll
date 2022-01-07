; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_edit.c_get_last_insert_save.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_edit.c_get_last_insert_save.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@last_insert = common dso_local global i32* null, align 8
@last_insert_skip = common dso_local global i32 0, align 4
@ESC = common dso_local global i64 0, align 8
@NUL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64* @get_last_insert_save() #0 {
  %1 = alloca i64*, align 8
  %2 = alloca i64*, align 8
  %3 = alloca i32, align 4
  %4 = load i32*, i32** @last_insert, align 8
  %5 = icmp eq i32* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  store i64* null, i64** %1, align 8
  br label %40

7:                                                ; preds = %0
  %8 = load i32*, i32** @last_insert, align 8
  %9 = load i32, i32* @last_insert_skip, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i32, i32* %8, i64 %10
  %12 = call i64* @vim_strsave(i32* %11)
  store i64* %12, i64** %2, align 8
  %13 = load i64*, i64** %2, align 8
  %14 = icmp ne i64* %13, null
  br i1 %14, label %15, label %38

15:                                               ; preds = %7
  %16 = load i64*, i64** %2, align 8
  %17 = call i64 @STRLEN(i64* %16)
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %37

21:                                               ; preds = %15
  %22 = load i64*, i64** %2, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sub nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i64, i64* %22, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @ESC, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %21
  %31 = load i64, i64* @NUL, align 8
  %32 = load i64*, i64** %2, align 8
  %33 = load i32, i32* %3, align 4
  %34 = sub nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %32, i64 %35
  store i64 %31, i64* %36, align 8
  br label %37

37:                                               ; preds = %30, %21, %15
  br label %38

38:                                               ; preds = %37, %7
  %39 = load i64*, i64** %2, align 8
  store i64* %39, i64** %1, align 8
  br label %40

40:                                               ; preds = %38, %6
  %41 = load i64*, i64** %1, align 8
  ret i64* %41
}

declare dso_local i64* @vim_strsave(i32*) #1

declare dso_local i64 @STRLEN(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
