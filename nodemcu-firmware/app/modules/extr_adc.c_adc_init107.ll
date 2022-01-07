; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_adc.c_adc_init107.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_adc.c_adc_init107.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SPI_FLASH_SEC_SIZE = common dso_local global i32 0, align 4
@SPI_FLASH_RESULT_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"flash read error\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"flash erase error\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"flash write error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @adc_init107 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adc_init107(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call signext i8 @luaL_checkinteger(i32* %9, i32 1)
  store i8 %10, i8* %4, align 1
  %11 = call i32 (...) @flash_rom_get_sec_num()
  %12 = sub nsw i32 %11, 4
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* @SPI_FLASH_SEC_SIZE, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %6, align 8
  %16 = alloca i8, i64 %14, align 4
  store i64 %14, i64* %7, align 8
  %17 = load i64, i64* @SPI_FLASH_RESULT_OK, align 8
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @SPI_FLASH_SEC_SIZE, align 4
  %20 = mul nsw i32 %18, %19
  %21 = bitcast i8* %16 to i32*
  %22 = trunc i64 %14 to i32
  %23 = call i64 @flash_read(i32 %20, i32* %21, i32 %22)
  %24 = icmp ne i64 %17, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %1
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @luaL_error(i32* %26, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 %27, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %63

28:                                               ; preds = %1
  %29 = getelementptr inbounds i8, i8* %16, i64 107
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = load i8, i8* %4, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %31, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load i32*, i32** %3, align 8
  %37 = call i32 @lua_pushboolean(i32* %36, i32 0)
  store i32 1, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %63

38:                                               ; preds = %28
  %39 = load i8, i8* %4, align 1
  %40 = getelementptr inbounds i8, i8* %16, i64 107
  store i8 %39, i8* %40, align 1
  %41 = load i64, i64* @SPI_FLASH_RESULT_OK, align 8
  %42 = load i32, i32* %5, align 4
  %43 = call i64 @flash_erase(i32 %42)
  %44 = icmp ne i64 %41, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %38
  %46 = load i32*, i32** %3, align 8
  %47 = call i32 @luaL_error(i32* %46, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  store i32 %47, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %63

48:                                               ; preds = %38
  %49 = load i64, i64* @SPI_FLASH_RESULT_OK, align 8
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @SPI_FLASH_SEC_SIZE, align 4
  %52 = mul nsw i32 %50, %51
  %53 = bitcast i8* %16 to i32*
  %54 = trunc i64 %14 to i32
  %55 = call i64 @flash_write(i32 %52, i32* %53, i32 %54)
  %56 = icmp ne i64 %49, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %48
  %58 = load i32*, i32** %3, align 8
  %59 = call i32 @luaL_error(i32* %58, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  store i32 %59, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %63

60:                                               ; preds = %48
  %61 = load i32*, i32** %3, align 8
  %62 = call i32 @lua_pushboolean(i32* %61, i32 1)
  store i32 1, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %63

63:                                               ; preds = %60, %57, %45, %35, %25
  %64 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %64)
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local signext i8 @luaL_checkinteger(i32*, i32) #1

declare dso_local i32 @flash_rom_get_sec_num(...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @flash_read(i32, i32*, i32) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i32 @lua_pushboolean(i32*, i32) #1

declare dso_local i64 @flash_erase(i32) #1

declare dso_local i64 @flash_write(i32, i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
