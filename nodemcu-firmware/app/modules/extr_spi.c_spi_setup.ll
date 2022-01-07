; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_spi.c_spi_setup.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_spi.c_spi_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SPI_HALFDUPLEX = common dso_local global i32 0, align 4
@spi = common dso_local global i32 0, align 4
@PLATFORM_SPI_SLAVE = common dso_local global i32 0, align 4
@PLATFORM_SPI_MASTER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"wrong arg type\00", align 1
@PLATFORM_SPI_CPOL_LOW = common dso_local global i32 0, align 4
@PLATFORM_SPI_CPOL_HIGH = common dso_local global i32 0, align 4
@PLATFORM_SPI_CPHA_LOW = common dso_local global i32 0, align 4
@PLATFORM_SPI_CPHA_HIGH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"out of range\00", align 1
@SPI_FULLDUPLEX = common dso_local global i32 0, align 4
@spi_duplex = common dso_local global i32* null, align 8
@spi_databits = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @spi_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_setup(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = call i8* @luaL_checkinteger(i32* %12, i32 1)
  %14 = ptrtoint i8* %13 to i32
  store i32 %14, i32* %4, align 4
  %15 = load i32*, i32** %3, align 8
  %16 = call i8* @luaL_checkinteger(i32* %15, i32 2)
  %17 = ptrtoint i8* %16 to i32
  store i32 %17, i32* %5, align 4
  %18 = load i32*, i32** %3, align 8
  %19 = call i8* @luaL_checkinteger(i32* %18, i32 3)
  %20 = ptrtoint i8* %19 to i32
  store i32 %20, i32* %6, align 4
  %21 = load i32*, i32** %3, align 8
  %22 = call i8* @luaL_checkinteger(i32* %21, i32 4)
  %23 = ptrtoint i8* %22 to i32
  store i32 %23, i32* %7, align 4
  %24 = load i32*, i32** %3, align 8
  %25 = call i8* @luaL_checkinteger(i32* %24, i32 5)
  %26 = ptrtoint i8* %25 to i32
  store i32 %26, i32* %8, align 4
  %27 = load i32*, i32** %3, align 8
  %28 = call i8* @luaL_checkinteger(i32* %27, i32 6)
  %29 = ptrtoint i8* %28 to i32
  store i32 %29, i32* %9, align 4
  %30 = load i32*, i32** %3, align 8
  %31 = load i32, i32* @SPI_HALFDUPLEX, align 4
  %32 = call i32 @luaL_optinteger(i32* %30, i32 7, i32 %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* @spi, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @MOD_CHECK_ID(i32 %33, i32 %34)
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @PLATFORM_SPI_SLAVE, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %1
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @PLATFORM_SPI_MASTER, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load i32*, i32** %3, align 8
  %45 = call i32 @luaL_error(i32* %44, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 %45, i32* %2, align 4
  br label %113

46:                                               ; preds = %39, %1
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @PLATFORM_SPI_CPOL_LOW, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %46
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @PLATFORM_SPI_CPOL_HIGH, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load i32*, i32** %3, align 8
  %56 = call i32 @luaL_error(i32* %55, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 %56, i32* %2, align 4
  br label %113

57:                                               ; preds = %50, %46
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @PLATFORM_SPI_CPHA_LOW, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %57
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @PLATFORM_SPI_CPHA_HIGH, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = load i32*, i32** %3, align 8
  %67 = call i32 @luaL_error(i32* %66, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 %67, i32* %2, align 4
  br label %113

68:                                               ; preds = %61, %57
  %69 = load i32, i32* %8, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %68
  %72 = load i32, i32* %8, align 4
  %73 = icmp sgt i32 %72, 32
  br i1 %73, label %74, label %77

74:                                               ; preds = %71, %68
  %75 = load i32*, i32** %3, align 8
  %76 = call i32 @luaL_error(i32* %75, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i32 %76, i32* %2, align 4
  br label %113

77:                                               ; preds = %71
  %78 = load i32, i32* %9, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %77
  store i32 8, i32* %9, align 4
  br label %81

81:                                               ; preds = %80, %77
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* @SPI_HALFDUPLEX, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %89, label %85

85:                                               ; preds = %81
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* @SPI_FULLDUPLEX, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %95

89:                                               ; preds = %85, %81
  %90 = load i32, i32* %10, align 4
  %91 = load i32*, i32** @spi_duplex, align 8
  %92 = load i32, i32* %4, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  store i32 %90, i32* %94, align 4
  br label %98

95:                                               ; preds = %85
  %96 = load i32*, i32** %3, align 8
  %97 = call i32 @luaL_error(i32* %96, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i32 %97, i32* %2, align 4
  br label %113

98:                                               ; preds = %89
  %99 = load i32, i32* %8, align 4
  %100 = load i32*, i32** @spi_databits, align 8
  %101 = load i32, i32* %4, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  store i32 %99, i32* %103, align 4
  %104 = load i32, i32* %4, align 4
  %105 = load i32, i32* %5, align 4
  %106 = load i32, i32* %6, align 4
  %107 = load i32, i32* %7, align 4
  %108 = load i32, i32* %9, align 4
  %109 = call i32 @platform_spi_setup(i32 %104, i32 %105, i32 %106, i32 %107, i32 %108)
  store i32 %109, i32* %11, align 4
  %110 = load i32*, i32** %3, align 8
  %111 = load i32, i32* %11, align 4
  %112 = call i32 @lua_pushinteger(i32* %110, i32 %111)
  store i32 1, i32* %2, align 4
  br label %113

113:                                              ; preds = %98, %95, %74, %65, %54, %43
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

declare dso_local i8* @luaL_checkinteger(i32*, i32) #1

declare dso_local i32 @luaL_optinteger(i32*, i32, i32) #1

declare dso_local i32 @MOD_CHECK_ID(i32, i32) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i32 @platform_spi_setup(i32, i32, i32, i32, i32) #1

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
