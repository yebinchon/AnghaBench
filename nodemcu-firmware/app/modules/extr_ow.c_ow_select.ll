; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_ow.c_ow_select.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_ow.c_ow_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ow = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"wrong arg range\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ow_select to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ow_select(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca [8 x i8], align 1
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @luaL_checkinteger(i32* %10, i32 1)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* @ow, align 4
  %13 = load i32, i32* %8, align 4
  %14 = call i32 @MOD_CHECK_ID(i32 %12, i32 %13)
  %15 = load i32*, i32** %3, align 8
  %16 = call i64 @lua_istable(i32* %15, i32 2)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %56

18:                                               ; preds = %1
  %19 = load i32*, i32** %3, align 8
  %20 = call i64 @lua_objlen(i32* %19, i32 2)
  store i64 %20, i64* %5, align 8
  %21 = load i64, i64* %5, align 8
  %22 = icmp ne i64 %21, 8
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @luaL_error(i32* %24, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32 %25, i32* %2, align 4
  br label %87

26:                                               ; preds = %18
  store i32 0, i32* %7, align 4
  br label %27

27:                                               ; preds = %52, %26
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = load i64, i64* %5, align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %32, label %55

32:                                               ; preds = %27
  %33 = load i32*, i32** %3, align 8
  %34 = load i32, i32* %7, align 4
  %35 = add nsw i32 %34, 1
  %36 = call i32 @lua_rawgeti(i32* %33, i32 2, i32 %35)
  %37 = load i32*, i32** %3, align 8
  %38 = call i32 @luaL_checkinteger(i32* %37, i32 -1)
  store i32 %38, i32* %6, align 4
  %39 = load i32*, i32** %3, align 8
  %40 = call i32 @lua_pop(i32* %39, i32 1)
  %41 = load i32, i32* %6, align 4
  %42 = icmp sgt i32 %41, 255
  br i1 %42, label %43, label %46

43:                                               ; preds = %32
  %44 = load i32*, i32** %3, align 8
  %45 = call i32 @luaL_error(i32* %44, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32 %45, i32* %2, align 4
  br label %87

46:                                               ; preds = %32
  %47 = load i32, i32* %6, align 4
  %48 = trunc i32 %47 to i8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 %50
  store i8 %48, i8* %51, align 1
  br label %52

52:                                               ; preds = %46
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %7, align 4
  br label %27

55:                                               ; preds = %27
  br label %83

56:                                               ; preds = %1
  %57 = load i32*, i32** %3, align 8
  %58 = call i8* @luaL_checklstring(i32* %57, i32 2, i64* %5)
  store i8* %58, i8** %9, align 8
  %59 = load i64, i64* %5, align 8
  %60 = icmp ne i64 %59, 8
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load i32*, i32** %3, align 8
  %63 = call i32 @luaL_error(i32* %62, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32 %63, i32* %2, align 4
  br label %87

64:                                               ; preds = %56
  store i32 0, i32* %7, align 4
  br label %65

65:                                               ; preds = %79, %64
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = load i64, i64* %5, align 8
  %69 = icmp ult i64 %67, %68
  br i1 %69, label %70, label %82

70:                                               ; preds = %65
  %71 = load i8*, i8** %9, align 8
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %71, i64 %73
  %75 = load i8, i8* %74, align 1
  %76 = load i32, i32* %7, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 %77
  store i8 %75, i8* %78, align 1
  br label %79

79:                                               ; preds = %70
  %80 = load i32, i32* %7, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %7, align 4
  br label %65

82:                                               ; preds = %65
  br label %83

83:                                               ; preds = %82, %55
  %84 = load i32, i32* %8, align 4
  %85 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0
  %86 = call i32 @onewire_select(i32 %84, i8* %85)
  store i32 0, i32* %2, align 4
  br label %87

87:                                               ; preds = %83, %61, %43, %23
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local i32 @luaL_checkinteger(i32*, i32) #1

declare dso_local i32 @MOD_CHECK_ID(i32, i32) #1

declare dso_local i64 @lua_istable(i32*, i32) #1

declare dso_local i64 @lua_objlen(i32*, i32) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i32 @lua_rawgeti(i32*, i32, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i8* @luaL_checklstring(i32*, i32, i64*) #1

declare dso_local i32 @onewire_select(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
