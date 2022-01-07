; ModuleID = '/home/carl/AnghaBench/micropython/lib/oofatfs/extr_ff.c_dir_clear.c'
source_filename = "/home/carl/AnghaBench/micropython/lib/oofatfs/extr_ff.c_dir_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32* }

@FR_OK = common dso_local global i64 0, align 8
@FR_DISK_ERR = common dso_local global i64 0, align 8
@RES_OK = common dso_local global i64 0, align 8
@MAX_MALLOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_6__*, i32)* @dir_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @dir_clear(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %11 = call i64 @sync_window(%struct.TYPE_6__* %10)
  %12 = load i64, i64* @FR_OK, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i64, i64* @FR_DISK_ERR, align 8
  store i64 %15, i64* %3, align 8
  br label %67

16:                                               ; preds = %2
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @clst2sect(%struct.TYPE_6__* %17, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 3
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @mem_set(i32* %25, i32 0, i32 8)
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 3
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %9, align 8
  store i32 1, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %30

30:                                               ; preds = %51, %16
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %48

36:                                               ; preds = %30
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load i32*, i32** %9, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 %41, %42
  %44 = load i32, i32* %8, align 4
  %45 = call i64 @disk_write(i32 %39, i32* %40, i32 %43, i32 %44)
  %46 = load i64, i64* @RES_OK, align 8
  %47 = icmp eq i64 %45, %46
  br label %48

48:                                               ; preds = %36, %30
  %49 = phi i1 [ false, %30 ], [ %47, %36 ]
  br i1 %49, label %50, label %55

50:                                               ; preds = %48
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, %52
  store i32 %54, i32* %7, align 4
  br label %30

55:                                               ; preds = %48
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp eq i32 %56, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %55
  %62 = load i64, i64* @FR_OK, align 8
  br label %65

63:                                               ; preds = %55
  %64 = load i64, i64* @FR_DISK_ERR, align 8
  br label %65

65:                                               ; preds = %63, %61
  %66 = phi i64 [ %62, %61 ], [ %64, %63 ]
  store i64 %66, i64* %3, align 8
  br label %67

67:                                               ; preds = %65, %14
  %68 = load i64, i64* %3, align 8
  ret i64 %68
}

declare dso_local i64 @sync_window(%struct.TYPE_6__*) #1

declare dso_local i32 @clst2sect(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @mem_set(i32*, i32, i32) #1

declare dso_local i64 @disk_write(i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
