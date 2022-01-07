; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_bloom.c_bloom_create.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_bloom.c_bloom_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"bloom.filter\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @bloom_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bloom_create(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %2, align 8
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 @luaL_checkinteger(i32* %11, i32 1)
  store i32 %12, i32* %3, align 4
  %13 = load i32*, i32** %2, align 8
  %14 = call i32 @luaL_checkinteger(i32* %13, i32 2)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  store i32 %15, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %19, %1
  %17 = load i32, i32* %5, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = load i32, i32* %5, align 4
  %21 = ashr i32 %20, 1
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %6, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* %6, align 4
  br label %16

24:                                               ; preds = %16
  %25 = load i32, i32* %3, align 4
  %26 = sub nsw i32 0, %25
  %27 = load i32, i32* %6, align 4
  %28 = mul nsw i32 %26, %27
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = ashr i32 %29, 1
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %31, %30
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = add nsw i32 %33, 31
  %35 = and i32 %34, -32
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp slt i32 %36, 256
  br i1 %37, label %38, label %39

38:                                               ; preds = %24
  store i32 256, i32* %7, align 4
  br label %39

39:                                               ; preds = %38, %24
  %40 = load i32, i32* %7, align 4
  %41 = ashr i32 %40, 3
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %3, align 4
  %44 = sdiv i32 %42, %43
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = ashr i32 %45, 1
  %47 = load i32, i32* %9, align 4
  %48 = sdiv i32 %47, 6
  %49 = add nsw i32 %46, %48
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp slt i32 %50, 2
  br i1 %51, label %52, label %53

52:                                               ; preds = %39
  store i32 2, i32* %9, align 4
  br label %53

53:                                               ; preds = %52, %39
  %54 = load i32, i32* %9, align 4
  %55 = icmp sgt i32 %54, 15
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  store i32 15, i32* %9, align 4
  br label %57

57:                                               ; preds = %56, %53
  %58 = load i32*, i32** %2, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = add i64 8, %60
  %62 = trunc i64 %61 to i32
  %63 = call i64 @lua_newuserdata(i32* %58, i32 %62)
  %64 = inttoptr i64 %63 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %64, %struct.TYPE_3__** %10, align 8
  %65 = load i32*, i32** %2, align 8
  %66 = call i32 @luaL_getmetatable(i32* %65, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %67 = load i32*, i32** %2, align 8
  %68 = call i32 @lua_setmetatable(i32* %67, i32 -2)
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = add i64 8, %71
  %73 = trunc i64 %72 to i32
  %74 = call i32 @memset(%struct.TYPE_3__* %69, i32 0, i32 %73)
  %75 = load i32, i32* %8, align 4
  %76 = ashr i32 %75, 2
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 4
  %79 = load i32, i32* %9, align 4
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  ret i32 1
}

declare dso_local i32 @luaL_checkinteger(i32*, i32) #1

declare dso_local i64 @lua_newuserdata(i32*, i32) #1

declare dso_local i32 @luaL_getmetatable(i32*, i8*) #1

declare dso_local i32 @lua_setmetatable(i32*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_3__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
