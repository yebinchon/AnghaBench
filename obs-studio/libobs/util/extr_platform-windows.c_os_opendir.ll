; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/util/extr_platform-windows.c_os_opendir.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/util/extr_platform-windows.c_os_opendir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.os_dir = type { i32, i32, i32 }
%struct.dstr = type { i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"/*.*\00", align 1
@INVALID_HANDLE_VALUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.os_dir* @os_opendir(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.dstr, align 4
  %4 = alloca %struct.os_dir*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %8 = bitcast %struct.dstr* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %8, i8 0, i64 12, i1 false)
  store %struct.os_dir* null, %struct.os_dir** %4, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = call i32 @dstr_copy(%struct.dstr* %3, i8* %9)
  %11 = call i32 @dstr_cat(%struct.dstr* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %12 = getelementptr inbounds %struct.dstr, %struct.dstr* %3, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds %struct.dstr, %struct.dstr* %3, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @os_utf8_to_wcs_ptr(i32 %13, i32 %15, i32** %7)
  %17 = icmp sgt i64 %16, 0
  br i1 %17, label %18, label %37

18:                                               ; preds = %1
  %19 = load i32*, i32** %7, align 8
  %20 = call i32 @FindFirstFileW(i32* %19, i32* %5)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @INVALID_HANDLE_VALUE, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %18
  %25 = call %struct.os_dir* @bzalloc(i32 12)
  store %struct.os_dir* %25, %struct.os_dir** %4, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.os_dir*, %struct.os_dir** %4, align 8
  %28 = getelementptr inbounds %struct.os_dir, %struct.os_dir* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  %29 = load %struct.os_dir*, %struct.os_dir** %4, align 8
  %30 = getelementptr inbounds %struct.os_dir, %struct.os_dir* %29, i32 0, i32 0
  store i32 1, i32* %30, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.os_dir*, %struct.os_dir** %4, align 8
  %33 = getelementptr inbounds %struct.os_dir, %struct.os_dir* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  br label %34

34:                                               ; preds = %24, %18
  %35 = load i32*, i32** %7, align 8
  %36 = call i32 @bfree(i32* %35)
  br label %37

37:                                               ; preds = %34, %1
  %38 = call i32 @dstr_free(%struct.dstr* %3)
  %39 = load %struct.os_dir*, %struct.os_dir** %4, align 8
  ret %struct.os_dir* %39
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @dstr_copy(%struct.dstr*, i8*) #2

declare dso_local i32 @dstr_cat(%struct.dstr*, i8*) #2

declare dso_local i64 @os_utf8_to_wcs_ptr(i32, i32, i32**) #2

declare dso_local i32 @FindFirstFileW(i32*, i32*) #2

declare dso_local %struct.os_dir* @bzalloc(i32) #2

declare dso_local i32 @bfree(i32*) #2

declare dso_local i32 @dstr_free(%struct.dstr*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
