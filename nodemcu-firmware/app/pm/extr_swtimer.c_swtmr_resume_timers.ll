; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/pm/extr_swtimer.c_swtmr_resume_timers.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/pm/extr_swtimer.c_swtmr_resume_timers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, %struct.TYPE_4__* }

@L_REGISTRY = common dso_local global i32 0, align 4
@SUSP_LIST_STR = common dso_local global i32 0, align 4
@FRC2_COUNT_ADDRESS = common dso_local global i32 0, align 4
@timer_list = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @swtmr_resume_timers() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = call i32* (...) @lua_getstate()
  store i32* %6, i32** %1, align 8
  %7 = load i32*, i32** %1, align 8
  %8 = call i32 @push_swtmr_registry_key(i32* %7)
  %9 = load i32*, i32** %1, align 8
  %10 = load i32, i32* @L_REGISTRY, align 4
  %11 = call i32 @lua_rawget(i32* %9, i32 %10)
  %12 = load i32*, i32** %1, align 8
  %13 = load i32, i32* @SUSP_LIST_STR, align 4
  %14 = call i32 @lua_pushstring(i32* %12, i32 %13)
  %15 = load i32*, i32** %1, align 8
  %16 = call i32 @lua_rawget(i32* %15, i32 -2)
  %17 = load i32*, i32** %1, align 8
  %18 = call i32 @lua_istable(i32* %17, i32 -2)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %0
  %21 = load i32*, i32** %1, align 8
  %22 = call i32 @lua_isuserdata(i32* %21, i32 -1)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %20, %0
  %25 = load i32*, i32** %1, align 8
  %26 = call i32 @lua_pop(i32* %25, i32 2)
  br label %117

27:                                               ; preds = %20
  %28 = load i32*, i32** %1, align 8
  %29 = call %struct.TYPE_4__* @lua_touserdata(i32* %28, i32 -1)
  store %struct.TYPE_4__* %29, %struct.TYPE_4__** %2, align 8
  %30 = load i32*, i32** %1, align 8
  %31 = call i32 @lua_pop(i32* %30, i32 1)
  %32 = load i32*, i32** %1, align 8
  %33 = load i32, i32* @SUSP_LIST_STR, align 4
  %34 = call i32 @lua_pushstring(i32* %32, i32 %33)
  %35 = load i32*, i32** %1, align 8
  %36 = call i32 @lua_pushnil(i32* %35)
  %37 = load i32*, i32** %1, align 8
  %38 = call i32 @lua_rawset(i32* %37, i32 -3)
  %39 = load i32*, i32** %1, align 8
  %40 = call i32 @lua_pop(i32* %39, i32 1)
  %41 = load i32, i32* @FRC2_COUNT_ADDRESS, align 4
  %42 = call i64 @RTC_REG_READ(i32 %41)
  store volatile i64 %42, i64* %3, align 8
  br label %43

43:                                               ; preds = %114, %27
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %45 = icmp ne %struct.TYPE_4__* %44, null
  br i1 %45, label %46, label %116

46:                                               ; preds = %43
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** @timer_list, align 8
  store %struct.TYPE_4__* %47, %struct.TYPE_4__** %4, align 8
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  store %struct.TYPE_4__* %50, %struct.TYPE_4__** %5, align 8
  %51 = load volatile i64, i64* %3, align 8
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load volatile i64, i64* %53, align 8
  %55 = add nsw i64 %54, %51
  store volatile i64 %55, i64* %53, align 8
  br label %56

56:                                               ; preds = %110, %46
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %58 = icmp ne %struct.TYPE_4__* %57, null
  br i1 %58, label %59, label %114

59:                                               ; preds = %56
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load volatile i64, i64* %61, align 8
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load volatile i64, i64* %64, align 8
  %66 = icmp sgt i64 %62, %65
  br i1 %66, label %67, label %100

67:                                               ; preds = %59
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = icmp ne %struct.TYPE_4__* %70, null
  br i1 %71, label %72, label %93

72:                                               ; preds = %67
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load volatile i64, i64* %74, align 8
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load volatile i64, i64* %79, align 8
  %81 = icmp slt i64 %75, %80
  br i1 %81, label %82, label %91

82:                                               ; preds = %72
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  store %struct.TYPE_4__* %85, %struct.TYPE_4__** %87, align 8
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  store %struct.TYPE_4__* %88, %struct.TYPE_4__** %90, align 8
  br label %114

91:                                               ; preds = %72
  br label %92

92:                                               ; preds = %91
  br label %99

93:                                               ; preds = %67
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  store %struct.TYPE_4__* %94, %struct.TYPE_4__** %96, align 8
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 1
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %98, align 8
  br label %114

99:                                               ; preds = %92
  br label %110

100:                                              ; preds = %59
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** @timer_list, align 8
  %103 = icmp eq %struct.TYPE_4__* %101, %102
  br i1 %103, label %104, label %109

104:                                              ; preds = %100
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 1
  store %struct.TYPE_4__* %105, %struct.TYPE_4__** %107, align 8
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  store %struct.TYPE_4__* %108, %struct.TYPE_4__** %4, align 8
  store %struct.TYPE_4__* %108, %struct.TYPE_4__** @timer_list, align 8
  br label %114

109:                                              ; preds = %100
  br label %110

110:                                              ; preds = %109, %99
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %112, align 8
  store %struct.TYPE_4__* %113, %struct.TYPE_4__** %4, align 8
  br label %56

114:                                              ; preds = %104, %93, %82, %56
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  store %struct.TYPE_4__* %115, %struct.TYPE_4__** %2, align 8
  br label %43

116:                                              ; preds = %43
  br label %117

117:                                              ; preds = %116, %24
  ret void
}

declare dso_local i32* @lua_getstate(...) #1

declare dso_local i32 @push_swtmr_registry_key(i32*) #1

declare dso_local i32 @lua_rawget(i32*, i32) #1

declare dso_local i32 @lua_pushstring(i32*, i32) #1

declare dso_local i32 @lua_istable(i32*, i32) #1

declare dso_local i32 @lua_isuserdata(i32*, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local %struct.TYPE_4__* @lua_touserdata(i32*, i32) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i32 @lua_rawset(i32*, i32) #1

declare dso_local i64 @RTC_REG_READ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
