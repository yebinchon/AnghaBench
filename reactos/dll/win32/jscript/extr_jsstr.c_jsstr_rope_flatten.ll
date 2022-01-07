; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_jsstr.c_jsstr_rope_flatten.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_jsstr.c_jsstr_rope_flatten.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__, %struct.TYPE_9__*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i64* }

@JSSTR_FLAG_FLAT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64* @jsstr_rope_flatten(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i64*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i64*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %7 = call i64 @jsstr_length(%struct.TYPE_9__* %6)
  %8 = add i64 %7, 1
  %9 = mul i64 %8, 8
  %10 = trunc i64 %9 to i32
  %11 = call i64* @heap_alloc(i32 %10)
  store i64* %11, i64** %4, align 8
  %12 = load i64*, i64** %4, align 8
  %13 = icmp ne i64* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store i64* null, i64** %2, align 8
  br label %55

15:                                               ; preds = %1
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %19 = load i64*, i64** %4, align 8
  %20 = call i32 @jsstr_flush(%struct.TYPE_9__* %18, i64* %19)
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %24 = load i64*, i64** %4, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 2
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %26, align 8
  %28 = call i64 @jsstr_length(%struct.TYPE_9__* %27)
  %29 = getelementptr inbounds i64, i64* %24, i64 %28
  %30 = call i32 @jsstr_flush(%struct.TYPE_9__* %23, i64* %29)
  %31 = load i64*, i64** %4, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = call i64 @jsstr_length(%struct.TYPE_9__* %33)
  %35 = getelementptr inbounds i64, i64* %31, i64 %34
  store i64 0, i64* %35, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 2
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %37, align 8
  %39 = call i32 @jsstr_release(%struct.TYPE_9__* %38)
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %41, align 8
  %43 = call i32 @jsstr_release(%struct.TYPE_9__* %42)
  %44 = load i32, i32* @JSSTR_FLAG_FLAT, align 4
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = or i32 %48, %44
  store i32 %49, i32* %47, align 8
  %50 = load i64*, i64** %4, align 8
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = call %struct.TYPE_10__* @jsstr_as_heap(%struct.TYPE_9__* %52)
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  store i64* %50, i64** %54, align 8
  store i64* %50, i64** %2, align 8
  br label %55

55:                                               ; preds = %15, %14
  %56 = load i64*, i64** %2, align 8
  ret i64* %56
}

declare dso_local i64* @heap_alloc(i32) #1

declare dso_local i64 @jsstr_length(%struct.TYPE_9__*) #1

declare dso_local i32 @jsstr_flush(%struct.TYPE_9__*, i64*) #1

declare dso_local i32 @jsstr_release(%struct.TYPE_9__*) #1

declare dso_local %struct.TYPE_10__* @jsstr_as_heap(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
