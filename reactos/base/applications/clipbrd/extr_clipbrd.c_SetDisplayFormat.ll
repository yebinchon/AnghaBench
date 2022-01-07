; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/clipbrd/extr_clipbrd.c_SetDisplayFormat.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/clipbrd/extr_clipbrd.c_SetDisplayFormat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64, i64, i32 }
%struct.TYPE_7__ = type { i64, i64, i64, i64 }
%struct.TYPE_6__ = type { i32, i32 }

@Globals = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@MF_BYCOMMAND = common dso_local global i32 0, align 4
@MF_UNCHECKED = common dso_local global i32 0, align 4
@CMD_AUTOMATIC = common dso_local global i64 0, align 8
@MF_CHECKED = common dso_local global i32 0, align 4
@Scrollstate = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @SetDisplayFormat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SetDisplayFormat(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_6__, align 4
  store i64 %0, i64* %2, align 8
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @Globals, i32 0, i32 3), align 8
  %5 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @Globals, i32 0, i32 2), align 8
  %6 = load i32, i32* @MF_BYCOMMAND, align 4
  %7 = load i32, i32* @MF_UNCHECKED, align 4
  %8 = or i32 %6, %7
  %9 = call i32 @CheckMenuItem(i32 %4, i64 %5, i32 %8)
  %10 = load i64, i64* %2, align 8
  %11 = load i64, i64* @CMD_AUTOMATIC, align 8
  %12 = add nsw i64 %10, %11
  store i64 %12, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @Globals, i32 0, i32 2), align 8
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @Globals, i32 0, i32 3), align 8
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @Globals, i32 0, i32 2), align 8
  %15 = load i32, i32* @MF_BYCOMMAND, align 4
  %16 = load i32, i32* @MF_CHECKED, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @CheckMenuItem(i32 %13, i64 %14, i32 %17)
  %19 = load i64, i64* %2, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = call i64 (...) @GetAutomaticClipboardFormat()
  store i64 %22, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @Globals, i32 0, i32 1), align 8
  br label %25

23:                                               ; preds = %1
  %24 = load i64, i64* %2, align 8
  store i64 %24, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @Globals, i32 0, i32 1), align 8
  br label %25

25:                                               ; preds = %23, %21
  %26 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @Globals, i32 0, i32 1), align 8
  %27 = call i32 @GetClipboardDataDimensions(i64 %26, %struct.TYPE_6__* %3)
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Scrollstate, i32 0, i32 2), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Scrollstate, i32 0, i32 3), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Scrollstate, i32 0, i32 0), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Scrollstate, i32 0, i32 1), align 8
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @Globals, i32 0, i32 0), align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @UpdateWindowScrollState(i32 %28, i32 %30, i32 %32, %struct.TYPE_7__* @Scrollstate)
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @Globals, i32 0, i32 0), align 8
  %35 = load i32, i32* @TRUE, align 4
  %36 = call i32 @InvalidateRect(i32 %34, i32* null, i32 %35)
  ret void
}

declare dso_local i32 @CheckMenuItem(i32, i64, i32) #1

declare dso_local i64 @GetAutomaticClipboardFormat(...) #1

declare dso_local i32 @GetClipboardDataDimensions(i64, %struct.TYPE_6__*) #1

declare dso_local i32 @UpdateWindowScrollState(i32, i32, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @InvalidateRect(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
