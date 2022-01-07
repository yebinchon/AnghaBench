; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_agraph.c_graphNodeMove.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_agraph.c_graphNodeMove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }

@discroll = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"so %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32, i32)* @graphNodeMove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @graphNodeMove(%struct.TYPE_5__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp eq i32 %10, 107
  %12 = zext i1 %11 to i64
  %13 = select i1 %11, i32 -1, i32 1
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp eq i32 %14, 72
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %69

17:                                               ; preds = %3
  %18 = load i32, i32* %5, align 4
  %19 = icmp eq i32 %18, 104
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* %5, align 4
  %22 = icmp eq i32 %21, 108
  br i1 %22, label %23, label %39

23:                                               ; preds = %20, %17
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %25 = call i64 @is_mini(%struct.TYPE_5__* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i64 0, i64* @discroll, align 8
  br label %38

28:                                               ; preds = %23
  %29 = load i32, i32* %5, align 4
  %30 = icmp eq i32 %29, 108
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i32 1, i32 -1
  store i32 %32, i32* %8, align 4
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %8, align 4
  %36 = mul nsw i32 %34, %35
  %37 = call i32 @move_current_node(%struct.TYPE_5__* %33, i32 %36, i32 0)
  br label %38

38:                                               ; preds = %28, %27
  br label %69

39:                                               ; preds = %20
  store i32* null, i32** %9, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %41 = call i64 @is_mini(%struct.TYPE_5__* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %39
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %6, align 4
  %46 = mul nsw i32 %44, %45
  %47 = sext i32 %46 to i64
  %48 = load i64, i64* @discroll, align 8
  %49 = add nsw i64 %48, %47
  store i64 %49, i64* @discroll, align 8
  br label %69

50:                                               ; preds = %39
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %50
  %56 = load i32*, i32** %9, align 8
  %57 = load i32, i32* %7, align 4
  %58 = mul nsw i32 %57, 4
  %59 = load i32, i32* %6, align 4
  %60 = mul nsw i32 %58, %59
  %61 = call i32 @r_core_cmdf(i32* %56, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %60)
  br label %68

62:                                               ; preds = %50
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* %6, align 4
  %66 = mul nsw i32 %64, %65
  %67 = call i32 @move_current_node(%struct.TYPE_5__* %63, i32 0, i32 %66)
  br label %68

68:                                               ; preds = %62, %55
  br label %69

69:                                               ; preds = %16, %38, %68, %43
  ret void
}

declare dso_local i64 @is_mini(%struct.TYPE_5__*) #1

declare dso_local i32 @move_current_node(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @r_core_cmdf(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
