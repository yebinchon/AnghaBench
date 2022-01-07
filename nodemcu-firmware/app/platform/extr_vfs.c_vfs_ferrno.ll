; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/platform/extr_vfs.c_vfs_ferrno.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/platform/extr_vfs.c_vfs_ferrno.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_9__*)* }
%struct.TYPE_8__ = type { i32 (...)* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vfs_ferrno(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = sext i32 %8 to i64
  %10 = inttoptr i64 %9 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %10, %struct.TYPE_9__** %4, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %12 = icmp ne %struct.TYPE_9__* %11, null
  br i1 %12, label %13, label %31

13:                                               ; preds = %1
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32 (%struct.TYPE_9__*)*, i32 (%struct.TYPE_9__*)** %17, align 8
  %19 = icmp ne i32 (%struct.TYPE_9__*)* %18, null
  br i1 %19, label %20, label %28

20:                                               ; preds = %13
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32 (%struct.TYPE_9__*)*, i32 (%struct.TYPE_9__*)** %24, align 8
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %27 = call i32 %25(%struct.TYPE_9__* %26)
  br label %29

28:                                               ; preds = %13
  br label %29

29:                                               ; preds = %28, %20
  %30 = phi i32 [ %27, %20 ], [ 0, %28 ]
  store i32 %30, i32* %2, align 4
  br label %32

31:                                               ; preds = %1
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  br label %32

32:                                               ; preds = %29, %31
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
