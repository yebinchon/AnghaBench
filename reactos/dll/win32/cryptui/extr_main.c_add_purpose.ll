; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/cryptui/extr_main.c_add_purpose.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/cryptui/extr_main.c_add_purpose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8* }
%struct.TYPE_5__ = type { i32, i8*, i64, i64, i32, i32, i32 }

@IDC_CERTIFICATE_USAGES = common dso_local global i32 0, align 4
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@LVIF_TEXT = common dso_local global i32 0, align 4
@LVIF_STATE = common dso_local global i32 0, align 4
@LVIF_PARAM = common dso_local global i32 0, align 4
@CheckBitmapIndexChecked = common dso_local global i32 0, align 4
@LVIS_STATEIMAGEMASK = common dso_local global i32 0, align 4
@LVM_GETITEMCOUNT = common dso_local global i32 0, align 4
@LVM_INSERTITEMA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @add_purpose to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_purpose(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_5__, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @IDC_CERTIFICATE_USAGES, align 4
  %11 = call i32 @GetDlgItem(i32 %9, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = call i32 (...) @GetProcessHeap()
  %13 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %14 = call i8* @HeapAlloc(i32 %12, i32 %13, i32 4)
  %15 = bitcast i8* %14 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %15, %struct.TYPE_4__** %6, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %17 = icmp ne %struct.TYPE_4__* %16, null
  br i1 %17, label %18, label %65

18:                                               ; preds = %2
  %19 = call i32 (...) @GetProcessHeap()
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @strlen(i32 %20)
  %22 = add nsw i32 %21, 1
  %23 = call i8* @HeapAlloc(i32 %19, i32 0, i32 %22)
  store i8* %23, i8** %7, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %60

26:                                               ; preds = %18
  %27 = load i8*, i8** %7, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @strcpy(i8* %27, i32 %28)
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  store i32 4, i32* %31, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  store i8* %32, i8** %34, align 8
  %35 = load i32, i32* @LVIF_TEXT, align 4
  %36 = load i32, i32* @LVIF_STATE, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @LVIF_PARAM, align 4
  %39 = or i32 %37, %38
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  store i32 %39, i32* %40, align 8
  %41 = load i32, i32* @CheckBitmapIndexChecked, align 4
  %42 = call i32 @INDEXTOSTATEIMAGEMASK(i32 %41)
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 6
  store i32 %42, i32* %43, align 8
  %44 = load i32, i32* @LVIS_STATEIMAGEMASK, align 4
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 5
  store i32 %44, i32* %45, align 4
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @LVM_GETITEMCOUNT, align 4
  %48 = call i32 @SendMessageW(i32 %46, i32 %47, i32 0, i32 0)
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 4
  store i32 %48, i32* %49, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 3
  store i64 0, i64* %50, align 8
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %52 = ptrtoint %struct.TYPE_4__* %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 2
  store i64 %52, i64* %53, align 8
  %54 = load i8*, i8** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  store i8* %54, i8** %55, align 8
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @LVM_INSERTITEMA, align 4
  %58 = ptrtoint %struct.TYPE_5__* %8 to i64
  %59 = call i32 @SendMessageA(i32 %56, i32 %57, i32 0, i64 %58)
  br label %64

60:                                               ; preds = %18
  %61 = call i32 (...) @GetProcessHeap()
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %63 = call i32 @HeapFree(i32 %61, i32 0, %struct.TYPE_4__* %62)
  br label %64

64:                                               ; preds = %60, %26
  br label %65

65:                                               ; preds = %64, %2
  ret void
}

declare dso_local i32 @GetDlgItem(i32, i32) #1

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @strcpy(i8*, i32) #1

declare dso_local i32 @INDEXTOSTATEIMAGEMASK(i32) #1

declare dso_local i32 @SendMessageW(i32, i32, i32, i32) #1

declare dso_local i32 @SendMessageA(i32, i32, i32, i64) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
