; ModuleID = '/home/carl/AnghaBench/php-src/ext/session/extr_session.c_bin_to_readable.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/session/extr_session.c_bin_to_readable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hexconvtab = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i8*, i64, i8)* @bin_to_readable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bin_to_readable(i8* %0, i64 %1, i8* %2, i64 %3, i8 signext %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8, align 1
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i16, align 2
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i8 %4, i8* %10, align 1
  %16 = load i8*, i8** %6, align 8
  store i8* %16, i8** %11, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = load i64, i64* %7, align 8
  %19 = getelementptr inbounds i8, i8* %17, i64 %18
  store i8* %19, i8** %12, align 8
  store i16 0, i16* %13, align 2
  store i32 0, i32* %15, align 4
  %20 = load i8, i8* %10, align 1
  %21 = sext i8 %20 to i32
  %22 = shl i32 1, %21
  %23 = sub nsw i32 %22, 1
  store i32 %23, i32* %14, align 4
  br label %24

24:                                               ; preds = %53, %5
  %25 = load i64, i64* %9, align 8
  %26 = add i64 %25, -1
  store i64 %26, i64* %9, align 8
  %27 = icmp ne i64 %25, 0
  br i1 %27, label %28, label %75

28:                                               ; preds = %24
  %29 = load i32, i32* %15, align 4
  %30 = load i8, i8* %10, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp slt i32 %29, %31
  br i1 %32, label %33, label %53

33:                                               ; preds = %28
  %34 = load i8*, i8** %11, align 8
  %35 = load i8*, i8** %12, align 8
  %36 = icmp ult i8* %34, %35
  br i1 %36, label %37, label %50

37:                                               ; preds = %33
  %38 = load i8*, i8** %11, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %11, align 8
  %40 = load i8, i8* %38, align 1
  %41 = zext i8 %40 to i32
  %42 = load i32, i32* %15, align 4
  %43 = shl i32 %41, %42
  %44 = load i16, i16* %13, align 2
  %45 = zext i16 %44 to i32
  %46 = or i32 %45, %43
  %47 = trunc i32 %46 to i16
  store i16 %47, i16* %13, align 2
  %48 = load i32, i32* %15, align 4
  %49 = add nsw i32 %48, 8
  store i32 %49, i32* %15, align 4
  br label %52

50:                                               ; preds = %33
  %51 = call i32 @ZEND_ASSERT(i32 0)
  br label %75

52:                                               ; preds = %37
  br label %53

53:                                               ; preds = %52, %28
  %54 = load i32*, i32** @hexconvtab, align 8
  %55 = load i16, i16* %13, align 2
  %56 = zext i16 %55 to i32
  %57 = load i32, i32* %14, align 4
  %58 = and i32 %56, %57
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %54, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = trunc i32 %61 to i8
  %63 = load i8*, i8** %8, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %8, align 8
  store i8 %62, i8* %63, align 1
  %65 = load i8, i8* %10, align 1
  %66 = sext i8 %65 to i32
  %67 = load i16, i16* %13, align 2
  %68 = zext i16 %67 to i32
  %69 = ashr i32 %68, %66
  %70 = trunc i32 %69 to i16
  store i16 %70, i16* %13, align 2
  %71 = load i8, i8* %10, align 1
  %72 = sext i8 %71 to i32
  %73 = load i32, i32* %15, align 4
  %74 = sub nsw i32 %73, %72
  store i32 %74, i32* %15, align 4
  br label %24

75:                                               ; preds = %50, %24
  %76 = load i8*, i8** %8, align 8
  store i8 0, i8* %76, align 1
  ret void
}

declare dso_local i32 @ZEND_ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
