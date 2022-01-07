; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_javascript.c_script_commandv.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_javascript.c_script_commandv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MP_CMD_MAX_ARGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Too many arguments\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @script_commandv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @script_commandv(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %7 = load i32, i32* @MP_CMD_MAX_ARGS, align 4
  %8 = add nsw i32 %7, 1
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %3, align 8
  %11 = alloca i8*, i64 %9, align 16
  store i64 %9, i64* %4, align 8
  %12 = load i32*, i32** %2, align 8
  %13 = call i32 @js_gettop(i32* %12)
  %14 = sub nsw i32 %13, 1
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @MP_ARRAY_SIZE(i8** %11)
  %17 = icmp sge i32 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i32*, i32** %2, align 8
  %20 = call i32 @js_error(i32* %19, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %18, %1
  store i32 0, i32* %6, align 4
  br label %22

22:                                               ; preds = %34, %21
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %37

26:                                               ; preds = %22
  %27 = load i32*, i32** %2, align 8
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 1, %28
  %30 = call i8* @js_tostring(i32* %27, i32 %29)
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8*, i8** %11, i64 %32
  store i8* %30, i8** %33, align 8
  br label %34

34:                                               ; preds = %26
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %6, align 4
  br label %22

37:                                               ; preds = %22
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8*, i8** %11, i64 %39
  store i8* null, i8** %40, align 8
  %41 = load i32*, i32** %2, align 8
  %42 = load i32*, i32** %2, align 8
  %43 = call i32 @jclient(i32* %42)
  %44 = call i32 @mpv_command(i32 %43, i8** %11)
  %45 = call i32 @push_status(i32* %41, i32 %44)
  %46 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %46)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @js_gettop(i32*) #2

declare dso_local i32 @MP_ARRAY_SIZE(i8**) #2

declare dso_local i32 @js_error(i32*, i8*) #2

declare dso_local i8* @js_tostring(i32*, i32) #2

declare dso_local i32 @push_status(i32*, i32) #2

declare dso_local i32 @mpv_command(i32, i8**) #2

declare dso_local i32 @jclient(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
