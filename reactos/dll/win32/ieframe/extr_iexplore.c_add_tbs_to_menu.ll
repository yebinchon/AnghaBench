; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ieframe/extr_iexplore.c_add_tbs_to_menu.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ieframe/extr_iexplore.c_add_tbs_to_menu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8*, i32 }

@add_tbs_to_menu.toolbar_key = internal constant [45 x i8] c"Software\\Microsoft\\Internet Explorer\\Toolbar\00", align 16
@KEY_READ = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@add_tbs_to_menu.classes_key = internal constant [23 x i8] c"Software\\Classes\\CLSID\00", align 16
@.str = private unnamed_addr constant [23 x i8] c"Failed to open key %s\0A\00", align 1
@SHREGENUM_HKLM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Found invalid IE toolbar entry: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Failed to get class info for %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Failed to get toolbar name for %s\0A\00", align 1
@MIIM_STRING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @add_tbs_to_menu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_tbs_to_menu(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [39 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [100 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_3__, align 8
  %12 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %13 = load i32, i32* @KEY_READ, align 4
  %14 = load i32, i32* @TRUE, align 4
  %15 = call i64 @SHRegOpenUSKeyW(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @add_tbs_to_menu.toolbar_key, i64 0, i64 0), i32 %13, i32* null, i32** %3, i32 %14)
  %16 = load i64, i64* @ERROR_SUCCESS, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %97

18:                                               ; preds = %1
  %19 = getelementptr inbounds [39 x i8], [39 x i8]* %5, i64 0, i64 0
  %20 = call i32 @ARRAY_SIZE(i8* %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* @KEY_READ, align 4
  %22 = load i32, i32* @TRUE, align 4
  %23 = call i64 @SHRegOpenUSKeyW(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @add_tbs_to_menu.classes_key, i64 0, i64 0), i32 %21, i32* null, i32** %4, i32 %22)
  %24 = load i64, i64* @ERROR_SUCCESS, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %18
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @SHRegCloseUSKey(i32* %27)
  %29 = call i32 @debugstr_w(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @add_tbs_to_menu.classes_key, i64 0, i64 0))
  %30 = call i32 @ERR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %97

31:                                               ; preds = %18
  store i32 0, i32* %7, align 4
  br label %32

32:                                               ; preds = %89, %31
  %33 = load i32*, i32** %3, align 8
  %34 = load i32, i32* %7, align 4
  %35 = getelementptr inbounds [39 x i8], [39 x i8]* %5, i64 0, i64 0
  %36 = load i32, i32* @SHREGENUM_HKLM, align 4
  %37 = call i64 @SHRegEnumUSValueW(i32* %33, i32 %34, i8* %35, i32* %6, i32* null, i32* null, i32* null, i32 %36)
  %38 = load i64, i64* @ERROR_SUCCESS, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %92

40:                                               ; preds = %32
  %41 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 0
  %42 = call i32 @ARRAY_SIZE(i8* %41)
  store i32 %42, i32* %9, align 4
  %43 = getelementptr inbounds [39 x i8], [39 x i8]* %5, i64 0, i64 0
  %44 = call i32 @ARRAY_SIZE(i8* %43)
  store i32 %44, i32* %6, align 4
  %45 = getelementptr inbounds [39 x i8], [39 x i8]* %5, i64 0, i64 0
  %46 = call i32 @lstrlenW(i8* %45)
  %47 = icmp ne i32 %46, 38
  br i1 %47, label %48, label %52

48:                                               ; preds = %40
  %49 = getelementptr inbounds [39 x i8], [39 x i8]* %5, i64 0, i64 0
  %50 = call i32 @debugstr_w(i8* %49)
  %51 = call i32 @TRACE(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  br label %89

52:                                               ; preds = %40
  %53 = getelementptr inbounds [39 x i8], [39 x i8]* %5, i64 0, i64 0
  %54 = load i32, i32* @KEY_READ, align 4
  %55 = load i32*, i32** %4, align 8
  %56 = load i32, i32* @TRUE, align 4
  %57 = call i64 @SHRegOpenUSKeyW(i8* %53, i32 %54, i32* %55, i32** %10, i32 %56)
  %58 = load i64, i64* @ERROR_SUCCESS, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %52
  %61 = getelementptr inbounds [39 x i8], [39 x i8]* %5, i64 0, i64 0
  %62 = call i32 @debugstr_w(i8* %61)
  %63 = call i32 @ERR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %62)
  br label %89

64:                                               ; preds = %52
  %65 = load i32*, i32** %10, align 8
  %66 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 0
  %67 = load i32, i32* @TRUE, align 4
  %68 = call i64 @SHRegQueryUSValueW(i32* %65, i32* null, i32* null, i8* %66, i32* %9, i32 %67, i32* null, i32 0)
  store i64 %68, i64* %12, align 8
  %69 = load i32*, i32** %10, align 8
  %70 = call i32 @SHRegCloseUSKey(i32* %69)
  %71 = load i64, i64* %12, align 8
  %72 = load i64, i64* @ERROR_SUCCESS, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %64
  %75 = getelementptr inbounds [39 x i8], [39 x i8]* %5, i64 0, i64 0
  %76 = call i32 @debugstr_w(i8* %75)
  %77 = call i32 @ERR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %76)
  br label %89

78:                                               ; preds = %64
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store i32 24, i32* %79, align 8
  %80 = load i32, i32* @MIIM_STRING, align 4
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 2
  store i32 %80, i32* %81, align 8
  %82 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 0
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  store i8* %82, i8** %83, align 8
  %84 = load i32, i32* %2, align 4
  %85 = load i32, i32* %2, align 4
  %86 = call i32 @GetMenuItemCount(i32 %85)
  %87 = load i32, i32* @TRUE, align 4
  %88 = call i32 @InsertMenuItemW(i32 %84, i32 %86, i32 %87, %struct.TYPE_3__* %11)
  br label %89

89:                                               ; preds = %78, %74, %60, %48
  %90 = load i32, i32* %7, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %7, align 4
  br label %32

92:                                               ; preds = %32
  %93 = load i32*, i32** %4, align 8
  %94 = call i32 @SHRegCloseUSKey(i32* %93)
  %95 = load i32*, i32** %3, align 8
  %96 = call i32 @SHRegCloseUSKey(i32* %95)
  br label %97

97:                                               ; preds = %26, %92, %1
  ret void
}

declare dso_local i64 @SHRegOpenUSKeyW(i8*, i32, i32*, i32**, i32) #1

declare dso_local i32 @ARRAY_SIZE(i8*) #1

declare dso_local i32 @SHRegCloseUSKey(i32*) #1

declare dso_local i32 @ERR(i8*, i32) #1

declare dso_local i32 @debugstr_w(i8*) #1

declare dso_local i64 @SHRegEnumUSValueW(i32*, i32, i8*, i32*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @lstrlenW(i8*) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i64 @SHRegQueryUSValueW(i32*, i32*, i32*, i8*, i32*, i32, i32*, i32) #1

declare dso_local i32 @InsertMenuItemW(i32, i32, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @GetMenuItemCount(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
