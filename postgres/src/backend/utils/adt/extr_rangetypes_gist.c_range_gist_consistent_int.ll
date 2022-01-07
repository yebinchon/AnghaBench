; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_rangetypes_gist.c_range_gist_consistent_int.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_rangetypes_gist.c_range_gist_consistent_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"unrecognized range strategy: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i32)* @range_gist_consistent_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @range_gist_consistent_int(i32* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %7, align 4
  switch i32 %10, label %153 [
    i32 135, label %11
    i32 129, label %30
    i32 130, label %49
    i32 128, label %55
    i32 136, label %74
    i32 137, label %93
    i32 133, label %117
    i32 134, label %123
    i32 132, label %134
    i32 131, label %139
  ]

11:                                               ; preds = %4
  %12 = load i32*, i32** %8, align 8
  %13 = call i32 @RangeIsEmpty(i32* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %11
  %16 = load i32, i32* %9, align 4
  %17 = call i32* @DatumGetRangeTypeP(i32 %16)
  %18 = call i32 @RangeIsEmpty(i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15, %11
  store i32 0, i32* %5, align 4
  br label %157

21:                                               ; preds = %15
  %22 = load i32*, i32** %6, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = load i32, i32* %9, align 4
  %25 = call i32* @DatumGetRangeTypeP(i32 %24)
  %26 = call i32 @range_overright_internal(i32* %22, i32* %23, i32* %25)
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %5, align 4
  br label %157

30:                                               ; preds = %4
  %31 = load i32*, i32** %8, align 8
  %32 = call i32 @RangeIsEmpty(i32* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* %9, align 4
  %36 = call i32* @DatumGetRangeTypeP(i32 %35)
  %37 = call i32 @RangeIsEmpty(i32* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34, %30
  store i32 0, i32* %5, align 4
  br label %157

40:                                               ; preds = %34
  %41 = load i32*, i32** %6, align 8
  %42 = load i32*, i32** %8, align 8
  %43 = load i32, i32* %9, align 4
  %44 = call i32* @DatumGetRangeTypeP(i32 %43)
  %45 = call i32 @range_after_internal(i32* %41, i32* %42, i32* %44)
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %5, align 4
  br label %157

49:                                               ; preds = %4
  %50 = load i32*, i32** %6, align 8
  %51 = load i32*, i32** %8, align 8
  %52 = load i32, i32* %9, align 4
  %53 = call i32* @DatumGetRangeTypeP(i32 %52)
  %54 = call i32 @range_overlaps_internal(i32* %50, i32* %51, i32* %53)
  store i32 %54, i32* %5, align 4
  br label %157

55:                                               ; preds = %4
  %56 = load i32*, i32** %8, align 8
  %57 = call i32 @RangeIsEmpty(i32* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %55
  %60 = load i32, i32* %9, align 4
  %61 = call i32* @DatumGetRangeTypeP(i32 %60)
  %62 = call i32 @RangeIsEmpty(i32* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %59, %55
  store i32 0, i32* %5, align 4
  br label %157

65:                                               ; preds = %59
  %66 = load i32*, i32** %6, align 8
  %67 = load i32*, i32** %8, align 8
  %68 = load i32, i32* %9, align 4
  %69 = call i32* @DatumGetRangeTypeP(i32 %68)
  %70 = call i32 @range_before_internal(i32* %66, i32* %67, i32* %69)
  %71 = icmp ne i32 %70, 0
  %72 = xor i1 %71, true
  %73 = zext i1 %72 to i32
  store i32 %73, i32* %5, align 4
  br label %157

74:                                               ; preds = %4
  %75 = load i32*, i32** %8, align 8
  %76 = call i32 @RangeIsEmpty(i32* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %83, label %78

78:                                               ; preds = %74
  %79 = load i32, i32* %9, align 4
  %80 = call i32* @DatumGetRangeTypeP(i32 %79)
  %81 = call i32 @RangeIsEmpty(i32* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %78, %74
  store i32 0, i32* %5, align 4
  br label %157

84:                                               ; preds = %78
  %85 = load i32*, i32** %6, align 8
  %86 = load i32*, i32** %8, align 8
  %87 = load i32, i32* %9, align 4
  %88 = call i32* @DatumGetRangeTypeP(i32 %87)
  %89 = call i32 @range_overleft_internal(i32* %85, i32* %86, i32* %88)
  %90 = icmp ne i32 %89, 0
  %91 = xor i1 %90, true
  %92 = zext i1 %91 to i32
  store i32 %92, i32* %5, align 4
  br label %157

93:                                               ; preds = %4
  %94 = load i32*, i32** %8, align 8
  %95 = call i32 @RangeIsEmpty(i32* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %102, label %97

97:                                               ; preds = %93
  %98 = load i32, i32* %9, align 4
  %99 = call i32* @DatumGetRangeTypeP(i32 %98)
  %100 = call i32 @RangeIsEmpty(i32* %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %97, %93
  store i32 0, i32* %5, align 4
  br label %157

103:                                              ; preds = %97
  %104 = load i32*, i32** %6, align 8
  %105 = load i32*, i32** %8, align 8
  %106 = load i32, i32* %9, align 4
  %107 = call i32* @DatumGetRangeTypeP(i32 %106)
  %108 = call i32 @range_adjacent_internal(i32* %104, i32* %105, i32* %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %103
  store i32 1, i32* %5, align 4
  br label %157

111:                                              ; preds = %103
  %112 = load i32*, i32** %6, align 8
  %113 = load i32*, i32** %8, align 8
  %114 = load i32, i32* %9, align 4
  %115 = call i32* @DatumGetRangeTypeP(i32 %114)
  %116 = call i32 @range_overlaps_internal(i32* %112, i32* %113, i32* %115)
  store i32 %116, i32* %5, align 4
  br label %157

117:                                              ; preds = %4
  %118 = load i32*, i32** %6, align 8
  %119 = load i32*, i32** %8, align 8
  %120 = load i32, i32* %9, align 4
  %121 = call i32* @DatumGetRangeTypeP(i32 %120)
  %122 = call i32 @range_contains_internal(i32* %118, i32* %119, i32* %121)
  store i32 %122, i32* %5, align 4
  br label %157

123:                                              ; preds = %4
  %124 = load i32*, i32** %8, align 8
  %125 = call i32 @RangeIsOrContainsEmpty(i32* %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %123
  store i32 1, i32* %5, align 4
  br label %157

128:                                              ; preds = %123
  %129 = load i32*, i32** %6, align 8
  %130 = load i32*, i32** %8, align 8
  %131 = load i32, i32* %9, align 4
  %132 = call i32* @DatumGetRangeTypeP(i32 %131)
  %133 = call i32 @range_overlaps_internal(i32* %129, i32* %130, i32* %132)
  store i32 %133, i32* %5, align 4
  br label %157

134:                                              ; preds = %4
  %135 = load i32*, i32** %6, align 8
  %136 = load i32*, i32** %8, align 8
  %137 = load i32, i32* %9, align 4
  %138 = call i32 @range_contains_elem_internal(i32* %135, i32* %136, i32 %137)
  store i32 %138, i32* %5, align 4
  br label %157

139:                                              ; preds = %4
  %140 = load i32, i32* %9, align 4
  %141 = call i32* @DatumGetRangeTypeP(i32 %140)
  %142 = call i32 @RangeIsEmpty(i32* %141)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %139
  %145 = load i32*, i32** %8, align 8
  %146 = call i32 @RangeIsOrContainsEmpty(i32* %145)
  store i32 %146, i32* %5, align 4
  br label %157

147:                                              ; preds = %139
  %148 = load i32*, i32** %6, align 8
  %149 = load i32*, i32** %8, align 8
  %150 = load i32, i32* %9, align 4
  %151 = call i32* @DatumGetRangeTypeP(i32 %150)
  %152 = call i32 @range_contains_internal(i32* %148, i32* %149, i32* %151)
  store i32 %152, i32* %5, align 4
  br label %157

153:                                              ; preds = %4
  %154 = load i32, i32* @ERROR, align 4
  %155 = load i32, i32* %7, align 4
  %156 = call i32 @elog(i32 %154, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %155)
  store i32 0, i32* %5, align 4
  br label %157

157:                                              ; preds = %153, %147, %144, %134, %128, %127, %117, %111, %110, %102, %84, %83, %65, %64, %49, %40, %39, %21, %20
  %158 = load i32, i32* %5, align 4
  ret i32 %158
}

declare dso_local i32 @RangeIsEmpty(i32*) #1

declare dso_local i32* @DatumGetRangeTypeP(i32) #1

declare dso_local i32 @range_overright_internal(i32*, i32*, i32*) #1

declare dso_local i32 @range_after_internal(i32*, i32*, i32*) #1

declare dso_local i32 @range_overlaps_internal(i32*, i32*, i32*) #1

declare dso_local i32 @range_before_internal(i32*, i32*, i32*) #1

declare dso_local i32 @range_overleft_internal(i32*, i32*, i32*) #1

declare dso_local i32 @range_adjacent_internal(i32*, i32*, i32*) #1

declare dso_local i32 @range_contains_internal(i32*, i32*, i32*) #1

declare dso_local i32 @RangeIsOrContainsEmpty(i32*) #1

declare dso_local i32 @range_contains_elem_internal(i32*, i32*, i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
