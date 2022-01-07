; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/mb/extr_wchar.c_pg_utf8_islegal.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/mb/extr_wchar.c_pg_utf8_islegal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pg_utf8_islegal(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  switch i32 %7, label %8 [
    i32 4, label %9
    i32 3, label %22
    i32 2, label %35
    i32 1, label %93
  ]

8:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %111

9:                                                ; preds = %2
  %10 = load i8*, i8** %4, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 3
  %12 = load i8, i8* %11, align 1
  store i8 %12, i8* %6, align 1
  %13 = load i8, i8* %6, align 1
  %14 = zext i8 %13 to i32
  %15 = icmp slt i32 %14, 128
  br i1 %15, label %20, label %16

16:                                               ; preds = %9
  %17 = load i8, i8* %6, align 1
  %18 = zext i8 %17 to i32
  %19 = icmp sgt i32 %18, 191
  br i1 %19, label %20, label %21

20:                                               ; preds = %16, %9
  store i32 0, i32* %3, align 4
  br label %111

21:                                               ; preds = %16
  br label %22

22:                                               ; preds = %2, %21
  %23 = load i8*, i8** %4, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 2
  %25 = load i8, i8* %24, align 1
  store i8 %25, i8* %6, align 1
  %26 = load i8, i8* %6, align 1
  %27 = zext i8 %26 to i32
  %28 = icmp slt i32 %27, 128
  br i1 %28, label %33, label %29

29:                                               ; preds = %22
  %30 = load i8, i8* %6, align 1
  %31 = zext i8 %30 to i32
  %32 = icmp sgt i32 %31, 191
  br i1 %32, label %33, label %34

33:                                               ; preds = %29, %22
  store i32 0, i32* %3, align 4
  br label %111

34:                                               ; preds = %29
  br label %35

35:                                               ; preds = %2, %34
  %36 = load i8*, i8** %4, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 1
  %38 = load i8, i8* %37, align 1
  store i8 %38, i8* %6, align 1
  %39 = load i8*, i8** %4, align 8
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  switch i32 %41, label %82 [
    i32 224, label %42
    i32 237, label %52
    i32 240, label %62
    i32 244, label %72
  ]

42:                                               ; preds = %35
  %43 = load i8, i8* %6, align 1
  %44 = zext i8 %43 to i32
  %45 = icmp slt i32 %44, 160
  br i1 %45, label %50, label %46

46:                                               ; preds = %42
  %47 = load i8, i8* %6, align 1
  %48 = zext i8 %47 to i32
  %49 = icmp sgt i32 %48, 191
  br i1 %49, label %50, label %51

50:                                               ; preds = %46, %42
  store i32 0, i32* %3, align 4
  br label %111

51:                                               ; preds = %46
  br label %92

52:                                               ; preds = %35
  %53 = load i8, i8* %6, align 1
  %54 = zext i8 %53 to i32
  %55 = icmp slt i32 %54, 128
  br i1 %55, label %60, label %56

56:                                               ; preds = %52
  %57 = load i8, i8* %6, align 1
  %58 = zext i8 %57 to i32
  %59 = icmp sgt i32 %58, 159
  br i1 %59, label %60, label %61

60:                                               ; preds = %56, %52
  store i32 0, i32* %3, align 4
  br label %111

61:                                               ; preds = %56
  br label %92

62:                                               ; preds = %35
  %63 = load i8, i8* %6, align 1
  %64 = zext i8 %63 to i32
  %65 = icmp slt i32 %64, 144
  br i1 %65, label %70, label %66

66:                                               ; preds = %62
  %67 = load i8, i8* %6, align 1
  %68 = zext i8 %67 to i32
  %69 = icmp sgt i32 %68, 191
  br i1 %69, label %70, label %71

70:                                               ; preds = %66, %62
  store i32 0, i32* %3, align 4
  br label %111

71:                                               ; preds = %66
  br label %92

72:                                               ; preds = %35
  %73 = load i8, i8* %6, align 1
  %74 = zext i8 %73 to i32
  %75 = icmp slt i32 %74, 128
  br i1 %75, label %80, label %76

76:                                               ; preds = %72
  %77 = load i8, i8* %6, align 1
  %78 = zext i8 %77 to i32
  %79 = icmp sgt i32 %78, 143
  br i1 %79, label %80, label %81

80:                                               ; preds = %76, %72
  store i32 0, i32* %3, align 4
  br label %111

81:                                               ; preds = %76
  br label %92

82:                                               ; preds = %35
  %83 = load i8, i8* %6, align 1
  %84 = zext i8 %83 to i32
  %85 = icmp slt i32 %84, 128
  br i1 %85, label %90, label %86

86:                                               ; preds = %82
  %87 = load i8, i8* %6, align 1
  %88 = zext i8 %87 to i32
  %89 = icmp sgt i32 %88, 191
  br i1 %89, label %90, label %91

90:                                               ; preds = %86, %82
  store i32 0, i32* %3, align 4
  br label %111

91:                                               ; preds = %86
  br label %92

92:                                               ; preds = %91, %81, %71, %61, %51
  br label %93

93:                                               ; preds = %2, %92
  %94 = load i8*, i8** %4, align 8
  %95 = load i8, i8* %94, align 1
  store i8 %95, i8* %6, align 1
  %96 = load i8, i8* %6, align 1
  %97 = zext i8 %96 to i32
  %98 = icmp sge i32 %97, 128
  br i1 %98, label %99, label %104

99:                                               ; preds = %93
  %100 = load i8, i8* %6, align 1
  %101 = zext i8 %100 to i32
  %102 = icmp slt i32 %101, 194
  br i1 %102, label %103, label %104

103:                                              ; preds = %99
  store i32 0, i32* %3, align 4
  br label %111

104:                                              ; preds = %99, %93
  %105 = load i8, i8* %6, align 1
  %106 = zext i8 %105 to i32
  %107 = icmp sgt i32 %106, 244
  br i1 %107, label %108, label %109

108:                                              ; preds = %104
  store i32 0, i32* %3, align 4
  br label %111

109:                                              ; preds = %104
  br label %110

110:                                              ; preds = %109
  store i32 1, i32* %3, align 4
  br label %111

111:                                              ; preds = %110, %108, %103, %90, %80, %70, %60, %50, %33, %20, %8
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
