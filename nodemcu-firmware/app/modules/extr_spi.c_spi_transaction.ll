; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_spi.c_spi_transaction.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_spi.c_spi_transaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@spi = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"out of range\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @spi_transaction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_transaction(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 @luaL_checkinteger(i32* %11, i32 1)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* @spi, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @MOD_CHECK_ID(i32 %13, i32 %14)
  %16 = load i32*, i32** %2, align 8
  %17 = call i32 @luaL_checkinteger(i32* %16, i32 2)
  store i32 %17, i32* %4, align 4
  %18 = load i32*, i32** %2, align 8
  %19 = call i32 @luaL_checkinteger(i32* %18, i32 3)
  store i32 %19, i32* %5, align 4
  %20 = load i32*, i32** %2, align 8
  %21 = load i32, i32* %4, align 4
  %22 = icmp sge i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load i32, i32* %4, align 4
  %25 = icmp sle i32 %24, 16
  br label %26

26:                                               ; preds = %23, %1
  %27 = phi i1 [ false, %1 ], [ %25, %23 ]
  %28 = zext i1 %27 to i32
  %29 = call i32 @luaL_argcheck(i32* %20, i32 2, i32 %28, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %30 = load i32*, i32** %2, align 8
  %31 = call i32 @luaL_checkinteger(i32* %30, i32 4)
  store i32 %31, i32* %6, align 4
  %32 = load i32*, i32** %2, align 8
  %33 = call i32 @luaL_checkinteger(i32* %32, i32 5)
  store i32 %33, i32* %7, align 4
  %34 = load i32*, i32** %2, align 8
  %35 = load i32, i32* %6, align 4
  %36 = icmp sge i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %26
  %38 = load i32, i32* %6, align 4
  %39 = icmp sle i32 %38, 32
  br label %40

40:                                               ; preds = %37, %26
  %41 = phi i1 [ false, %26 ], [ %39, %37 ]
  %42 = zext i1 %41 to i32
  %43 = call i32 @luaL_argcheck(i32* %34, i32 4, i32 %42, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %44 = load i32*, i32** %2, align 8
  %45 = call i32 @luaL_checkinteger(i32* %44, i32 6)
  store i32 %45, i32* %8, align 4
  %46 = load i32*, i32** %2, align 8
  %47 = load i32, i32* %8, align 4
  %48 = icmp sge i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %40
  %50 = load i32, i32* %8, align 4
  %51 = icmp sle i32 %50, 512
  br label %52

52:                                               ; preds = %49, %40
  %53 = phi i1 [ false, %40 ], [ %51, %49 ]
  %54 = zext i1 %53 to i32
  %55 = call i32 @luaL_argcheck(i32* %46, i32 6, i32 %54, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %56 = load i32*, i32** %2, align 8
  %57 = call i32 @luaL_checkinteger(i32* %56, i32 7)
  store i32 %57, i32* %9, align 4
  %58 = load i32*, i32** %2, align 8
  %59 = load i32, i32* %9, align 4
  %60 = icmp sge i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %52
  %62 = load i32, i32* %9, align 4
  %63 = icmp sle i32 %62, 256
  br label %64

64:                                               ; preds = %61, %52
  %65 = phi i1 [ false, %52 ], [ %63, %61 ]
  %66 = zext i1 %65 to i32
  %67 = call i32 @luaL_argcheck(i32* %58, i32 7, i32 %66, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %68 = load i32*, i32** %2, align 8
  %69 = call i32 @luaL_checkinteger(i32* %68, i32 8)
  store i32 %69, i32* %10, align 4
  %70 = load i32*, i32** %2, align 8
  %71 = load i32, i32* %10, align 4
  %72 = icmp sge i32 %71, -512
  br i1 %72, label %73, label %76

73:                                               ; preds = %64
  %74 = load i32, i32* %10, align 4
  %75 = icmp sle i32 %74, 512
  br label %76

76:                                               ; preds = %73, %64
  %77 = phi i1 [ false, %64 ], [ %75, %73 ]
  %78 = zext i1 %77 to i32
  %79 = call i32 @luaL_argcheck(i32* %70, i32 8, i32 %78, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %80 = load i32, i32* %3, align 4
  %81 = load i32, i32* %4, align 4
  %82 = load i32, i32* %5, align 4
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* %10, align 4
  %88 = call i32 @spi_mast_transaction(i32 %80, i32 %81, i32 %82, i32 %83, i32 %84, i32 %85, i32 %86, i32 %87)
  ret i32 0
}

declare dso_local i32 @luaL_checkinteger(i32*, i32) #1

declare dso_local i32 @MOD_CHECK_ID(i32, i32) #1

declare dso_local i32 @luaL_argcheck(i32*, i32, i32, i8*) #1

declare dso_local i32 @spi_mast_transaction(i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
