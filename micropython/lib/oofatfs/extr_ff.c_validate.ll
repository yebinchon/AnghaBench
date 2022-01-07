; ModuleID = '/home/carl/AnghaBench/micropython/lib/oofatfs/extr_ff.c_validate.c'
source_filename = "/home/carl/AnghaBench/micropython/lib/oofatfs/extr_ff.c_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i32, i64 }

@FR_INVALID_OBJECT = common dso_local global i64 0, align 8
@IOCTL_STATUS = common dso_local global i32 0, align 4
@RES_OK = common dso_local global i64 0, align 8
@STA_NOINIT = common dso_local global i32 0, align 4
@FR_OK = common dso_local global i64 0, align 8
@FR_TIMEOUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_7__*, %struct.TYPE_8__**)* @validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @validate(%struct.TYPE_7__* %0, %struct.TYPE_8__** %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_8__**, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store %struct.TYPE_8__** %1, %struct.TYPE_8__*** %4, align 8
  %7 = load i64, i64* @FR_INVALID_OBJECT, align 8
  store i64 %7, i64* %5, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %9 = icmp ne %struct.TYPE_7__* %8, null
  br i1 %9, label %10, label %50

10:                                               ; preds = %2
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %14 = icmp ne %struct.TYPE_8__* %13, null
  br i1 %14, label %15, label %50

15:                                               ; preds = %10
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %50

22:                                               ; preds = %15
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %25, %30
  br i1 %31, label %32, label %50

32:                                               ; preds = %22
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @IOCTL_STATUS, align 4
  %39 = call i64 @disk_ioctl(i32 %37, i32 %38, i32* %6)
  %40 = load i64, i64* @RES_OK, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %32
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @STA_NOINIT, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %42
  %48 = load i64, i64* @FR_OK, align 8
  store i64 %48, i64* %5, align 8
  br label %49

49:                                               ; preds = %47, %42, %32
  br label %50

50:                                               ; preds = %49, %22, %15, %10, %2
  %51 = load i64, i64* %5, align 8
  %52 = load i64, i64* @FR_OK, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  br label %59

58:                                               ; preds = %50
  br label %59

59:                                               ; preds = %58, %54
  %60 = phi %struct.TYPE_8__* [ %57, %54 ], [ null, %58 ]
  %61 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %4, align 8
  store %struct.TYPE_8__* %60, %struct.TYPE_8__** %61, align 8
  %62 = load i64, i64* %5, align 8
  ret i64 %62
}

declare dso_local i64 @disk_ioctl(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
