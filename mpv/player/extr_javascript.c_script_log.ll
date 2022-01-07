; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_javascript.c_script_log.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_javascript.c_script_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_log = type { i32 }
%struct.TYPE_2__ = type { %struct.mp_log* }

@.str = private unnamed_addr constant [23 x i8] c"Invalid log level '%s'\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @script_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @script_log(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mp_log*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = call i8* @js_tostring(i32* %8, i32 1)
  store i8* %9, i8** %3, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = call i32 @mp_msg_find_level(i8* %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load i32*, i32** %2, align 8
  %16 = load i8*, i8** %3, align 8
  %17 = call i32 @js_error(i32* %15, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %16)
  br label %18

18:                                               ; preds = %14, %1
  %19 = load i32*, i32** %2, align 8
  %20 = call %struct.TYPE_2__* @jctx(i32* %19)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.mp_log*, %struct.mp_log** %21, align 8
  store %struct.mp_log* %22, %struct.mp_log** %5, align 8
  %23 = load i32*, i32** %2, align 8
  %24 = call i32 @js_gettop(i32* %23)
  store i32 %24, i32* %6, align 4
  store i32 2, i32* %7, align 4
  br label %25

25:                                               ; preds = %40, %18
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %43

29:                                               ; preds = %25
  %30 = load %struct.mp_log*, %struct.mp_log** %5, align 8
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %36 = load i32*, i32** %2, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i8* @js_tostring(i32* %36, i32 %37)
  %39 = call i32 (%struct.mp_log*, i32, i8*, ...) @mp_msg(%struct.mp_log* %30, i32 %31, i8* %35, i8* %38)
  br label %40

40:                                               ; preds = %29
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %7, align 4
  br label %25

43:                                               ; preds = %25
  %44 = load %struct.mp_log*, %struct.mp_log** %5, align 8
  %45 = load i32, i32* %4, align 4
  %46 = call i32 (%struct.mp_log*, i32, i8*, ...) @mp_msg(%struct.mp_log* %44, i32 %45, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %47 = load i32*, i32** %2, align 8
  %48 = call i32 @push_success(i32* %47)
  ret void
}

declare dso_local i8* @js_tostring(i32*, i32) #1

declare dso_local i32 @mp_msg_find_level(i8*) #1

declare dso_local i32 @js_error(i32*, i8*, i8*) #1

declare dso_local %struct.TYPE_2__* @jctx(i32*) #1

declare dso_local i32 @js_gettop(i32*) #1

declare dso_local i32 @mp_msg(%struct.mp_log*, i32, i8*, ...) #1

declare dso_local i32 @push_success(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
