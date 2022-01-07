; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/hhctrl.ocx/extr_content.c_fill_content_tree.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/hhctrl.ocx/extr_content.c_fill_content_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_6__*, %struct.TYPE_6__*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_6__*, %struct.TYPE_6__*)* @fill_content_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_content_tree(i32 %0, %struct.TYPE_6__* %1, %struct.TYPE_6__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %6, align 8
  br label %7

7:                                                ; preds = %31, %3
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %9 = icmp ne %struct.TYPE_6__* %8, null
  br i1 %9, label %10, label %35

10:                                               ; preds = %7
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %10
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %19 = call i32 @insert_content_item(i32 %16, %struct.TYPE_6__* %17, %struct.TYPE_6__* %18)
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  call void @fill_content_tree(i32 %20, %struct.TYPE_6__* %21, %struct.TYPE_6__* %24)
  br label %31

25:                                               ; preds = %10
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  call void @fill_content_tree(i32 %26, %struct.TYPE_6__* %27, %struct.TYPE_6__* %30)
  br label %31

31:                                               ; preds = %25, %15
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  store %struct.TYPE_6__* %34, %struct.TYPE_6__** %6, align 8
  br label %7

35:                                               ; preds = %7
  ret void
}

declare dso_local i32 @insert_content_item(i32, %struct.TYPE_6__*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
