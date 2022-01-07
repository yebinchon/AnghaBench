; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/lua/extr_ldo.c_luaD_throw.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/lua/extr_ldo.c_luaD_throw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_12__ = type { i32 (%struct.TYPE_13__*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @luaD_throw(%struct.TYPE_13__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %6 = call i32 @unfixedstack(%struct.TYPE_13__* %5)
  %7 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %8 = call i32 @unset_block_gc(%struct.TYPE_13__* %7)
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %12 = icmp ne %struct.TYPE_14__* %11, null
  br i1 %12, label %13, label %24

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  store i32 %14, i32* %18, align 4
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  %23 = call i32 @LUAI_THROW(%struct.TYPE_13__* %19, %struct.TYPE_14__* %22)
  br label %47

24:                                               ; preds = %2
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @cast_byte(i32 %25)
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %30 = call %struct.TYPE_12__* @G(%struct.TYPE_13__* %29)
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = load i32 (%struct.TYPE_13__*)*, i32 (%struct.TYPE_13__*)** %31, align 8
  %33 = icmp ne i32 (%struct.TYPE_13__*)* %32, null
  br i1 %33, label %34, label %46

34:                                               ; preds = %24
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @resetstack(%struct.TYPE_13__* %35, i32 %36)
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %39 = call i32 @lua_unlock(%struct.TYPE_13__* %38)
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %41 = call %struct.TYPE_12__* @G(%struct.TYPE_13__* %40)
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = load i32 (%struct.TYPE_13__*)*, i32 (%struct.TYPE_13__*)** %42, align 8
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %45 = call i32 %43(%struct.TYPE_13__* %44)
  br label %46

46:                                               ; preds = %34, %24
  br label %47

47:                                               ; preds = %46, %13
  ret void
}

declare dso_local i32 @unfixedstack(%struct.TYPE_13__*) #1

declare dso_local i32 @unset_block_gc(%struct.TYPE_13__*) #1

declare dso_local i32 @LUAI_THROW(%struct.TYPE_13__*, %struct.TYPE_14__*) #1

declare dso_local i32 @cast_byte(i32) #1

declare dso_local %struct.TYPE_12__* @G(%struct.TYPE_13__*) #1

declare dso_local i32 @resetstack(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @lua_unlock(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
