; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-string-ext/src/extr_string.c_tr_get_character.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-string-ext/src/extr_string.c_tr_get_character.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tr_pattern = type { i64, i32, %struct.tr_pattern*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.tr_pattern*, i8*, i64)* @tr_get_character to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @tr_get_character(%struct.tr_pattern* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.tr_pattern*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.tr_pattern* %0, %struct.tr_pattern** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %8, align 8
  br label %10

10:                                               ; preds = %82, %3
  %11 = load %struct.tr_pattern*, %struct.tr_pattern** %5, align 8
  %12 = icmp ne %struct.tr_pattern* %11, null
  br i1 %12, label %13, label %91

13:                                               ; preds = %10
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* %8, align 8
  %16 = load %struct.tr_pattern*, %struct.tr_pattern** %5, align 8
  %17 = getelementptr inbounds %struct.tr_pattern, %struct.tr_pattern* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %15, %18
  %20 = icmp slt i64 %14, %19
  br i1 %20, label %21, label %50

21:                                               ; preds = %13
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* %8, align 8
  %24 = sub nsw i64 %22, %23
  store i64 %24, i64* %9, align 8
  %25 = load %struct.tr_pattern*, %struct.tr_pattern** %5, align 8
  %26 = getelementptr inbounds %struct.tr_pattern, %struct.tr_pattern* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  switch i32 %27, label %49 [
    i32 130, label %28
    i32 129, label %39
    i32 128, label %48
  ]

28:                                               ; preds = %21
  %29 = load i8*, i8** %6, align 8
  %30 = load %struct.tr_pattern*, %struct.tr_pattern** %5, align 8
  %31 = getelementptr inbounds %struct.tr_pattern, %struct.tr_pattern* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %9, align 8
  %35 = add nsw i64 %33, %34
  %36 = getelementptr inbounds i8, i8* %29, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i64
  store i64 %38, i64* %4, align 8
  br label %92

39:                                               ; preds = %21
  %40 = load %struct.tr_pattern*, %struct.tr_pattern** %5, align 8
  %41 = getelementptr inbounds %struct.tr_pattern, %struct.tr_pattern* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i64*, i64** %42, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %9, align 8
  %47 = add nsw i64 %45, %46
  store i64 %47, i64* %4, align 8
  br label %92

48:                                               ; preds = %21
  store i64 -1, i64* %4, align 8
  br label %92

49:                                               ; preds = %21
  br label %50

50:                                               ; preds = %49, %13
  %51 = load %struct.tr_pattern*, %struct.tr_pattern** %5, align 8
  %52 = getelementptr inbounds %struct.tr_pattern, %struct.tr_pattern* %51, i32 0, i32 2
  %53 = load %struct.tr_pattern*, %struct.tr_pattern** %52, align 8
  %54 = icmp eq %struct.tr_pattern* %53, null
  br i1 %54, label %55, label %82

55:                                               ; preds = %50
  %56 = load %struct.tr_pattern*, %struct.tr_pattern** %5, align 8
  %57 = getelementptr inbounds %struct.tr_pattern, %struct.tr_pattern* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  switch i32 %58, label %81 [
    i32 130, label %59
    i32 129, label %73
    i32 128, label %80
  ]

59:                                               ; preds = %55
  %60 = load i8*, i8** %6, align 8
  %61 = load %struct.tr_pattern*, %struct.tr_pattern** %5, align 8
  %62 = getelementptr inbounds %struct.tr_pattern, %struct.tr_pattern* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.tr_pattern*, %struct.tr_pattern** %5, align 8
  %66 = getelementptr inbounds %struct.tr_pattern, %struct.tr_pattern* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %64, %67
  %69 = sub nsw i64 %68, 1
  %70 = getelementptr inbounds i8, i8* %60, i64 %69
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i64
  store i64 %72, i64* %4, align 8
  br label %92

73:                                               ; preds = %55
  %74 = load %struct.tr_pattern*, %struct.tr_pattern** %5, align 8
  %75 = getelementptr inbounds %struct.tr_pattern, %struct.tr_pattern* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i64*, i64** %76, align 8
  %78 = getelementptr inbounds i64, i64* %77, i64 1
  %79 = load i64, i64* %78, align 8
  store i64 %79, i64* %4, align 8
  br label %92

80:                                               ; preds = %55
  store i64 -1, i64* %4, align 8
  br label %92

81:                                               ; preds = %55
  br label %82

82:                                               ; preds = %81, %50
  %83 = load %struct.tr_pattern*, %struct.tr_pattern** %5, align 8
  %84 = getelementptr inbounds %struct.tr_pattern, %struct.tr_pattern* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* %8, align 8
  %87 = add nsw i64 %86, %85
  store i64 %87, i64* %8, align 8
  %88 = load %struct.tr_pattern*, %struct.tr_pattern** %5, align 8
  %89 = getelementptr inbounds %struct.tr_pattern, %struct.tr_pattern* %88, i32 0, i32 2
  %90 = load %struct.tr_pattern*, %struct.tr_pattern** %89, align 8
  store %struct.tr_pattern* %90, %struct.tr_pattern** %5, align 8
  br label %10

91:                                               ; preds = %10
  store i64 -1, i64* %4, align 8
  br label %92

92:                                               ; preds = %91, %80, %73, %59, %48, %39, %28
  %93 = load i64, i64* %4, align 8
  ret i64 %93
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
