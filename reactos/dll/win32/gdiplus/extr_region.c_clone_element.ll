; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/gdiplus/extr_region.c_clone_element.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/gdiplus/extr_region.c_clone_element.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_10__*, %struct.TYPE_10__* }

@OutOfMemory = common dso_local global i32 0, align 4
@Ok = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.TYPE_10__**)* @clone_element to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clone_element(%struct.TYPE_10__* %0, %struct.TYPE_10__** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_10__**, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_10__** %1, %struct.TYPE_10__*** %5, align 8
  %7 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %5, align 8
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %9 = icmp ne %struct.TYPE_10__* %8, null
  br i1 %9, label %19, label %10

10:                                               ; preds = %2
  %11 = call %struct.TYPE_10__* @heap_alloc_zero(i32 32)
  %12 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %5, align 8
  store %struct.TYPE_10__* %11, %struct.TYPE_10__** %12, align 8
  %13 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %5, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %15 = icmp ne %struct.TYPE_10__* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %10
  %17 = load i32, i32* @OutOfMemory, align 4
  store i32 %17, i32* %3, align 4
  br label %107

18:                                               ; preds = %10
  br label %19

19:                                               ; preds = %18, %2
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %5, align 8
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  store i32 %22, i32* %25, align 8
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  switch i32 %28, label %57 [
    i32 128, label %29
    i32 131, label %39
    i32 130, label %39
    i32 129, label %41
  ]

29:                                               ; preds = %19
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %5, align 8
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 2
  store i32 %33, i32* %37, align 4
  %38 = load i32, i32* @Ok, align 4
  store i32 %38, i32* %3, align 4
  br label %107

39:                                               ; preds = %19, %19
  %40 = load i32, i32* @Ok, align 4
  store i32 %40, i32* %3, align 4
  br label %107

41:                                               ; preds = %19
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %5, align 8
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 1
  %50 = call i32 @GdipClonePath(i32 %45, i32* %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @Ok, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %41
  %55 = load i32, i32* @Ok, align 4
  store i32 %55, i32* %3, align 4
  br label %107

56:                                               ; preds = %41
  br label %101

57:                                               ; preds = %19
  %58 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %5, align 8
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %62, align 8
  %63 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %5, align 8
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %67, align 8
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %71, align 8
  %73 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %5, align 8
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  %78 = call i32 @clone_element(%struct.TYPE_10__* %72, %struct.TYPE_10__** %77)
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* @Ok, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %100

82:                                               ; preds = %57
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %86, align 8
  %88 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %5, align 8
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = call i32 @clone_element(%struct.TYPE_10__* %87, %struct.TYPE_10__** %92)
  store i32 %93, i32* %6, align 4
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* @Ok, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %82
  %98 = load i32, i32* @Ok, align 4
  store i32 %98, i32* %3, align 4
  br label %107

99:                                               ; preds = %82
  br label %100

100:                                              ; preds = %99, %57
  br label %101

101:                                              ; preds = %100, %56
  %102 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %5, align 8
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %102, align 8
  %104 = call i32 @delete_element(%struct.TYPE_10__* %103)
  %105 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %5, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %105, align 8
  %106 = load i32, i32* %6, align 4
  store i32 %106, i32* %3, align 4
  br label %107

107:                                              ; preds = %101, %97, %54, %39, %29, %16
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local %struct.TYPE_10__* @heap_alloc_zero(i32) #1

declare dso_local i32 @GdipClonePath(i32, i32*) #1

declare dso_local i32 @delete_element(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
