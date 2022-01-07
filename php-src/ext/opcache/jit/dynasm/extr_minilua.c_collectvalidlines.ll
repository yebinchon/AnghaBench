; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/jit/dynasm/extr_minilua.c_collectvalidlines.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/jit/dynasm/extr_minilua.c_collectvalidlines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_13__, %struct.TYPE_14__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32*, i32 }
%struct.TYPE_14__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*, %struct.TYPE_16__*)* @collectvalidlines to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @collectvalidlines(%struct.TYPE_15__* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %4, align 8
  %8 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %9 = icmp eq %struct.TYPE_16__* %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %2
  %11 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %10, %2
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @setnilvalue(i32 %19)
  br label %59

21:                                               ; preds = %10
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %23 = call i32* @luaH_new(%struct.TYPE_15__* %22, i32 0, i32 0)
  store i32* %23, i32** %5, align 8
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %6, align 8
  store i32 0, i32* %7, align 4
  br label %30

30:                                               ; preds = %49, %21
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %31, %37
  br i1 %38, label %39, label %52

39:                                               ; preds = %30
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %41 = load i32*, i32** %5, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @luaH_setnum(%struct.TYPE_15__* %40, i32* %41, i32 %46)
  %48 = call i32 @setbvalue(i32 %47, i32 1)
  br label %49

49:                                               ; preds = %39
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %7, align 4
  br label %30

52:                                               ; preds = %30
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** %5, align 8
  %58 = call i32 @sethvalue(%struct.TYPE_15__* %53, i32 %56, i32* %57)
  br label %59

59:                                               ; preds = %52, %16
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %61 = call i32 @incr_top(%struct.TYPE_15__* %60)
  ret void
}

declare dso_local i32 @setnilvalue(i32) #1

declare dso_local i32* @luaH_new(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @setbvalue(i32, i32) #1

declare dso_local i32 @luaH_setnum(%struct.TYPE_15__*, i32*, i32) #1

declare dso_local i32 @sethvalue(%struct.TYPE_15__*, i32, i32*) #1

declare dso_local i32 @incr_top(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
