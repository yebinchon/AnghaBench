; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/mb/extr_wchar.c_unicode_to_utf8.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/mb/extr_wchar.c_unicode_to_utf8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @unicode_to_utf8(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = icmp sle i32 %5, 127
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  %8 = load i32, i32* %3, align 4
  %9 = trunc i32 %8 to i8
  %10 = load i8*, i8** %4, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 0
  store i8 %9, i8* %11, align 1
  br label %83

12:                                               ; preds = %2
  %13 = load i32, i32* %3, align 4
  %14 = icmp sle i32 %13, 2047
  br i1 %14, label %15, label %29

15:                                               ; preds = %12
  %16 = load i32, i32* %3, align 4
  %17 = ashr i32 %16, 6
  %18 = and i32 %17, 31
  %19 = or i32 192, %18
  %20 = trunc i32 %19 to i8
  %21 = load i8*, i8** %4, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  store i8 %20, i8* %22, align 1
  %23 = load i32, i32* %3, align 4
  %24 = and i32 %23, 63
  %25 = or i32 128, %24
  %26 = trunc i32 %25 to i8
  %27 = load i8*, i8** %4, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 1
  store i8 %26, i8* %28, align 1
  br label %82

29:                                               ; preds = %12
  %30 = load i32, i32* %3, align 4
  %31 = icmp sle i32 %30, 65535
  br i1 %31, label %32, label %53

32:                                               ; preds = %29
  %33 = load i32, i32* %3, align 4
  %34 = ashr i32 %33, 12
  %35 = and i32 %34, 15
  %36 = or i32 224, %35
  %37 = trunc i32 %36 to i8
  %38 = load i8*, i8** %4, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 0
  store i8 %37, i8* %39, align 1
  %40 = load i32, i32* %3, align 4
  %41 = ashr i32 %40, 6
  %42 = and i32 %41, 63
  %43 = or i32 128, %42
  %44 = trunc i32 %43 to i8
  %45 = load i8*, i8** %4, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 1
  store i8 %44, i8* %46, align 1
  %47 = load i32, i32* %3, align 4
  %48 = and i32 %47, 63
  %49 = or i32 128, %48
  %50 = trunc i32 %49 to i8
  %51 = load i8*, i8** %4, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 2
  store i8 %50, i8* %52, align 1
  br label %81

53:                                               ; preds = %29
  %54 = load i32, i32* %3, align 4
  %55 = ashr i32 %54, 18
  %56 = and i32 %55, 7
  %57 = or i32 240, %56
  %58 = trunc i32 %57 to i8
  %59 = load i8*, i8** %4, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 0
  store i8 %58, i8* %60, align 1
  %61 = load i32, i32* %3, align 4
  %62 = ashr i32 %61, 12
  %63 = and i32 %62, 63
  %64 = or i32 128, %63
  %65 = trunc i32 %64 to i8
  %66 = load i8*, i8** %4, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 1
  store i8 %65, i8* %67, align 1
  %68 = load i32, i32* %3, align 4
  %69 = ashr i32 %68, 6
  %70 = and i32 %69, 63
  %71 = or i32 128, %70
  %72 = trunc i32 %71 to i8
  %73 = load i8*, i8** %4, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 2
  store i8 %72, i8* %74, align 1
  %75 = load i32, i32* %3, align 4
  %76 = and i32 %75, 63
  %77 = or i32 128, %76
  %78 = trunc i32 %77 to i8
  %79 = load i8*, i8** %4, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 3
  store i8 %78, i8* %80, align 1
  br label %81

81:                                               ; preds = %53, %32
  br label %82

82:                                               ; preds = %81, %15
  br label %83

83:                                               ; preds = %82, %7
  %84 = load i8*, i8** %4, align 8
  ret i8* %84
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
