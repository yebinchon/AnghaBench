; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/d3d9/extr_format.c_CheckDeviceFormatConversion.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/d3d9/extr_format.c_CheckDeviceFormatConversion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@D3D_OK = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@D3DERR_NOTAVAILABLE = common dso_local global i32 0, align 4
@D3DFORMAT_OP_CONVERT_TO_ARGB = common dso_local global i32 0, align 4
@D3DFORMAT_MEMBEROFGROUP_ARGB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CheckDeviceFormatConversion(%struct.TYPE_6__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i64, i64* %6, align 8
  %11 = call i64 @RemoveAlphaChannel(i64 %10)
  store i64 %11, i64* %8, align 8
  %12 = load i64, i64* %7, align 8
  %13 = call i64 @RemoveAlphaChannel(i64 %12)
  store i64 %13, i64* %9, align 8
  %14 = load i64, i64* %8, align 8
  %15 = load i64, i64* %9, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @D3D_OK, align 4
  store i32 %18, i32* %4, align 4
  br label %57

19:                                               ; preds = %3
  %20 = load i64, i64* @FALSE, align 8
  %21 = load i64, i64* %6, align 8
  %22 = call i64 @IsFourCCFormat(i64 %21)
  %23 = icmp eq i64 %20, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load i64, i64* %6, align 8
  switch i64 %25, label %27 [
    i64 131, label %26
    i64 128, label %26
    i64 130, label %26
    i64 129, label %26
    i64 133, label %26
    i64 132, label %26
  ]

26:                                               ; preds = %24, %24, %24, %24, %24, %24
  br label %29

27:                                               ; preds = %24
  %28 = load i32, i32* @D3DERR_NOTAVAILABLE, align 4
  store i32 %28, i32* %4, align 4
  br label %57

29:                                               ; preds = %26
  br label %39

30:                                               ; preds = %19
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32, i32* @D3D_OK, align 4
  store i32 %37, i32* %4, align 4
  br label %57

38:                                               ; preds = %30
  br label %39

39:                                               ; preds = %38, %29
  %40 = load i64, i64* @FALSE, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %42 = load i64, i64* %6, align 8
  %43 = load i32, i32* @D3DFORMAT_OP_CONVERT_TO_ARGB, align 4
  %44 = call i64 @IsSupportedFormatOp(%struct.TYPE_6__* %41, i64 %42, i32 %43)
  %45 = icmp eq i64 %40, %44
  br i1 %45, label %53, label %46

46:                                               ; preds = %39
  %47 = load i64, i64* @FALSE, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %49 = load i64, i64* %7, align 8
  %50 = load i32, i32* @D3DFORMAT_MEMBEROFGROUP_ARGB, align 4
  %51 = call i64 @IsSupportedFormatOp(%struct.TYPE_6__* %48, i64 %49, i32 %50)
  %52 = icmp eq i64 %47, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %46, %39
  %54 = load i32, i32* @D3DERR_NOTAVAILABLE, align 4
  store i32 %54, i32* %4, align 4
  br label %57

55:                                               ; preds = %46
  %56 = load i32, i32* @D3D_OK, align 4
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %55, %53, %36, %27, %17
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i64 @RemoveAlphaChannel(i64) #1

declare dso_local i64 @IsFourCCFormat(i64) #1

declare dso_local i64 @IsSupportedFormatOp(%struct.TYPE_6__*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
