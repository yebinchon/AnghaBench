; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_mkg3states.c_FillTable.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_mkg3states.c_FillTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.proto = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32, %struct.proto*, i32)* @FillTable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @FillTable(%struct.TYPE_3__* %0, i32 %1, %struct.proto* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.proto*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.proto* %2, %struct.proto** %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load i32, i32* %6, align 4
  %16 = shl i32 1, %15
  store i32 %16, i32* %9, align 4
  br label %17

17:                                               ; preds = %58, %4
  %18 = load %struct.proto*, %struct.proto** %7, align 8
  %19 = getelementptr inbounds %struct.proto, %struct.proto* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %61

22:                                               ; preds = %17
  %23 = load %struct.proto*, %struct.proto** %7, align 8
  %24 = getelementptr inbounds %struct.proto, %struct.proto* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, 15
  store i32 %26, i32* %10, align 4
  %27 = load %struct.proto*, %struct.proto** %7, align 8
  %28 = getelementptr inbounds %struct.proto, %struct.proto* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = ashr i32 %29, 4
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %10, align 4
  %32 = shl i32 1, %31
  store i32 %32, i32* %12, align 4
  %33 = load %struct.proto*, %struct.proto** %7, align 8
  %34 = getelementptr inbounds %struct.proto, %struct.proto* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %13, align 4
  br label %36

36:                                               ; preds = %54, %22
  %37 = load i32, i32* %13, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %58

40:                                               ; preds = %36
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %42 = load i32, i32* %13, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i64 %43
  store %struct.TYPE_3__* %44, %struct.TYPE_3__** %14, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* %11, align 4
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 4
  br label %54

54:                                               ; preds = %40
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* %13, align 4
  %57 = add nsw i32 %56, %55
  store i32 %57, i32* %13, align 4
  br label %36

58:                                               ; preds = %36
  %59 = load %struct.proto*, %struct.proto** %7, align 8
  %60 = getelementptr inbounds %struct.proto, %struct.proto* %59, i32 1
  store %struct.proto* %60, %struct.proto** %7, align 8
  br label %17

61:                                               ; preds = %17
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
