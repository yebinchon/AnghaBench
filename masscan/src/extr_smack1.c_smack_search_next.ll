; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_smack1.c_smack_search_next.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_smack1.c_smack_search_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SMACK = type { i8*, i32, i32, %struct.SmackMatches*, i32* }
%struct.SmackMatches = type { i32, i64* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @smack_search_next(%struct.SMACK* %0, i32* %1, i8* %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.SMACK*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.SmackMatches*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store %struct.SMACK* %0, %struct.SMACK** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %21 = load i8*, i8** %8, align 8
  store i8* %21, i8** %11, align 8
  %22 = load i32*, i32** %9, align 8
  %23 = load i32, i32* %22, align 4
  %24 = zext i32 %23 to i64
  store i64 %24, i64* %13, align 8
  %25 = load %struct.SMACK*, %struct.SMACK** %6, align 8
  %26 = getelementptr inbounds %struct.SMACK, %struct.SMACK* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %14, align 8
  %28 = load %struct.SMACK*, %struct.SMACK** %6, align 8
  %29 = getelementptr inbounds %struct.SMACK, %struct.SMACK* %28, i32 0, i32 4
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %15, align 8
  %31 = load %struct.SMACK*, %struct.SMACK** %6, align 8
  %32 = getelementptr inbounds %struct.SMACK, %struct.SMACK* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %16, align 4
  %34 = load %struct.SMACK*, %struct.SMACK** %6, align 8
  %35 = getelementptr inbounds %struct.SMACK, %struct.SMACK* %34, i32 0, i32 3
  %36 = load %struct.SmackMatches*, %struct.SmackMatches** %35, align 8
  store %struct.SmackMatches* %36, %struct.SmackMatches** %17, align 8
  store i32 0, i32* %18, align 4
  store i64 -1, i64* %19, align 8
  %37 = load %struct.SMACK*, %struct.SMACK** %6, align 8
  %38 = getelementptr inbounds %struct.SMACK, %struct.SMACK* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %20, align 4
  %40 = load i32*, i32** %7, align 8
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, 16777215
  store i32 %42, i32* %12, align 4
  %43 = load i32*, i32** %7, align 8
  %44 = load i32, i32* %43, align 4
  %45 = lshr i32 %44, 24
  store i32 %45, i32* %18, align 4
  %46 = load i32, i32* %18, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %99, label %48

48:                                               ; preds = %5
  %49 = load i32, i32* %16, align 4
  switch i32 %49, label %65 [
    i32 7, label %50
  ]

50:                                               ; preds = %48
  %51 = load i8*, i8** %11, align 8
  %52 = load i64, i64* %13, align 8
  %53 = getelementptr inbounds i8, i8* %51, i64 %52
  %54 = load i32, i32* %10, align 4
  %55 = zext i32 %54 to i64
  %56 = load i64, i64* %13, align 8
  %57 = sub i64 %55, %56
  %58 = trunc i64 %57 to i32
  %59 = load i8*, i8** %14, align 8
  %60 = load i32*, i32** %15, align 8
  %61 = load i32, i32* %20, align 4
  %62 = call i64 @inner_match_shift7(i8* %53, i32 %58, i8* %59, i32* %60, i32* %12, i32 %61)
  %63 = load i64, i64* %13, align 8
  %64 = add i64 %63, %62
  store i64 %64, i64* %13, align 8
  br label %81

65:                                               ; preds = %48
  %66 = load i8*, i8** %11, align 8
  %67 = load i64, i64* %13, align 8
  %68 = getelementptr inbounds i8, i8* %66, i64 %67
  %69 = load i32, i32* %10, align 4
  %70 = zext i32 %69 to i64
  %71 = load i64, i64* %13, align 8
  %72 = sub i64 %70, %71
  %73 = trunc i64 %72 to i32
  %74 = load i8*, i8** %14, align 8
  %75 = load i32*, i32** %15, align 8
  %76 = load i32, i32* %20, align 4
  %77 = load i32, i32* %16, align 4
  %78 = call i64 @inner_match(i8* %68, i32 %73, i8* %74, i32* %75, i32* %12, i32 %76, i32 %77)
  %79 = load i64, i64* %13, align 8
  %80 = add i64 %79, %78
  store i64 %80, i64* %13, align 8
  br label %81

81:                                               ; preds = %65, %50
  %82 = load %struct.SmackMatches*, %struct.SmackMatches** %17, align 8
  %83 = load i32, i32* %12, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds %struct.SmackMatches, %struct.SmackMatches* %82, i64 %84
  %86 = getelementptr inbounds %struct.SmackMatches, %struct.SmackMatches* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %98

89:                                               ; preds = %81
  %90 = load i64, i64* %13, align 8
  %91 = add i64 %90, 1
  store i64 %91, i64* %13, align 8
  %92 = load %struct.SmackMatches*, %struct.SmackMatches** %17, align 8
  %93 = load i32, i32* %12, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds %struct.SmackMatches, %struct.SmackMatches* %92, i64 %94
  %96 = getelementptr inbounds %struct.SmackMatches, %struct.SmackMatches* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  store i32 %97, i32* %18, align 4
  br label %98

98:                                               ; preds = %89, %81
  br label %99

99:                                               ; preds = %98, %5
  %100 = load i64, i64* %13, align 8
  %101 = trunc i64 %100 to i32
  %102 = load i32*, i32** %9, align 8
  store i32 %101, i32* %102, align 4
  %103 = load i32, i32* %18, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %119

105:                                              ; preds = %99
  %106 = load %struct.SmackMatches*, %struct.SmackMatches** %17, align 8
  %107 = load i32, i32* %12, align 4
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds %struct.SmackMatches, %struct.SmackMatches* %106, i64 %108
  %110 = getelementptr inbounds %struct.SmackMatches, %struct.SmackMatches* %109, i32 0, i32 1
  %111 = load i64*, i64** %110, align 8
  %112 = load i32, i32* %18, align 4
  %113 = sub i32 %112, 1
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds i64, i64* %111, i64 %114
  %116 = load i64, i64* %115, align 8
  store i64 %116, i64* %19, align 8
  %117 = load i32, i32* %18, align 4
  %118 = add i32 %117, -1
  store i32 %118, i32* %18, align 4
  br label %119

119:                                              ; preds = %105, %99
  %120 = load i32, i32* %12, align 4
  %121 = load i32, i32* %18, align 4
  %122 = shl i32 %121, 24
  %123 = or i32 %120, %122
  %124 = load i32*, i32** %7, align 8
  store i32 %123, i32* %124, align 4
  %125 = load i64, i64* %19, align 8
  ret i64 %125
}

declare dso_local i64 @inner_match_shift7(i8*, i32, i8*, i32*, i32*, i32) #1

declare dso_local i64 @inner_match(i8*, i32, i8*, i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
