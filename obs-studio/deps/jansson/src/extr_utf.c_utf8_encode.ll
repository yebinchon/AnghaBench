; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/jansson/src/extr_utf.c_utf8_encode.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/jansson/src/extr_utf.c_utf8_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @utf8_encode(i32 %0, i8* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i64* %2, i64** %7, align 8
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %101

11:                                               ; preds = %3
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 128
  br i1 %13, label %14, label %20

14:                                               ; preds = %11
  %15 = load i32, i32* %5, align 4
  %16 = trunc i32 %15 to i8
  %17 = load i8*, i8** %6, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 0
  store i8 %16, i8* %18, align 1
  %19 = load i64*, i64** %7, align 8
  store i64 1, i64* %19, align 8
  br label %99

20:                                               ; preds = %11
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %21, 2048
  br i1 %22, label %23, label %38

23:                                               ; preds = %20
  %24 = load i32, i32* %5, align 4
  %25 = and i32 %24, 1984
  %26 = ashr i32 %25, 6
  %27 = add nsw i32 192, %26
  %28 = trunc i32 %27 to i8
  %29 = load i8*, i8** %6, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  store i8 %28, i8* %30, align 1
  %31 = load i32, i32* %5, align 4
  %32 = and i32 %31, 63
  %33 = add nsw i32 128, %32
  %34 = trunc i32 %33 to i8
  %35 = load i8*, i8** %6, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 1
  store i8 %34, i8* %36, align 1
  %37 = load i64*, i64** %7, align 8
  store i64 2, i64* %37, align 8
  br label %98

38:                                               ; preds = %20
  %39 = load i32, i32* %5, align 4
  %40 = icmp slt i32 %39, 65536
  br i1 %40, label %41, label %63

41:                                               ; preds = %38
  %42 = load i32, i32* %5, align 4
  %43 = and i32 %42, 61440
  %44 = ashr i32 %43, 12
  %45 = add nsw i32 224, %44
  %46 = trunc i32 %45 to i8
  %47 = load i8*, i8** %6, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 0
  store i8 %46, i8* %48, align 1
  %49 = load i32, i32* %5, align 4
  %50 = and i32 %49, 4032
  %51 = ashr i32 %50, 6
  %52 = add nsw i32 128, %51
  %53 = trunc i32 %52 to i8
  %54 = load i8*, i8** %6, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 1
  store i8 %53, i8* %55, align 1
  %56 = load i32, i32* %5, align 4
  %57 = and i32 %56, 63
  %58 = add nsw i32 128, %57
  %59 = trunc i32 %58 to i8
  %60 = load i8*, i8** %6, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 2
  store i8 %59, i8* %61, align 1
  %62 = load i64*, i64** %7, align 8
  store i64 3, i64* %62, align 8
  br label %97

63:                                               ; preds = %38
  %64 = load i32, i32* %5, align 4
  %65 = icmp sle i32 %64, 1114111
  br i1 %65, label %66, label %95

66:                                               ; preds = %63
  %67 = load i32, i32* %5, align 4
  %68 = and i32 %67, 1835008
  %69 = ashr i32 %68, 18
  %70 = add nsw i32 240, %69
  %71 = trunc i32 %70 to i8
  %72 = load i8*, i8** %6, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 0
  store i8 %71, i8* %73, align 1
  %74 = load i32, i32* %5, align 4
  %75 = and i32 %74, 258048
  %76 = ashr i32 %75, 12
  %77 = add nsw i32 128, %76
  %78 = trunc i32 %77 to i8
  %79 = load i8*, i8** %6, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 1
  store i8 %78, i8* %80, align 1
  %81 = load i32, i32* %5, align 4
  %82 = and i32 %81, 4032
  %83 = ashr i32 %82, 6
  %84 = add nsw i32 128, %83
  %85 = trunc i32 %84 to i8
  %86 = load i8*, i8** %6, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 2
  store i8 %85, i8* %87, align 1
  %88 = load i32, i32* %5, align 4
  %89 = and i32 %88, 63
  %90 = add nsw i32 128, %89
  %91 = trunc i32 %90 to i8
  %92 = load i8*, i8** %6, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 3
  store i8 %91, i8* %93, align 1
  %94 = load i64*, i64** %7, align 8
  store i64 4, i64* %94, align 8
  br label %96

95:                                               ; preds = %63
  store i32 -1, i32* %4, align 4
  br label %101

96:                                               ; preds = %66
  br label %97

97:                                               ; preds = %96, %41
  br label %98

98:                                               ; preds = %97, %23
  br label %99

99:                                               ; preds = %98, %14
  br label %100

100:                                              ; preds = %99
  store i32 0, i32* %4, align 4
  br label %101

101:                                              ; preds = %100, %95, %10
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
