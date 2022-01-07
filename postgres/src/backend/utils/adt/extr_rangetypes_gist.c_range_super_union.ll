; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_rangetypes_gist.c_range_super_union.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_rangetypes_gist.c_range_super_union.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RANGE_EMPTY = common dso_local global i8 0, align 1
@RANGE_CONTAIN_EMPTY = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*)* @range_super_union to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @range_super_union(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8, align 1
  %16 = alloca i8, align 1
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = call i32 @range_deserialize(i32* %19, i32* %20, i32* %9, i32* %11, i32* %13)
  %22 = load i32*, i32** %5, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = call i32 @range_deserialize(i32* %22, i32* %23, i32* %10, i32* %12, i32* %14)
  %25 = load i32*, i32** %6, align 8
  %26 = call signext i8 @range_get_flags(i32* %25)
  store i8 %26, i8* %15, align 1
  %27 = load i32*, i32** %7, align 8
  %28 = call signext i8 @range_get_flags(i32* %27)
  store i8 %28, i8* %16, align 1
  %29 = load i32, i32* %13, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %49

31:                                               ; preds = %3
  %32 = load i8, i8* %16, align 1
  %33 = sext i8 %32 to i32
  %34 = load i8, i8* @RANGE_EMPTY, align 1
  %35 = sext i8 %34 to i32
  %36 = load i8, i8* @RANGE_CONTAIN_EMPTY, align 1
  %37 = sext i8 %36 to i32
  %38 = or i32 %35, %37
  %39 = and i32 %33, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %31
  %42 = load i32*, i32** %7, align 8
  store i32* %42, i32** %4, align 8
  br label %149

43:                                               ; preds = %31
  %44 = load i32*, i32** %7, align 8
  %45 = call i32* @rangeCopy(i32* %44)
  store i32* %45, i32** %7, align 8
  %46 = load i32*, i32** %7, align 8
  %47 = call i32 @range_set_contain_empty(i32* %46)
  %48 = load i32*, i32** %7, align 8
  store i32* %48, i32** %4, align 8
  br label %149

49:                                               ; preds = %3
  %50 = load i32, i32* %14, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %70

52:                                               ; preds = %49
  %53 = load i8, i8* %15, align 1
  %54 = sext i8 %53 to i32
  %55 = load i8, i8* @RANGE_EMPTY, align 1
  %56 = sext i8 %55 to i32
  %57 = load i8, i8* @RANGE_CONTAIN_EMPTY, align 1
  %58 = sext i8 %57 to i32
  %59 = or i32 %56, %58
  %60 = and i32 %54, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %52
  %63 = load i32*, i32** %6, align 8
  store i32* %63, i32** %4, align 8
  br label %149

64:                                               ; preds = %52
  %65 = load i32*, i32** %6, align 8
  %66 = call i32* @rangeCopy(i32* %65)
  store i32* %66, i32** %6, align 8
  %67 = load i32*, i32** %6, align 8
  %68 = call i32 @range_set_contain_empty(i32* %67)
  %69 = load i32*, i32** %6, align 8
  store i32* %69, i32** %4, align 8
  br label %149

70:                                               ; preds = %49
  %71 = load i32*, i32** %5, align 8
  %72 = call i64 @range_cmp_bounds(i32* %71, i32* %9, i32* %10)
  %73 = icmp sle i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  store i32* %9, i32** %17, align 8
  br label %76

75:                                               ; preds = %70
  store i32* %10, i32** %17, align 8
  br label %76

76:                                               ; preds = %75, %74
  %77 = load i32*, i32** %5, align 8
  %78 = call i64 @range_cmp_bounds(i32* %77, i32* %11, i32* %12)
  %79 = icmp sge i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  store i32* %11, i32** %18, align 8
  br label %82

81:                                               ; preds = %76
  store i32* %12, i32** %18, align 8
  br label %82

82:                                               ; preds = %81, %80
  %83 = load i32*, i32** %17, align 8
  %84 = icmp eq i32* %83, %9
  br i1 %84, label %85, label %104

85:                                               ; preds = %82
  %86 = load i32*, i32** %18, align 8
  %87 = icmp eq i32* %86, %11
  br i1 %87, label %88, label %104

88:                                               ; preds = %85
  %89 = load i8, i8* %15, align 1
  %90 = sext i8 %89 to i32
  %91 = load i8, i8* @RANGE_CONTAIN_EMPTY, align 1
  %92 = sext i8 %91 to i32
  %93 = and i32 %90, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %102, label %95

95:                                               ; preds = %88
  %96 = load i8, i8* %16, align 1
  %97 = sext i8 %96 to i32
  %98 = load i8, i8* @RANGE_CONTAIN_EMPTY, align 1
  %99 = sext i8 %98 to i32
  %100 = and i32 %97, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %104, label %102

102:                                              ; preds = %95, %88
  %103 = load i32*, i32** %6, align 8
  store i32* %103, i32** %4, align 8
  br label %149

104:                                              ; preds = %95, %85, %82
  %105 = load i32*, i32** %17, align 8
  %106 = icmp eq i32* %105, %10
  br i1 %106, label %107, label %126

107:                                              ; preds = %104
  %108 = load i32*, i32** %18, align 8
  %109 = icmp eq i32* %108, %12
  br i1 %109, label %110, label %126

110:                                              ; preds = %107
  %111 = load i8, i8* %16, align 1
  %112 = sext i8 %111 to i32
  %113 = load i8, i8* @RANGE_CONTAIN_EMPTY, align 1
  %114 = sext i8 %113 to i32
  %115 = and i32 %112, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %124, label %117

117:                                              ; preds = %110
  %118 = load i8, i8* %15, align 1
  %119 = sext i8 %118 to i32
  %120 = load i8, i8* @RANGE_CONTAIN_EMPTY, align 1
  %121 = sext i8 %120 to i32
  %122 = and i32 %119, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %126, label %124

124:                                              ; preds = %117, %110
  %125 = load i32*, i32** %7, align 8
  store i32* %125, i32** %4, align 8
  br label %149

126:                                              ; preds = %117, %107, %104
  %127 = load i32*, i32** %5, align 8
  %128 = load i32*, i32** %17, align 8
  %129 = load i32*, i32** %18, align 8
  %130 = call i32* @make_range(i32* %127, i32* %128, i32* %129, i32 0)
  store i32* %130, i32** %8, align 8
  %131 = load i8, i8* %15, align 1
  %132 = sext i8 %131 to i32
  %133 = load i8, i8* @RANGE_CONTAIN_EMPTY, align 1
  %134 = sext i8 %133 to i32
  %135 = and i32 %132, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %144, label %137

137:                                              ; preds = %126
  %138 = load i8, i8* %16, align 1
  %139 = sext i8 %138 to i32
  %140 = load i8, i8* @RANGE_CONTAIN_EMPTY, align 1
  %141 = sext i8 %140 to i32
  %142 = and i32 %139, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %137, %126
  %145 = load i32*, i32** %8, align 8
  %146 = call i32 @range_set_contain_empty(i32* %145)
  br label %147

147:                                              ; preds = %144, %137
  %148 = load i32*, i32** %8, align 8
  store i32* %148, i32** %4, align 8
  br label %149

149:                                              ; preds = %147, %124, %102, %64, %62, %43, %41
  %150 = load i32*, i32** %4, align 8
  ret i32* %150
}

declare dso_local i32 @range_deserialize(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local signext i8 @range_get_flags(i32*) #1

declare dso_local i32* @rangeCopy(i32*) #1

declare dso_local i32 @range_set_contain_empty(i32*) #1

declare dso_local i64 @range_cmp_bounds(i32*, i32*, i32*) #1

declare dso_local i32* @make_range(i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
