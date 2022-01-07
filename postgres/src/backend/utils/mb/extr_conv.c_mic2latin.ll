; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/mb/extr_conv.c_mic2latin.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/mb/extr_conv.c_mic2latin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PG_MULE_INTERNAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mic2latin(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  br label %13

13:                                               ; preds = %81, %5
  %14 = load i32, i32* %8, align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %82

16:                                               ; preds = %13
  %17 = load i8*, i8** %6, align 8
  %18 = load i8, i8* %17, align 1
  %19 = zext i8 %18 to i32
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %16
  %23 = load i32, i32* @PG_MULE_INTERNAL, align 4
  %24 = load i8*, i8** %6, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @report_invalid_encoding(i32 %23, i8* %24, i32 %25)
  br label %27

27:                                               ; preds = %22, %16
  %28 = load i32, i32* %11, align 4
  %29 = trunc i32 %28 to i8
  %30 = call i32 @IS_HIGHBIT_SET(i8 zeroext %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %41, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* %11, align 4
  %34 = trunc i32 %33 to i8
  %35 = load i8*, i8** %7, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %7, align 8
  store i8 %34, i8* %35, align 1
  %37 = load i8*, i8** %6, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %6, align 8
  %39 = load i32, i32* %8, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %8, align 4
  br label %81

41:                                               ; preds = %27
  %42 = load i8*, i8** %6, align 8
  %43 = call i32 @pg_mic_mblen(i8* %42)
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %12, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %41
  %48 = load i32, i32* @PG_MULE_INTERNAL, align 4
  %49 = load i8*, i8** %6, align 8
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @report_invalid_encoding(i32 %48, i8* %49, i32 %50)
  br label %52

52:                                               ; preds = %47, %41
  %53 = load i32, i32* %12, align 4
  %54 = icmp ne i32 %53, 2
  br i1 %54, label %65, label %55

55:                                               ; preds = %52
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %65, label %59

59:                                               ; preds = %55
  %60 = load i8*, i8** %6, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 1
  %62 = load i8, i8* %61, align 1
  %63 = call i32 @IS_HIGHBIT_SET(i8 zeroext %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %71, label %65

65:                                               ; preds = %59, %55, %52
  %66 = load i32, i32* @PG_MULE_INTERNAL, align 4
  %67 = load i32, i32* %10, align 4
  %68 = load i8*, i8** %6, align 8
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @report_untranslatable_char(i32 %66, i32 %67, i8* %68, i32 %69)
  br label %71

71:                                               ; preds = %65, %59
  %72 = load i8*, i8** %6, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 1
  %74 = load i8, i8* %73, align 1
  %75 = load i8*, i8** %7, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %7, align 8
  store i8 %74, i8* %75, align 1
  %77 = load i8*, i8** %6, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 2
  store i8* %78, i8** %6, align 8
  %79 = load i32, i32* %8, align 4
  %80 = sub nsw i32 %79, 2
  store i32 %80, i32* %8, align 4
  br label %81

81:                                               ; preds = %71, %32
  br label %13

82:                                               ; preds = %13
  %83 = load i8*, i8** %7, align 8
  store i8 0, i8* %83, align 1
  ret void
}

declare dso_local i32 @report_invalid_encoding(i32, i8*, i32) #1

declare dso_local i32 @IS_HIGHBIT_SET(i8 zeroext) #1

declare dso_local i32 @pg_mic_mblen(i8*) #1

declare dso_local i32 @report_untranslatable_char(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
