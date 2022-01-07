; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_drm_common.c_get_connector_by_name.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_drm_common.c_get_connector_by_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kms = type { i32 }
%struct.TYPE_3__ = type { i32, i32* }

@MAX_CONNECTOR_NAME_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.kms*, %struct.TYPE_3__*, i8*)* @get_connector_by_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_connector_by_name(%struct.kms* %0, %struct.TYPE_3__* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.kms*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.kms* %0, %struct.kms** %5, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %53, %3
  %14 = load i32, i32* %8, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %56

19:                                               ; preds = %13
  %20 = load %struct.kms*, %struct.kms** %5, align 8
  %21 = getelementptr inbounds %struct.kms, %struct.kms* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = call i32* @drmModeGetConnector(i32 %22, i32 %29)
  store i32* %30, i32** %9, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %19
  br label %53

34:                                               ; preds = %19
  %35 = load i32, i32* @MAX_CONNECTOR_NAME_LEN, align 4
  %36 = zext i32 %35 to i64
  %37 = call i8* @llvm.stacksave()
  store i8* %37, i8** %10, align 8
  %38 = alloca i8, i64 %36, align 16
  store i64 %36, i64* %11, align 8
  %39 = load i32*, i32** %9, align 8
  %40 = call i32 @get_connector_name(i32* %39, i8* %38)
  %41 = load i8*, i8** %7, align 8
  %42 = call i32 @strcmp(i8* %41, i8* %38)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %34
  %45 = load i32*, i32** %9, align 8
  store i32* %45, i32** %4, align 8
  store i32 1, i32* %12, align 4
  br label %49

46:                                               ; preds = %34
  %47 = load i32*, i32** %9, align 8
  %48 = call i32 @drmModeFreeConnector(i32* %47)
  store i32 0, i32* %12, align 4
  br label %49

49:                                               ; preds = %46, %44
  %50 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %50)
  %51 = load i32, i32* %12, align 4
  switch i32 %51, label %59 [
    i32 0, label %52
    i32 1, label %57
  ]

52:                                               ; preds = %49
  br label %53

53:                                               ; preds = %52, %33
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %8, align 4
  br label %13

56:                                               ; preds = %13
  store i32* null, i32** %4, align 8
  br label %57

57:                                               ; preds = %56, %49
  %58 = load i32*, i32** %4, align 8
  ret i32* %58

59:                                               ; preds = %49
  unreachable
}

declare dso_local i32* @drmModeGetConnector(i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @get_connector_name(i32*, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @drmModeFreeConnector(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
