; ModuleID = '/home/carl/AnghaBench/mjolnir/Mjolnir/lua/extr_lstring.c_luaS_remove.c'
source_filename = "/home/carl/AnghaBench/mjolnir/Mjolnir/lua/extr_lstring.c_luaS_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_8__* }
%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_8__** }
%struct.TYPE_9__ = type { %struct.TYPE_7__ }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @luaS_remove(i32* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_8__**, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call %struct.TYPE_9__* @G(i32* %7)
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  store %struct.TYPE_7__* %9, %struct.TYPE_7__** %5, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 2
  %12 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %11, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @lmod(i32 %15, i32 %18)
  %20 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %12, i64 %19
  store %struct.TYPE_8__** %20, %struct.TYPE_8__*** %6, align 8
  br label %21

21:                                               ; preds = %26, %2
  %22 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %6, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %25 = icmp ne %struct.TYPE_8__* %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %6, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  store %struct.TYPE_8__** %30, %struct.TYPE_8__*** %6, align 8
  br label %21

31:                                               ; preds = %21
  %32 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %6, align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %6, align 8
  store %struct.TYPE_8__* %36, %struct.TYPE_8__** %37, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %39, align 8
  ret void
}

declare dso_local %struct.TYPE_9__* @G(i32*) #1

declare dso_local i64 @lmod(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
