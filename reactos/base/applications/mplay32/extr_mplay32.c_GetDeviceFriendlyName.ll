; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mplay32/extr_mplay32.c_GetDeviceFriendlyName.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mplay32/extr_mplay32.c_GetDeviceFriendlyName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32*, i32*, i8*, i64 }
%struct.TYPE_5__ = type { i64, i8*, i64 }
%struct.TYPE_6__ = type { i64 }

@MCI_OPEN = common dso_local global i32 0, align 4
@MCI_OPEN_TYPE = common dso_local global i32 0, align 4
@MCI_WAIT = common dso_local global i32 0, align 4
@MCI_INFO = common dso_local global i32 0, align 4
@MCI_INFO_PRODUCT = common dso_local global i32 0, align 4
@MCI_CLOSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i8*, i64)* @GetDeviceFriendlyName to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @GetDeviceFriendlyName(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_4__, align 8
  %10 = alloca %struct.TYPE_5__, align 8
  %11 = alloca %struct.TYPE_6__, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 4
  store i64 0, i64* %12, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store i64 0, i64* %13, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 3
  store i8* %14, i8** %15, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 2
  store i32* null, i32** %16, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  store i32* null, i32** %17, align 8
  %18 = load i32, i32* @MCI_OPEN, align 4
  %19 = load i32, i32* @MCI_OPEN_TYPE, align 4
  %20 = load i32, i32* @MCI_WAIT, align 4
  %21 = or i32 %19, %20
  %22 = ptrtoint %struct.TYPE_4__* %9 to i32
  %23 = call i64 @mciSendCommand(i64 0, i32 %18, i32 %21, i32 %22)
  store i64 %23, i64* %8, align 8
  %24 = load i64, i64* %8, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = load i64, i64* %8, align 8
  store i64 %27, i64* %4, align 8
  br label %48

28:                                               ; preds = %3
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 2
  store i64 0, i64* %29, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  store i8* %30, i8** %31, align 8
  %32 = load i64, i64* %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  store i64 %32, i64* %33, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* @MCI_INFO, align 4
  %37 = load i32, i32* @MCI_INFO_PRODUCT, align 4
  %38 = ptrtoint %struct.TYPE_5__* %10 to i32
  %39 = call i64 @mciSendCommand(i64 %35, i32 %36, i32 %37, i32 %38)
  store i64 %39, i64* %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  store i64 0, i64* %40, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i32, i32* @MCI_CLOSE, align 4
  %44 = load i32, i32* @MCI_WAIT, align 4
  %45 = ptrtoint %struct.TYPE_6__* %11 to i32
  %46 = call i64 @mciSendCommand(i64 %42, i32 %43, i32 %44, i32 %45)
  %47 = load i64, i64* %8, align 8
  store i64 %47, i64* %4, align 8
  br label %48

48:                                               ; preds = %28, %26
  %49 = load i64, i64* %4, align 8
  ret i64 %49
}

declare dso_local i64 @mciSendCommand(i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
