; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/glu32/src/libtess/extr_sweep.c_IsWindingInside.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/glu32/src/libtess/extr_sweep.c_IsWindingInside.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@GL_FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32)* @IsWindingInside to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @IsWindingInside(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %33 [
    i32 129, label %9
    i32 130, label %12
    i32 128, label %16
    i32 131, label %20
    i32 132, label %24
  ]

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  %11 = and i32 %10, 1
  store i32 %11, i32* %3, align 4
  br label %37

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  %15 = zext i1 %14 to i32
  store i32 %15, i32* %3, align 4
  br label %37

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = icmp sgt i32 %17, 0
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %3, align 4
  br label %37

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %21, 0
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %3, align 4
  br label %37

24:                                               ; preds = %2
  %25 = load i32, i32* %5, align 4
  %26 = icmp sge i32 %25, 2
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* %5, align 4
  %29 = icmp sle i32 %28, -2
  br label %30

30:                                               ; preds = %27, %24
  %31 = phi i1 [ true, %24 ], [ %29, %27 ]
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %3, align 4
  br label %37

33:                                               ; preds = %2
  %34 = load i32, i32* @FALSE, align 4
  %35 = call i32 @assert(i32 %34)
  %36 = load i32, i32* @GL_FALSE, align 4
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %33, %30, %20, %16, %12, %9
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
