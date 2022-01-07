; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/network/dwnl/extr_dwnl.c_CBindStatusCallback_UpdateProgress.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/network/dwnl/extr_dwnl.c_CBindStatusCallback_UpdateProgress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@MAX_PATH = common dso_local global i32 0, align 4
@IDS_BYTES_DOWNLOADED_FULL = common dso_local global i32 0, align 4
@IDS_BYTES_DOWNLOADED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @CBindStatusCallback_UpdateProgress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CBindStatusCallback_UpdateProgress(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %6 = load i32, i32* @MAX_PATH, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %3, align 8
  %9 = alloca i32, i64 %7, align 16
  store i64 %7, i64* %4, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %35

14:                                               ; preds = %1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = mul nsw i32 %17, 100
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = sdiv i32 %18, %21
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp sgt i32 %23, 99
  br i1 %24, label %25, label %26

25:                                               ; preds = %14
  store i32 99, i32* %5, align 4
  br label %26

26:                                               ; preds = %25, %14
  %27 = load i32, i32* @IDS_BYTES_DOWNLOADED_FULL, align 4
  %28 = call i32 @ARRAYSIZE(i32* %9)
  %29 = call i32 @LoadStringW(i32* null, i32 %27, i32* %9, i32 %28)
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 (i32*, i32, ...) @write_status(i32* %9, i32 %30, i32 %33)
  br label %43

35:                                               ; preds = %1
  %36 = load i32, i32* @IDS_BYTES_DOWNLOADED, align 4
  %37 = call i32 @ARRAYSIZE(i32* %9)
  %38 = call i32 @LoadStringW(i32* null, i32 %36, i32* %9, i32 %37)
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 (i32*, i32, ...) @write_status(i32* %9, i32 %41)
  br label %43

43:                                               ; preds = %35, %26
  %44 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %44)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @LoadStringW(i32*, i32, i32*, i32) #2

declare dso_local i32 @ARRAYSIZE(i32*) #2

declare dso_local i32 @write_status(i32*, i32, ...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
