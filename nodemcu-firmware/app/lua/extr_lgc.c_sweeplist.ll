; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/lua/extr_lgc.c_sweeplist.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/lua/extr_lgc.c_sweeplist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, i32, %struct.TYPE_10__* }
%struct.TYPE_12__ = type { i32 }

@LUA_TTHREAD = common dso_local global i64 0, align 8
@WHITEBITS = common dso_local global i32 0, align 4
@FIXEDBIT = common dso_local global i32 0, align 4
@SFIXEDBIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_10__** (i32*, %struct.TYPE_10__**, i32)* @sweeplist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_10__** @sweeplist(i32* %0, %struct.TYPE_10__** %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_10__**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_10__** %1, %struct.TYPE_10__*** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32*, i32** %4, align 8
  %11 = call i32* @G(i32* %10)
  store i32* %11, i32** %8, align 8
  %12 = load i32*, i32** %8, align 8
  %13 = call i32 @otherwhite(i32* %12)
  store i32 %13, i32* %9, align 4
  br label %14

14:                                               ; preds = %107, %3
  %15 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %5, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  store %struct.TYPE_10__* %16, %struct.TYPE_10__** %7, align 8
  %17 = icmp ne %struct.TYPE_10__* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load i32, i32* %6, align 4
  %20 = add nsw i32 %19, -1
  store i32 %20, i32* %6, align 4
  %21 = icmp sgt i32 %19, 0
  br label %22

22:                                               ; preds = %18, %14
  %23 = phi i1 [ false, %14 ], [ %21, %18 ]
  br i1 %23, label %24, label %108

24:                                               ; preds = %22
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = call i32 @isLFSobject(%struct.TYPE_11__* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %24
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @LUA_TTHREAD, align 8
  %35 = icmp eq i64 %33, %34
  br label %36

36:                                               ; preds = %29, %24
  %37 = phi i1 [ true, %24 ], [ %35, %29 ]
  %38 = zext i1 %37 to i32
  %39 = call i32 @lua_assert(i32 %38)
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @LUA_TTHREAD, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %36
  %47 = load i32*, i32** %4, align 8
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %49 = call %struct.TYPE_12__* @gco2th(%struct.TYPE_10__* %48)
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = call i32 @sweepwholelist(i32* %47, i32* %50)
  br label %52

52:                                               ; preds = %46, %36
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @WHITEBITS, align 4
  %58 = xor i32 %56, %57
  %59 = load i32, i32* %9, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %85

62:                                               ; preds = %52
  %63 = load i32*, i32** %8, align 8
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %65 = call i64 @isdead(i32* %63, %struct.TYPE_10__* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %62
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @FIXEDBIT, align 4
  %73 = call i64 @testbit(i32 %71, i32 %72)
  %74 = icmp ne i64 %73, 0
  br label %75

75:                                               ; preds = %67, %62
  %76 = phi i1 [ true, %62 ], [ %74, %67 ]
  %77 = zext i1 %76 to i32
  %78 = call i32 @lua_assert(i32 %77)
  %79 = load i32*, i32** %8, align 8
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %81 = call i32 @makewhite(i32* %79, %struct.TYPE_10__* %80)
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 2
  store %struct.TYPE_10__** %84, %struct.TYPE_10__*** %5, align 8
  br label %107

85:                                               ; preds = %52
  %86 = load i32*, i32** %8, align 8
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %88 = call i64 @isdead(i32* %86, %struct.TYPE_10__* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %95, label %90

90:                                               ; preds = %85
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* @SFIXEDBIT, align 4
  %93 = call i32 @bitmask(i32 %92)
  %94 = icmp eq i32 %91, %93
  br label %95

95:                                               ; preds = %90, %85
  %96 = phi i1 [ true, %85 ], [ %94, %90 ]
  %97 = zext i1 %96 to i32
  %98 = call i32 @lua_assert(i32 %97)
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 2
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %101, align 8
  %103 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %5, align 8
  store %struct.TYPE_10__* %102, %struct.TYPE_10__** %103, align 8
  %104 = load i32*, i32** %4, align 8
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %106 = call i32 @freeobj(i32* %104, %struct.TYPE_10__* %105)
  br label %107

107:                                              ; preds = %95, %75
  br label %14

108:                                              ; preds = %22
  %109 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %5, align 8
  ret %struct.TYPE_10__** %109
}

declare dso_local i32* @G(i32*) #1

declare dso_local i32 @otherwhite(i32*) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i32 @isLFSobject(%struct.TYPE_11__*) #1

declare dso_local i32 @sweepwholelist(i32*, i32*) #1

declare dso_local %struct.TYPE_12__* @gco2th(%struct.TYPE_10__*) #1

declare dso_local i64 @isdead(i32*, %struct.TYPE_10__*) #1

declare dso_local i64 @testbit(i32, i32) #1

declare dso_local i32 @makewhite(i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @bitmask(i32) #1

declare dso_local i32 @freeobj(i32*, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
