; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_spi.c_spi_get_miso.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_spi.c_spi_get_miso.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@spi = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"out of range\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @spi_get_miso to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_get_miso(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [64 x i32], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @luaL_checkinteger(i32* %11, i32 1)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* @spi, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @MOD_CHECK_ID(i32 %13, i32 %14)
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @lua_gettop(i32* %16)
  %18 = icmp eq i32 %17, 2
  br i1 %18, label %19, label %41

19:                                               ; preds = %1
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @luaL_checkinteger(i32* %20, i32 2)
  store i32 %21, i32* %6, align 4
  %22 = load i32*, i32** %3, align 8
  %23 = load i32, i32* %6, align 4
  %24 = icmp sge i32 %23, 1
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load i32, i32* %6, align 4
  %27 = icmp sle i32 %26, 64
  br label %28

28:                                               ; preds = %25, %19
  %29 = phi i1 [ false, %19 ], [ %27, %25 ]
  %30 = zext i1 %29 to i32
  %31 = call i32 @luaL_argcheck(i32* %22, i32 2, i32 %30, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* %6, align 4
  %34 = mul nsw i32 %33, 8
  %35 = getelementptr inbounds [64 x i32], [64 x i32]* %5, i64 0, i64 0
  %36 = call i32 @spi_mast_blkget(i32 %32, i32 %34, i32* %35)
  %37 = load i32*, i32** %3, align 8
  %38 = getelementptr inbounds [64 x i32], [64 x i32]* %5, i64 0, i64 0
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @lua_pushlstring(i32* %37, i32* %38, i32 %39)
  store i32 1, i32* %2, align 4
  br label %98

41:                                               ; preds = %1
  %42 = load i32*, i32** %3, align 8
  %43 = call i32 @luaL_checkinteger(i32* %42, i32 2)
  store i32 %43, i32* %7, align 4
  %44 = load i32*, i32** %3, align 8
  %45 = call i32 @luaL_checkinteger(i32* %44, i32 3)
  store i32 %45, i32* %8, align 4
  %46 = load i32*, i32** %3, align 8
  %47 = call i32 @luaL_checkinteger(i32* %46, i32 4)
  store i32 %47, i32* %9, align 4
  %48 = load i32*, i32** %3, align 8
  %49 = load i32, i32* %7, align 4
  %50 = icmp sge i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %41
  %52 = load i32, i32* %7, align 4
  %53 = icmp sle i32 %52, 511
  br label %54

54:                                               ; preds = %51, %41
  %55 = phi i1 [ false, %41 ], [ %53, %51 ]
  %56 = zext i1 %55 to i32
  %57 = call i32 @luaL_argcheck(i32* %48, i32 2, i32 %56, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %58 = load i32*, i32** %3, align 8
  %59 = load i32, i32* %8, align 4
  %60 = icmp sge i32 %59, 1
  br i1 %60, label %61, label %64

61:                                               ; preds = %54
  %62 = load i32, i32* %8, align 4
  %63 = icmp sle i32 %62, 32
  br label %64

64:                                               ; preds = %61, %54
  %65 = phi i1 [ false, %54 ], [ %63, %61 ]
  %66 = zext i1 %65 to i32
  %67 = call i32 @luaL_argcheck(i32* %58, i32 3, i32 %66, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %9, align 4
  %71 = mul nsw i32 %69, %70
  %72 = add nsw i32 %68, %71
  %73 = icmp sgt i32 %72, 512
  br i1 %73, label %74, label %77

74:                                               ; preds = %64
  %75 = load i32*, i32** %3, align 8
  %76 = call i32 @luaL_error(i32* %75, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32 %76, i32* %2, align 4
  br label %98

77:                                               ; preds = %64
  store i32 0, i32* %10, align 4
  br label %78

78:                                               ; preds = %93, %77
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* %9, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %96

82:                                               ; preds = %78
  %83 = load i32*, i32** %3, align 8
  %84 = load i32, i32* %4, align 4
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* %10, align 4
  %88 = mul nsw i32 %86, %87
  %89 = add nsw i32 %85, %88
  %90 = load i32, i32* %8, align 4
  %91 = call i32 @spi_mast_get_miso(i32 %84, i32 %89, i32 %90)
  %92 = call i32 @lua_pushinteger(i32* %83, i32 %91)
  br label %93

93:                                               ; preds = %82
  %94 = load i32, i32* %10, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %10, align 4
  br label %78

96:                                               ; preds = %78
  %97 = load i32, i32* %9, align 4
  store i32 %97, i32* %2, align 4
  br label %98

98:                                               ; preds = %96, %74, %28
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i32 @luaL_checkinteger(i32*, i32) #1

declare dso_local i32 @MOD_CHECK_ID(i32, i32) #1

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i32 @luaL_argcheck(i32*, i32, i32, i8*) #1

declare dso_local i32 @spi_mast_blkget(i32, i32, i32*) #1

declare dso_local i32 @lua_pushlstring(i32*, i32*, i32) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

declare dso_local i32 @spi_mast_get_miso(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
