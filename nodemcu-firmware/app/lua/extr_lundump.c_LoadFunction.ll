; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/lua/extr_lundump.c_LoadFunction.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/lua/extr_lundump.c_LoadFunction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i32*, i32 }
%struct.TYPE_22__ = type { %struct.TYPE_23__*, i32 }
%struct.TYPE_23__ = type { i64, i32 }

@LUAI_MAXCCALLS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"code too deep\00", align 1
@READONLYBIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"bad code\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_21__* (%struct.TYPE_22__*, i32*)* @LoadFunction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_21__* @LoadFunction(%struct.TYPE_22__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = add nsw i64 %10, 1
  store i64 %11, i64* %9, align 8
  %12 = load i64, i64* @LUAI_MAXCCALLS, align 8
  %13 = icmp sgt i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %16 = call i32 @error(%struct.TYPE_22__* %15, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %14, %2
  %18 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  %21 = call %struct.TYPE_21__* @luaF_newproto(%struct.TYPE_23__* %20)
  store %struct.TYPE_21__* %21, %struct.TYPE_21__** %5, align 8
  %22 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @luaZ_direct_mode(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %17
  %28 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %28, i32 0, i32 7
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @READONLYBIT, align 4
  %32 = call i32 @l_setbit(i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %27, %17
  %34 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_23__*, %struct.TYPE_23__** %35, align 8
  %37 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_23__*, %struct.TYPE_23__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %43 = call i32 @setptvalue2s(%struct.TYPE_23__* %36, i32 %41, %struct.TYPE_21__* %42)
  %44 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_23__*, %struct.TYPE_23__** %45, align 8
  %47 = call i32 @incr_top(%struct.TYPE_23__* %46)
  %48 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %49 = call i32* @LoadString(%struct.TYPE_22__* %48)
  %50 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %50, i32 0, i32 6
  store i32* %49, i32** %51, align 8
  %52 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %52, i32 0, i32 6
  %54 = load i32*, i32** %53, align 8
  %55 = icmp eq i32* %54, null
  br i1 %55, label %56, label %60

56:                                               ; preds = %33
  %57 = load i32*, i32** %4, align 8
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %58, i32 0, i32 6
  store i32* %57, i32** %59, align 8
  br label %60

60:                                               ; preds = %56, %33
  %61 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %62 = call i8* @LoadInt(%struct.TYPE_22__* %61)
  %63 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %63, i32 0, i32 5
  store i8* %62, i8** %64, align 8
  %65 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %66 = call i8* @LoadInt(%struct.TYPE_22__* %65)
  %67 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %67, i32 0, i32 4
  store i8* %66, i8** %68, align 8
  %69 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %70 = call i8* @LoadByte(%struct.TYPE_22__* %69)
  %71 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %71, i32 0, i32 3
  store i8* %70, i8** %72, align 8
  %73 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %74 = call i8* @LoadByte(%struct.TYPE_22__* %73)
  %75 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %75, i32 0, i32 2
  store i8* %74, i8** %76, align 8
  %77 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %78 = call i8* @LoadByte(%struct.TYPE_22__* %77)
  %79 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %79, i32 0, i32 1
  store i8* %78, i8** %80, align 8
  %81 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %82 = call i8* @LoadByte(%struct.TYPE_22__* %81)
  %83 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %83, i32 0, i32 0
  store i8* %82, i8** %84, align 8
  %85 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %87 = call i32 @LoadCode(%struct.TYPE_22__* %85, %struct.TYPE_21__* %86)
  %88 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %89 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %90 = call i32 @LoadConstants(%struct.TYPE_22__* %88, %struct.TYPE_21__* %89)
  %91 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %92 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %93 = call i32 @LoadDebug(%struct.TYPE_22__* %91, %struct.TYPE_21__* %92)
  %94 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %95 = call i32 @luaG_checkcode(%struct.TYPE_21__* %94)
  %96 = icmp ne i32 %95, 0
  %97 = xor i1 %96, true
  %98 = zext i1 %97 to i32
  %99 = call i32 @IF(i32 %98, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %100 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_23__*, %struct.TYPE_23__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = add nsw i32 %104, -1
  store i32 %105, i32* %103, align 8
  %106 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_23__*, %struct.TYPE_23__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = add nsw i64 %110, -1
  store i64 %111, i64* %109, align 8
  %112 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  ret %struct.TYPE_21__* %112
}

declare dso_local i32 @error(%struct.TYPE_22__*, i8*) #1

declare dso_local %struct.TYPE_21__* @luaF_newproto(%struct.TYPE_23__*) #1

declare dso_local i64 @luaZ_direct_mode(i32) #1

declare dso_local i32 @l_setbit(i32, i32) #1

declare dso_local i32 @setptvalue2s(%struct.TYPE_23__*, i32, %struct.TYPE_21__*) #1

declare dso_local i32 @incr_top(%struct.TYPE_23__*) #1

declare dso_local i32* @LoadString(%struct.TYPE_22__*) #1

declare dso_local i8* @LoadInt(%struct.TYPE_22__*) #1

declare dso_local i8* @LoadByte(%struct.TYPE_22__*) #1

declare dso_local i32 @LoadCode(%struct.TYPE_22__*, %struct.TYPE_21__*) #1

declare dso_local i32 @LoadConstants(%struct.TYPE_22__*, %struct.TYPE_21__*) #1

declare dso_local i32 @LoadDebug(%struct.TYPE_22__*, %struct.TYPE_21__*) #1

declare dso_local i32 @IF(i32, i8*) #1

declare dso_local i32 @luaG_checkcode(%struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
