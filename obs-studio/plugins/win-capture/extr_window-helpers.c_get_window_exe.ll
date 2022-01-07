; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_window-helpers.c_get_window_exe.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_window-helpers.c_get_window_exe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dstr = type { i32, i32 }

@MAX_PATH = common dso_local global i32 0, align 4
@PROCESS_QUERY_LIMITED_INFORMATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"unknown\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_window_exe(%struct.dstr* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dstr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.dstr, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.dstr* %0, %struct.dstr** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load i32, i32* @MAX_PATH, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %6, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %7, align 8
  %18 = bitcast %struct.dstr* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %18, i8 0, i64 8, i1 false)
  store i32 0, i32* %9, align 4
  store i32* null, i32** %10, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @GetWindowThreadProcessId(i32 %19, i64* %12)
  %21 = load i64, i64* %12, align 8
  %22 = call i64 (...) @GetCurrentProcessId()
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %61

25:                                               ; preds = %2
  %26 = load i32, i32* @PROCESS_QUERY_LIMITED_INFORMATION, align 4
  %27 = load i64, i64* %12, align 8
  %28 = call i32* @open_process(i32 %26, i32 0, i64 %27)
  store i32* %28, i32** %10, align 8
  %29 = load i32*, i32** %10, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %25
  br label %51

32:                                               ; preds = %25
  %33 = load i32*, i32** %10, align 8
  %34 = load i32, i32* @MAX_PATH, align 4
  %35 = call i32 @GetProcessImageFileNameW(i32* %33, i32* %17, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  br label %51

38:                                               ; preds = %32
  %39 = call i32 @dstr_from_wcs(%struct.dstr* %8, i32* %17)
  %40 = getelementptr inbounds %struct.dstr, %struct.dstr* %8, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i8* @strrchr(i32 %41, i8 signext 92)
  store i8* %42, i8** %11, align 8
  %43 = load i8*, i8** %11, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %38
  br label %51

46:                                               ; preds = %38
  %47 = load %struct.dstr*, %struct.dstr** %4, align 8
  %48 = load i8*, i8** %11, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 1
  %50 = call i32 @dstr_copy(%struct.dstr* %47, i8* %49)
  store i32 1, i32* %9, align 4
  br label %51

51:                                               ; preds = %46, %45, %37, %31
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %51
  %55 = load %struct.dstr*, %struct.dstr** %4, align 8
  %56 = call i32 @dstr_copy(%struct.dstr* %55, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %57

57:                                               ; preds = %54, %51
  %58 = call i32 @dstr_free(%struct.dstr* %8)
  %59 = load i32*, i32** %10, align 8
  %60 = call i32 @CloseHandle(i32* %59)
  store i32 1, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %61

61:                                               ; preds = %57, %24
  %62 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %62)
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @GetWindowThreadProcessId(i32, i64*) #3

declare dso_local i64 @GetCurrentProcessId(...) #3

declare dso_local i32* @open_process(i32, i32, i64) #3

declare dso_local i32 @GetProcessImageFileNameW(i32*, i32*, i32) #3

declare dso_local i32 @dstr_from_wcs(%struct.dstr*, i32*) #3

declare dso_local i8* @strrchr(i32, i8 signext) #3

declare dso_local i32 @dstr_copy(%struct.dstr*, i8*) #3

declare dso_local i32 @dstr_free(%struct.dstr*) #3

declare dso_local i32 @CloseHandle(i32*) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
