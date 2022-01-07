; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_javascript.c_script__request_event.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_javascript.c_script__request_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"Unknown event name\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @script__request_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @script__request_event(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = call i8* @js_tostring(i32* %7, i32 1)
  store i8* %8, i8** %3, align 8
  %9 = load i32*, i32** %2, align 8
  %10 = call i32 @js_toboolean(i32* %9, i32 2)
  store i32 %10, i32* %4, align 4
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %34, %1
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 256
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = load i32, i32* %6, align 4
  %16 = call i8* @mpv_event_name(i32 %15)
  store i8* %16, i8** %5, align 8
  %17 = icmp ne i8* %16, null
  br label %18

18:                                               ; preds = %14, %11
  %19 = phi i1 [ false, %11 ], [ %17, %14 ]
  br i1 %19, label %20, label %37

20:                                               ; preds = %18
  %21 = load i8*, i8** %5, align 8
  %22 = load i8*, i8** %3, align 8
  %23 = call i64 @strcmp(i8* %21, i8* %22)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %20
  %26 = load i32*, i32** %2, align 8
  %27 = load i32*, i32** %2, align 8
  %28 = call i32 @jclient(i32* %27)
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @mpv_request_event(i32 %28, i32 %29, i32 %30)
  %32 = call i32 @push_status(i32* %26, i32 %31)
  br label %40

33:                                               ; preds = %20
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %6, align 4
  br label %11

37:                                               ; preds = %18
  %38 = load i32*, i32** %2, align 8
  %39 = call i32 @push_failure(i32* %38, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %40

40:                                               ; preds = %37, %25
  ret void
}

declare dso_local i8* @js_tostring(i32*, i32) #1

declare dso_local i32 @js_toboolean(i32*, i32) #1

declare dso_local i8* @mpv_event_name(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @push_status(i32*, i32) #1

declare dso_local i32 @mpv_request_event(i32, i32, i32) #1

declare dso_local i32 @jclient(i32*) #1

declare dso_local i32 @push_failure(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
