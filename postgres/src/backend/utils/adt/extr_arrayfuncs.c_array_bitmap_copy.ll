; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_arrayfuncs.c_array_bitmap_copy.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_arrayfuncs.c_array_bitmap_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @array_bitmap_copy(i32* %0, i32 %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load i32*, i32** %6, align 8
  %16 = call i32 @Assert(i32* %15)
  %17 = load i32, i32* %10, align 4
  %18 = icmp sle i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %5
  br label %130

20:                                               ; preds = %5
  %21 = load i32, i32* %7, align 4
  %22 = sdiv i32 %21, 8
  %23 = load i32*, i32** %6, align 8
  %24 = sext i32 %22 to i64
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  store i32* %25, i32** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = srem i32 %26, 8
  %28 = shl i32 1, %27
  store i32 %28, i32* %11, align 4
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %12, align 4
  %31 = load i32*, i32** %8, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %99

33:                                               ; preds = %20
  %34 = load i32, i32* %9, align 4
  %35 = sdiv i32 %34, 8
  %36 = load i32*, i32** %8, align 8
  %37 = sext i32 %35 to i64
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  store i32* %38, i32** %8, align 8
  %39 = load i32, i32* %9, align 4
  %40 = srem i32 %39, 8
  %41 = shl i32 1, %40
  store i32 %41, i32* %13, align 4
  %42 = load i32*, i32** %8, align 8
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %14, align 4
  br label %44

44:                                               ; preds = %91, %33
  %45 = load i32, i32* %10, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %10, align 4
  %47 = icmp sgt i32 %45, 0
  br i1 %47, label %48, label %92

48:                                               ; preds = %44
  %49 = load i32, i32* %14, align 4
  %50 = load i32, i32* %13, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* %12, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %12, align 4
  br label %62

57:                                               ; preds = %48
  %58 = load i32, i32* %11, align 4
  %59 = xor i32 %58, -1
  %60 = load i32, i32* %12, align 4
  %61 = and i32 %60, %59
  store i32 %61, i32* %12, align 4
  br label %62

62:                                               ; preds = %57, %53
  %63 = load i32, i32* %11, align 4
  %64 = shl i32 %63, 1
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* %11, align 4
  %66 = icmp eq i32 %65, 256
  br i1 %66, label %67, label %77

67:                                               ; preds = %62
  %68 = load i32, i32* %12, align 4
  %69 = load i32*, i32** %6, align 8
  %70 = getelementptr inbounds i32, i32* %69, i32 1
  store i32* %70, i32** %6, align 8
  store i32 %68, i32* %69, align 4
  store i32 1, i32* %11, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp sgt i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %67
  %74 = load i32*, i32** %6, align 8
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %12, align 4
  br label %76

76:                                               ; preds = %73, %67
  br label %77

77:                                               ; preds = %76, %62
  %78 = load i32, i32* %13, align 4
  %79 = shl i32 %78, 1
  store i32 %79, i32* %13, align 4
  %80 = load i32, i32* %13, align 4
  %81 = icmp eq i32 %80, 256
  br i1 %81, label %82, label %91

82:                                               ; preds = %77
  %83 = load i32*, i32** %8, align 8
  %84 = getelementptr inbounds i32, i32* %83, i32 1
  store i32* %84, i32** %8, align 8
  store i32 1, i32* %13, align 4
  %85 = load i32, i32* %10, align 4
  %86 = icmp sgt i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = load i32*, i32** %8, align 8
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %14, align 4
  br label %90

90:                                               ; preds = %87, %82
  br label %91

91:                                               ; preds = %90, %77
  br label %44

92:                                               ; preds = %44
  %93 = load i32, i32* %11, align 4
  %94 = icmp ne i32 %93, 1
  br i1 %94, label %95, label %98

95:                                               ; preds = %92
  %96 = load i32, i32* %12, align 4
  %97 = load i32*, i32** %6, align 8
  store i32 %96, i32* %97, align 4
  br label %98

98:                                               ; preds = %95, %92
  br label %130

99:                                               ; preds = %20
  br label %100

100:                                              ; preds = %122, %99
  %101 = load i32, i32* %10, align 4
  %102 = add nsw i32 %101, -1
  store i32 %102, i32* %10, align 4
  %103 = icmp sgt i32 %101, 0
  br i1 %103, label %104, label %123

104:                                              ; preds = %100
  %105 = load i32, i32* %11, align 4
  %106 = load i32, i32* %12, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %12, align 4
  %108 = load i32, i32* %11, align 4
  %109 = shl i32 %108, 1
  store i32 %109, i32* %11, align 4
  %110 = load i32, i32* %11, align 4
  %111 = icmp eq i32 %110, 256
  br i1 %111, label %112, label %122

112:                                              ; preds = %104
  %113 = load i32, i32* %12, align 4
  %114 = load i32*, i32** %6, align 8
  %115 = getelementptr inbounds i32, i32* %114, i32 1
  store i32* %115, i32** %6, align 8
  store i32 %113, i32* %114, align 4
  store i32 1, i32* %11, align 4
  %116 = load i32, i32* %10, align 4
  %117 = icmp sgt i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %112
  %119 = load i32*, i32** %6, align 8
  %120 = load i32, i32* %119, align 4
  store i32 %120, i32* %12, align 4
  br label %121

121:                                              ; preds = %118, %112
  br label %122

122:                                              ; preds = %121, %104
  br label %100

123:                                              ; preds = %100
  %124 = load i32, i32* %11, align 4
  %125 = icmp ne i32 %124, 1
  br i1 %125, label %126, label %129

126:                                              ; preds = %123
  %127 = load i32, i32* %12, align 4
  %128 = load i32*, i32** %6, align 8
  store i32 %127, i32* %128, align 4
  br label %129

129:                                              ; preds = %126, %123
  br label %130

130:                                              ; preds = %19, %129, %98
  ret void
}

declare dso_local i32 @Assert(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
