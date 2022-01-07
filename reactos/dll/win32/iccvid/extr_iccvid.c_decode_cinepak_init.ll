; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/iccvid/extr_iccvid.c_decode_cinepak_init.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/iccvid/extr_iccvid.c_decode_cinepak_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@uiclp = common dso_local global i32* null, align 8
@uiclip = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_4__* ()* @decode_cinepak_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_4__* @decode_cinepak_init() #0 {
  %1 = alloca %struct.TYPE_4__*, align 8
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  %4 = call %struct.TYPE_4__* @heap_alloc(i32 8)
  store %struct.TYPE_4__* %4, %struct.TYPE_4__** %2, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %6 = icmp ne %struct.TYPE_4__* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %1, align 8
  br label %43

8:                                                ; preds = %0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store i64 0, i64* %10, align 8
  %11 = load i32*, i32** @uiclp, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %41

13:                                               ; preds = %8
  %14 = load i32*, i32** @uiclip, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 512
  store i32* %15, i32** @uiclp, align 8
  store i32 -512, i32* %3, align 4
  br label %16

16:                                               ; preds = %37, %13
  %17 = load i32, i32* %3, align 4
  %18 = icmp slt i32 %17, 512
  br i1 %18, label %19, label %40

19:                                               ; preds = %16
  %20 = load i32, i32* %3, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  br label %31

23:                                               ; preds = %19
  %24 = load i32, i32* %3, align 4
  %25 = icmp sgt i32 %24, 255
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  br label %29

27:                                               ; preds = %23
  %28 = load i32, i32* %3, align 4
  br label %29

29:                                               ; preds = %27, %26
  %30 = phi i32 [ 255, %26 ], [ %28, %27 ]
  br label %31

31:                                               ; preds = %29, %22
  %32 = phi i32 [ 0, %22 ], [ %30, %29 ]
  %33 = load i32*, i32** @uiclp, align 8
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  store i32 %32, i32* %36, align 4
  br label %37

37:                                               ; preds = %31
  %38 = load i32, i32* %3, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %3, align 4
  br label %16

40:                                               ; preds = %16
  br label %41

41:                                               ; preds = %40, %8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  store %struct.TYPE_4__* %42, %struct.TYPE_4__** %1, align 8
  br label %43

43:                                               ; preds = %41, %7
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  ret %struct.TYPE_4__* %44
}

declare dso_local %struct.TYPE_4__* @heap_alloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
