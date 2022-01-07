; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_dragon4.c_Dragon4_PrintFloat_IEEE_binary64.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_dragon4.c_Dragon4_PrintFloat_IEEE_binary64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i32* }
%struct.TYPE_7__ = type { i64 }
%union.anon = type { i64 }

@NPY_FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32*, %struct.TYPE_7__*)* @Dragon4_PrintFloat_IEEE_binary64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Dragon4_PrintFloat_IEEE_binary64(%struct.TYPE_6__* %0, i32* %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %union.anon, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
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
  store i8 0, i8* %19, align 1
  %26 = load i32, i32* %9, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %110

29:                                               ; preds = %3
  %30 = load i32, i32* %9, align 4
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i8*, i8** %8, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 0
  store i8 0, i8* %34, align 1
  store i32 0, i32* %4, align 4
  br label %110

35:                                               ; preds = %29
  %36 = load i32*, i32** %6, align 8
  %37 = load i32, i32* %36, align 4
  %38 = bitcast %union.anon* %11 to i32*
  store i32 %37, i32* %38, align 8
  %39 = bitcast %union.anon* %11 to i64*
  %40 = load i64, i64* %39, align 8
  %41 = call i64 @bitmask_u64(i32 52)
  %42 = and i64 %40, %41
  store i64 %42, i64* %14, align 8
  %43 = bitcast %union.anon* %11 to i64*
  %44 = load i64, i64* %43, align 8
  %45 = lshr i64 %44, 52
  %46 = call i32 @bitmask_u32(i32 11)
  %47 = sext i32 %46 to i64
  %48 = and i64 %45, %47
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %12, align 4
  %50 = bitcast %union.anon* %11 to i64*
  %51 = load i64, i64* %50, align 8
  %52 = lshr i64 %51, 63
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %13, align 4
  %54 = load i32, i32* %13, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %35
  store i8 45, i8* %19, align 1
  br label %64

57:                                               ; preds = %35
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  store i8 43, i8* %19, align 1
  br label %63

63:                                               ; preds = %62, %57
  br label %64

64:                                               ; preds = %63, %56
  %65 = load i32, i32* %12, align 4
  %66 = call i32 @bitmask_u32(i32 11)
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %64
  %69 = load i8*, i8** %8, align 8
  %70 = load i32, i32* %9, align 4
  %71 = load i64, i64* %14, align 8
  %72 = load i8, i8* %19, align 1
  %73 = call i32 @PrintInfNan(i8* %69, i32 %70, i64 %71, i32 13, i8 signext %72)
  store i32 %73, i32* %4, align 4
  br label %110

74:                                               ; preds = %64
  %75 = load i32, i32* %12, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %91

77:                                               ; preds = %74
  %78 = load i64, i64* %14, align 8
  %79 = or i64 4503599627370496, %78
  store i64 %79, i64* %15, align 8
  %80 = load i32, i32* %12, align 4
  %81 = sub nsw i32 %80, 1023
  %82 = sub nsw i32 %81, 52
  store i32 %82, i32* %16, align 4
  store i32 52, i32* %17, align 4
  %83 = load i32, i32* %12, align 4
  %84 = icmp ne i32 %83, 1
  br i1 %84, label %85, label %88

85:                                               ; preds = %77
  %86 = load i64, i64* %14, align 8
  %87 = icmp eq i64 %86, 0
  br label %88

88:                                               ; preds = %85, %77
  %89 = phi i1 [ false, %77 ], [ %87, %85 ]
  %90 = zext i1 %89 to i32
  store i32 %90, i32* %18, align 4
  br label %96

91:                                               ; preds = %74
  %92 = load i64, i64* %14, align 8
  store i64 %92, i64* %15, align 8
  store i32 -1074, i32* %16, align 4
  %93 = load i64, i64* %15, align 8
  %94 = call i32 @LogBase2_64(i64 %93)
  store i32 %94, i32* %17, align 4
  %95 = load i32, i32* @NPY_FALSE, align 4
  store i32 %95, i32* %18, align 4
  br label %96

96:                                               ; preds = %91, %88
  %97 = load i32*, i32** %10, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 0
  %99 = load i64, i64* %15, align 8
  %100 = call i32 @BigInt_Set_uint64(i32* %98, i64 %99)
  %101 = load i8*, i8** %8, align 8
  %102 = load i32, i32* %9, align 4
  %103 = load i32*, i32** %10, align 8
  %104 = load i32, i32* %16, align 4
  %105 = load i8, i8* %19, align 1
  %106 = load i32, i32* %17, align 4
  %107 = load i32, i32* %18, align 4
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %109 = call i32 @Format_floatbits(i8* %101, i32 %102, i32* %103, i32 %104, i8 signext %105, i32 %106, i32 %107, %struct.TYPE_7__* %108)
  store i32 %109, i32* %4, align 4
  br label %110

110:                                              ; preds = %96, %68, %32, %28
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

declare dso_local i64 @bitmask_u64(i32) #1

declare dso_local i32 @bitmask_u32(i32) #1

declare dso_local i32 @PrintInfNan(i8*, i32, i64, i32, i8 signext) #1

declare dso_local i32 @LogBase2_64(i64) #1

declare dso_local i32 @BigInt_Set_uint64(i32*, i64) #1

declare dso_local i32 @Format_floatbits(i8*, i32, i32*, i32, i8 signext, i32, i32, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
