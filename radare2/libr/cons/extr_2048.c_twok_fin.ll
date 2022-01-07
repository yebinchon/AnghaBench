; ModuleID = '/home/carl/AnghaBench/radare2/libr/cons/extr_2048.c_twok_fin.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/cons/extr_2048.c_twok_fin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@twok_buf = common dso_local global i64** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @twok_fin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twok_fin() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  br label %4

4:                                                ; preds = %28, %0
  %5 = load i32, i32* %2, align 4
  %6 = icmp slt i32 %5, 4
  br i1 %6, label %7, label %31

7:                                                ; preds = %4
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %24, %7
  %9 = load i32, i32* %3, align 4
  %10 = icmp slt i32 %9, 4
  br i1 %10, label %11, label %27

11:                                               ; preds = %8
  %12 = load i64**, i64*** @twok_buf, align 8
  %13 = load i32, i32* %2, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i64*, i64** %12, i64 %14
  %16 = load i64*, i64** %15, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i64, i64* %16, i64 %18
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %11
  store i32 1, i32* %1, align 4
  br label %108

23:                                               ; preds = %11
  br label %24

24:                                               ; preds = %23
  %25 = load i32, i32* %3, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %3, align 4
  br label %8

27:                                               ; preds = %8
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %2, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %2, align 4
  br label %4

31:                                               ; preds = %4
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %66, %31
  %33 = load i32, i32* %2, align 4
  %34 = icmp slt i32 %33, 4
  br i1 %34, label %35, label %69

35:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %62, %35
  %37 = load i32, i32* %3, align 4
  %38 = icmp slt i32 %37, 3
  br i1 %38, label %39, label %65

39:                                               ; preds = %36
  %40 = load i64**, i64*** @twok_buf, align 8
  %41 = load i32, i32* %2, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i64*, i64** %40, i64 %42
  %44 = load i64*, i64** %43, align 8
  %45 = load i32, i32* %3, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %44, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = load i64**, i64*** @twok_buf, align 8
  %50 = load i32, i32* %2, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i64*, i64** %49, i64 %51
  %53 = load i64*, i64** %52, align 8
  %54 = load i32, i32* %3, align 4
  %55 = add nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i64, i64* %53, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %48, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %39
  store i32 1, i32* %1, align 4
  br label %108

61:                                               ; preds = %39
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %3, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %3, align 4
  br label %36

65:                                               ; preds = %36
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %2, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %2, align 4
  br label %32

69:                                               ; preds = %32
  store i32 0, i32* %2, align 4
  br label %70

70:                                               ; preds = %104, %69
  %71 = load i32, i32* %2, align 4
  %72 = icmp slt i32 %71, 3
  br i1 %72, label %73, label %107

73:                                               ; preds = %70
  store i32 0, i32* %3, align 4
  br label %74

74:                                               ; preds = %100, %73
  %75 = load i32, i32* %3, align 4
  %76 = icmp slt i32 %75, 4
  br i1 %76, label %77, label %103

77:                                               ; preds = %74
  %78 = load i64**, i64*** @twok_buf, align 8
  %79 = load i32, i32* %2, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i64*, i64** %78, i64 %80
  %82 = load i64*, i64** %81, align 8
  %83 = load i32, i32* %3, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i64, i64* %82, i64 %84
  %86 = load i64, i64* %85, align 8
  %87 = load i64**, i64*** @twok_buf, align 8
  %88 = load i32, i32* %2, align 4
  %89 = add nsw i32 %88, 1
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i64*, i64** %87, i64 %90
  %92 = load i64*, i64** %91, align 8
  %93 = load i32, i32* %3, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i64, i64* %92, i64 %94
  %96 = load i64, i64* %95, align 8
  %97 = icmp eq i64 %86, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %77
  store i32 1, i32* %1, align 4
  br label %108

99:                                               ; preds = %77
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %3, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %3, align 4
  br label %74

103:                                              ; preds = %74
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %2, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %2, align 4
  br label %70

107:                                              ; preds = %70
  store i32 0, i32* %1, align 4
  br label %108

108:                                              ; preds = %107, %98, %60, %22
  %109 = load i32, i32* %1, align 4
  ret i32 %109
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
