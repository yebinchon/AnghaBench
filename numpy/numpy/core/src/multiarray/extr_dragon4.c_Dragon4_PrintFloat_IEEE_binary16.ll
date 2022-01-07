; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_dragon4.c_Dragon4_PrintFloat_IEEE_binary16.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_dragon4.c_Dragon4_PrintFloat_IEEE_binary16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i32* }
%struct.TYPE_7__ = type { i64 }

@NPY_FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32*, %struct.TYPE_7__*)* @Dragon4_PrintFloat_IEEE_binary16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Dragon4_PrintFloat_IEEE_binary16(%struct.TYPE_6__* %0, i32* %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8, align 1
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %7, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %8, align 8
  store i32 8, i32* %9, align 4
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %10, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %11, align 4
  store i8 0, i8* %19, align 1
  %28 = load i32, i32* %9, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %105

31:                                               ; preds = %3
  %32 = load i32, i32* %9, align 4
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i8*, i8** %8, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 0
  store i8 0, i8* %36, align 1
  store i32 0, i32* %4, align 4
  br label %105

37:                                               ; preds = %31
  %38 = load i32, i32* %11, align 4
  %39 = call i32 @bitmask_u32(i32 10)
  %40 = and i32 %38, %39
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %11, align 4
  %42 = ashr i32 %41, 10
  %43 = call i32 @bitmask_u32(i32 5)
  %44 = and i32 %42, %43
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %11, align 4
  %46 = ashr i32 %45, 15
  store i32 %46, i32* %14, align 4
  %47 = load i32, i32* %14, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %37
  store i8 45, i8* %19, align 1
  br label %57

50:                                               ; preds = %37
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  store i8 43, i8* %19, align 1
  br label %56

56:                                               ; preds = %55, %50
  br label %57

57:                                               ; preds = %56, %49
  %58 = load i32, i32* %12, align 4
  %59 = call i32 @bitmask_u32(i32 5)
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %57
  %62 = load i8*, i8** %8, align 8
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %13, align 4
  %65 = load i8, i8* %19, align 1
  %66 = call i32 @PrintInfNan(i8* %62, i32 %63, i32 %64, i32 3, i8 signext %65)
  store i32 %66, i32* %4, align 4
  br label %105

67:                                               ; preds = %57
  %68 = load i32, i32* %12, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %86

70:                                               ; preds = %67
  %71 = load i32, i32* %13, align 4
  %72 = sext i32 %71 to i64
  %73 = or i64 1024, %72
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %15, align 4
  %75 = load i32, i32* %12, align 4
  %76 = sub nsw i32 %75, 15
  %77 = sub nsw i32 %76, 10
  store i32 %77, i32* %16, align 4
  store i32 10, i32* %17, align 4
  %78 = load i32, i32* %12, align 4
  %79 = icmp ne i32 %78, 1
  br i1 %79, label %80, label %83

80:                                               ; preds = %70
  %81 = load i32, i32* %13, align 4
  %82 = icmp eq i32 %81, 0
  br label %83

83:                                               ; preds = %80, %70
  %84 = phi i1 [ false, %70 ], [ %82, %80 ]
  %85 = zext i1 %84 to i32
  store i32 %85, i32* %18, align 4
  br label %91

86:                                               ; preds = %67
  %87 = load i32, i32* %13, align 4
  store i32 %87, i32* %15, align 4
  store i32 -24, i32* %16, align 4
  %88 = load i32, i32* %15, align 4
  %89 = call i32 @LogBase2_32(i32 %88)
  store i32 %89, i32* %17, align 4
  %90 = load i32, i32* @NPY_FALSE, align 4
  store i32 %90, i32* %18, align 4
  br label %91

91:                                               ; preds = %86, %83
  %92 = load i32*, i32** %10, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  %94 = load i32, i32* %15, align 4
  %95 = call i32 @BigInt_Set_uint32(i32* %93, i32 %94)
  %96 = load i8*, i8** %8, align 8
  %97 = load i32, i32* %9, align 4
  %98 = load i32*, i32** %10, align 8
  %99 = load i32, i32* %16, align 4
  %100 = load i8, i8* %19, align 1
  %101 = load i32, i32* %17, align 4
  %102 = load i32, i32* %18, align 4
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %104 = call i32 @Format_floatbits(i8* %96, i32 %97, i32* %98, i32 %99, i8 signext %100, i32 %101, i32 %102, %struct.TYPE_7__* %103)
  store i32 %104, i32* %4, align 4
  br label %105

105:                                              ; preds = %91, %61, %34, %30
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local i32 @bitmask_u32(i32) #1

declare dso_local i32 @PrintInfNan(i8*, i32, i32, i32, i8 signext) #1

declare dso_local i32 @LogBase2_32(i32) #1

declare dso_local i32 @BigInt_Set_uint32(i32*, i32) #1

declare dso_local i32 @Format_floatbits(i8*, i32, i32*, i32, i8 signext, i32, i32, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
