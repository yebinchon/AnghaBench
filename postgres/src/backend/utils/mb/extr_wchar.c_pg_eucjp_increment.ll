; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/mb/extr_wchar.c_pg_eucjp_increment.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/mb/extr_wchar.c_pg_eucjp_increment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @pg_eucjp_increment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pg_eucjp_increment(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = load i8, i8* %9, align 1
  store i8 %10, i8* %6, align 1
  %11 = load i8, i8* %6, align 1
  %12 = zext i8 %11 to i32
  switch i32 %12, label %82 [
    i32 129, label %13
    i32 128, label %43
  ]

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 2
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %136

17:                                               ; preds = %13
  %18 = load i8*, i8** %4, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 1
  %20 = load i8, i8* %19, align 1
  store i8 %20, i8* %7, align 1
  %21 = load i8, i8* %7, align 1
  %22 = zext i8 %21 to i32
  %23 = icmp sge i32 %22, 223
  br i1 %23, label %24, label %29

24:                                               ; preds = %17
  %25 = load i8*, i8** %4, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 1
  store i8 -95, i8* %26, align 1
  %27 = load i8*, i8** %4, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 0
  store i8 -95, i8* %28, align 1
  br label %42

29:                                               ; preds = %17
  %30 = load i8, i8* %7, align 1
  %31 = zext i8 %30 to i32
  %32 = icmp slt i32 %31, 161
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load i8*, i8** %4, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 1
  store i8 -95, i8* %35, align 1
  br label %41

36:                                               ; preds = %29
  %37 = load i8*, i8** %4, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 1
  %39 = load i8, i8* %38, align 1
  %40 = add i8 %39, 1
  store i8 %40, i8* %38, align 1
  br label %41

41:                                               ; preds = %36, %33
  br label %42

42:                                               ; preds = %41, %24
  br label %135

43:                                               ; preds = %2
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 3
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  store i32 0, i32* %3, align 4
  br label %136

47:                                               ; preds = %43
  store i32 2, i32* %8, align 4
  br label %48

48:                                               ; preds = %78, %47
  %49 = load i32, i32* %8, align 4
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %81

51:                                               ; preds = %48
  %52 = load i8*, i8** %4, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  %56 = load i8, i8* %55, align 1
  store i8 %56, i8* %7, align 1
  %57 = load i8, i8* %7, align 1
  %58 = zext i8 %57 to i32
  %59 = icmp slt i32 %58, 161
  br i1 %59, label %60, label %65

60:                                               ; preds = %51
  %61 = load i8*, i8** %4, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %61, i64 %63
  store i8 -95, i8* %64, align 1
  store i32 1, i32* %3, align 4
  br label %136

65:                                               ; preds = %51
  %66 = load i8, i8* %7, align 1
  %67 = zext i8 %66 to i32
  %68 = icmp slt i32 %67, 254
  br i1 %68, label %69, label %76

69:                                               ; preds = %65
  %70 = load i8*, i8** %4, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %70, i64 %72
  %74 = load i8, i8* %73, align 1
  %75 = add i8 %74, 1
  store i8 %75, i8* %73, align 1
  store i32 1, i32* %3, align 4
  br label %136

76:                                               ; preds = %65
  br label %77

77:                                               ; preds = %76
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %8, align 4
  %80 = add nsw i32 %79, -1
  store i32 %80, i32* %8, align 4
  br label %48

81:                                               ; preds = %48
  store i32 0, i32* %3, align 4
  br label %136

82:                                               ; preds = %2
  %83 = load i8, i8* %6, align 1
  %84 = call i32 @IS_HIGHBIT_SET(i8 zeroext %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %125

86:                                               ; preds = %82
  %87 = load i32, i32* %5, align 4
  %88 = icmp ne i32 %87, 2
  br i1 %88, label %89, label %90

89:                                               ; preds = %86
  store i32 0, i32* %3, align 4
  br label %136

90:                                               ; preds = %86
  store i32 1, i32* %8, align 4
  br label %91

91:                                               ; preds = %121, %90
  %92 = load i32, i32* %8, align 4
  %93 = icmp sge i32 %92, 0
  br i1 %93, label %94, label %124

94:                                               ; preds = %91
  %95 = load i8*, i8** %4, align 8
  %96 = load i32, i32* %8, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8, i8* %95, i64 %97
  %99 = load i8, i8* %98, align 1
  store i8 %99, i8* %7, align 1
  %100 = load i8, i8* %7, align 1
  %101 = zext i8 %100 to i32
  %102 = icmp slt i32 %101, 161
  br i1 %102, label %103, label %108

103:                                              ; preds = %94
  %104 = load i8*, i8** %4, align 8
  %105 = load i32, i32* %8, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8, i8* %104, i64 %106
  store i8 -95, i8* %107, align 1
  store i32 1, i32* %3, align 4
  br label %136

108:                                              ; preds = %94
  %109 = load i8, i8* %7, align 1
  %110 = zext i8 %109 to i32
  %111 = icmp slt i32 %110, 254
  br i1 %111, label %112, label %119

112:                                              ; preds = %108
  %113 = load i8*, i8** %4, align 8
  %114 = load i32, i32* %8, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8, i8* %113, i64 %115
  %117 = load i8, i8* %116, align 1
  %118 = add i8 %117, 1
  store i8 %118, i8* %116, align 1
  store i32 1, i32* %3, align 4
  br label %136

119:                                              ; preds = %108
  br label %120

120:                                              ; preds = %119
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %8, align 4
  %123 = add nsw i32 %122, -1
  store i32 %123, i32* %8, align 4
  br label %91

124:                                              ; preds = %91
  store i32 0, i32* %3, align 4
  br label %136

125:                                              ; preds = %82
  %126 = load i8, i8* %6, align 1
  %127 = zext i8 %126 to i32
  %128 = icmp sgt i32 %127, 126
  br i1 %128, label %129, label %130

129:                                              ; preds = %125
  store i32 0, i32* %3, align 4
  br label %136

130:                                              ; preds = %125
  %131 = load i8*, i8** %4, align 8
  %132 = load i8, i8* %131, align 1
  %133 = add i8 %132, 1
  store i8 %133, i8* %131, align 1
  br label %134

134:                                              ; preds = %130
  br label %135

135:                                              ; preds = %134, %42
  store i32 1, i32* %3, align 4
  br label %136

136:                                              ; preds = %135, %129, %124, %112, %103, %89, %81, %69, %60, %46, %16
  %137 = load i32, i32* %3, align 4
  ret i32 %137
}

declare dso_local i32 @IS_HIGHBIT_SET(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
