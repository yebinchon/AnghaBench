; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_avr.c_anal_mask_avr.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_avr.c_anal_mask_avr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32, i64, i64 }
%struct.TYPE_12__ = type { i32 }

@UT64_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_11__*, i32, i32*, i64)* @anal_mask_avr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @anal_mask_avr(%struct.TYPE_11__* %0, i32 %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %10, align 8
  store i32* null, i32** %11, align 8
  %15 = call %struct.TYPE_10__* (...) @r_anal_op_new()
  store %struct.TYPE_10__* %15, %struct.TYPE_10__** %10, align 8
  %16 = icmp ne %struct.TYPE_10__* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  store i32* null, i32** %5, align 8
  br label %119

18:                                               ; preds = %4
  %19 = load i32, i32* %7, align 4
  %20 = call i32* @malloc(i32 %19)
  store i32* %20, i32** %11, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %24 = call i32 @r_anal_op_free(%struct.TYPE_10__* %23)
  store i32* null, i32** %5, align 8
  br label %119

25:                                               ; preds = %18
  %26 = load i32*, i32** %11, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @memset(i32* %26, i32 255, i32 %27)
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32* @get_cpu_model(i32 %31)
  store i32* %32, i32** %13, align 8
  store i32 0, i32* %12, align 4
  br label %33

33:                                               ; preds = %109, %25
  %34 = load i32, i32* %12, align 4
  %35 = add nsw i32 %34, 1
  %36 = load i32, i32* %7, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %115

38:                                               ; preds = %33
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %41 = load i64, i64* %9, align 8
  %42 = load i32, i32* %12, align 4
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %41, %43
  %45 = load i32*, i32** %8, align 8
  %46 = load i32, i32* %12, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %12, align 4
  %51 = sub nsw i32 %49, %50
  %52 = load i32*, i32** %13, align 8
  %53 = call %struct.TYPE_12__* @avr_op_analyze(%struct.TYPE_11__* %39, %struct.TYPE_10__* %40, i64 %44, i32* %48, i32 %51, i32* %52)
  store %struct.TYPE_12__* %53, %struct.TYPE_12__** %14, align 8
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp slt i32 %56, 1
  br i1 %57, label %58, label %59

58:                                               ; preds = %38
  br label %115

59:                                               ; preds = %38
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %61 = icmp ne %struct.TYPE_12__* %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %59
  br label %109

63:                                               ; preds = %59
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp eq i32 %66, 4
  br i1 %67, label %68, label %79

68:                                               ; preds = %63
  %69 = load i32*, i32** %11, align 8
  %70 = load i32, i32* %12, align 4
  %71 = add nsw i32 %70, 2
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %69, i64 %72
  store i32 0, i32* %73, align 4
  %74 = load i32*, i32** %11, align 8
  %75 = load i32, i32* %12, align 4
  %76 = add nsw i32 %75, 3
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %74, i64 %77
  store i32 0, i32* %78, align 4
  br label %79

79:                                               ; preds = %68, %63
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @UT64_MAX, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %91, label %85

85:                                               ; preds = %79
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @UT64_MAX, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %108

91:                                               ; preds = %85, %79
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32*, i32** %11, align 8
  %96 = load i32, i32* %12, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  store i32 %94, i32* %98, align 4
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = ashr i32 %101, 8
  %103 = load i32*, i32** %11, align 8
  %104 = load i32, i32* %12, align 4
  %105 = add nsw i32 %104, 1
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %103, i64 %106
  store i32 %102, i32* %107, align 4
  br label %108

108:                                              ; preds = %91, %85
  br label %109

109:                                              ; preds = %108, %62
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* %12, align 4
  %114 = add nsw i32 %113, %112
  store i32 %114, i32* %12, align 4
  br label %33

115:                                              ; preds = %58, %33
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %117 = call i32 @r_anal_op_free(%struct.TYPE_10__* %116)
  %118 = load i32*, i32** %11, align 8
  store i32* %118, i32** %5, align 8
  br label %119

119:                                              ; preds = %115, %22, %17
  %120 = load i32*, i32** %5, align 8
  ret i32* %120
}

declare dso_local %struct.TYPE_10__* @r_anal_op_new(...) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @r_anal_op_free(%struct.TYPE_10__*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32* @get_cpu_model(i32) #1

declare dso_local %struct.TYPE_12__* @avr_op_analyze(%struct.TYPE_11__*, %struct.TYPE_10__*, i64, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
