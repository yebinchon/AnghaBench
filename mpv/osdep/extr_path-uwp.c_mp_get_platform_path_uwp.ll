; ModuleID = '/home/carl/AnghaBench/mpv/osdep/extr_path-uwp.c_mp_get_platform_path_uwp.c'
source_filename = "/home/carl/AnghaBench/mpv/osdep/extr_path-uwp.c_mp_get_platform_path_uwp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"home\00", align 1
@_MAX_PATH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @mp_get_platform_path_uwp(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i64 @strcmp(i8* %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %28

12:                                               ; preds = %2
  %13 = load i32, i32* @_MAX_PATH, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %6, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %7, align 8
  %17 = load i32, i32* @_MAX_PATH, align 4
  %18 = call i64 @GetCurrentDirectoryW(i32 %17, i32* %16)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %12
  %21 = load i8*, i8** %4, align 8
  %22 = call i8* @mp_to_utf8(i8* %21, i32* %16)
  store i8* %22, i8** %3, align 8
  store i32 1, i32* %8, align 4
  br label %24

23:                                               ; preds = %12
  store i32 0, i32* %8, align 4
  br label %24

24:                                               ; preds = %23, %20
  %25 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %25)
  %26 = load i32, i32* %8, align 4
  switch i32 %26, label %31 [
    i32 0, label %27
    i32 1, label %29
  ]

27:                                               ; preds = %24
  br label %28

28:                                               ; preds = %27, %2
  store i8* null, i8** %3, align 8
  br label %29

29:                                               ; preds = %28, %24
  %30 = load i8*, i8** %3, align 8
  ret i8* %30

31:                                               ; preds = %24
  unreachable
}

declare dso_local i64 @strcmp(i8*, i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @GetCurrentDirectoryW(i32, i32*) #1

declare dso_local i8* @mp_to_utf8(i8*, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
