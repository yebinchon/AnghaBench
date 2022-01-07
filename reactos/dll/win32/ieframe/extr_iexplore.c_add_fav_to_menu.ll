; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ieframe/extr_iexplore.c_add_fav_to_menu.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ieframe/extr_iexplore.c_add_fav_to_menu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i64, i64, i32 }

@ID_BROWSE_GOTOFAV_MAX = common dso_local global i32 0, align 4
@ID_BROWSE_GOTOFAV_FIRST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Add support for more than %d Favorites\0A\00", align 1
@MIIM_FTYPE = common dso_local global i32 0, align 4
@MIIM_STRING = common dso_local global i32 0, align 4
@MIIM_DATA = common dso_local global i32 0, align 4
@MIIM_ID = common dso_local global i32 0, align 4
@MFT_STRING = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i64, i32)* @add_fav_to_menu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_fav_to_menu(i32 %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_3__, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @get_menu_item_count(i32 %12)
  %14 = sub nsw i32 %13, 2
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = load i32, i32* @ID_BROWSE_GOTOFAV_MAX, align 4
  %17 = load i32, i32* @ID_BROWSE_GOTOFAV_FIRST, align 4
  %18 = sub nsw i32 %16, %17
  %19 = icmp sgt i32 %15, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load i32, i32* %10, align 4
  %22 = call i32 @FIXME(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %60

23:                                               ; preds = %4
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @lstrlenW(i32 %24)
  %26 = add nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = mul i64 %27, 4
  %29 = trunc i64 %28 to i32
  %30 = call i64 @heap_alloc(i32 %29)
  store i64 %30, i64* %11, align 8
  %31 = load i64, i64* %11, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %23
  br label %60

34:                                               ; preds = %23
  %35 = load i64, i64* %11, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @lstrcpyW(i64 %35, i32 %36)
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  store i32 40, i32* %38, align 8
  %39 = load i32, i32* @MIIM_FTYPE, align 4
  %40 = load i32, i32* @MIIM_STRING, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @MIIM_DATA, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @MIIM_ID, align 4
  %45 = or i32 %43, %44
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  store i32 %45, i32* %46, align 4
  %47 = load i32, i32* @MFT_STRING, align 4
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 5
  store i32 %47, i32* %48, align 8
  %49 = load i64, i64* %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 4
  store i64 %49, i64* %50, align 8
  %51 = load i32, i32* @ID_BROWSE_GOTOFAV_FIRST, align 4
  %52 = load i32, i32* %10, align 4
  %53 = add nsw i32 %51, %52
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 2
  store i32 %53, i32* %54, align 8
  %55 = load i64, i64* %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 3
  store i64 %55, i64* %56, align 8
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @TRUE, align 4
  %59 = call i32 @InsertMenuItemW(i32 %57, i32 -1, i32 %58, %struct.TYPE_3__* %9)
  br label %60

60:                                               ; preds = %34, %33, %20
  ret void
}

declare dso_local i32 @get_menu_item_count(i32) #1

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i64 @heap_alloc(i32) #1

declare dso_local i32 @lstrlenW(i32) #1

declare dso_local i32 @lstrcpyW(i64, i32) #1

declare dso_local i32 @InsertMenuItemW(i32, i32, i32, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
