; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/kernel32/client/file/extr_fileinfo.c_FilenameA2W_N.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/kernel32/client/file/extr_fileinfo.c_FilenameA2W_N.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bIsFileApiAnsi = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FilenameA2W_N(i64* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i64* %0, i64** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %8, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %4
  %13 = load i64, i64* %7, align 8
  %14 = call i32 @strlen(i64 %13)
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %8, align 4
  br label %16

16:                                               ; preds = %12, %4
  %17 = load i64, i64* @bIsFileApiAnsi, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %16
  %20 = load i64*, i64** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = mul i64 %22, 4
  %24 = trunc i64 %23 to i32
  %25 = load i64, i64* %7, align 8
  %26 = trunc i64 %25 to i32
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @RtlMultiByteToUnicodeN(i64* %20, i32 %24, i32* %9, i32 %26, i32 %27)
  br label %39

29:                                               ; preds = %16
  %30 = load i64*, i64** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = mul i64 %32, 4
  %34 = trunc i64 %33 to i32
  %35 = load i64, i64* %7, align 8
  %36 = trunc i64 %35 to i32
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @RtlOemToUnicodeN(i64* %30, i32 %34, i32* %9, i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %29, %19
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %39
  %43 = load i64*, i64** %5, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = udiv i64 %45, 4
  %47 = sub i64 %46, 1
  %48 = getelementptr inbounds i64, i64* %43, i64 %47
  store i64 0, i64* %48, align 8
  br label %49

49:                                               ; preds = %42, %39
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = udiv i64 %51, 4
  %53 = trunc i64 %52 to i32
  ret i32 %53
}

declare dso_local i32 @strlen(i64) #1

declare dso_local i32 @RtlMultiByteToUnicodeN(i64*, i32, i32*, i32, i32) #1

declare dso_local i32 @RtlOemToUnicodeN(i64*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
