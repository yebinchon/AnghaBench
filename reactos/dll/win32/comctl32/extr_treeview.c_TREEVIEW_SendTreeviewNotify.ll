; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_treeview.c_TREEVIEW_SendTreeviewNotify.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_treeview.c_TREEVIEW_SendTreeviewNotify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_12__, %struct.TYPE_12__, i32, %struct.TYPE_9__, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_9__ = type { i64, i64 }

@.str = private unnamed_addr constant [43 x i8] c"code:%d action:0x%x olditem:%p newitem:%p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32, i32, i32, i32, i32)* @TREEVIEW_SendTreeviewNotify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TREEVIEW_SendTreeviewNotify(%struct.TYPE_10__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_11__, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* %11, align 4
  %18 = load i32, i32* %12, align 4
  %19 = call i32 @TRACE(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %16, i32 %17, i32 %18)
  %20 = call i32 @memset(%struct.TYPE_11__* %13, i32 0, i32 40)
  %21 = load i32, i32* %9, align 4
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 4
  store i32 %21, i32* %22, align 8
  %23 = load i32, i32* %11, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %6
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %27 = load i32, i32* %10, align 4
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 1
  %29 = load i32, i32* %11, align 4
  %30 = call i32 @TREEVIEW_TVItemFromItem(%struct.TYPE_10__* %26, i32 %27, %struct.TYPE_12__* %28, i32 %29)
  br label %31

31:                                               ; preds = %25, %6
  %32 = load i32, i32* %12, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %31
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %36 = load i32, i32* %10, align 4
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %38 = load i32, i32* %12, align 4
  %39 = call i32 @TREEVIEW_TVItemFromItem(%struct.TYPE_10__* %35, i32 %36, %struct.TYPE_12__* %37, i32 %38)
  br label %40

40:                                               ; preds = %34, %31
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 1
  store i64 0, i64* %42, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  store i64 0, i64* %44, align 8
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %46 = load i32, i32* %8, align 4
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 2
  %48 = call i32 @TREEVIEW_SendRealNotify(%struct.TYPE_10__* %45, i32 %46, i32* %47)
  store i32 %48, i32* %14, align 4
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %62, label %53

53:                                               ; preds = %40
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @heap_free(i32 %56)
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @heap_free(i32 %60)
  br label %62

62:                                               ; preds = %53, %40
  %63 = load i32, i32* %14, align 4
  ret i32 %63
}

declare dso_local i32 @TRACE(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @TREEVIEW_TVItemFromItem(%struct.TYPE_10__*, i32, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @TREEVIEW_SendRealNotify(%struct.TYPE_10__*, i32, i32*) #1

declare dso_local i32 @heap_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
