; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_misc-rstfilter.c_rstfilter_is_filter.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_misc-rstfilter.c_rstfilter_is_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ResetFilter = type { i64, i64, i8*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rstfilter_is_filter(%struct.ResetFilter* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.ResetFilter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca [4 x i32], align 16
  %13 = alloca [2 x i64], align 16
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store %struct.ResetFilter* %0, %struct.ResetFilter** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %16, align 4
  %17 = load i32, i32* %7, align 4
  %18 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  store i32 %17, i32* %18, align 16
  %19 = load i32, i32* %8, align 4
  %20 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 1
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* %9, align 4
  %22 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 2
  store i32 %21, i32* %22, align 8
  %23 = load i32, i32* %10, align 4
  %24 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 3
  store i32 %23, i32* %24, align 4
  %25 = load %struct.ResetFilter*, %struct.ResetFilter** %6, align 8
  %26 = getelementptr inbounds %struct.ResetFilter, %struct.ResetFilter* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds [2 x i64], [2 x i64]* %13, i64 0, i64 0
  store i64 %27, i64* %28, align 16
  %29 = load %struct.ResetFilter*, %struct.ResetFilter** %6, align 8
  %30 = getelementptr inbounds %struct.ResetFilter, %struct.ResetFilter* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds [2 x i64], [2 x i64]* %13, i64 0, i64 1
  store i64 %31, i64* %32, align 8
  %33 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %34 = getelementptr inbounds [2 x i64], [2 x i64]* %13, i64 0, i64 0
  %35 = call i64 @siphash24(i32* %33, i32 16, i64* %34)
  store i64 %35, i64* %11, align 8
  %36 = load i64, i64* %11, align 8
  %37 = load %struct.ResetFilter*, %struct.ResetFilter** %6, align 8
  %38 = getelementptr inbounds %struct.ResetFilter, %struct.ResetFilter* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = and i64 %36, %39
  store i64 %40, i64* %14, align 8
  %41 = load %struct.ResetFilter*, %struct.ResetFilter** %6, align 8
  %42 = getelementptr inbounds %struct.ResetFilter, %struct.ResetFilter* %41, i32 0, i32 2
  %43 = load i8*, i8** %42, align 8
  %44 = load i64, i64* %14, align 8
  %45 = udiv i64 %44, 2
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  store i8* %46, i8** %15, align 8
  %47 = load i64, i64* %14, align 8
  %48 = and i64 %47, 1
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %65

50:                                               ; preds = %5
  %51 = load i8*, i8** %15, align 8
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i32
  %54 = and i32 %53, 15
  %55 = icmp eq i32 %54, 15
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  store i32 1, i32* %16, align 4
  br label %64

57:                                               ; preds = %50
  %58 = load i8*, i8** %15, align 8
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i32
  %61 = add nsw i32 %60, 1
  %62 = trunc i32 %61 to i8
  %63 = load i8*, i8** %15, align 8
  store i8 %62, i8* %63, align 1
  br label %64

64:                                               ; preds = %57, %56
  br label %80

65:                                               ; preds = %5
  %66 = load i8*, i8** %15, align 8
  %67 = load i8, i8* %66, align 1
  %68 = zext i8 %67 to i32
  %69 = and i32 %68, 240
  %70 = icmp eq i32 %69, 240
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  store i32 1, i32* %16, align 4
  br label %79

72:                                               ; preds = %65
  %73 = load i8*, i8** %15, align 8
  %74 = load i8, i8* %73, align 1
  %75 = zext i8 %74 to i32
  %76 = add nsw i32 %75, 16
  %77 = trunc i32 %76 to i8
  %78 = load i8*, i8** %15, align 8
  store i8 %77, i8* %78, align 1
  br label %79

79:                                               ; preds = %72, %71
  br label %80

80:                                               ; preds = %79, %64
  %81 = load i64, i64* %11, align 8
  %82 = trunc i64 %81 to i32
  %83 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  store i32 %82, i32* %83, align 16
  %84 = load %struct.ResetFilter*, %struct.ResetFilter** %6, align 8
  %85 = getelementptr inbounds %struct.ResetFilter, %struct.ResetFilter* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %85, align 8
  %88 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 1
  store i32 %86, i32* %88, align 4
  %89 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %90 = getelementptr inbounds [2 x i64], [2 x i64]* %13, i64 0, i64 0
  %91 = call i64 @siphash24(i32* %89, i32 16, i64* %90)
  store i64 %91, i64* %11, align 8
  %92 = load i64, i64* %11, align 8
  %93 = load %struct.ResetFilter*, %struct.ResetFilter** %6, align 8
  %94 = getelementptr inbounds %struct.ResetFilter, %struct.ResetFilter* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = and i64 %92, %95
  store i64 %96, i64* %14, align 8
  %97 = load %struct.ResetFilter*, %struct.ResetFilter** %6, align 8
  %98 = getelementptr inbounds %struct.ResetFilter, %struct.ResetFilter* %97, i32 0, i32 2
  %99 = load i8*, i8** %98, align 8
  %100 = load i64, i64* %14, align 8
  %101 = udiv i64 %100, 2
  %102 = getelementptr inbounds i8, i8* %99, i64 %101
  store i8* %102, i8** %15, align 8
  %103 = load i64, i64* %14, align 8
  %104 = and i64 %103, 1
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %120

106:                                              ; preds = %80
  %107 = load i8*, i8** %15, align 8
  %108 = load i8, i8* %107, align 1
  %109 = zext i8 %108 to i32
  %110 = and i32 %109, 15
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %106
  %113 = load i8*, i8** %15, align 8
  %114 = load i8, i8* %113, align 1
  %115 = zext i8 %114 to i32
  %116 = sub nsw i32 %115, 1
  %117 = trunc i32 %116 to i8
  %118 = load i8*, i8** %15, align 8
  store i8 %117, i8* %118, align 1
  br label %119

119:                                              ; preds = %112, %106
  br label %134

120:                                              ; preds = %80
  %121 = load i8*, i8** %15, align 8
  %122 = load i8, i8* %121, align 1
  %123 = zext i8 %122 to i32
  %124 = and i32 %123, 240
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %133

126:                                              ; preds = %120
  %127 = load i8*, i8** %15, align 8
  %128 = load i8, i8* %127, align 1
  %129 = zext i8 %128 to i32
  %130 = sub nsw i32 %129, 16
  %131 = trunc i32 %130 to i8
  %132 = load i8*, i8** %15, align 8
  store i8 %131, i8* %132, align 1
  br label %133

133:                                              ; preds = %126, %120
  br label %134

134:                                              ; preds = %133, %119
  %135 = load i32, i32* %16, align 4
  ret i32 %135
}

declare dso_local i64 @siphash24(i32*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
