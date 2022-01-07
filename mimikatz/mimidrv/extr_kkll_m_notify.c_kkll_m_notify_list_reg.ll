; ModuleID = '/home/carl/AnghaBench/mimikatz/mimidrv/extr_kkll_m_notify.c_kkll_m_notify_list_reg.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimidrv/extr_kkll_m_notify.c_kkll_m_notify_list_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64 }

@STATUS_SUCCESS = common dso_local global i32 0, align 4
@CallbackListHeadOrCmpCallBackVector = common dso_local global i64* null, align 8
@RegReferences = common dso_local global i32 0, align 4
@pCmpCallBackOffsets = common dso_local global %struct.TYPE_7__* null, align 8
@KiwiOsIndex = common dso_local global i64 0, align 8
@KiwiOsIndex_VISTA = common dso_local global i64 0, align 8
@CM_REG_MAX_CALLBACKS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i32] [i32 91, i32 37, i32 46, i32 50, i32 117, i32 93, i32 32, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kkll_m_notify_list_reg(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %7, i32* %3, align 4
  %8 = load i64*, i64** @CallbackListHeadOrCmpCallBackVector, align 8
  %9 = icmp ne i64* %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @RegReferences, align 4
  %12 = load i32, i32* @RegReferences, align 4
  %13 = call i32 @ARRAYSIZE(i32 %12)
  %14 = call i32 @kkll_m_notify_search(i32 %11, i32 %13, i32* bitcast (i64** @CallbackListHeadOrCmpCallBackVector to i32*), i32* null, %struct.TYPE_7__** @pCmpCallBackOffsets)
  store i32 %14, i32* %3, align 4
  br label %15

15:                                               ; preds = %10, %1
  %16 = load i64*, i64** @CallbackListHeadOrCmpCallBackVector, align 8
  %17 = icmp ne i64* %16, null
  br i1 %17, label %18, label %103

18:                                               ; preds = %15
  %19 = load i64, i64* @KiwiOsIndex, align 8
  %20 = load i64, i64* @KiwiOsIndex_VISTA, align 8
  %21 = icmp slt i64 %19, %20
  br i1 %21, label %22, label %60

22:                                               ; preds = %18
  store i64 0, i64* %6, align 8
  br label %23

23:                                               ; preds = %56, %22
  %24 = load i32, i32* %3, align 4
  %25 = call i64 @NT_SUCCESS(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* @CM_REG_MAX_CALLBACKS, align 8
  %30 = icmp ult i64 %28, %29
  br label %31

31:                                               ; preds = %27, %23
  %32 = phi i1 [ false, %23 ], [ %30, %27 ]
  br i1 %32, label %33, label %59

33:                                               ; preds = %31
  %34 = load i64*, i64** @CallbackListHeadOrCmpCallBackVector, align 8
  %35 = load i64, i64* %6, align 8
  %36 = getelementptr inbounds i64, i64* %34, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = call i64 @KIWI_mask3bits(i64 %37)
  %39 = inttoptr i64 %38 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %39, %struct.TYPE_6__** %4, align 8
  %40 = icmp ne %struct.TYPE_6__* %39, null
  br i1 %40, label %41, label %55

41:                                               ; preds = %33
  %42 = load i32, i32* %2, align 4
  %43 = load i64, i64* %6, align 8
  %44 = call i32 @kprintf(i32 %42, i8* bitcast ([8 x i32]* @.str to i8*), i64 %43)
  store i32 %44, i32* %3, align 4
  %45 = load i32, i32* %3, align 4
  %46 = call i64 @NT_SUCCESS(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %41
  %49 = load i32, i32* %2, align 4
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @kkll_m_modules_fromAddr(i32 %49, i32 %52)
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %48, %41
  br label %55

55:                                               ; preds = %54, %33
  br label %56

56:                                               ; preds = %55
  %57 = load i64, i64* %6, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %6, align 8
  br label %23

59:                                               ; preds = %31
  br label %102

60:                                               ; preds = %18
  %61 = load i64*, i64** @CallbackListHeadOrCmpCallBackVector, align 8
  %62 = load i64, i64* %61, align 8
  %63 = inttoptr i64 %62 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %63, %struct.TYPE_5__** %5, align 8
  store i64 0, i64* %6, align 8
  br label %64

64:                                               ; preds = %94, %60
  %65 = load i32, i32* %3, align 4
  %66 = call i64 @NT_SUCCESS(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %64
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %70 = load i64*, i64** @CallbackListHeadOrCmpCallBackVector, align 8
  %71 = bitcast i64* %70 to %struct.TYPE_5__*
  %72 = icmp ne %struct.TYPE_5__* %69, %71
  br label %73

73:                                               ; preds = %68, %64
  %74 = phi i1 [ false, %64 ], [ %72, %68 ]
  br i1 %74, label %75, label %101

75:                                               ; preds = %73
  %76 = load i32, i32* %2, align 4
  %77 = load i64, i64* %6, align 8
  %78 = call i32 @kprintf(i32 %76, i8* bitcast ([8 x i32]* @.str to i8*), i64 %77)
  store i32 %78, i32* %3, align 4
  %79 = load i32, i32* %3, align 4
  %80 = call i64 @NT_SUCCESS(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %93

82:                                               ; preds = %75
  %83 = load i32, i32* %2, align 4
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %85 = ptrtoint %struct.TYPE_5__* %84 to i64
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** @pCmpCallBackOffsets, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = add nsw i64 %85, %88
  %90 = inttoptr i64 %89 to i32*
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @kkll_m_modules_fromAddr(i32 %83, i32 %91)
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %82, %75
  br label %94

94:                                               ; preds = %93
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = inttoptr i64 %97 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %98, %struct.TYPE_5__** %5, align 8
  %99 = load i64, i64* %6, align 8
  %100 = add i64 %99, 1
  store i64 %100, i64* %6, align 8
  br label %64

101:                                              ; preds = %73
  br label %102

102:                                              ; preds = %101, %59
  br label %103

103:                                              ; preds = %102, %15
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i32 @kkll_m_notify_search(i32, i32, i32*, i32*, %struct.TYPE_7__**) #1

declare dso_local i32 @ARRAYSIZE(i32) #1

declare dso_local i64 @NT_SUCCESS(i32) #1

declare dso_local i64 @KIWI_mask3bits(i64) #1

declare dso_local i32 @kprintf(i32, i8*, i64) #1

declare dso_local i32 @kkll_m_modules_fromAddr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
