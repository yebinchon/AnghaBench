; ModuleID = '/home/carl/AnghaBench/linux/tools/virtio/extr_vringh_test.c_vringh_get_head.c'
source_filename = "/home/carl/AnghaBench/linux/tools/virtio/extr_vringh_test.c_vringh_get_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vringh = type { i64, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vringh*, i64*)* @vringh_get_head to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vringh_get_head(%struct.vringh* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vringh*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.vringh* %0, %struct.vringh** %4, align 8
  store i64* %1, i64** %5, align 8
  %9 = load i64, i64* %6, align 8
  %10 = load %struct.vringh*, %struct.vringh** %4, align 8
  %11 = getelementptr inbounds %struct.vringh, %struct.vringh* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = call i32 @get_user(i64 %9, i32* %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* %3, align 4
  br label %62

20:                                               ; preds = %2
  %21 = load %struct.vringh*, %struct.vringh** %4, align 8
  %22 = getelementptr inbounds %struct.vringh, %struct.vringh* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %6, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %62

27:                                               ; preds = %20
  %28 = load %struct.vringh*, %struct.vringh** %4, align 8
  %29 = getelementptr inbounds %struct.vringh, %struct.vringh* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @virtio_rmb(i32 %30)
  %32 = load %struct.vringh*, %struct.vringh** %4, align 8
  %33 = getelementptr inbounds %struct.vringh, %struct.vringh* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.vringh*, %struct.vringh** %4, align 8
  %36 = getelementptr inbounds %struct.vringh, %struct.vringh* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sub nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = and i64 %34, %40
  store i64 %41, i64* %7, align 8
  %42 = load i64*, i64** %5, align 8
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.vringh*, %struct.vringh** %4, align 8
  %45 = getelementptr inbounds %struct.vringh, %struct.vringh* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i64, i64* %7, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  %52 = call i32 @get_user(i64 %43, i32* %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %27
  %56 = load i32, i32* %8, align 4
  store i32 %56, i32* %3, align 4
  br label %62

57:                                               ; preds = %27
  %58 = load %struct.vringh*, %struct.vringh** %4, align 8
  %59 = getelementptr inbounds %struct.vringh, %struct.vringh* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %60, 1
  store i64 %61, i64* %59, align 8
  store i32 1, i32* %3, align 4
  br label %62

62:                                               ; preds = %57, %55, %26, %18
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @get_user(i64, i32*) #1

declare dso_local i32 @virtio_rmb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
