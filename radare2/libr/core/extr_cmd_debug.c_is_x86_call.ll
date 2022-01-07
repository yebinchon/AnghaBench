; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_cmd_debug.c_is_x86_call.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_cmd_debug.c_is_x86_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 (i32, i32, i32*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32)* @is_x86_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_x86_call(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [3 x i32], align 4
  %7 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  store i32* %8, i32** %7, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = load i32 (i32, i32, i32*, i32)*, i32 (i32, i32, i32*, i32)** %11, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %19 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %20 = call i32 @R_ARRAY_SIZE(i32* %19)
  %21 = call i32 %12(i32 %16, i32 %17, i32* %18, i32 %20)
  %22 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %27 [
    i32 101, label %24
    i32 100, label %24
    i32 38, label %24
    i32 62, label %24
    i32 54, label %24
    i32 46, label %24
  ]

24:                                               ; preds = %2, %2, %2, %2, %2, %2
  %25 = load i32*, i32** %7, align 8
  %26 = getelementptr inbounds i32, i32* %25, i32 1
  store i32* %26, i32** %7, align 8
  br label %27

27:                                               ; preds = %24, %2
  %28 = load i32*, i32** %7, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 232
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i32 1, i32* %3, align 4
  br label %46

33:                                               ; preds = %27
  %34 = load i32*, i32** %7, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 255
  br i1 %37, label %38, label %45

38:                                               ; preds = %33
  %39 = load i32*, i32** %7, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, 48
  %43 = icmp eq i32 %42, 16
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  store i32 1, i32* %3, align 4
  br label %46

45:                                               ; preds = %38, %33
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %45, %44, %32
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @R_ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
