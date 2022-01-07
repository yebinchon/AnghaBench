; ModuleID = '/home/carl/AnghaBench/mpv/common/extr_common.c_mp_tag_str_buf.c'
source_filename = "/home/carl/AnghaBench/mpv/common/extr_common.c_mp_tag_str_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"[%d]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @mp_tag_str_buf(i8* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i64, i64* %6, align 8
  %11 = icmp ult i64 %10, 1
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i8*, i8** %5, align 8
  store i8* %13, i8** %4, align 8
  br label %54

14:                                               ; preds = %3
  %15 = load i8*, i8** %5, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  store i8 0, i8* %16, align 1
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %49, %14
  %18 = load i32, i32* %8, align 4
  %19 = icmp slt i32 %18, 4
  br i1 %19, label %20, label %52

20:                                               ; preds = %17
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %8, align 4
  %23 = mul nsw i32 %22, 8
  %24 = ashr i32 %21, %23
  %25 = and i32 %24, 255
  %26 = trunc i32 %25 to i8
  store i8 %26, i8* %9, align 1
  %27 = load i8, i8* %9, align 1
  %28 = call i64 @mp_isalnum(i8 signext %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %20
  %31 = load i8, i8* %9, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 95
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = load i8, i8* %9, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 32
  br i1 %37, label %38, label %43

38:                                               ; preds = %34, %30, %20
  %39 = load i8*, i8** %5, align 8
  %40 = load i64, i64* %6, align 8
  %41 = load i8, i8* %9, align 1
  %42 = call i32 @mp_snprintf_cat(i8* %39, i64 %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8 signext %41)
  br label %48

43:                                               ; preds = %34
  %44 = load i8*, i8** %5, align 8
  %45 = load i64, i64* %6, align 8
  %46 = load i8, i8* %9, align 1
  %47 = call i32 @mp_snprintf_cat(i8* %44, i64 %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8 signext %46)
  br label %48

48:                                               ; preds = %43, %38
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %8, align 4
  br label %17

52:                                               ; preds = %17
  %53 = load i8*, i8** %5, align 8
  store i8* %53, i8** %4, align 8
  br label %54

54:                                               ; preds = %52, %12
  %55 = load i8*, i8** %4, align 8
  ret i8* %55
}

declare dso_local i64 @mp_isalnum(i8 signext) #1

declare dso_local i32 @mp_snprintf_cat(i8*, i64, i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
