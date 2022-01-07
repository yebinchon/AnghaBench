; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/extr_sign.c_foreachCB.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/extr_sign.c_foreachCB.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctxForeachCB = type { i32, i32 (%struct.TYPE_8__*, i32)*, %struct.TYPE_9__* }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"error: cannot deserialize zign\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @foreachCB to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @foreachCB(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ctxForeachCB*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.ctxForeachCB*
  store %struct.ctxForeachCB* %13, %struct.ctxForeachCB** %7, align 8
  %14 = call %struct.TYPE_8__* (...) @r_sign_item_new()
  store %struct.TYPE_8__* %14, %struct.TYPE_8__** %8, align 8
  %15 = load %struct.ctxForeachCB*, %struct.ctxForeachCB** %7, align 8
  %16 = getelementptr inbounds %struct.ctxForeachCB, %struct.ctxForeachCB* %15, i32 0, i32 2
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  store %struct.TYPE_9__* %17, %struct.TYPE_9__** %9, align 8
  store i32 1, i32* %10, align 4
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = call i64 @r_sign_deserialize(%struct.TYPE_9__* %18, %struct.TYPE_8__* %19, i8* %20, i8* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %48

24:                                               ; preds = %3
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = call i32* @r_spaces_current(i32* %26)
  store i32* %27, i32** %11, align 8
  %28 = load %struct.ctxForeachCB*, %struct.ctxForeachCB** %7, align 8
  %29 = getelementptr inbounds %struct.ctxForeachCB, %struct.ctxForeachCB* %28, i32 0, i32 1
  %30 = load i32 (%struct.TYPE_8__*, i32)*, i32 (%struct.TYPE_8__*, i32)** %29, align 8
  %31 = icmp ne i32 (%struct.TYPE_8__*, i32)* %30, null
  br i1 %31, label %32, label %47

32:                                               ; preds = %24
  %33 = load i32*, i32** %11, align 8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = icmp eq i32* %33, %36
  br i1 %37, label %38, label %47

38:                                               ; preds = %32
  %39 = load %struct.ctxForeachCB*, %struct.ctxForeachCB** %7, align 8
  %40 = getelementptr inbounds %struct.ctxForeachCB, %struct.ctxForeachCB* %39, i32 0, i32 1
  %41 = load i32 (%struct.TYPE_8__*, i32)*, i32 (%struct.TYPE_8__*, i32)** %40, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %43 = load %struct.ctxForeachCB*, %struct.ctxForeachCB** %7, align 8
  %44 = getelementptr inbounds %struct.ctxForeachCB, %struct.ctxForeachCB* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 %41(%struct.TYPE_8__* %42, i32 %45)
  br label %47

47:                                               ; preds = %38, %32, %24
  br label %50

48:                                               ; preds = %3
  %49 = call i32 @eprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %47
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %52 = call i32 @r_sign_item_free(%struct.TYPE_8__* %51)
  %53 = load i32, i32* %10, align 4
  ret i32 %53
}

declare dso_local %struct.TYPE_8__* @r_sign_item_new(...) #1

declare dso_local i64 @r_sign_deserialize(%struct.TYPE_9__*, %struct.TYPE_8__*, i8*, i8*) #1

declare dso_local i32* @r_spaces_current(i32*) #1

declare dso_local i32 @eprintf(i8*) #1

declare dso_local i32 @r_sign_item_free(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
