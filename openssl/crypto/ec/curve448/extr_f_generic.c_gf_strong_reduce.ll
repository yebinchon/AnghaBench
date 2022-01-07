; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ec/curve448/extr_f_generic.c_gf_strong_reduce.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ec/curve448/extr_f_generic.c_gf_strong_reduce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64* }
%struct.TYPE_5__ = type { i32* }

@NLIMBS = common dso_local global i32 0, align 4
@MODULUS = common dso_local global %struct.TYPE_6__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gf_strong_reduce(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %8 = call i32 @gf_weak_reduce(%struct.TYPE_5__* %7)
  store i32 0, i32* %3, align 4
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %49, %1
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @NLIMBS, align 4
  %12 = icmp ult i32 %10, %11
  br i1 %12, label %13, label %52

13:                                               ; preds = %9
  %14 = load i32, i32* %3, align 4
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i64 @LIMBPERM(i32 %18)
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %14, %21
  %23 = sext i32 %22 to i64
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** @MODULUS, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i64 @LIMBPERM(i32 %27)
  %29 = getelementptr inbounds i64, i64* %26, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = sub nsw i64 %23, %30
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i64 @LIMBPERM(i32 %34)
  %36 = call i32 @LIMB_MASK(i64 %35)
  %37 = and i32 %33, %36
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i64 @LIMBPERM(i32 %41)
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  store i32 %37, i32* %43, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i64 @LIMBPERM(i32 %44)
  %46 = call i32 @LIMB_PLACE_VALUE(i64 %45)
  %47 = load i32, i32* %3, align 4
  %48 = ashr i32 %47, %46
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %13
  %50 = load i32, i32* %6, align 4
  %51 = add i32 %50, 1
  store i32 %51, i32* %6, align 4
  br label %9

52:                                               ; preds = %9
  %53 = load i32, i32* %3, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %52
  %56 = load i32, i32* %3, align 4
  %57 = icmp eq i32 %56, -1
  br label %58

58:                                               ; preds = %55, %52
  %59 = phi i1 [ true, %52 ], [ %57, %55 ]
  %60 = zext i1 %59 to i32
  %61 = call i32 @assert(i32 %60)
  %62 = load i32, i32* %3, align 4
  %63 = sext i32 %62 to i64
  store i64 %63, i64* %4, align 8
  store i32 0, i32* %6, align 4
  br label %64

64:                                               ; preds = %106, %58
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @NLIMBS, align 4
  %67 = icmp ult i32 %65, %66
  br i1 %67, label %68, label %109

68:                                               ; preds = %64
  %69 = load i32, i32* %5, align 4
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %6, align 4
  %74 = call i64 @LIMBPERM(i32 %73)
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %69, %76
  %78 = sext i32 %77 to i64
  %79 = load i64, i64* %4, align 8
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** @MODULUS, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i64*, i64** %81, align 8
  %83 = load i32, i32* %6, align 4
  %84 = call i64 @LIMBPERM(i32 %83)
  %85 = getelementptr inbounds i64, i64* %82, i64 %84
  %86 = load i64, i64* %85, align 8
  %87 = and i64 %79, %86
  %88 = add nsw i64 %78, %87
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %5, align 4
  %90 = load i32, i32* %5, align 4
  %91 = load i32, i32* %6, align 4
  %92 = call i64 @LIMBPERM(i32 %91)
  %93 = call i32 @LIMB_MASK(i64 %92)
  %94 = and i32 %90, %93
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %6, align 4
  %99 = call i64 @LIMBPERM(i32 %98)
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  store i32 %94, i32* %100, align 4
  %101 = load i32, i32* %6, align 4
  %102 = call i64 @LIMBPERM(i32 %101)
  %103 = call i32 @LIMB_PLACE_VALUE(i64 %102)
  %104 = load i32, i32* %5, align 4
  %105 = ashr i32 %104, %103
  store i32 %105, i32* %5, align 4
  br label %106

106:                                              ; preds = %68
  %107 = load i32, i32* %6, align 4
  %108 = add i32 %107, 1
  store i32 %108, i32* %6, align 4
  br label %64

109:                                              ; preds = %64
  %110 = load i32, i32* %5, align 4
  %111 = icmp slt i32 %110, 2
  br i1 %111, label %112, label %118

112:                                              ; preds = %109
  %113 = load i32, i32* %5, align 4
  %114 = sext i32 %113 to i64
  %115 = load i64, i64* %4, align 8
  %116 = add nsw i64 %114, %115
  %117 = icmp eq i64 %116, 0
  br label %118

118:                                              ; preds = %112, %109
  %119 = phi i1 [ false, %109 ], [ %117, %112 ]
  %120 = zext i1 %119 to i32
  %121 = call i32 @assert(i32 %120)
  ret void
}

declare dso_local i32 @gf_weak_reduce(%struct.TYPE_5__*) #1

declare dso_local i64 @LIMBPERM(i32) #1

declare dso_local i32 @LIMB_MASK(i64) #1

declare dso_local i32 @LIMB_PLACE_VALUE(i64) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
