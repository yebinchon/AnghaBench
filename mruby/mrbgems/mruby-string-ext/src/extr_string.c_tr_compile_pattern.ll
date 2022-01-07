; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-string-ext/src/extr_string.c_tr_compile_pattern.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-string-ext/src/extr_string.c_tr_compile_pattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tr_pattern = type { i64, i32, %struct.tr_pattern*, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, i32* }

@TR_IN_ORDER = common dso_local global i64 0, align 8
@TR_RANGE = common dso_local global i64 0, align 8
@TR_UNINITIALIZED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tr_pattern*, i32, i32*)* @tr_compile_pattern to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tr_compile_pattern(%struct.tr_pattern* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.tr_pattern*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.tr_pattern* %0, %struct.tr_pattern** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i8* @RSTRING_PTR(i32 %10)
  store i8* %11, i8** %7, align 8
  %12 = load %struct.tr_pattern*, %struct.tr_pattern** %4, align 8
  %13 = icmp ne %struct.tr_pattern* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load %struct.tr_pattern*, %struct.tr_pattern** %4, align 8
  %16 = getelementptr inbounds %struct.tr_pattern, %struct.tr_pattern* %15, i32 0, i32 4
  %17 = load i64, i64* %16, align 8
  br label %19

18:                                               ; preds = %3
  br label %19

19:                                               ; preds = %18, %14
  %20 = phi i64 [ %17, %14 ], [ 0, %18 ]
  store i64 %20, i64* %8, align 8
  store i32 0, i32* %9, align 4
  br label %21

21:                                               ; preds = %29, %19
  %22 = load i32, i32* %9, align 4
  %23 = icmp slt i32 %22, 32
  br i1 %23, label %24, label %32

24:                                               ; preds = %21
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  store i32 0, i32* %28, align 4
  br label %29

29:                                               ; preds = %24
  %30 = load i32, i32* %9, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %9, align 4
  br label %21

32:                                               ; preds = %21
  br label %33

33:                                               ; preds = %106, %32
  %34 = load %struct.tr_pattern*, %struct.tr_pattern** %4, align 8
  %35 = icmp ne %struct.tr_pattern* %34, null
  br i1 %35, label %36, label %110

36:                                               ; preds = %33
  %37 = load %struct.tr_pattern*, %struct.tr_pattern** %4, align 8
  %38 = getelementptr inbounds %struct.tr_pattern, %struct.tr_pattern* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @TR_IN_ORDER, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %66

42:                                               ; preds = %36
  store i32 0, i32* %9, align 4
  br label %43

43:                                               ; preds = %62, %42
  %44 = load i32, i32* %9, align 4
  %45 = load %struct.tr_pattern*, %struct.tr_pattern** %4, align 8
  %46 = getelementptr inbounds %struct.tr_pattern, %struct.tr_pattern* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = icmp slt i32 %44, %47
  br i1 %48, label %49, label %65

49:                                               ; preds = %43
  %50 = load i32*, i32** %6, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = load %struct.tr_pattern*, %struct.tr_pattern** %4, align 8
  %53 = getelementptr inbounds %struct.tr_pattern, %struct.tr_pattern* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %9, align 4
  %57 = add nsw i32 %55, %56
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %51, i64 %58
  %60 = load i8, i8* %59, align 1
  %61 = call i32 @tr_bitmap_set(i32* %50, i8 signext %60)
  br label %62

62:                                               ; preds = %49
  %63 = load i32, i32* %9, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %9, align 4
  br label %43

65:                                               ; preds = %43
  br label %106

66:                                               ; preds = %36
  %67 = load %struct.tr_pattern*, %struct.tr_pattern** %4, align 8
  %68 = getelementptr inbounds %struct.tr_pattern, %struct.tr_pattern* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @TR_RANGE, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %97

72:                                               ; preds = %66
  %73 = load %struct.tr_pattern*, %struct.tr_pattern** %4, align 8
  %74 = getelementptr inbounds %struct.tr_pattern, %struct.tr_pattern* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %9, align 4
  br label %79

79:                                               ; preds = %93, %72
  %80 = load i32, i32* %9, align 4
  %81 = load %struct.tr_pattern*, %struct.tr_pattern** %4, align 8
  %82 = getelementptr inbounds %struct.tr_pattern, %struct.tr_pattern* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 1
  %86 = load i32, i32* %85, align 4
  %87 = icmp slt i32 %80, %86
  br i1 %87, label %88, label %96

88:                                               ; preds = %79
  %89 = load i32*, i32** %6, align 8
  %90 = load i32, i32* %9, align 4
  %91 = trunc i32 %90 to i8
  %92 = call i32 @tr_bitmap_set(i32* %89, i8 signext %91)
  br label %93

93:                                               ; preds = %88
  %94 = load i32, i32* %9, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %9, align 4
  br label %79

96:                                               ; preds = %79
  br label %105

97:                                               ; preds = %66
  %98 = load %struct.tr_pattern*, %struct.tr_pattern** %4, align 8
  %99 = getelementptr inbounds %struct.tr_pattern, %struct.tr_pattern* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @TR_UNINITIALIZED, align 8
  %102 = icmp eq i64 %100, %101
  %103 = zext i1 %102 to i32
  %104 = call i32 @mrb_assert(i32 %103)
  br label %105

105:                                              ; preds = %97, %96
  br label %106

106:                                              ; preds = %105, %65
  %107 = load %struct.tr_pattern*, %struct.tr_pattern** %4, align 8
  %108 = getelementptr inbounds %struct.tr_pattern, %struct.tr_pattern* %107, i32 0, i32 2
  %109 = load %struct.tr_pattern*, %struct.tr_pattern** %108, align 8
  store %struct.tr_pattern* %109, %struct.tr_pattern** %4, align 8
  br label %33

110:                                              ; preds = %33
  %111 = load i64, i64* %8, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %128

113:                                              ; preds = %110
  store i32 0, i32* %9, align 4
  br label %114

114:                                              ; preds = %124, %113
  %115 = load i32, i32* %9, align 4
  %116 = icmp slt i32 %115, 32
  br i1 %116, label %117, label %127

117:                                              ; preds = %114
  %118 = load i32*, i32** %6, align 8
  %119 = load i32, i32* %9, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = xor i32 %122, 255
  store i32 %123, i32* %121, align 4
  br label %124

124:                                              ; preds = %117
  %125 = load i32, i32* %9, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %9, align 4
  br label %114

127:                                              ; preds = %114
  br label %128

128:                                              ; preds = %127, %110
  ret void
}

declare dso_local i8* @RSTRING_PTR(i32) #1

declare dso_local i32 @tr_bitmap_set(i32*, i8 signext) #1

declare dso_local i32 @mrb_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
