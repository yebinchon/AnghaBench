; ModuleID = '/home/carl/AnghaBench/radare2/libr/egg/extr_egg_lang.c_rcc_internal_mathop.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/egg/extr_egg_lang.c_rcc_internal_mathop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_11__, %struct.TYPE_12__* }
%struct.TYPE_11__ = type { i8, i32 }
%struct.TYPE_12__ = type { i8* (%struct.TYPE_13__*, i32)*, i32 (%struct.TYPE_13__*, i8, i32, i8, i8*, i8*)*, i32 (%struct.TYPE_13__*, i8*)*, i32 (%struct.TYPE_13__*, i8*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, i8*, i8*, i8)* @rcc_internal_mathop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rcc_internal_mathop(%struct.TYPE_13__* %0, i8* %1, i8* %2, i8 signext %3) #0 {
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8, align 1
  %13 = alloca [64 x i8], align 16
  %14 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8 %3, i8* %8, align 1
  store i8 32, i8* %12, align 1
  %15 = load i8*, i8** %6, align 8
  %16 = call i8* @strdup(i8* %15)
  store i8* %16, i8** %10, align 8
  store i8* %16, i8** %9, align 8
  store i8* %16, i8** %11, align 8
  %17 = call i64 @get_op(i8** %10)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i8*, i8** %10, align 8
  store i8 0, i8* %20, align 1
  br label %21

21:                                               ; preds = %19, %4
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  store %struct.TYPE_12__* %24, %struct.TYPE_12__** %14, align 8
  br label %25

25:                                               ; preds = %37, %21
  %26 = load i8*, i8** %9, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load i8*, i8** %9, align 8
  %32 = load i8, i8* %31, align 1
  %33 = call i64 @is_space(i8 signext %32)
  %34 = icmp ne i64 %33, 0
  br label %35

35:                                               ; preds = %30, %25
  %36 = phi i1 [ false, %25 ], [ %34, %30 ]
  br i1 %36, label %37, label %40

37:                                               ; preds = %35
  %38 = load i8*, i8** %9, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %9, align 8
  br label %25

40:                                               ; preds = %35
  %41 = load i8*, i8** %9, align 8
  %42 = call i64 @is_var(i8* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %98

44:                                               ; preds = %40
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %46 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %47 = load i8*, i8** %9, align 8
  %48 = call i8* @r_egg_mkvar(%struct.TYPE_13__* %45, i8* %46, i8* %47, i32 0)
  store i8* %48, i8** %9, align 8
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = load i8, i8* %51, align 8
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 42
  br i1 %54, label %55, label %74

55:                                               ; preds = %44
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 3
  %58 = load i32 (%struct.TYPE_13__*, i8*, i32)*, i32 (%struct.TYPE_13__*, i8*, i32)** %57, align 8
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %60 = load i8*, i8** %9, align 8
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 %58(%struct.TYPE_13__* %59, i8* %60, i32 %64)
  %66 = load i8*, i8** %11, align 8
  %67 = call i32 @R_FREE(i8* %66)
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  %70 = load i8* (%struct.TYPE_13__*, i32)*, i8* (%struct.TYPE_13__*, i32)** %69, align 8
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %72 = call i8* %70(%struct.TYPE_13__* %71, i32 0)
  %73 = call i8* @strdup(i8* %72)
  store i8* %73, i8** %9, align 8
  store i8* %73, i8** %11, align 8
  br label %97

74:                                               ; preds = %44
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  %78 = load i8, i8* %77, align 8
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 38
  br i1 %80, label %81, label %96

81:                                               ; preds = %74
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 2
  %84 = load i32 (%struct.TYPE_13__*, i8*)*, i32 (%struct.TYPE_13__*, i8*)** %83, align 8
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %86 = load i8*, i8** %9, align 8
  %87 = call i32 %84(%struct.TYPE_13__* %85, i8* %86)
  %88 = load i8*, i8** %11, align 8
  %89 = call i32 @R_FREE(i8* %88)
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 0
  %92 = load i8* (%struct.TYPE_13__*, i32)*, i8* (%struct.TYPE_13__*, i32)** %91, align 8
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %94 = call i8* %92(%struct.TYPE_13__* %93, i32 0)
  %95 = call i8* @strdup(i8* %94)
  store i8* %95, i8** %9, align 8
  store i8* %95, i8** %11, align 8
  br label %96

96:                                               ; preds = %81, %74
  br label %97

97:                                               ; preds = %96, %55
  store i8 32, i8* %12, align 1
  br label %99

98:                                               ; preds = %40
  store i8 36, i8* %12, align 1
  br label %99

99:                                               ; preds = %98, %97
  %100 = load i8*, i8** %9, align 8
  %101 = load i8, i8* %100, align 1
  %102 = icmp ne i8 %101, 0
  br i1 %102, label %103, label %117

103:                                              ; preds = %99
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 1
  %106 = load i32 (%struct.TYPE_13__*, i8, i32, i8, i8*, i8*)*, i32 (%struct.TYPE_13__*, i8, i32, i8, i8*, i8*)** %105, align 8
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %108 = load i8, i8* %8, align 1
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i8, i8* %12, align 1
  %114 = load i8*, i8** %9, align 8
  %115 = load i8*, i8** %7, align 8
  %116 = call i32 %106(%struct.TYPE_13__* %107, i8 signext %108, i32 %112, i8 signext %113, i8* %114, i8* %115)
  br label %117

117:                                              ; preds = %103, %99
  %118 = load i8*, i8** %9, align 8
  %119 = load i8*, i8** %11, align 8
  %120 = icmp ne i8* %118, %119
  br i1 %120, label %121, label %124

121:                                              ; preds = %117
  %122 = load i8*, i8** %9, align 8
  %123 = call i32 @R_FREE(i8* %122)
  br label %124

124:                                              ; preds = %121, %117
  %125 = load i8*, i8** %11, align 8
  %126 = call i32 @R_FREE(i8* %125)
  %127 = load i8*, i8** %7, align 8
  %128 = call i32 @R_FREE(i8* %127)
  ret void
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i64 @get_op(i8**) #1

declare dso_local i64 @is_space(i8 signext) #1

declare dso_local i64 @is_var(i8*) #1

declare dso_local i8* @r_egg_mkvar(%struct.TYPE_13__*, i8*, i8*, i32) #1

declare dso_local i32 @R_FREE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
