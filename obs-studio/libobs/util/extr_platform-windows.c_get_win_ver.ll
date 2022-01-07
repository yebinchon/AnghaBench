; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/util/extr_platform-windows.c_get_win_ver.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/util/extr_platform-windows.c_get_win_ver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.win_version_info = type { i32, i32, i32 }

@get_win_ver.ver = internal global %struct.win_version_info zeroinitializer, align 4
@get_win_ver.got_version = internal global i32 0, align 4
@.str = private unnamed_addr constant [9 x i32] [i32 107, i32 101, i32 114, i32 110, i32 101, i32 108, i32 51, i32 50, i32 0], align 4
@HKEY_LOCAL_MACHINE = common dso_local global i32 0, align 4
@WINVER_REG_KEY = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i32] [i32 85, i32 66, i32 82, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @get_win_ver(%struct.win_version_info* %0) #0 {
  %2 = alloca %struct.win_version_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.win_version_info* %0, %struct.win_version_info** %2, align 8
  %7 = load %struct.win_version_info*, %struct.win_version_info** %2, align 8
  %8 = icmp ne %struct.win_version_info* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %49

10:                                               ; preds = %1
  %11 = load i32, i32* @get_win_ver.got_version, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %46, label %13

13:                                               ; preds = %10
  %14 = call i32 @get_dll_ver(i8* bitcast ([9 x i32]* @.str to i8*), %struct.win_version_info* @get_win_ver.ver)
  store i32 1, i32* @get_win_ver.got_version, align 4
  %15 = load i32, i32* getelementptr inbounds (%struct.win_version_info, %struct.win_version_info* @get_win_ver.ver, i32 0, i32 0), align 4
  %16 = icmp eq i32 %15, 10
  br i1 %16, label %17, label %45

17:                                               ; preds = %13
  %18 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %19 = load i32, i32* @WINVER_REG_KEY, align 4
  %20 = call i64 @RegOpenKeyW(i32 %18, i32 %19, i32* %3)
  store i64 %20, i64* %6, align 8
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* @ERROR_SUCCESS, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  br label %49

25:                                               ; preds = %17
  store i32 4, i32* %4, align 4
  %26 = load i32, i32* %3, align 4
  %27 = ptrtoint i32* %5 to i32
  %28 = call i64 @RegQueryValueExW(i32 %26, i8* bitcast ([4 x i32]* @.str.1 to i8*), i32* null, i32* null, i32 %27, i32* %4)
  store i64 %28, i64* %6, align 8
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* @ERROR_SUCCESS, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %42

32:                                               ; preds = %25
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* getelementptr inbounds (%struct.win_version_info, %struct.win_version_info* @get_win_ver.ver, i32 0, i32 1), align 4
  %35 = icmp sgt i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load i32, i32* %5, align 4
  br label %40

38:                                               ; preds = %32
  %39 = load i32, i32* getelementptr inbounds (%struct.win_version_info, %struct.win_version_info* @get_win_ver.ver, i32 0, i32 1), align 4
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i32 [ %37, %36 ], [ %39, %38 ]
  store i32 %41, i32* getelementptr inbounds (%struct.win_version_info, %struct.win_version_info* @get_win_ver.ver, i32 0, i32 1), align 4
  br label %42

42:                                               ; preds = %40, %25
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @RegCloseKey(i32 %43)
  br label %45

45:                                               ; preds = %42, %13
  br label %46

46:                                               ; preds = %45, %10
  %47 = load %struct.win_version_info*, %struct.win_version_info** %2, align 8
  %48 = bitcast %struct.win_version_info* %47 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %48, i8* align 4 bitcast (%struct.win_version_info* @get_win_ver.ver to i8*), i64 12, i1 false)
  br label %49

49:                                               ; preds = %46, %24, %9
  ret void
}

declare dso_local i32 @get_dll_ver(i8*, %struct.win_version_info*) #1

declare dso_local i64 @RegOpenKeyW(i32, i32, i32*) #1

declare dso_local i64 @RegQueryValueExW(i32, i8*, i32*, i32*, i32, i32*) #1

declare dso_local i32 @RegCloseKey(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
