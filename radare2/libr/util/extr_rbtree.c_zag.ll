; ModuleID = '/home/carl/AnghaBench/radare2/libr/util/extr_rbtree.c_zag.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/util/extr_rbtree.c_zag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_6__** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_6__* (%struct.TYPE_6__*, i32, i32 (%struct.TYPE_6__*)*)* @zag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_6__* @zag(%struct.TYPE_6__* %0, i32 %1, i32 (%struct.TYPE_6__*)* %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32 (%struct.TYPE_6__*)*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 (%struct.TYPE_6__*)* %2, i32 (%struct.TYPE_6__*)** %6, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %10, i64 %12
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  store %struct.TYPE_6__* %14, %struct.TYPE_6__** %7, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %17, i64 %22
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %27, i64 %29
  store %struct.TYPE_6__* %24, %struct.TYPE_6__** %30, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %34, i64 %39
  store %struct.TYPE_6__* %31, %struct.TYPE_6__** %40, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  store i32 1, i32* %42, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  store i32 0, i32* %44, align 8
  %45 = load i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)** %6, align 8
  %46 = icmp ne i32 (%struct.TYPE_6__*)* %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %3
  %48 = load i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)** %6, align 8
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %50 = call i32 %48(%struct.TYPE_6__* %49)
  br label %51

51:                                               ; preds = %47, %3
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  ret %struct.TYPE_6__* %52
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
