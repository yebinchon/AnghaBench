; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_orders.c_process_secondary_order.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_orders.c_process_secondary_order.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32* }

@False = common dso_local global i32 0, align 4
@True = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"secondary order %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*)* @process_secondary_order to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_secondary_order(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %8 = load i64, i64* %3, align 8
  %9 = call i32 @in_uint16_le(%struct.TYPE_11__* %7, i64 %8)
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %11 = load i64, i64* %4, align 8
  %12 = call i32 @in_uint16_le(%struct.TYPE_11__* %10, i64 %11)
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @in_uint8(%struct.TYPE_11__* %13, i32 %14)
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i64, i64* %3, align 8
  %20 = trunc i64 %19 to i32
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %18, i64 %21
  %23 = getelementptr inbounds i32, i32* %22, i64 7
  store i32* %23, i32** %6, align 8
  %24 = load i32, i32* %5, align 4
  switch i32 %24, label %51 [
    i32 129, label %25
    i32 131, label %28
    i32 134, label %31
    i32 130, label %34
    i32 128, label %37
    i32 133, label %42
    i32 132, label %47
  ]

25:                                               ; preds = %1
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %27 = call i32 @process_raw_bmpcache(%struct.TYPE_11__* %26)
  br label %54

28:                                               ; preds = %1
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %30 = call i32 @process_colcache(%struct.TYPE_11__* %29)
  br label %54

31:                                               ; preds = %1
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %33 = call i32 @process_bmpcache(%struct.TYPE_11__* %32)
  br label %54

34:                                               ; preds = %1
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %36 = call i32 @process_fontcache(%struct.TYPE_11__* %35)
  br label %54

37:                                               ; preds = %1
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %39 = load i64, i64* %4, align 8
  %40 = load i32, i32* @False, align 4
  %41 = call i32 @process_bmpcache2(%struct.TYPE_11__* %38, i64 %39, i32 %40)
  br label %54

42:                                               ; preds = %1
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %44 = load i64, i64* %4, align 8
  %45 = load i32, i32* @True, align 4
  %46 = call i32 @process_bmpcache2(%struct.TYPE_11__* %43, i64 %44, i32 %45)
  br label %54

47:                                               ; preds = %1
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %49 = load i64, i64* %4, align 8
  %50 = call i32 @process_brushcache(%struct.TYPE_11__* %48, i64 %49)
  br label %54

51:                                               ; preds = %1
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @unimpl(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %51, %47, %42, %37, %34, %31, %28, %25
  %55 = load i32*, i32** %6, align 8
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  store i32* %55, i32** %57, align 8
  ret void
}

declare dso_local i32 @in_uint16_le(%struct.TYPE_11__*, i64) #1

declare dso_local i32 @in_uint8(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @process_raw_bmpcache(%struct.TYPE_11__*) #1

declare dso_local i32 @process_colcache(%struct.TYPE_11__*) #1

declare dso_local i32 @process_bmpcache(%struct.TYPE_11__*) #1

declare dso_local i32 @process_fontcache(%struct.TYPE_11__*) #1

declare dso_local i32 @process_bmpcache2(%struct.TYPE_11__*, i64, i32) #1

declare dso_local i32 @process_brushcache(%struct.TYPE_11__*, i64) #1

declare dso_local i32 @unimpl(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
