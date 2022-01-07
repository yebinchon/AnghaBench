; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/inetcpl/extr_security.c_update_zone_info.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/inetcpl/extr_security.c_update_zone_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32* }

@MAX_PATH = common dso_local global i32 0, align 4
@IDC_SEC_ZONE_INFO = common dso_local global i32 0, align 4
@hcpl = common dso_local global i32 0, align 4
@IDS_SEC_SETTINGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"new title: %s\0A\00", align 1
@IDC_SEC_GROUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i64)* @update_zone_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_zone_info(%struct.TYPE_5__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 2
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = load i64, i64* %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i64 %12
  store %struct.TYPE_6__* %13, %struct.TYPE_6__** %5, align 8
  %14 = load i32, i32* @MAX_PATH, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %6, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %7, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @IDC_SEC_ZONE_INFO, align 4
  %22 = call i32 @GetDlgItem(i32 %20, i32 %21)
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @SetWindowTextW(i32 %22, i32* %25)
  %27 = load i32, i32* @hcpl, align 4
  %28 = load i32, i32* @IDS_SEC_SETTINGS, align 4
  %29 = call i64 @ARRAY_SIZE(i32* %17)
  %30 = call i64 @LoadStringW(i32 %27, i32 %28, i32* %17, i64 %29)
  store i64 %30, i64* %8, align 8
  %31 = load i64, i64* %8, align 8
  %32 = getelementptr inbounds i32, i32* %17, i64 %31
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @ARRAY_SIZE(i32* %17)
  %37 = load i64, i64* %8, align 8
  %38 = sub i64 %36, %37
  %39 = sub i64 %38, 1
  %40 = call i32 @lstrcpynW(i32* %32, i32 %35, i64 %39)
  %41 = call i32 @debugstr_w(i32* %17)
  %42 = call i32 @TRACE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @IDC_SEC_GROUP, align 4
  %47 = call i32 @GetDlgItem(i32 %45, i32 %46)
  %48 = call i32 @SetWindowTextW(i32 %47, i32* %17)
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %50 = load i64, i64* %4, align 8
  %51 = call i32 @update_security_level(%struct.TYPE_5__* %49, i64 %50, i32 0)
  %52 = load i64, i64* %4, align 8
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  %55 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %55)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @SetWindowTextW(i32, i32*) #2

declare dso_local i32 @GetDlgItem(i32, i32) #2

declare dso_local i64 @LoadStringW(i32, i32, i32*, i64) #2

declare dso_local i64 @ARRAY_SIZE(i32*) #2

declare dso_local i32 @lstrcpynW(i32*, i32, i64) #2

declare dso_local i32 @TRACE(i8*, i32) #2

declare dso_local i32 @debugstr_w(i32*) #2

declare dso_local i32 @update_security_level(%struct.TYPE_5__*, i64, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
