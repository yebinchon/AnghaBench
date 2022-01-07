; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_wined3d_check_gl_call.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_wined3d_check_gl_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_gl_info = type { %struct.TYPE_4__, i64* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 (...)* }

@ARB_DEBUG_OUTPUT = common dso_local global i64 0, align 8
@GL_NO_ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"%s call ok %s / %u.\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c">>>>>>> %s (%#x) from %s @ %s / %u.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wined3d_check_gl_call(%struct.wined3d_gl_info* %0, i8* %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.wined3d_gl_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store %struct.wined3d_gl_info* %0, %struct.wined3d_gl_info** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %10 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %5, align 8
  %11 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %10, i32 0, i32 1
  %12 = load i64*, i64** %11, align 8
  %13 = load i64, i64* @ARB_DEBUG_OUTPUT, align 8
  %14 = getelementptr inbounds i64, i64* %12, i64 %13
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %4
  %18 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %5, align 8
  %19 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64 (...)*, i64 (...)** %21, align 8
  %23 = call i64 (...) %22()
  store i64 %23, i64* %9, align 8
  %24 = load i64, i64* @GL_NO_ERROR, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %17, %4
  %27 = load i8*, i8** %8, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @TRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %27, i8* %28, i32 %29)
  br label %50

31:                                               ; preds = %17
  br label %32

32:                                               ; preds = %46, %31
  %33 = load i64, i64* %9, align 8
  %34 = call i32 @debug_glerror(i64 %33)
  %35 = load i64, i64* %9, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @ERR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %34, i64 %35, i8* %36, i8* %37, i32 %38)
  %40 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %5, align 8
  %41 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i64 (...)*, i64 (...)** %43, align 8
  %45 = call i64 (...) %44()
  store i64 %45, i64* %9, align 8
  br label %46

46:                                               ; preds = %32
  %47 = load i64, i64* %9, align 8
  %48 = load i64, i64* @GL_NO_ERROR, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %32, label %50

50:                                               ; preds = %26, %46
  ret void
}

declare dso_local i32 @TRACE(i8*, i8*, i8*, i32) #1

declare dso_local i32 @ERR(i8*, i32, i64, i8*, i8*, i32) #1

declare dso_local i32 @debug_glerror(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
