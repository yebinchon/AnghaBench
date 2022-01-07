; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ieframe/extr_iexplore.c_create_ie_menu.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ieframe/extr_iexplore.c_create_ie_menu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ieframe_instance = common dso_local global i32 0, align 4
@IDR_BROWSE_MAIN_MENU = common dso_local global i32 0, align 4
@MAX_PATH = common dso_local global i32 0, align 4
@CSIDL_COMMON_FAVORITES = common dso_local global i32 0, align 4
@SHGFP_TYPE_CURRENT = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@CSIDL_FAVORITES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @create_ie_menu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_ie_menu() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = load i32, i32* @ieframe_instance, align 4
  %6 = load i32, i32* @IDR_BROWSE_MAIN_MENU, align 4
  %7 = call i32 @MAKEINTRESOURCEW(i32 %6)
  %8 = call i32 @LoadMenuW(i32 %5, i32 %7)
  store i32 %8, i32* %1, align 4
  %9 = load i32, i32* %1, align 4
  %10 = call i32 @get_fav_menu(i32 %9)
  store i32 %10, i32* %2, align 4
  %11 = load i32, i32* @MAX_PATH, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %3, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %4, align 8
  %15 = load i32, i32* %1, align 4
  %16 = call i32 @get_tb_menu(i32 %15)
  %17 = call i32 @add_tbs_to_menu(i32 %16)
  %18 = load i32, i32* @CSIDL_COMMON_FAVORITES, align 4
  %19 = load i32, i32* @SHGFP_TYPE_CURRENT, align 4
  %20 = call i64 @SHGetFolderPathW(i32* null, i32 %18, i32* null, i32 %19, i32* %14)
  %21 = load i64, i64* @S_OK, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %0
  %24 = load i32, i32* %2, align 4
  %25 = load i32, i32* %2, align 4
  %26 = call i32 @add_favs_to_menu(i32 %24, i32 %25, i32* %14)
  br label %27

27:                                               ; preds = %23, %0
  %28 = load i32, i32* @CSIDL_FAVORITES, align 4
  %29 = load i32, i32* @SHGFP_TYPE_CURRENT, align 4
  %30 = call i64 @SHGetFolderPathW(i32* null, i32 %28, i32* null, i32 %29, i32* %14)
  %31 = load i64, i64* @S_OK, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load i32, i32* %2, align 4
  %35 = load i32, i32* %2, align 4
  %36 = call i32 @add_favs_to_menu(i32 %34, i32 %35, i32* %14)
  br label %37

37:                                               ; preds = %33, %27
  %38 = load i32, i32* %1, align 4
  %39 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %39)
  ret i32 %38
}

declare dso_local i32 @LoadMenuW(i32, i32) #1

declare dso_local i32 @MAKEINTRESOURCEW(i32) #1

declare dso_local i32 @get_fav_menu(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @add_tbs_to_menu(i32) #1

declare dso_local i32 @get_tb_menu(i32) #1

declare dso_local i64 @SHGetFolderPathW(i32*, i32, i32*, i32, i32*) #1

declare dso_local i32 @add_favs_to_menu(i32, i32, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
