; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_cron.c_cron_handle_time.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_cron.c_cron_handle_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cronent_desc = type { i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }

@cronent_count = common dso_local global i64 0, align 8
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@cronent_list = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i32)* @cron_handle_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cron_handle_time(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.cronent_desc, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = call i32* (...) @lua_getstate()
  store i32* %15, i32** %11, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sub nsw i32 %16, 1
  %18 = shl i32 1, %17
  %19 = getelementptr inbounds %struct.cronent_desc, %struct.cronent_desc* %12, i32 0, i32 0
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* %7, align 4
  %21 = sub nsw i32 %20, 1
  %22 = shl i32 1, %21
  %23 = getelementptr inbounds %struct.cronent_desc, %struct.cronent_desc* %12, i32 0, i32 1
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* %8, align 4
  %25 = shl i32 1, %24
  %26 = getelementptr inbounds %struct.cronent_desc, %struct.cronent_desc* %12, i32 0, i32 2
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* %9, align 4
  %28 = shl i32 1, %27
  %29 = getelementptr inbounds %struct.cronent_desc, %struct.cronent_desc* %12, i32 0, i32 3
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* %10, align 4
  %31 = shl i32 1, %30
  %32 = getelementptr inbounds %struct.cronent_desc, %struct.cronent_desc* %12, i32 0, i32 4
  store i32 %31, i32* %32, align 4
  store i64 0, i64* %13, align 8
  br label %33

33:                                               ; preds = %114, %5
  %34 = load i64, i64* %13, align 8
  %35 = load i64, i64* @cronent_count, align 8
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %37, label %117

37:                                               ; preds = %33
  %38 = load i32*, i32** %11, align 8
  %39 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %40 = load i32*, i32** @cronent_list, align 8
  %41 = load i64, i64* %13, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @lua_rawgeti(i32* %38, i32 %39, i32 %43)
  %45 = load i32*, i32** %11, align 8
  %46 = call %struct.TYPE_5__* @lua_touserdata(i32* %45, i32 -1)
  store %struct.TYPE_5__* %46, %struct.TYPE_5__** %14, align 8
  %47 = load i32*, i32** %11, align 8
  %48 = call i32 @lua_pop(i32* %47, i32 1)
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.cronent_desc, %struct.cronent_desc* %12, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %52, %54
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %37
  br label %114

58:                                               ; preds = %37
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = getelementptr inbounds %struct.cronent_desc, %struct.cronent_desc* %12, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %62, %64
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %58
  br label %114

68:                                               ; preds = %58
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds %struct.cronent_desc, %struct.cronent_desc* %12, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %72, %74
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %68
  br label %114

78:                                               ; preds = %68
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = getelementptr inbounds %struct.cronent_desc, %struct.cronent_desc* %12, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = and i32 %82, %84
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %78
  br label %114

88:                                               ; preds = %78
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 4
  %93 = getelementptr inbounds %struct.cronent_desc, %struct.cronent_desc* %12, i32 0, i32 4
  %94 = load i32, i32* %93, align 4
  %95 = and i32 %92, %94
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %88
  br label %114

98:                                               ; preds = %88
  %99 = load i32*, i32** %11, align 8
  %100 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @lua_rawgeti(i32* %99, i32 %100, i32 %103)
  %105 = load i32*, i32** %11, align 8
  %106 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %107 = load i32*, i32** @cronent_list, align 8
  %108 = load i64, i64* %13, align 8
  %109 = getelementptr inbounds i32, i32* %107, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @lua_rawgeti(i32* %105, i32 %106, i32 %110)
  %112 = load i32*, i32** %11, align 8
  %113 = call i32 @lua_call(i32* %112, i32 1, i32 0)
  br label %114

114:                                              ; preds = %98, %97, %87, %77, %67, %57
  %115 = load i64, i64* %13, align 8
  %116 = add i64 %115, 1
  store i64 %116, i64* %13, align 8
  br label %33

117:                                              ; preds = %33
  ret void
}

declare dso_local i32* @lua_getstate(...) #1

declare dso_local i32 @lua_rawgeti(i32*, i32, i32) #1

declare dso_local %struct.TYPE_5__* @lua_touserdata(i32*, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i32 @lua_call(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
