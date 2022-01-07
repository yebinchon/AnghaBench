; ModuleID = '/home/carl/AnghaBench/mjolnir/Mjolnir/lua/extr_lcode.c_luaK_codeABC.c'
source_filename = "/home/carl/AnghaBench/mjolnir/Mjolnir/lua/extr_lcode.c_luaK_codeABC.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@iABC = common dso_local global i64 0, align 8
@OpArgN = common dso_local global i64 0, align 8
@MAXARG_A = common dso_local global i32 0, align 4
@MAXARG_B = common dso_local global i32 0, align 4
@MAXARG_C = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @luaK_codeABC(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load i32, i32* %7, align 4
  %12 = call i64 @getOpMode(i32 %11)
  %13 = load i64, i64* @iABC, align 8
  %14 = icmp eq i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @lua_assert(i32 %15)
  %17 = load i32, i32* %7, align 4
  %18 = call i64 @getBMode(i32 %17)
  %19 = load i64, i64* @OpArgN, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %24, label %21

21:                                               ; preds = %5
  %22 = load i32, i32* %9, align 4
  %23 = icmp eq i32 %22, 0
  br label %24

24:                                               ; preds = %21, %5
  %25 = phi i1 [ true, %5 ], [ %23, %21 ]
  %26 = zext i1 %25 to i32
  %27 = call i32 @lua_assert(i32 %26)
  %28 = load i32, i32* %7, align 4
  %29 = call i64 @getCMode(i32 %28)
  %30 = load i64, i64* @OpArgN, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %35, label %32

32:                                               ; preds = %24
  %33 = load i32, i32* %10, align 4
  %34 = icmp eq i32 %33, 0
  br label %35

35:                                               ; preds = %32, %24
  %36 = phi i1 [ true, %24 ], [ %34, %32 ]
  %37 = zext i1 %36 to i32
  %38 = call i32 @lua_assert(i32 %37)
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @MAXARG_A, align 4
  %41 = icmp sle i32 %39, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %35
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @MAXARG_B, align 4
  %45 = icmp sle i32 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* @MAXARG_C, align 4
  %49 = icmp sle i32 %47, %48
  br label %50

50:                                               ; preds = %46, %42, %35
  %51 = phi i1 [ false, %42 ], [ false, %35 ], [ %49, %46 ]
  %52 = zext i1 %51 to i32
  %53 = call i32 @lua_assert(i32 %52)
  %54 = load i32*, i32** %6, align 8
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @CREATE_ABC(i32 %55, i32 %56, i32 %57, i32 %58)
  %60 = call i32 @luaK_code(i32* %54, i32 %59)
  ret i32 %60
}

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i64 @getOpMode(i32) #1

declare dso_local i64 @getBMode(i32) #1

declare dso_local i64 @getCMode(i32) #1

declare dso_local i32 @luaK_code(i32*, i32) #1

declare dso_local i32 @CREATE_ABC(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
