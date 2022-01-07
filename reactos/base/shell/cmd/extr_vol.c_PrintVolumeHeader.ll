; ModuleID = '/home/carl/AnghaBench/reactos/base/shell/cmd/extr_vol.c_PrintVolumeHeader.c'
source_filename = "/home/carl/AnghaBench/reactos/base/shell/cmd/extr_vol.c_PrintVolumeHeader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@STRING_VOL_HELP1 = common dso_local global i32 0, align 4
@STRING_VOL_HELP2 = common dso_local global i32 0, align 4
@STRING_VOL_HELP3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @PrintVolumeHeader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @PrintVolumeHeader(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca [80 x i8], align 16
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = getelementptr inbounds [80 x i8], [80 x i8]* %4, i64 0, i64 0
  %8 = call i32 @GetVolumeInformation(i32* %6, i8* %7, i32 80, i32* %5, i32* null, i32* null, i32* null, i32 0)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = call i32 (...) @GetLastError()
  %12 = call i32 @_T(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %13 = call i32 @ErrorMessage(i32 %11, i32 %12)
  store i32 1, i32* %2, align 4
  br label %39

14:                                               ; preds = %1
  %15 = getelementptr inbounds [80 x i8], [80 x i8]* %4, i64 0, i64 0
  %16 = load i8, i8* %15, align 16
  %17 = sext i8 %16 to i32
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %14
  %20 = load i32, i32* @STRING_VOL_HELP1, align 4
  %21 = load i32*, i32** %3, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds [80 x i8], [80 x i8]* %4, i64 0, i64 0
  %25 = call i32 (i32, i32, ...) @ConOutResPrintf(i32 %20, i32 %23, i8* %24)
  br label %32

26:                                               ; preds = %14
  %27 = load i32, i32* @STRING_VOL_HELP2, align 4
  %28 = load i32*, i32** %3, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 (i32, i32, ...) @ConOutResPrintf(i32 %27, i32 %30)
  br label %32

32:                                               ; preds = %26, %19
  %33 = load i32, i32* @STRING_VOL_HELP3, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @HIWORD(i32 %34)
  %36 = load i32, i32* %5, align 4
  %37 = call i8* @LOWORD(i32 %36)
  %38 = call i32 (i32, i32, ...) @ConOutResPrintf(i32 %33, i32 %35, i8* %37)
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %32, %10
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @GetVolumeInformation(i32*, i8*, i32, i32*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @ErrorMessage(i32, i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @_T(i8*) #1

declare dso_local i32 @ConOutResPrintf(i32, i32, ...) #1

declare dso_local i32 @HIWORD(i32) #1

declare dso_local i8* @LOWORD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
