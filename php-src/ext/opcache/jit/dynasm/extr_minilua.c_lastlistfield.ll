; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/jit/dynasm/extr_minilua.c_lastlistfield.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/jit/dynasm/extr_minilua.c_lastlistfield.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ConsControl = type { i32, i32, %struct.TYPE_8__*, %struct.TYPE_9__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_9__ = type { i64 }

@VVOID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.ConsControl*)* @lastlistfield to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lastlistfield(i32* %0, %struct.ConsControl* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.ConsControl*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.ConsControl* %1, %struct.ConsControl** %4, align 8
  %5 = load %struct.ConsControl*, %struct.ConsControl** %4, align 8
  %6 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %66

10:                                               ; preds = %2
  %11 = load %struct.ConsControl*, %struct.ConsControl** %4, align 8
  %12 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call i64 @hasmultret(i64 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %38

17:                                               ; preds = %10
  %18 = load i32*, i32** %3, align 8
  %19 = load %struct.ConsControl*, %struct.ConsControl** %4, align 8
  %20 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %19, i32 0, i32 3
  %21 = call i32 @luaK_setmultret(i32* %18, %struct.TYPE_9__* %20)
  %22 = load i32*, i32** %3, align 8
  %23 = load %struct.ConsControl*, %struct.ConsControl** %4, align 8
  %24 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %23, i32 0, i32 2
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.ConsControl*, %struct.ConsControl** %4, align 8
  %31 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @luaK_setlist(i32* %22, i32 %29, i32 %32, i32 -1)
  %34 = load %struct.ConsControl*, %struct.ConsControl** %4, align 8
  %35 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %35, align 4
  br label %66

38:                                               ; preds = %10
  %39 = load %struct.ConsControl*, %struct.ConsControl** %4, align 8
  %40 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @VVOID, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %38
  %46 = load i32*, i32** %3, align 8
  %47 = load %struct.ConsControl*, %struct.ConsControl** %4, align 8
  %48 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %47, i32 0, i32 3
  %49 = call i32 @luaK_exp2nextreg(i32* %46, %struct.TYPE_9__* %48)
  br label %50

50:                                               ; preds = %45, %38
  %51 = load i32*, i32** %3, align 8
  %52 = load %struct.ConsControl*, %struct.ConsControl** %4, align 8
  %53 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %52, i32 0, i32 2
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.ConsControl*, %struct.ConsControl** %4, align 8
  %60 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.ConsControl*, %struct.ConsControl** %4, align 8
  %63 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @luaK_setlist(i32* %51, i32 %58, i32 %61, i32 %64)
  br label %66

66:                                               ; preds = %9, %50, %17
  ret void
}

declare dso_local i64 @hasmultret(i64) #1

declare dso_local i32 @luaK_setmultret(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @luaK_setlist(i32*, i32, i32, i32) #1

declare dso_local i32 @luaK_exp2nextreg(i32*, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
