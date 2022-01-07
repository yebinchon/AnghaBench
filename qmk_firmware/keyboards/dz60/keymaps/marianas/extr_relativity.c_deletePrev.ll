; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/dz60/keymaps/marianas/extr_relativity.c_deletePrev.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/dz60/keymaps/marianas/extr_relativity.c_deletePrev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@countPointer = common dso_local global i64 0, align 8
@charCount = common dso_local global i32* null, align 8
@KC_BSPC = common dso_local global i32 0, align 4
@tableNameListLen = common dso_local global i32 0, align 4
@tableNameList = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @deletePrev() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i64, i64* @countPointer, align 8
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %0
  %6 = load i32*, i32** @charCount, align 8
  %7 = load i64, i64* @countPointer, align 8
  %8 = getelementptr inbounds i32, i32* %6, i64 %7
  %9 = load i32, i32* %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %5
  br label %60

12:                                               ; preds = %5, %0
  store i32 0, i32* %1, align 4
  br label %13

13:                                               ; preds = %25, %12
  %14 = load i32, i32* %1, align 4
  %15 = load i32*, i32** @charCount, align 8
  %16 = load i64, i64* @countPointer, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = icmp slt i32 %14, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %13
  %21 = load i32, i32* @KC_BSPC, align 4
  %22 = call i32 @register_code(i32 %21)
  %23 = load i32, i32* @KC_BSPC, align 4
  %24 = call i32 @unregister_code(i32 %23)
  br label %25

25:                                               ; preds = %20
  %26 = load i32, i32* %1, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %1, align 4
  br label %13

28:                                               ; preds = %13
  %29 = load i32*, i32** @charCount, align 8
  %30 = load i64, i64* @countPointer, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  store i32 0, i32* %31, align 4
  store i32 1, i32* %2, align 4
  br label %32

32:                                               ; preds = %46, %28
  %33 = load i32, i32* %2, align 4
  %34 = load i32, i32* @tableNameListLen, align 4
  %35 = sub nsw i32 %34, 1
  %36 = icmp slt i32 %33, %35
  br i1 %36, label %37, label %49

37:                                               ; preds = %32
  %38 = load i32*, i32** @tableNameList, align 8
  %39 = load i32, i32* %2, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  br label %49

45:                                               ; preds = %37
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %2, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %2, align 4
  br label %32

49:                                               ; preds = %44, %32
  %50 = load i32*, i32** @tableNameList, align 8
  %51 = load i32, i32* %2, align 4
  %52 = sub nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %50, i64 %53
  store i32 0, i32* %54, align 4
  %55 = load i64, i64* @countPointer, align 8
  %56 = icmp ugt i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %49
  %58 = load i64, i64* @countPointer, align 8
  %59 = add i64 %58, -1
  store i64 %59, i64* @countPointer, align 8
  br label %60

60:                                               ; preds = %11, %57, %49
  ret void
}

declare dso_local i32 @register_code(i32) #1

declare dso_local i32 @unregister_code(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
