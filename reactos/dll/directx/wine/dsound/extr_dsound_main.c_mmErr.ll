; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/dsound/extr_dsound_main.c_mmErr.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/dsound/extr_dsound_main.c_mmErr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DS_OK = common dso_local global i32 0, align 4
@DSERR_ALLOCATED = common dso_local global i32 0, align 4
@DSERR_GENERIC = common dso_local global i32 0, align 4
@DSERR_NODRIVER = common dso_local global i32 0, align 4
@DSERR_OUTOFMEMORY = common dso_local global i32 0, align 4
@DSERR_INVALIDPARAM = common dso_local global i32 0, align 4
@DSERR_UNSUPPORTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Unknown MMSYS error %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mmErr(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %19 [
    i32 133, label %5
    i32 138, label %7
    i32 137, label %9
    i32 136, label %9
    i32 129, label %9
    i32 134, label %11
    i32 132, label %13
    i32 135, label %15
    i32 130, label %15
    i32 128, label %15
    i32 131, label %17
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @DS_OK, align 4
  store i32 %6, i32* %2, align 4
  br label %23

7:                                                ; preds = %1
  %8 = load i32, i32* @DSERR_ALLOCATED, align 4
  store i32 %8, i32* %2, align 4
  br label %23

9:                                                ; preds = %1, %1, %1
  %10 = load i32, i32* @DSERR_GENERIC, align 4
  store i32 %10, i32* %2, align 4
  br label %23

11:                                               ; preds = %1
  %12 = load i32, i32* @DSERR_NODRIVER, align 4
  store i32 %12, i32* %2, align 4
  br label %23

13:                                               ; preds = %1
  %14 = load i32, i32* @DSERR_OUTOFMEMORY, align 4
  store i32 %14, i32* %2, align 4
  br label %23

15:                                               ; preds = %1, %1, %1
  %16 = load i32, i32* @DSERR_INVALIDPARAM, align 4
  store i32 %16, i32* %2, align 4
  br label %23

17:                                               ; preds = %1
  %18 = load i32, i32* @DSERR_UNSUPPORTED, align 4
  store i32 %18, i32* %2, align 4
  br label %23

19:                                               ; preds = %1
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @FIXME(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* @DSERR_GENERIC, align 4
  store i32 %22, i32* %2, align 4
  br label %23

23:                                               ; preds = %19, %17, %15, %13, %11, %9, %7, %5
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i32 @FIXME(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
