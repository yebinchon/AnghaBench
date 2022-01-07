; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo_xv.c_xv_print_ck_info.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo_xv.c_xv_print_ck_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { %struct.xvctx* }
%struct.xvctx = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"Drawing no colorkey.\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Colorkey is drawn by Xv.\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Drawing colorkey manually.\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"Colorkey is drawn as window background.\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"Using colorkey from Xv (0x%06lx).\0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"Ignoring colorkey from mpv (0x%06lx).\0A\00", align 1
@.str.6 = private unnamed_addr constant [61 x i8] c"Using colorkey from mpv (0x%06lx). Use -colorkey to change.\0A\00", align 1
@.str.7 = private unnamed_addr constant [73 x i8] c"Setting and using colorkey from mpv (0x%06lx). Use -colorkey to change.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vo*)* @xv_print_ck_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xv_print_ck_info(%struct.vo* %0) #0 {
  %2 = alloca %struct.vo*, align 8
  %3 = alloca %struct.xvctx*, align 8
  store %struct.vo* %0, %struct.vo** %2, align 8
  %4 = load %struct.vo*, %struct.vo** %2, align 8
  %5 = getelementptr inbounds %struct.vo, %struct.vo* %4, i32 0, i32 0
  %6 = load %struct.xvctx*, %struct.xvctx** %5, align 8
  store %struct.xvctx* %6, %struct.xvctx** %3, align 8
  %7 = load %struct.xvctx*, %struct.xvctx** %3, align 8
  %8 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %23 [
    i32 131, label %11
    i32 134, label %14
    i32 132, label %17
    i32 133, label %20
  ]

11:                                               ; preds = %1
  %12 = load %struct.vo*, %struct.vo** %2, align 8
  %13 = call i32 (%struct.vo*, i8*, ...) @MP_VERBOSE(%struct.vo* %12, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %59

14:                                               ; preds = %1
  %15 = load %struct.vo*, %struct.vo** %2, align 8
  %16 = call i32 (%struct.vo*, i8*, ...) @MP_VERBOSE(%struct.vo* %15, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %23

17:                                               ; preds = %1
  %18 = load %struct.vo*, %struct.vo** %2, align 8
  %19 = call i32 (%struct.vo*, i8*, ...) @MP_VERBOSE(%struct.vo* %18, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %23

20:                                               ; preds = %1
  %21 = load %struct.vo*, %struct.vo** %2, align 8
  %22 = call i32 (%struct.vo*, i8*, ...) @MP_VERBOSE(%struct.vo* %21, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  br label %23

23:                                               ; preds = %1, %20, %17, %14
  %24 = load %struct.xvctx*, %struct.xvctx** %3, align 8
  %25 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %59 [
    i32 130, label %28
    i32 128, label %34
    i32 129, label %53
  ]

28:                                               ; preds = %23
  %29 = load %struct.vo*, %struct.vo** %2, align 8
  %30 = load %struct.xvctx*, %struct.xvctx** %3, align 8
  %31 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 (%struct.vo*, i8*, ...) @MP_VERBOSE(%struct.vo* %29, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %32)
  br label %59

34:                                               ; preds = %23
  %35 = load %struct.xvctx*, %struct.xvctx** %3, align 8
  %36 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 134
  br i1 %39, label %40, label %46

40:                                               ; preds = %34
  %41 = load %struct.vo*, %struct.vo** %2, align 8
  %42 = load %struct.xvctx*, %struct.xvctx** %3, align 8
  %43 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 (%struct.vo*, i8*, ...) @MP_VERBOSE(%struct.vo* %41, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i32 %44)
  br label %52

46:                                               ; preds = %34
  %47 = load %struct.vo*, %struct.vo** %2, align 8
  %48 = load %struct.xvctx*, %struct.xvctx** %3, align 8
  %49 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 (%struct.vo*, i8*, ...) @MP_VERBOSE(%struct.vo* %47, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.6, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %46, %40
  br label %59

53:                                               ; preds = %23
  %54 = load %struct.vo*, %struct.vo** %2, align 8
  %55 = load %struct.xvctx*, %struct.xvctx** %3, align 8
  %56 = getelementptr inbounds %struct.xvctx, %struct.xvctx* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 (%struct.vo*, i8*, ...) @MP_VERBOSE(%struct.vo* %54, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.7, i64 0, i64 0), i32 %57)
  br label %59

59:                                               ; preds = %11, %23, %53, %52, %28
  ret void
}

declare dso_local i32 @MP_VERBOSE(%struct.vo*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
