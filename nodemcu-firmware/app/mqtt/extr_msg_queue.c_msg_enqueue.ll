; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/mqtt/extr_msg_queue.c_msg_enqueue.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/mqtt/extr_msg_queue.c_msg_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_9__*, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32* }
%struct.TYPE_10__ = type { i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"empty message\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"not enough memory\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @msg_enqueue(%struct.TYPE_9__** %0, %struct.TYPE_10__* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_9__**, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_9__** %0, %struct.TYPE_9__*** %7, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %7, align 8
  %15 = icmp ne %struct.TYPE_9__** %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %5
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %6, align 8
  br label %109

17:                                               ; preds = %5
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %19 = icmp ne %struct.TYPE_10__* %18, null
  br i1 %19, label %20, label %30

20:                                               ; preds = %17
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25, %20, %17
  %31 = call i32 @NODE_DBG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %6, align 8
  br label %109

32:                                               ; preds = %25
  %33 = call i64 @calloc(i32 1, i32 40)
  %34 = inttoptr i64 %33 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %34, %struct.TYPE_9__** %12, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %36 = icmp ne %struct.TYPE_9__* %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %32
  %38 = call i32 @NODE_DBG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %6, align 8
  br label %109

39:                                               ; preds = %32
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @calloc(i32 1, i32 %42)
  %44 = inttoptr i64 %43 to i32*
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 4
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  store i32* %44, i32** %47, align 8
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 4
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %57, label %53

53:                                               ; preds = %39
  %54 = call i32 @NODE_DBG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %56 = call i32 @free(%struct.TYPE_9__* %55)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %6, align 8
  br label %109

57:                                               ; preds = %39
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 4
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @memcpy(i32* %61, i32 %64, i32 %67)
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 4
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  store i32 %71, i32* %74, align 8
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 2
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %76, align 8
  %77 = load i32, i32* %9, align 4
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 3
  store i32 %77, i32* %79, align 8
  %80 = load i32, i32* %10, align 4
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  %83 = load i32, i32* %11, align 4
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  %86 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %7, align 8
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %86, align 8
  store %struct.TYPE_9__* %87, %struct.TYPE_9__** %13, align 8
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %89 = icmp ne %struct.TYPE_9__* %88, null
  br i1 %89, label %90, label %104

90:                                               ; preds = %57
  br label %91

91:                                               ; preds = %96, %90
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 2
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %93, align 8
  %95 = icmp ne %struct.TYPE_9__* %94, null
  br i1 %95, label %96, label %100

96:                                               ; preds = %91
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 2
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %98, align 8
  store %struct.TYPE_9__* %99, %struct.TYPE_9__** %13, align 8
  br label %91

100:                                              ; preds = %91
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 2
  store %struct.TYPE_9__* %101, %struct.TYPE_9__** %103, align 8
  br label %107

104:                                              ; preds = %57
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %106 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %7, align 8
  store %struct.TYPE_9__* %105, %struct.TYPE_9__** %106, align 8
  br label %107

107:                                              ; preds = %104, %100
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  store %struct.TYPE_9__* %108, %struct.TYPE_9__** %6, align 8
  br label %109

109:                                              ; preds = %107, %53, %37, %30, %16
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  ret %struct.TYPE_9__* %110
}

declare dso_local i32 @NODE_DBG(i8*) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @free(%struct.TYPE_9__*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
