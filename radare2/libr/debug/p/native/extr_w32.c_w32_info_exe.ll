; ModuleID = '/home/carl/AnghaBench/radare2/libr/debug/p/native/extr_w32.c_w32_info_exe.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/debug/p/native/extr_w32.c_w32_info_exe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@PROCESS_QUERY_INFORMATION = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"w32_info_exe/OpenProcess\00", align 1
@MAX_PATH = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"w32_info_exe/malloc path\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"w32_info_exe/QueryFullProcessImageName\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, %struct.TYPE_5__*)* @w32_info_exe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @w32_info_exe(%struct.TYPE_6__* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  store i8* null, i8** %5, align 8
  %8 = load i32, i32* @PROCESS_QUERY_INFORMATION, align 4
  %9 = load i32, i32* @FALSE, align 4
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @OpenProcess(i32 %8, i32 %9, i32 %12)
  store i64 %13, i64* %6, align 8
  %14 = load i64, i64* %6, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %2
  %17 = call i32 @r_sys_perror(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %44

18:                                               ; preds = %2
  %19 = load i64, i64* @MAX_PATH, align 8
  %20 = add i64 %19, 1
  %21 = call i64 @malloc(i64 %20)
  %22 = inttoptr i64 %21 to i8*
  store i8* %22, i8** %5, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %18
  %26 = call i32 @perror(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %44

27:                                               ; preds = %18
  %28 = load i64, i64* @MAX_PATH, align 8
  store i64 %28, i64* %7, align 8
  %29 = load i64, i64* %6, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = call i64 @w32_QueryFullProcessImageName(i64 %29, i32 0, i8* %30, i64* %7)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %27
  %34 = load i8*, i8** %5, align 8
  %35 = load i64, i64* %7, align 8
  %36 = getelementptr inbounds i8, i8* %34, i64 %35
  store i8 0, i8* %36, align 1
  %37 = load i8*, i8** %5, align 8
  %38 = call i32 @r_sys_conv_win_to_utf8(i8* %37)
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  br label %43

41:                                               ; preds = %27
  %42 = call i32 @r_sys_perror(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %33
  br label %44

44:                                               ; preds = %43, %25, %16
  %45 = load i64, i64* %6, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i64, i64* %6, align 8
  %49 = call i32 @CloseHandle(i64 %48)
  br label %50

50:                                               ; preds = %47, %44
  %51 = load i8*, i8** %5, align 8
  %52 = call i32 @free(i8* %51)
  ret void
}

declare dso_local i64 @OpenProcess(i32, i32, i32) #1

declare dso_local i32 @r_sys_perror(i8*) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i64 @w32_QueryFullProcessImageName(i64, i32, i8*, i64*) #1

declare dso_local i32 @r_sys_conv_win_to_utf8(i8*) #1

declare dso_local i32 @CloseHandle(i64) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
