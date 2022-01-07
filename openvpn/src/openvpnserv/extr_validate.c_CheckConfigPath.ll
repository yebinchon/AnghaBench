; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpnserv/extr_validate.c_CheckConfigPath.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpnserv/extr_validate.c_CheckConfigPath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i32] [i32 37, i32 115, i32 92, i32 37, i32 115, i32 0], align 4
@CP_UTF8 = common dso_local global i32 0, align 4
@M_SYSERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"Failed to convert config_dir name to WideChar\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i32] [i32 46, i32 46, i32 0], align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.TYPE_3__*)* @CheckConfigPath to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CheckConfigPath(i32* %0, i32* %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %7, align 8
  %14 = load i32, i32* @MAX_PATH, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %8, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %9, align 8
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  %18 = load i32, i32* @MAX_PATH, align 4
  %19 = zext i32 %18 to i64
  %20 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %12, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = call i64 @PathIsRelativeW(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %3
  %25 = call i32 @_countof(i32* %17)
  %26 = load i32*, i32** %5, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = call i32 @openvpn_swprintf(i32* %17, i32 %25, i8* bitcast ([6 x i32]* @.str to i8*), i32* %26, i32* %27)
  store i32* %17, i32** %10, align 8
  br label %31

29:                                               ; preds = %3
  %30 = load i32*, i32** %6, align 8
  store i32* %30, i32** %10, align 8
  br label %31

31:                                               ; preds = %29, %24
  %32 = load i32, i32* @CP_UTF8, align 4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* @MAX_PATH, align 4
  %37 = call i64 @MultiByteToWideChar(i32 %32, i32 0, i32* %35, i32 -1, i32* %20, i32 %36)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %31
  %40 = load i32, i32* @M_SYSERR, align 4
  %41 = call i32 @TEXT(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %42 = call i32 @MsgToEventLog(i32 %40, i32 %41)
  %43 = load i32, i32* @FALSE, align 4
  store i32 %43, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %63

44:                                               ; preds = %31
  store i32* %20, i32** %11, align 8
  %45 = load i32*, i32** %11, align 8
  %46 = load i32*, i32** %10, align 8
  %47 = load i32*, i32** %11, align 8
  %48 = call i32 @wcslen(i32* %47)
  %49 = call i64 @wcsncmp(i32* %45, i32* %46, i32 %48)
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %44
  %52 = load i32*, i32** %10, align 8
  %53 = load i32*, i32** %11, align 8
  %54 = call i32 @wcslen(i32* %53)
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %52, i64 %55
  %57 = call i32* @wcsstr(i32* %56, i8* bitcast ([3 x i32]* @.str.2 to i8*))
  %58 = icmp eq i32* %57, null
  br i1 %58, label %59, label %61

59:                                               ; preds = %51
  %60 = load i32, i32* @TRUE, align 4
  store i32 %60, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %63

61:                                               ; preds = %51, %44
  %62 = load i32, i32* @FALSE, align 4
  store i32 %62, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %63

63:                                               ; preds = %61, %59, %39
  %64 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %64)
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @PathIsRelativeW(i32*) #2

declare dso_local i32 @openvpn_swprintf(i32*, i32, i8*, i32*, i32*) #2

declare dso_local i32 @_countof(i32*) #2

declare dso_local i64 @MultiByteToWideChar(i32, i32, i32*, i32, i32*, i32) #2

declare dso_local i32 @MsgToEventLog(i32, i32) #2

declare dso_local i32 @TEXT(i8*) #2

declare dso_local i64 @wcsncmp(i32*, i32*, i32) #2

declare dso_local i32 @wcslen(i32*) #2

declare dso_local i32* @wcsstr(i32*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
