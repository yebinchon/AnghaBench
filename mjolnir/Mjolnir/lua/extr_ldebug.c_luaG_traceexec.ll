; ModuleID = '/home/carl/AnghaBench/mjolnir/Mjolnir/lua/extr_ldebug.c_luaG_traceexec.c'
source_filename = "/home/carl/AnghaBench/mjolnir/Mjolnir/lua/extr_ldebug.c_luaG_traceexec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i64, i64, i64, i64, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i64, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_15__ = type { i32* }

@LUA_MASKCOUNT = common dso_local global i32 0, align 4
@LUA_MASKLINE = common dso_local global i32 0, align 4
@CIST_HOOKYIELD = common dso_local global i32 0, align 4
@LUA_HOOKCOUNT = common dso_local global i32 0, align 4
@LUA_HOOKLINE = common dso_local global i32 0, align 4
@LUA_YIELD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @luaG_traceexec(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 5
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  store %struct.TYPE_14__* %11, %struct.TYPE_14__** %3, align 8
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %4, align 4
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %17, -1
  store i64 %18, i64* %16, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %1
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @LUA_MASKCOUNT, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br label %25

25:                                               ; preds = %20, %1
  %26 = phi i1 [ false, %1 ], [ %24, %20 ]
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %32 = call i32 @resethookcount(%struct.TYPE_13__* %31)
  br label %40

33:                                               ; preds = %25
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @LUA_MASKLINE, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %33
  br label %149

39:                                               ; preds = %33
  br label %40

40:                                               ; preds = %39, %30
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @CIST_HOOKYIELD, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %40
  %48 = load i32, i32* @CIST_HOOKYIELD, align 4
  %49 = xor i32 %48, -1
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = and i32 %52, %49
  store i32 %53, i32* %51, align 8
  br label %149

54:                                               ; preds = %40
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %59 = load i32, i32* @LUA_HOOKCOUNT, align 4
  %60 = call i32 @luaD_hook(%struct.TYPE_13__* %58, i32 %59, i32 -1)
  br label %61

61:                                               ; preds = %57, %54
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* @LUA_MASKLINE, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %109

66:                                               ; preds = %61
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %68 = call %struct.TYPE_15__* @ci_func(%struct.TYPE_14__* %67)
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  store i32* %70, i32** %6, align 8
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i32*, i32** %6, align 8
  %77 = call i32 @pcRel(i64 %75, i32* %76)
  store i32 %77, i32* %7, align 4
  %78 = load i32*, i32** %6, align 8
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @getfuncline(i32* %78, i32 %79)
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %7, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %103, label %83

83:                                               ; preds = %66
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = icmp sle i64 %88, %91
  br i1 %92, label %103, label %93

93:                                               ; preds = %83
  %94 = load i32, i32* %8, align 4
  %95 = load i32*, i32** %6, align 8
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = load i32*, i32** %6, align 8
  %100 = call i32 @pcRel(i64 %98, i32* %99)
  %101 = call i32 @getfuncline(i32* %95, i32 %100)
  %102 = icmp ne i32 %94, %101
  br i1 %102, label %103, label %108

103:                                              ; preds = %93, %83, %66
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %105 = load i32, i32* @LUA_HOOKLINE, align 4
  %106 = load i32, i32* %8, align 4
  %107 = call i32 @luaD_hook(%struct.TYPE_13__* %104, i32 %105, i32 %106)
  br label %108

108:                                              ; preds = %103, %93
  br label %109

109:                                              ; preds = %108, %61
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 2
  store i64 %114, i64* %116, align 8
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 3
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @LUA_YIELD, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %149

122:                                              ; preds = %109
  %123 = load i32, i32* %5, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %122
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 1
  store i64 1, i64* %127, align 8
  br label %128

128:                                              ; preds = %125, %122
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = add nsw i64 %133, -1
  store i64 %134, i64* %132, align 8
  %135 = load i32, i32* @CIST_HOOKYIELD, align 4
  %136 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = or i32 %138, %135
  store i32 %139, i32* %137, align 8
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 4
  %142 = load i64, i64* %141, align 8
  %143 = sub nsw i64 %142, 1
  %144 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 1
  store i64 %143, i64* %145, align 8
  %146 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %147 = load i64, i64* @LUA_YIELD, align 8
  %148 = call i32 @luaD_throw(%struct.TYPE_13__* %146, i64 %147)
  br label %149

149:                                              ; preds = %38, %47, %128, %109
  ret void
}

declare dso_local i32 @resethookcount(%struct.TYPE_13__*) #1

declare dso_local i32 @luaD_hook(%struct.TYPE_13__*, i32, i32) #1

declare dso_local %struct.TYPE_15__* @ci_func(%struct.TYPE_14__*) #1

declare dso_local i32 @pcRel(i64, i32*) #1

declare dso_local i32 @getfuncline(i32*, i32) #1

declare dso_local i32 @luaD_throw(%struct.TYPE_13__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
