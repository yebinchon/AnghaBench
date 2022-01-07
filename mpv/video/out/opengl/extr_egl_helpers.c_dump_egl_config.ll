; ModuleID = '/home/carl/AnghaBench/mpv/video/out/opengl/extr_egl_helpers.c_dump_egl_config.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/opengl/extr_egl_helpers.c_dump_egl_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32 }
%struct.mp_log = type { i32 }

@mp_egl_attribs = common dso_local global %struct.TYPE_3__* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"  %s=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"  %s=<error>\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mp_log*, i32, i32, i32)* @dump_egl_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_egl_config(%struct.mp_log* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mp_log*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.mp_log* %0, %struct.mp_log** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %12

12:                                               ; preds = %46, %4
  %13 = load i32, i32* %9, align 4
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mp_egl_attribs, align 8
  %15 = call i32 @MP_ARRAY_SIZE(%struct.TYPE_3__* %14)
  %16 = icmp slt i32 %13, %15
  br i1 %16, label %17, label %49

17:                                               ; preds = %12
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mp_egl_attribs, align 8
  %19 = load i32, i32* %9, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %10, align 8
  store i32 -1, i32* %11, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mp_egl_attribs, align 8
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @eglGetConfigAttrib(i32 %24, i32 %25, i32 %31, i32* %11)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %17
  %35 = load %struct.mp_log*, %struct.mp_log** %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load i8*, i8** %10, align 8
  %38 = load i32, i32* %11, align 4
  %39 = call i32 (%struct.mp_log*, i32, i8*, i8*, ...) @mp_msg(%struct.mp_log* %35, i32 %36, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %37, i32 %38)
  br label %45

40:                                               ; preds = %17
  %41 = load %struct.mp_log*, %struct.mp_log** %5, align 8
  %42 = load i32, i32* %6, align 4
  %43 = load i8*, i8** %10, align 8
  %44 = call i32 (%struct.mp_log*, i32, i8*, i8*, ...) @mp_msg(%struct.mp_log* %41, i32 %42, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %43)
  br label %45

45:                                               ; preds = %40, %34
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %9, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %9, align 4
  br label %12

49:                                               ; preds = %12
  ret void
}

declare dso_local i32 @MP_ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i64 @eglGetConfigAttrib(i32, i32, i32, i32*) #1

declare dso_local i32 @mp_msg(%struct.mp_log*, i32, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
