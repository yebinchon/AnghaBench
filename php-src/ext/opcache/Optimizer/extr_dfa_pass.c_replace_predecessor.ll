; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_dfa_pass.c_replace_predecessor.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_dfa_pass.c_replace_predecessor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32*, %struct.TYPE_9__* }
%struct.TYPE_7__ = type { i32*, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i32, i32, i32)* @replace_predecessor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @replace_predecessor(%struct.TYPE_10__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i64 %20
  store %struct.TYPE_11__* %21, %struct.TYPE_11__** %9, align 8
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds i32, i32* %25, i64 %28
  store i32* %29, i32** %10, align 8
  store i32 -1, i32* %13, align 4
  store i32 -1, i32* %14, align 4
  store i32 0, i32* %12, align 4
  br label %30

30:                                               ; preds = %57, %4
  %31 = load i32, i32* %12, align 4
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %60

36:                                               ; preds = %30
  %37 = load i32*, i32** %10, align 8
  %38 = load i32, i32* %12, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %36
  %45 = load i32, i32* %12, align 4
  store i32 %45, i32* %13, align 4
  br label %46

46:                                               ; preds = %44, %36
  %47 = load i32*, i32** %10, align 8
  %48 = load i32, i32* %12, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %46
  %55 = load i32, i32* %12, align 4
  store i32 %55, i32* %14, align 4
  br label %56

56:                                               ; preds = %54, %46
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %12, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %12, align 4
  br label %30

60:                                               ; preds = %30
  %61 = load i32, i32* %13, align 4
  %62 = icmp ne i32 %61, -1
  %63 = zext i1 %62 to i32
  %64 = call i32 @ZEND_ASSERT(i32 %63)
  %65 = load i32, i32* %14, align 4
  %66 = icmp eq i32 %65, -1
  br i1 %66, label %67, label %73

67:                                               ; preds = %60
  %68 = load i32, i32* %8, align 4
  %69 = load i32*, i32** %10, align 8
  %70 = load i32, i32* %13, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  store i32 %68, i32* %72, align 4
  br label %137

73:                                               ; preds = %60
  %74 = load i32*, i32** %10, align 8
  %75 = load i32, i32* %13, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32*, i32** %10, align 8
  %79 = load i32, i32* %13, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = getelementptr inbounds i32, i32* %81, i64 1
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* %13, align 4
  %87 = sub nsw i32 %85, %86
  %88 = sub nsw i32 %87, 1
  %89 = sext i32 %88 to i64
  %90 = mul i64 4, %89
  %91 = trunc i64 %90 to i32
  %92 = call i32 @memmove(i32* %77, i32* %82, i32 %91)
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %94, align 8
  %96 = load i32, i32* %6, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %99, align 8
  store %struct.TYPE_9__* %100, %struct.TYPE_9__** %11, align 8
  br label %101

101:                                              ; preds = %128, %73
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %103 = icmp ne %struct.TYPE_9__* %102, null
  br i1 %103, label %104, label %132

104:                                              ; preds = %101
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %13, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %13, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = getelementptr inbounds i32, i32* %116, i64 1
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* %13, align 4
  %122 = sub nsw i32 %120, %121
  %123 = sub nsw i32 %122, 1
  %124 = sext i32 %123 to i64
  %125 = mul i64 4, %124
  %126 = trunc i64 %125 to i32
  %127 = call i32 @memmove(i32* %110, i32* %117, i32 %126)
  br label %128

128:                                              ; preds = %104
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 1
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %130, align 8
  store %struct.TYPE_9__* %131, %struct.TYPE_9__** %11, align 8
  br label %101

132:                                              ; preds = %101
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = add nsw i32 %135, -1
  store i32 %136, i32* %134, align 8
  br label %137

137:                                              ; preds = %132, %67
  ret void
}

declare dso_local i32 @ZEND_ASSERT(i32) #1

declare dso_local i32 @memmove(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
