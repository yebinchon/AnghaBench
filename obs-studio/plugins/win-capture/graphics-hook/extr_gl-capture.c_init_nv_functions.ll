; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/win-capture/graphics-hook/extr_gl-capture.c_init_nv_functions.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/win-capture/graphics-hook/extr_gl-capture.c_init_nv_functions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [30 x i8] c"wglDXSetResourceShareHandleNV\00", align 1
@jimglDXSetResourceShareHandleNV = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"wglDXOpenDeviceNV\00", align 1
@jimglDXOpenDeviceNV = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"wglDXCloseDeviceNV\00", align 1
@jimglDXCloseDeviceNV = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [22 x i8] c"wglDXRegisterObjectNV\00", align 1
@jimglDXRegisterObjectNV = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [24 x i8] c"wglDXUnregisterObjectNV\00", align 1
@jimglDXUnregisterObjectNV = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [20 x i8] c"wglDXObjectAccessNV\00", align 1
@jimglDXObjectAccessNV = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [19 x i8] c"wglDXLockObjectsNV\00", align 1
@jimglDXLockObjectsNV = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [21 x i8] c"wglDXUnlockObjectsNV\00", align 1
@jimglDXUnlockObjectsNV = common dso_local global i8* null, align 8
@nv_capture_available = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [40 x i8] c"Shared-texture OpenGL capture available\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @init_nv_functions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_nv_functions() #0 {
  %1 = call i8* @get_proc(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i8* %1, i8** @jimglDXSetResourceShareHandleNV, align 8
  %2 = call i8* @get_proc(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  store i8* %2, i8** @jimglDXOpenDeviceNV, align 8
  %3 = call i8* @get_proc(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  store i8* %3, i8** @jimglDXCloseDeviceNV, align 8
  %4 = call i8* @get_proc(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  store i8* %4, i8** @jimglDXRegisterObjectNV, align 8
  %5 = call i8* @get_proc(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  store i8* %5, i8** @jimglDXUnregisterObjectNV, align 8
  %6 = call i8* @get_proc(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  store i8* %6, i8** @jimglDXObjectAccessNV, align 8
  %7 = call i8* @get_proc(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  store i8* %7, i8** @jimglDXLockObjectsNV, align 8
  %8 = call i8* @get_proc(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  store i8* %8, i8** @jimglDXUnlockObjectsNV, align 8
  %9 = load i8*, i8** @jimglDXSetResourceShareHandleNV, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %34

11:                                               ; preds = %0
  %12 = load i8*, i8** @jimglDXOpenDeviceNV, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %34

14:                                               ; preds = %11
  %15 = load i8*, i8** @jimglDXCloseDeviceNV, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %34

17:                                               ; preds = %14
  %18 = load i8*, i8** @jimglDXRegisterObjectNV, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %34

20:                                               ; preds = %17
  %21 = load i8*, i8** @jimglDXUnregisterObjectNV, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %34

23:                                               ; preds = %20
  %24 = load i8*, i8** @jimglDXObjectAccessNV, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %34

26:                                               ; preds = %23
  %27 = load i8*, i8** @jimglDXLockObjectsNV, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = load i8*, i8** @jimglDXUnlockObjectsNV, align 8
  %31 = icmp ne i8* %30, null
  %32 = xor i1 %31, true
  %33 = xor i1 %32, true
  br label %34

34:                                               ; preds = %29, %26, %23, %20, %17, %14, %11, %0
  %35 = phi i1 [ false, %26 ], [ false, %23 ], [ false, %20 ], [ false, %17 ], [ false, %14 ], [ false, %11 ], [ false, %0 ], [ %33, %29 ]
  %36 = zext i1 %35 to i32
  store i32 %36, i32* @nv_capture_available, align 4
  %37 = load i32, i32* @nv_capture_available, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = call i32 @hlog(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0))
  br label %41

41:                                               ; preds = %39, %34
  ret void
}

declare dso_local i8* @get_proc(i8*) #1

declare dso_local i32 @hlog(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
