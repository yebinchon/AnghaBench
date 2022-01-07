; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/util/extr_platform-windows.c_get_reg_dword.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/util/extr_platform-windows.c_get_reg_dword.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reg_dword = type { i32, i64, i64, i32 }

@KEY_READ = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @get_reg_dword(i32 %0, i32 %1, i32 %2, %struct.reg_dword* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.reg_dword*, align 8
  %9 = alloca %struct.reg_dword, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.reg_dword* %3, %struct.reg_dword** %8, align 8
  %12 = bitcast %struct.reg_dword* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 32, i1 false)
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @KEY_READ, align 4
  %16 = call i64 @RegOpenKeyEx(i32 %13, i32 %14, i32 0, i32 %15, i32* %10)
  store i64 %16, i64* %11, align 8
  %17 = load i64, i64* %11, align 8
  %18 = load i64, i64* @ERROR_SUCCESS, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %4
  %21 = load i64, i64* %11, align 8
  %22 = load %struct.reg_dword*, %struct.reg_dword** %8, align 8
  %23 = getelementptr inbounds %struct.reg_dword, %struct.reg_dword* %22, i32 0, i32 2
  store i64 %21, i64* %23, align 8
  %24 = load %struct.reg_dword*, %struct.reg_dword** %8, align 8
  %25 = getelementptr inbounds %struct.reg_dword, %struct.reg_dword* %24, i32 0, i32 0
  store i32 0, i32* %25, align 8
  %26 = load %struct.reg_dword*, %struct.reg_dword** %8, align 8
  %27 = getelementptr inbounds %struct.reg_dword, %struct.reg_dword* %26, i32 0, i32 1
  store i64 0, i64* %27, align 8
  br label %42

28:                                               ; preds = %4
  %29 = getelementptr inbounds %struct.reg_dword, %struct.reg_dword* %9, i32 0, i32 0
  store i32 8, i32* %29, align 8
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %7, align 4
  %32 = getelementptr inbounds %struct.reg_dword, %struct.reg_dword* %9, i32 0, i32 1
  %33 = ptrtoint i64* %32 to i32
  %34 = getelementptr inbounds %struct.reg_dword, %struct.reg_dword* %9, i32 0, i32 0
  %35 = call i64 @RegQueryValueExW(i32 %30, i32 %31, i32* null, i32* null, i32 %33, i32* %34)
  %36 = getelementptr inbounds %struct.reg_dword, %struct.reg_dword* %9, i32 0, i32 2
  store i64 %35, i64* %36, align 8
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @RegCloseKey(i32 %37)
  %39 = load %struct.reg_dword*, %struct.reg_dword** %8, align 8
  %40 = bitcast %struct.reg_dword* %39 to i8*
  %41 = bitcast %struct.reg_dword* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %40, i8* align 8 %41, i64 32, i1 false)
  br label %42

42:                                               ; preds = %28, %20
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @RegOpenKeyEx(i32, i32, i32, i32, i32*) #2

declare dso_local i64 @RegQueryValueExW(i32, i32, i32*, i32*, i32, i32*) #2

declare dso_local i32 @RegCloseKey(i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
