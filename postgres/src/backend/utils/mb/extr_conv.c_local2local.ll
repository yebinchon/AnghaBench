; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/mb/extr_conv.c_local2local.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/mb/extr_conv.c_local2local.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HIGHBIT = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @local2local(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i8* %5, i8** %12, align 8
  br label %15

15:                                               ; preds = %60, %6
  %16 = load i32, i32* %9, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %65

18:                                               ; preds = %15
  %19 = load i8*, i8** %7, align 8
  %20 = load i8, i8* %19, align 1
  store i8 %20, i8* %13, align 1
  %21 = load i8, i8* %13, align 1
  %22 = zext i8 %21 to i32
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %18
  %25 = load i32, i32* %10, align 4
  %26 = load i8*, i8** %7, align 8
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @report_invalid_encoding(i32 %25, i8* %26, i32 %27)
  br label %29

29:                                               ; preds = %24, %18
  %30 = load i8, i8* %13, align 1
  %31 = call i32 @IS_HIGHBIT_SET(i8 zeroext %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = load i8, i8* %13, align 1
  %35 = load i8*, i8** %8, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %8, align 8
  store i8 %34, i8* %35, align 1
  br label %60

37:                                               ; preds = %29
  %38 = load i8*, i8** %12, align 8
  %39 = load i8, i8* %13, align 1
  %40 = zext i8 %39 to i32
  %41 = load i8, i8* @HIGHBIT, align 1
  %42 = zext i8 %41 to i32
  %43 = sub nsw i32 %40, %42
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %38, i64 %44
  %46 = load i8, i8* %45, align 1
  store i8 %46, i8* %14, align 1
  %47 = load i8, i8* %14, align 1
  %48 = icmp ne i8 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %37
  %50 = load i8, i8* %14, align 1
  %51 = load i8*, i8** %8, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %8, align 8
  store i8 %50, i8* %51, align 1
  br label %59

53:                                               ; preds = %37
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %11, align 4
  %56 = load i8*, i8** %7, align 8
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @report_untranslatable_char(i32 %54, i32 %55, i8* %56, i32 %57)
  br label %59

59:                                               ; preds = %53, %49
  br label %60

60:                                               ; preds = %59, %33
  %61 = load i8*, i8** %7, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %7, align 8
  %63 = load i32, i32* %9, align 4
  %64 = add nsw i32 %63, -1
  store i32 %64, i32* %9, align 4
  br label %15

65:                                               ; preds = %15
  %66 = load i8*, i8** %8, align 8
  store i8 0, i8* %66, align 1
  ret void
}

declare dso_local i32 @report_invalid_encoding(i32, i8*, i32) #1

declare dso_local i32 @IS_HIGHBIT_SET(i8 zeroext) #1

declare dso_local i32 @report_untranslatable_char(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
