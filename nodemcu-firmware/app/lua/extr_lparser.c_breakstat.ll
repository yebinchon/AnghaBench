; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/lua/extr_lparser.c_breakstat.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/lua/extr_lparser.c_breakstat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32, i32, %struct.TYPE_11__*, i32 }

@.str = private unnamed_addr constant [17 x i8] c"no loop to break\00", align 1
@OP_CLOSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*)* @breakstat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @breakstat(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  store %struct.TYPE_10__* %8, %struct.TYPE_10__** %3, align 8
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  store %struct.TYPE_11__* %11, %struct.TYPE_11__** %4, align 8
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %23, %1
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %14 = icmp ne %struct.TYPE_11__* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %12
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  br label %21

21:                                               ; preds = %15, %12
  %22 = phi i1 [ false, %12 ], [ %20, %15 ]
  br i1 %22, label %23, label %32

23:                                               ; preds = %21
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %5, align 4
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 3
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %30, align 8
  store %struct.TYPE_11__* %31, %struct.TYPE_11__** %4, align 8
  br label %12

32:                                               ; preds = %21
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %34 = icmp ne %struct.TYPE_11__* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %37 = call i32 @luaX_syntaxerror(%struct.TYPE_9__* %36, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %38

38:                                               ; preds = %35, %32
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %38
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %43 = load i32, i32* @OP_CLOSE, align 4
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @luaK_codeABC(%struct.TYPE_10__* %42, i32 %43, i32 %46, i32 0, i32 0)
  br label %48

48:                                               ; preds = %41, %38
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %53 = call i32 @luaK_jump(%struct.TYPE_10__* %52)
  %54 = call i32 @luaK_concat(%struct.TYPE_10__* %49, i32* %51, i32 %53)
  ret void
}

declare dso_local i32 @luaX_syntaxerror(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @luaK_codeABC(%struct.TYPE_10__*, i32, i32, i32, i32) #1

declare dso_local i32 @luaK_concat(%struct.TYPE_10__*, i32*, i32) #1

declare dso_local i32 @luaK_jump(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
