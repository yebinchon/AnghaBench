; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_dragon4.c_Dragon4_PrintFloat_IEEE_binary32.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_dragon4.c_Dragon4_PrintFloat_IEEE_binary32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i32* }
%struct.TYPE_7__ = type { i64 }
%union.anon = type { i32 }

@NPY_FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32*, %struct.TYPE_7__*)* @Dragon4_PrintFloat_IEEE_binary32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Dragon4_PrintFloat_IEEE_binary32(%struct.TYPE_6__* %0, i32* %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %union.anon, align 4
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
  store i8 0, i8* %19, align 1
  %26 = load i32, i32* %9, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %109

29:                                               ; preds = %3
  %30 = load i32, i32* %9, align 4
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i8*, i8** %8, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 0
  store i8 0, i8* %34, align 1
  store i32 0, i32* %4, align 4
  br label %109

35:                                               ; preds = %29
  %36 = load i32*, i32** %6, align 8
  %37 = load i32, i32* %36, align 4
  %38 = bitcast %union.anon* %11 to i32*
  store i32 %37, i32* %38, align 4
  %39 = bitcast %union.anon* %11 to i32*
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @bitmask_u32(i32 23)
  %42 = and i32 %40, %41
  store i32 %42, i32* %13, align 4
  %43 = bitcast %union.anon* %11 to i32*
  %44 = load i32, i32* %43, align 4
  %45 = ashr i32 %44, 23
  %46 = call i32 @bitmask_u32(i32 8)
  %47 = and i32 %45, %46
  store i32 %47, i32* %12, align 4
  %48 = bitcast %union.anon* %11 to i32*
  %49 = load i32, i32* %48, align 4
  %50 = ashr i32 %49, 31
  store i32 %50, i32* %14, align 4
  %51 = load i32, i32* %14, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %35
  store i8 45, i8* %19, align 1
  br label %61

54:                                               ; preds = %35
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  store i8 43, i8* %19, align 1
  br label %60

60:                                               ; preds = %59, %54
  br label %61

61:                                               ; preds = %60, %53
  %62 = load i32, i32* %12, align 4
  %63 = call i32 @bitmask_u32(i32 8)
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %61
  %66 = load i8*, i8** %8, align 8
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* %13, align 4
  %69 = load i8, i8* %19, align 1
  %70 = call i32 @PrintInfNan(i8* %66, i32 %67, i32 %68, i32 6, i8 signext %69)
  store i32 %70, i32* %4, align 4
  br label %109

71:                                               ; preds = %61
  %72 = load i32, i32* %12, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %90

74:                                               ; preds = %71
  %75 = load i32, i32* %13, align 4
  %76 = sext i32 %75 to i64
  %77 = or i64 8388608, %76
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %15, align 4
  %79 = load i32, i32* %12, align 4
  %80 = sub nsw i32 %79, 127
  %81 = sub nsw i32 %80, 23
  store i32 %81, i32* %16, align 4
  store i32 23, i32* %17, align 4
  %82 = load i32, i32* %12, align 4
  %83 = icmp ne i32 %82, 1
  br i1 %83, label %84, label %87

84:                                               ; preds = %74
  %85 = load i32, i32* %13, align 4
  %86 = icmp eq i32 %85, 0
  br label %87

87:                                               ; preds = %84, %74
  %88 = phi i1 [ false, %74 ], [ %86, %84 ]
  %89 = zext i1 %88 to i32
  store i32 %89, i32* %18, align 4
  br label %95

90:                                               ; preds = %71
  %91 = load i32, i32* %13, align 4
  store i32 %91, i32* %15, align 4
  store i32 -149, i32* %16, align 4
  %92 = load i32, i32* %15, align 4
  %93 = call i32 @LogBase2_32(i32 %92)
  store i32 %93, i32* %17, align 4
  %94 = load i32, i32* @NPY_FALSE, align 4
  store i32 %94, i32* %18, align 4
  br label %95

95:                                               ; preds = %90, %87
  %96 = load i32*, i32** %10, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 0
  %98 = load i32, i32* %15, align 4
  %99 = call i32 @BigInt_Set_uint32(i32* %97, i32 %98)
  %100 = load i8*, i8** %8, align 8
  %101 = load i32, i32* %9, align 4
  %102 = load i32*, i32** %10, align 8
  %103 = load i32, i32* %16, align 4
  %104 = load i8, i8* %19, align 1
  %105 = load i32, i32* %17, align 4
  %106 = load i32, i32* %18, align 4
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %108 = call i32 @Format_floatbits(i8* %100, i32 %101, i32* %102, i32 %103, i8 signext %104, i32 %105, i32 %106, %struct.TYPE_7__* %107)
  store i32 %108, i32* %4, align 4
  br label %109

109:                                              ; preds = %95, %65, %32, %28
  %110 = load i32, i32* %4, align 4
  ret i32 %110
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
