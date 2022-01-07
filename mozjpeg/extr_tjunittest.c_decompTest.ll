; ModuleID = '/home/carl/AnghaBench/mozjpeg/extr_tjunittest.c_decompTest.c'
source_filename = "/home/carl/AnghaBench/mozjpeg/extr_tjunittest.c_decompTest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@TJSAMP_444 = common dso_local global i32 0, align 4
@TJSAMP_GRAY = common dso_local global i32 0, align 4
@TJSAMP_411 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @decompTest(i32 %0, i8* %1, i64 %2, i32 %3, i32 %4, i32 %5, i8* %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %10, align 4
  store i8* %1, i8** %11, align 8
  store i64 %2, i64* %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i8* %6, i8** %16, align 8
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  store i32 0, i32* %20, align 4
  %22 = call %struct.TYPE_4__* @tjGetScalingFactors(i32* %20)
  store %struct.TYPE_4__* %22, %struct.TYPE_4__** %21, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %24 = icmp ne %struct.TYPE_4__* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %9
  %26 = load i32, i32* %20, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %25, %9
  %29 = call i32 (...) @_throwtj()
  br label %30

30:                                               ; preds = %28, %25
  store i32 0, i32* %19, align 4
  br label %31

31:                                               ; preds = %125, %30
  %32 = load i32, i32* %19, align 4
  %33 = load i32, i32* %20, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %128

35:                                               ; preds = %31
  %36 = load i32, i32* %17, align 4
  %37 = load i32, i32* @TJSAMP_444, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %107, label %39

39:                                               ; preds = %35
  %40 = load i32, i32* %17, align 4
  %41 = load i32, i32* @TJSAMP_GRAY, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %107, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* %17, align 4
  %45 = load i32, i32* @TJSAMP_411, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %71

47:                                               ; preds = %43
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %49 = load i32, i32* %19, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %55, label %71

55:                                               ; preds = %47
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %57 = load i32, i32* %19, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %61, 2
  br i1 %62, label %107, label %63

63:                                               ; preds = %55
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %65 = load i32, i32* %19, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp eq i32 %69, 1
  br i1 %70, label %107, label %71

71:                                               ; preds = %63, %47, %43
  %72 = load i32, i32* %17, align 4
  %73 = load i32, i32* @TJSAMP_411, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %124

75:                                               ; preds = %71
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %77 = load i32, i32* %19, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp eq i32 %81, 1
  br i1 %82, label %83, label %124

83:                                               ; preds = %75
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %85 = load i32, i32* %19, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = icmp eq i32 %89, 4
  br i1 %90, label %107, label %91

91:                                               ; preds = %83
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %93 = load i32, i32* %19, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = icmp eq i32 %97, 2
  br i1 %98, label %107, label %99

99:                                               ; preds = %91
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %101 = load i32, i32* %19, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = icmp eq i32 %105, 1
  br i1 %106, label %107, label %124

107:                                              ; preds = %99, %91, %83, %63, %55, %39, %35
  %108 = load i32, i32* %10, align 4
  %109 = load i8*, i8** %11, align 8
  %110 = load i64, i64* %12, align 8
  %111 = load i32, i32* %13, align 4
  %112 = load i32, i32* %14, align 4
  %113 = load i32, i32* %15, align 4
  %114 = load i8*, i8** %16, align 8
  %115 = load i32, i32* %17, align 4
  %116 = load i32, i32* %18, align 4
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %118 = load i32, i32* %19, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i64 %119
  %121 = bitcast %struct.TYPE_4__* %120 to i64*
  %122 = load i64, i64* %121, align 4
  %123 = call i32 @_decompTest(i32 %108, i8* %109, i64 %110, i32 %111, i32 %112, i32 %113, i8* %114, i32 %115, i32 %116, i64 %122)
  br label %124

124:                                              ; preds = %107, %99, %75, %71
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %19, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %19, align 4
  br label %31

128:                                              ; preds = %31
  br label %129

129:                                              ; preds = %128
  ret void
}

declare dso_local %struct.TYPE_4__* @tjGetScalingFactors(i32*) #1

declare dso_local i32 @_throwtj(...) #1

declare dso_local i32 @_decompTest(i32, i8*, i64, i32, i32, i32, i8*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
