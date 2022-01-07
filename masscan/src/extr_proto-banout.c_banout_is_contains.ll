; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_proto-banout.c_banout_is_contains.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_proto-banout.c_banout_is_contains.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BannerOutput = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @banout_is_contains(%struct.BannerOutput* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.BannerOutput*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.BannerOutput* %0, %struct.BannerOutput** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %12 = load %struct.BannerOutput*, %struct.BannerOutput** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i8* @banout_string(%struct.BannerOutput* %12, i32 %13)
  store i8* %14, i8** %8, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load i8*, i8** %7, align 8
  %19 = icmp eq i8* %18, null
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %4, align 4
  br label %57

21:                                               ; preds = %3
  %22 = load i8*, i8** %7, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %57

25:                                               ; preds = %21
  %26 = load i8*, i8** %7, align 8
  %27 = call i64 @strlen(i8* %26)
  store i64 %27, i64* %9, align 8
  %28 = load %struct.BannerOutput*, %struct.BannerOutput** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i64 @banout_string_length(%struct.BannerOutput* %28, i32 %29)
  store i64 %30, i64* %10, align 8
  %31 = load i64, i64* %9, align 8
  %32 = load i64, i64* %10, align 8
  %33 = icmp ugt i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %57

35:                                               ; preds = %25
  store i64 0, i64* %11, align 8
  br label %36

36:                                               ; preds = %53, %35
  %37 = load i64, i64* %11, align 8
  %38 = load i64, i64* %10, align 8
  %39 = load i64, i64* %9, align 8
  %40 = sub i64 %38, %39
  %41 = add i64 %40, 1
  %42 = icmp ult i64 %37, %41
  br i1 %42, label %43, label %56

43:                                               ; preds = %36
  %44 = load i8*, i8** %7, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = load i64, i64* %11, align 8
  %47 = getelementptr inbounds i8, i8* %45, i64 %46
  %48 = load i64, i64* %9, align 8
  %49 = call i64 @memcmp(i8* %44, i8* %47, i64 %48)
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  store i32 1, i32* %4, align 4
  br label %57

52:                                               ; preds = %43
  br label %53

53:                                               ; preds = %52
  %54 = load i64, i64* %11, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %11, align 8
  br label %36

56:                                               ; preds = %36
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %56, %51, %34, %24, %17
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i8* @banout_string(%struct.BannerOutput*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @banout_string_length(%struct.BannerOutput*, i32) #1

declare dso_local i64 @memcmp(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
