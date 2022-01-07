; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_si7021.c_si7021_lua_serial.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_si7021.c_si7021_lua_serial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SI7021_CMD_ID1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"crc error\00", align 1
@SI7021_CMD_ID2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @si7021_lua_serial to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si7021_lua_serial(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [8 x i32], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [6 x i32], align 16
  %10 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 0, i32* %5, align 4
  %11 = load i32, i32* @SI7021_CMD_ID1, align 4
  %12 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 0
  %13 = call i32 @read_serial(i32 %11, i32* %12, i32 8)
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %42, %1
  %15 = load i32, i32* %7, align 4
  %16 = icmp sle i32 %15, 6
  br i1 %16, label %17, label %45

17:                                               ; preds = %14
  %18 = load i32, i32* %5, align 4
  %19 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 0
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = call i32 @si7021_crc8(i32 %18, i32* %22, i32 1)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %7, align 4
  %25 = add nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %17
  %32 = load i32*, i32** %3, align 8
  %33 = call i32 @luaL_error(i32* %32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 %33, i32* %2, align 4
  br label %94

34:                                               ; preds = %17
  %35 = load i32, i32* %4, align 4
  %36 = shl i32 %35, 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %36, %40
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %34
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, 2
  store i32 %44, i32* %7, align 4
  br label %14

45:                                               ; preds = %14
  store i32 0, i32* %5, align 4
  %46 = load i32, i32* @SI7021_CMD_ID2, align 4
  %47 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 0
  %48 = call i32 @read_serial(i32 %46, i32* %47, i32 6)
  store i32 0, i32* %10, align 4
  br label %49

49:                                               ; preds = %84, %45
  %50 = load i32, i32* %10, align 4
  %51 = icmp sle i32 %50, 3
  br i1 %51, label %52, label %87

52:                                               ; preds = %49
  %53 = load i32, i32* %5, align 4
  %54 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 0
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = call i32 @si7021_crc8(i32 %53, i32* %57, i32 2)
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %10, align 4
  %60 = add nsw i32 %59, 2
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %5, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %52
  %67 = load i32*, i32** %3, align 8
  %68 = call i32 @luaL_error(i32* %67, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 %68, i32* %2, align 4
  br label %94

69:                                               ; preds = %52
  %70 = load i32, i32* %8, align 4
  %71 = shl i32 %70, 16
  %72 = load i32, i32* %10, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = shl i32 %75, 8
  %77 = add nsw i32 %71, %76
  %78 = load i32, i32* %10, align 4
  %79 = add nsw i32 %78, 1
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %77, %82
  store i32 %83, i32* %8, align 4
  br label %84

84:                                               ; preds = %69
  %85 = load i32, i32* %10, align 4
  %86 = add nsw i32 %85, 3
  store i32 %86, i32* %10, align 4
  br label %49

87:                                               ; preds = %49
  %88 = load i32*, i32** %3, align 8
  %89 = load i32, i32* %4, align 4
  %90 = call i32 @lua_pushinteger(i32* %88, i32 %89)
  %91 = load i32*, i32** %3, align 8
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @lua_pushinteger(i32* %91, i32 %92)
  store i32 2, i32* %2, align 4
  br label %94

94:                                               ; preds = %87, %66, %31
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local i32 @read_serial(i32, i32*, i32) #1

declare dso_local i32 @si7021_crc8(i32, i32*, i32) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
