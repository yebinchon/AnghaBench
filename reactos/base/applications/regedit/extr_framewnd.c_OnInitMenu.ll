; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/regedit/extr_framewnd.c_OnInitMenu.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/regedit/extr_framewnd.c_OnInitMenu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OnInitMenu.s_nFavoriteMenuSubPos = internal global i32 -1, align 4
@FALSE = common dso_local global i64 0, align 8
@FAVORITES_MENU_POSITION = common dso_local global i32 0, align 4
@MF_BYPOSITION = common dso_local global i32 0, align 4
@HKEY_CURRENT_USER = common dso_local global i32 0, align 4
@s_szFavoritesRegKey = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@REG_SZ = common dso_local global i64 0, align 8
@MF_SEPARATOR = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@ID_FAVORITES_MIN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @OnInitMenu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @OnInitMenu(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca [256 x i32], align 16
  %10 = alloca [256 x i32], align 16
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  store i32* null, i32** %4, align 8
  %13 = load i64, i64* @FALSE, align 8
  store i64 %13, i64* %12, align 8
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @GetMenu(i32 %14)
  %16 = load i32, i32* @FAVORITES_MENU_POSITION, align 4
  %17 = call i32 @GetSubMenu(i32 %15, i32 %16)
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %1
  br label %85

21:                                               ; preds = %1
  %22 = load i32, i32* @OnInitMenu.s_nFavoriteMenuSubPos, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i32, i32* %11, align 4
  %26 = call i32 @GetMenuItemCount(i32 %25)
  store i32 %26, i32* @OnInitMenu.s_nFavoriteMenuSubPos, align 4
  br label %36

27:                                               ; preds = %21
  br label %28

28:                                               ; preds = %34, %27
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* @OnInitMenu.s_nFavoriteMenuSubPos, align 4
  %31 = load i32, i32* @MF_BYPOSITION, align 4
  %32 = call i64 @RemoveMenu(i32 %29, i32 %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %28

35:                                               ; preds = %28
  br label %36

36:                                               ; preds = %35, %24
  %37 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %38 = load i32, i32* @s_szFavoritesRegKey, align 4
  %39 = call i64 @RegOpenKeyW(i32 %37, i32 %38, i32** %4)
  store i64 %39, i64* %3, align 8
  %40 = load i64, i64* %3, align 8
  %41 = load i64, i64* @ERROR_SUCCESS, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  br label %85

44:                                               ; preds = %36
  store i64 0, i64* %5, align 8
  br label %45

45:                                               ; preds = %80, %44
  %46 = getelementptr inbounds [256 x i32], [256 x i32]* %9, i64 0, i64 0
  %47 = call i64 @COUNT_OF(i32* %46)
  store i64 %47, i64* %6, align 8
  store i64 1024, i64* %7, align 8
  %48 = load i32*, i32** %4, align 8
  %49 = load i64, i64* %5, align 8
  %50 = getelementptr inbounds [256 x i32], [256 x i32]* %9, i64 0, i64 0
  %51 = getelementptr inbounds [256 x i32], [256 x i32]* %10, i64 0, i64 0
  %52 = call i64 @RegEnumValueW(i32* %48, i64 %49, i32* %50, i64* %6, i32* null, i64* %8, i32* %51, i64* %7)
  store i64 %52, i64* %3, align 8
  %53 = load i64, i64* %3, align 8
  %54 = load i64, i64* @ERROR_SUCCESS, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %77

56:                                               ; preds = %45
  %57 = load i64, i64* %8, align 8
  %58 = load i64, i64* @REG_SZ, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %77

60:                                               ; preds = %56
  %61 = load i64, i64* %12, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %60
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* @MF_SEPARATOR, align 4
  %66 = call i32 @AppendMenu(i32 %64, i32 %65, i64 0, i32* null)
  %67 = load i64, i64* @TRUE, align 8
  store i64 %67, i64* %12, align 8
  br label %68

68:                                               ; preds = %63, %60
  %69 = load i32, i32* %11, align 4
  %70 = load i64, i64* @ID_FAVORITES_MIN, align 8
  %71 = load i32, i32* %11, align 4
  %72 = call i32 @GetMenuItemCount(i32 %71)
  %73 = sext i32 %72 to i64
  %74 = add nsw i64 %70, %73
  %75 = getelementptr inbounds [256 x i32], [256 x i32]* %9, i64 0, i64 0
  %76 = call i32 @AppendMenu(i32 %69, i32 0, i64 %74, i32* %75)
  br label %77

77:                                               ; preds = %68, %56, %45
  %78 = load i64, i64* %5, align 8
  %79 = add nsw i64 %78, 1
  store i64 %79, i64* %5, align 8
  br label %80

80:                                               ; preds = %77
  %81 = load i64, i64* %3, align 8
  %82 = load i64, i64* @ERROR_SUCCESS, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %45, label %84

84:                                               ; preds = %80
  br label %85

85:                                               ; preds = %84, %43, %20
  %86 = load i32*, i32** %4, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  %89 = load i32*, i32** %4, align 8
  %90 = call i32 @RegCloseKey(i32* %89)
  br label %91

91:                                               ; preds = %88, %85
  ret void
}

declare dso_local i32 @GetSubMenu(i32, i32) #1

declare dso_local i32 @GetMenu(i32) #1

declare dso_local i32 @GetMenuItemCount(i32) #1

declare dso_local i64 @RemoveMenu(i32, i32, i32) #1

declare dso_local i64 @RegOpenKeyW(i32, i32, i32**) #1

declare dso_local i64 @COUNT_OF(i32*) #1

declare dso_local i64 @RegEnumValueW(i32*, i64, i32*, i64*, i32*, i64*, i32*, i64*) #1

declare dso_local i32 @AppendMenu(i32, i32, i64, i32*) #1

declare dso_local i32 @RegCloseKey(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
