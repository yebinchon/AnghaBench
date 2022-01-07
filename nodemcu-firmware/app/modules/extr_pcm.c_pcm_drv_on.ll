; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_pcm.c_pcm_drv_on.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_pcm.c_pcm_drv_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i8*, i8*, i8*, i8*, i8* }

@FALSE = common dso_local global i64 0, align 8
@LUA_TFUNCTION = common dso_local global i64 0, align 8
@LUA_TLIGHTFUNCTION = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"data\00", align 1
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@cfg = common dso_local global %struct.TYPE_2__* null, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"drained\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"paused\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"stopped\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"vu\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"invalid range\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"method not supported\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @pcm_drv_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcm_drv_on(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %8 = load i64, i64* @FALSE, align 8
  store i64 %8, i64* %6, align 8
  %9 = call i32 (...) @GET_PUD()
  %10 = load i32*, i32** %3, align 8
  %11 = call i8* @luaL_checklstring(i32* %10, i32 2, i64* %4)
  store i8* %11, i8** %5, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = call i64 @lua_type(i32* %12, i32 3)
  %14 = load i64, i64* @LUA_TFUNCTION, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %21, label %16

16:                                               ; preds = %1
  %17 = load i32*, i32** %3, align 8
  %18 = call i64 @lua_type(i32* %17, i32 3)
  %19 = load i64, i64* @LUA_TLIGHTFUNCTION, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %16, %1
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @lua_pushvalue(i32* %22, i32 3)
  %24 = load i64, i64* @TRUE, align 8
  store i64 %24, i64* %6, align 8
  br label %25

25:                                               ; preds = %21, %16
  %26 = load i64, i64* %4, align 8
  %27 = icmp eq i64 %26, 4
  br i1 %27, label %28, label %43

28:                                               ; preds = %25
  %29 = load i8*, i8** %5, align 8
  %30 = call i64 @strcmp(i8* %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %28
  %33 = load i32*, i32** %3, align 8
  %34 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cfg, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 5
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @luaL_unref(i32* %33, i32 %34, i8* %37)
  %39 = load i64, i64* %6, align 8
  %40 = call i8* @COND_REF(i64 %39)
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cfg, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 5
  store i8* %40, i8** %42, align 8
  br label %144

43:                                               ; preds = %28, %25
  %44 = load i64, i64* %4, align 8
  %45 = icmp eq i64 %44, 7
  br i1 %45, label %46, label %61

46:                                               ; preds = %43
  %47 = load i8*, i8** %5, align 8
  %48 = call i64 @strcmp(i8* %47, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %61

50:                                               ; preds = %46
  %51 = load i32*, i32** %3, align 8
  %52 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cfg, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 4
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @luaL_unref(i32* %51, i32 %52, i8* %55)
  %57 = load i64, i64* %6, align 8
  %58 = call i8* @COND_REF(i64 %57)
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cfg, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 4
  store i8* %58, i8** %60, align 8
  br label %143

61:                                               ; preds = %46, %43
  %62 = load i64, i64* %4, align 8
  %63 = icmp eq i64 %62, 6
  br i1 %63, label %64, label %79

64:                                               ; preds = %61
  %65 = load i8*, i8** %5, align 8
  %66 = call i64 @strcmp(i8* %65, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %79

68:                                               ; preds = %64
  %69 = load i32*, i32** %3, align 8
  %70 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cfg, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 3
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 @luaL_unref(i32* %69, i32 %70, i8* %73)
  %75 = load i64, i64* %6, align 8
  %76 = call i8* @COND_REF(i64 %75)
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cfg, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 3
  store i8* %76, i8** %78, align 8
  br label %142

79:                                               ; preds = %64, %61
  %80 = load i64, i64* %4, align 8
  %81 = icmp eq i64 %80, 7
  br i1 %81, label %82, label %97

82:                                               ; preds = %79
  %83 = load i8*, i8** %5, align 8
  %84 = call i64 @strcmp(i8* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %97

86:                                               ; preds = %82
  %87 = load i32*, i32** %3, align 8
  %88 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cfg, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 2
  %91 = load i8*, i8** %90, align 8
  %92 = call i32 @luaL_unref(i32* %87, i32 %88, i8* %91)
  %93 = load i64, i64* %6, align 8
  %94 = call i8* @COND_REF(i64 %93)
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cfg, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 2
  store i8* %94, i8** %96, align 8
  br label %141

97:                                               ; preds = %82, %79
  %98 = load i64, i64* %4, align 8
  %99 = icmp eq i64 %98, 2
  br i1 %99, label %100, label %131

100:                                              ; preds = %97
  %101 = load i8*, i8** %5, align 8
  %102 = call i64 @strcmp(i8* %101, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %131

104:                                              ; preds = %100
  %105 = load i32*, i32** %3, align 8
  %106 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cfg, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 1
  %109 = load i8*, i8** %108, align 8
  %110 = call i32 @luaL_unref(i32* %105, i32 %106, i8* %109)
  %111 = load i64, i64* %6, align 8
  %112 = call i8* @COND_REF(i64 %111)
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cfg, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 1
  store i8* %112, i8** %114, align 8
  %115 = load i32*, i32** %3, align 8
  %116 = call i32 @luaL_optinteger(i32* %115, i32 4, i32 10)
  store i32 %116, i32* %7, align 4
  %117 = load i32*, i32** %3, align 8
  %118 = load i32, i32* %7, align 4
  %119 = icmp sgt i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %104
  %121 = load i32, i32* %7, align 4
  %122 = icmp sle i32 %121, 200
  br label %123

123:                                              ; preds = %120, %104
  %124 = phi i1 [ false, %104 ], [ %122, %120 ]
  %125 = zext i1 %124 to i32
  %126 = call i32 @luaL_argcheck(i32* %117, i32 %125, i32 4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %127 = load i32, i32* %7, align 4
  %128 = sext i32 %127 to i64
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cfg, align 8
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 0
  store i64 %128, i64* %130, align 8
  br label %140

131:                                              ; preds = %100, %97
  %132 = load i64, i64* %6, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %131
  %135 = load i32*, i32** %3, align 8
  %136 = call i32 @lua_pop(i32* %135, i32 1)
  br label %137

137:                                              ; preds = %134, %131
  %138 = load i32*, i32** %3, align 8
  %139 = call i32 @luaL_error(i32* %138, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  store i32 %139, i32* %2, align 4
  br label %145

140:                                              ; preds = %123
  br label %141

141:                                              ; preds = %140, %86
  br label %142

142:                                              ; preds = %141, %68
  br label %143

143:                                              ; preds = %142, %50
  br label %144

144:                                              ; preds = %143, %32
  store i32 0, i32* %2, align 4
  br label %145

145:                                              ; preds = %144, %137
  %146 = load i32, i32* %2, align 4
  ret i32 %146
}

declare dso_local i32 @GET_PUD(...) #1

declare dso_local i8* @luaL_checklstring(i32*, i32, i64*) #1

declare dso_local i64 @lua_type(i32*, i32) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @luaL_unref(i32*, i32, i8*) #1

declare dso_local i8* @COND_REF(i64) #1

declare dso_local i32 @luaL_optinteger(i32*, i32, i32) #1

declare dso_local i32 @luaL_argcheck(i32*, i32, i32, i8*) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
