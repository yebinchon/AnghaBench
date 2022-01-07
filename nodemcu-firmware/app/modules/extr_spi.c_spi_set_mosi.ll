; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_spi.c_spi_set_mosi.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_spi.c_spi_set_mosi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@spi = common dso_local global i32 0, align 4
@LUA_TSTRING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"out of range\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"data range exceeded > 512 bits\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @spi_set_mosi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_set_mosi(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
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
  %17 = call i64 @lua_type(i32* %16, i32 2)
  %18 = load i64, i64* @LUA_TSTRING, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %33

20:                                               ; preds = %1
  %21 = load i32*, i32** %3, align 8
  %22 = call i8* @luaL_checklstring(i32* %21, i32 2, i64* %5)
  store i8* %22, i8** %6, align 8
  %23 = load i32*, i32** %3, align 8
  %24 = load i64, i64* %5, align 8
  %25 = icmp ule i64 %24, 64
  %26 = zext i1 %25 to i32
  %27 = call i32 @luaL_argcheck(i32* %23, i32 2, i32 %26, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* %4, align 4
  %29 = load i64, i64* %5, align 8
  %30 = mul i64 %29, 8
  %31 = load i8*, i8** %6, align 8
  %32 = call i32 @spi_mast_blkset(i32 %28, i64 %30, i8* %31)
  br label %87

33:                                               ; preds = %1
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 @luaL_checkinteger(i32* %34, i32 2)
  store i32 %35, i32* %7, align 4
  %36 = load i32*, i32** %3, align 8
  %37 = call i32 @luaL_checkinteger(i32* %36, i32 3)
  store i32 %37, i32* %8, align 4
  %38 = load i32*, i32** %3, align 8
  %39 = load i32, i32* %7, align 4
  %40 = icmp sge i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %33
  %42 = load i32, i32* %7, align 4
  %43 = icmp sle i32 %42, 511
  br label %44

44:                                               ; preds = %41, %33
  %45 = phi i1 [ false, %33 ], [ %43, %41 ]
  %46 = zext i1 %45 to i32
  %47 = call i32 @luaL_argcheck(i32* %38, i32 2, i32 %46, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %48 = load i32*, i32** %3, align 8
  %49 = load i32, i32* %8, align 4
  %50 = icmp sge i32 %49, 1
  br i1 %50, label %51, label %54

51:                                               ; preds = %44
  %52 = load i32, i32* %8, align 4
  %53 = icmp sle i32 %52, 32
  br label %54

54:                                               ; preds = %51, %44
  %55 = phi i1 [ false, %44 ], [ %53, %51 ]
  %56 = zext i1 %55 to i32
  %57 = call i32 @luaL_argcheck(i32* %48, i32 3, i32 %56, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32 4, i32* %9, align 4
  br label %58

58:                                               ; preds = %80, %54
  %59 = load i32, i32* %9, align 4
  %60 = load i32*, i32** %3, align 8
  %61 = call i32 @lua_gettop(i32* %60)
  %62 = icmp sle i32 %59, %61
  br i1 %62, label %63, label %86

63:                                               ; preds = %58
  %64 = load i32*, i32** %3, align 8
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @luaL_checkinteger(i32* %64, i32 %65)
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %8, align 4
  %69 = add nsw i32 %67, %68
  %70 = icmp sgt i32 %69, 512
  br i1 %70, label %71, label %74

71:                                               ; preds = %63
  %72 = load i32*, i32** %3, align 8
  %73 = call i32 @luaL_error(i32* %72, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  store i32 %73, i32* %2, align 4
  br label %88

74:                                               ; preds = %63
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @spi_mast_set_mosi(i32 %75, i32 %76, i32 %77, i32 %78)
  br label %80

80:                                               ; preds = %74
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %9, align 4
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* %7, align 4
  %85 = add nsw i32 %84, %83
  store i32 %85, i32* %7, align 4
  br label %58

86:                                               ; preds = %58
  br label %87

87:                                               ; preds = %86, %20
  store i32 0, i32* %2, align 4
  br label %88

88:                                               ; preds = %87, %71
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local i32 @luaL_checkinteger(i32*, i32) #1

declare dso_local i32 @MOD_CHECK_ID(i32, i32) #1

declare dso_local i64 @lua_type(i32*, i32) #1

declare dso_local i8* @luaL_checklstring(i32*, i32, i64*) #1

declare dso_local i32 @luaL_argcheck(i32*, i32, i32, i8*) #1

declare dso_local i32 @spi_mast_blkset(i32, i64, i8*) #1

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i32 @spi_mast_set_mosi(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
