; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/usrmgr/extr_groups.c_UpdateGroupsList.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/usrmgr/extr_groups.c_UpdateGroupsList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i64, i64, i32 }

@NERR_Success = common dso_local global i32 0, align 4
@ERROR_MORE_DATA = common dso_local global i32 0, align 4
@LVIF_TEXT = common dso_local global i32 0, align 4
@LVIF_STATE = common dso_local global i32 0, align 4
@LVIF_IMAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @UpdateGroupsList to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @UpdateGroupsList(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_7__, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %8, align 4
  br label %12

12:                                               ; preds = %64, %1
  %13 = bitcast %struct.TYPE_6__** %5 to i32*
  %14 = call i32 @NetLocalGroupEnum(i32* null, i32 1, i32* %13, i32 1024, i64* %6, i64* %7, i32* %8)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @NERR_Success, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %12
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @ERROR_MORE_DATA, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  br label %65

23:                                               ; preds = %18, %12
  store i64 0, i64* %9, align 8
  br label %24

24:                                               ; preds = %54, %23
  %25 = load i64, i64* %9, align 8
  %26 = load i64, i64* %6, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %28, label %57

28:                                               ; preds = %24
  %29 = call i32 @memset(%struct.TYPE_7__* %10, i32 0, i32 32)
  %30 = load i32, i32* @LVIF_TEXT, align 4
  %31 = load i32, i32* @LVIF_STATE, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @LVIF_IMAGE, align 4
  %34 = or i32 %32, %33
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  store i32 %34, i32* %35, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %37 = load i64, i64* %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 3
  store i32 %40, i32* %41, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 2
  store i64 0, i64* %42, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  store i64 0, i64* %43, align 8
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @ListView_InsertItem(i32 %44, %struct.TYPE_7__* %10)
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* %11, align 4
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %49 = load i64, i64* %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @ListView_SetItemText(i32 %46, i32 %47, i32 1, i32 %52)
  br label %54

54:                                               ; preds = %28
  %55 = load i64, i64* %9, align 8
  %56 = add i64 %55, 1
  store i64 %56, i64* %9, align 8
  br label %24

57:                                               ; preds = %24
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %59 = call i32 @NetApiBufferFree(%struct.TYPE_6__* %58)
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @ERROR_MORE_DATA, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  br label %65

64:                                               ; preds = %57
  br label %12

65:                                               ; preds = %63, %22
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @NetLocalGroupEnum(i32*, i32, i32*, i32, i64*, i64*, i32*) #1

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @ListView_InsertItem(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @ListView_SetItemText(i32, i32, i32, i32) #1

declare dso_local i32 @NetApiBufferFree(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
