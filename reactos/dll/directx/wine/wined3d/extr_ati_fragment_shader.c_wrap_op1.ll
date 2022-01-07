; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_ati_fragment_shader.c_wrap_op1.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_ati_fragment_shader.c_wrap_op1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_gl_info = type { i32 }

@GL_ALPHA = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"glAlphaFragmentOp1ATI(%s, %s, %s, %s, %s, %s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"glColorFragmentOp1ATI(%s, %s, %s, %s, %s, %s, %s)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_gl_info*, i64, i64, i64, i64, i64, i64, i64)* @wrap_op1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wrap_op1(%struct.wined3d_gl_info* %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7) #0 {
  %9 = alloca %struct.wined3d_gl_info*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.wined3d_gl_info* %0, %struct.wined3d_gl_info** %9, align 8
  store i64 %1, i64* %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store i64 %6, i64* %15, align 8
  store i64 %7, i64* %16, align 8
  %17 = load i64, i64* %12, align 8
  %18 = load i64, i64* @GL_ALPHA, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %42

20:                                               ; preds = %8
  %21 = load i64, i64* %10, align 8
  %22 = call i32 @debug_op(i64 %21)
  %23 = load i64, i64* %11, align 8
  %24 = call i32 @debug_register(i64 %23)
  %25 = load i64, i64* %13, align 8
  %26 = call i32 @debug_dstmod(i64 %25)
  %27 = load i64, i64* %14, align 8
  %28 = call i32 @debug_register(i64 %27)
  %29 = load i64, i64* %15, align 8
  %30 = call i32 @debug_rep(i64 %29)
  %31 = load i64, i64* %16, align 8
  %32 = call i32 @debug_argmod(i64 %31)
  %33 = call i32 (i8*, i32, i32, i32, i32, i32, i32, ...) @TRACE(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %24, i32 %26, i32 %28, i32 %30, i32 %32)
  %34 = load i64, i64* %10, align 8
  %35 = load i64, i64* %11, align 8
  %36 = load i64, i64* %13, align 8
  %37 = load i64, i64* %14, align 8
  %38 = load i64, i64* %15, align 8
  %39 = load i64, i64* %16, align 8
  %40 = call i32 @glAlphaFragmentOp1ATI(i64 %34, i64 %35, i64 %36, i64 %37, i64 %38, i64 %39)
  %41 = call i32 @GL_EXTCALL(i32 %40)
  br label %67

42:                                               ; preds = %8
  %43 = load i64, i64* %10, align 8
  %44 = call i32 @debug_op(i64 %43)
  %45 = load i64, i64* %11, align 8
  %46 = call i32 @debug_register(i64 %45)
  %47 = load i64, i64* %12, align 8
  %48 = call i32 @debug_mask(i64 %47)
  %49 = load i64, i64* %13, align 8
  %50 = call i32 @debug_dstmod(i64 %49)
  %51 = load i64, i64* %14, align 8
  %52 = call i32 @debug_register(i64 %51)
  %53 = load i64, i64* %15, align 8
  %54 = call i32 @debug_rep(i64 %53)
  %55 = load i64, i64* %16, align 8
  %56 = call i32 @debug_argmod(i64 %55)
  %57 = call i32 (i8*, i32, i32, i32, i32, i32, i32, ...) @TRACE(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %44, i32 %46, i32 %48, i32 %50, i32 %52, i32 %54, i32 %56)
  %58 = load i64, i64* %10, align 8
  %59 = load i64, i64* %11, align 8
  %60 = load i64, i64* %12, align 8
  %61 = load i64, i64* %13, align 8
  %62 = load i64, i64* %14, align 8
  %63 = load i64, i64* %15, align 8
  %64 = load i64, i64* %16, align 8
  %65 = call i32 @glColorFragmentOp1ATI(i64 %58, i64 %59, i64 %60, i64 %61, i64 %62, i64 %63, i64 %64)
  %66 = call i32 @GL_EXTCALL(i32 %65)
  br label %67

67:                                               ; preds = %42, %20
  ret void
}

declare dso_local i32 @TRACE(i8*, i32, i32, i32, i32, i32, i32, ...) #1

declare dso_local i32 @debug_op(i64) #1

declare dso_local i32 @debug_register(i64) #1

declare dso_local i32 @debug_dstmod(i64) #1

declare dso_local i32 @debug_rep(i64) #1

declare dso_local i32 @debug_argmod(i64) #1

declare dso_local i32 @GL_EXTCALL(i32) #1

declare dso_local i32 @glAlphaFragmentOp1ATI(i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @debug_mask(i64) #1

declare dso_local i32 @glColorFragmentOp1ATI(i64, i64, i64, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
