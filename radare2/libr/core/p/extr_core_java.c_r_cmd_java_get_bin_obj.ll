; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/p/extr_core_java.c_r_cmd_java_get_bin_obj.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/p/extr_core_java.c_r_cmd_java_get_bin_obj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32*, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"java\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_13__*)* @r_cmd_java_get_bin_obj to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @r_cmd_java_get_bin_obj(%struct.TYPE_13__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  %7 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %8 = icmp ne %struct.TYPE_13__* %7, null
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %14 = icmp ne %struct.TYPE_12__* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %9, %1
  store i32* null, i32** %2, align 8
  br label %66

16:                                               ; preds = %9
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  store %struct.TYPE_12__* %20, %struct.TYPE_12__** %4, align 8
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %24 = icmp ne %struct.TYPE_9__* %23, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %16
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = icmp ne %struct.TYPE_8__* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %25, %16
  store i32* null, i32** %2, align 8
  br label %66

33:                                               ; preds = %25
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %39, align 8
  store %struct.TYPE_11__* %40, %struct.TYPE_11__** %6, align 8
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %42 = icmp ne %struct.TYPE_11__* %41, null
  br i1 %42, label %43, label %49

43:                                               ; preds = %33
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @strcmp(i32 %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %48 = icmp eq i64 %47, 0
  br label %49

49:                                               ; preds = %43, %33
  %50 = phi i1 [ false, %33 ], [ %48, %43 ]
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i32 1, i32 0
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %49
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  br label %64

63:                                               ; preds = %49
  br label %64

64:                                               ; preds = %63, %55
  %65 = phi i32* [ %62, %55 ], [ null, %63 ]
  store i32* %65, i32** %2, align 8
  br label %66

66:                                               ; preds = %64, %32, %15
  %67 = load i32*, i32** %2, align 8
  ret i32* %67
}

declare dso_local i64 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
