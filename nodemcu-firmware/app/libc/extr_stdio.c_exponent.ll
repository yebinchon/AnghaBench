; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/libc/extr_stdio.c_exponent.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/libc/extr_stdio.c_exponent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_FCONVERSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32, i32)* @exponent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @exponent(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* @MAX_FCONVERSION, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %8, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %9, align 8
  %14 = load i32, i32* %6, align 4
  %15 = trunc i32 %14 to i8
  %16 = load i8*, i8** %4, align 8
  %17 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %17, i8** %4, align 8
  store i8 %15, i8* %16, align 1
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %3
  %21 = load i32, i32* %5, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  %23 = load i8*, i8** %4, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %4, align 8
  store i8 45, i8* %23, align 1
  br label %28

25:                                               ; preds = %3
  %26 = load i8*, i8** %4, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %4, align 8
  store i8 43, i8* %26, align 1
  br label %28

28:                                               ; preds = %25, %20
  %29 = load i32, i32* @MAX_FCONVERSION, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %13, i64 %30
  store i8* %31, i8** %7, align 8
  %32 = load i32, i32* %5, align 4
  %33 = icmp sgt i32 %32, 9
  br i1 %33, label %34, label %66

34:                                               ; preds = %28
  br label %35

35:                                               ; preds = %42, %34
  %36 = load i32, i32* %5, align 4
  %37 = srem i32 %36, 10
  %38 = call i8* @to_char(i32 %37)
  %39 = ptrtoint i8* %38 to i8
  %40 = load i8*, i8** %7, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 -1
  store i8* %41, i8** %7, align 8
  store i8 %39, i8* %41, align 1
  br label %42

42:                                               ; preds = %35
  %43 = load i32, i32* %5, align 4
  %44 = sdiv i32 %43, 10
  store i32 %44, i32* %5, align 4
  %45 = icmp sgt i32 %44, 9
  br i1 %45, label %35, label %46

46:                                               ; preds = %42
  %47 = load i32, i32* %5, align 4
  %48 = call i8* @to_char(i32 %47)
  %49 = ptrtoint i8* %48 to i8
  %50 = load i8*, i8** %7, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 -1
  store i8* %51, i8** %7, align 8
  store i8 %49, i8* %51, align 1
  br label %52

52:                                               ; preds = %59, %46
  %53 = load i8*, i8** %7, align 8
  %54 = load i32, i32* @MAX_FCONVERSION, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %13, i64 %55
  %57 = icmp ult i8* %53, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %52
  br label %59

59:                                               ; preds = %58
  %60 = load i8*, i8** %7, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %7, align 8
  %62 = load i8, i8* %60, align 1
  %63 = load i8*, i8** %4, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %4, align 8
  store i8 %62, i8* %63, align 1
  br label %52

65:                                               ; preds = %52
  br label %74

66:                                               ; preds = %28
  %67 = load i8*, i8** %4, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %4, align 8
  store i8 48, i8* %67, align 1
  %69 = load i32, i32* %5, align 4
  %70 = call i8* @to_char(i32 %69)
  %71 = ptrtoint i8* %70 to i8
  %72 = load i8*, i8** %4, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %4, align 8
  store i8 %71, i8* %72, align 1
  br label %74

74:                                               ; preds = %66, %65
  %75 = load i8*, i8** %4, align 8
  %76 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %76)
  ret i8* %75
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @to_char(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
