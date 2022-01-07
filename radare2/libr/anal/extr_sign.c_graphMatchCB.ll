; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/extr_sign.c_graphMatchCB.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/extr_sign.c_graphMatchCB.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.ctxFcnMatchCB = type { i64, i32 (%struct.TYPE_6__*, i32, i32)*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i8*)* @graphMatchCB to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @graphMatchCB(%struct.TYPE_6__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ctxFcnMatchCB*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.ctxFcnMatchCB*
  store %struct.ctxFcnMatchCB* %9, %struct.ctxFcnMatchCB** %6, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  store %struct.TYPE_7__* %12, %struct.TYPE_7__** %7, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %14 = icmp ne %struct.TYPE_7__* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %51

16:                                               ; preds = %2
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.ctxFcnMatchCB*, %struct.ctxFcnMatchCB** %6, align 8
  %21 = getelementptr inbounds %struct.ctxFcnMatchCB, %struct.ctxFcnMatchCB* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp slt i64 %19, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  store i32 1, i32* %3, align 4
  br label %51

25:                                               ; preds = %16
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %27 = load %struct.ctxFcnMatchCB*, %struct.ctxFcnMatchCB** %6, align 8
  %28 = getelementptr inbounds %struct.ctxFcnMatchCB, %struct.ctxFcnMatchCB* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @fcnMetricsCmp(%struct.TYPE_6__* %26, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %25
  store i32 1, i32* %3, align 4
  br label %51

33:                                               ; preds = %25
  %34 = load %struct.ctxFcnMatchCB*, %struct.ctxFcnMatchCB** %6, align 8
  %35 = getelementptr inbounds %struct.ctxFcnMatchCB, %struct.ctxFcnMatchCB* %34, i32 0, i32 1
  %36 = load i32 (%struct.TYPE_6__*, i32, i32)*, i32 (%struct.TYPE_6__*, i32, i32)** %35, align 8
  %37 = icmp ne i32 (%struct.TYPE_6__*, i32, i32)* %36, null
  br i1 %37, label %38, label %50

38:                                               ; preds = %33
  %39 = load %struct.ctxFcnMatchCB*, %struct.ctxFcnMatchCB** %6, align 8
  %40 = getelementptr inbounds %struct.ctxFcnMatchCB, %struct.ctxFcnMatchCB* %39, i32 0, i32 1
  %41 = load i32 (%struct.TYPE_6__*, i32, i32)*, i32 (%struct.TYPE_6__*, i32, i32)** %40, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %43 = load %struct.ctxFcnMatchCB*, %struct.ctxFcnMatchCB** %6, align 8
  %44 = getelementptr inbounds %struct.ctxFcnMatchCB, %struct.ctxFcnMatchCB* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ctxFcnMatchCB*, %struct.ctxFcnMatchCB** %6, align 8
  %47 = getelementptr inbounds %struct.ctxFcnMatchCB, %struct.ctxFcnMatchCB* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i32 %41(%struct.TYPE_6__* %42, i32 %45, i32 %48)
  store i32 %49, i32* %3, align 4
  br label %51

50:                                               ; preds = %33
  store i32 1, i32* %3, align 4
  br label %51

51:                                               ; preds = %50, %38, %32, %24, %15
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @fcnMetricsCmp(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
