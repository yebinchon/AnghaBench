; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_ati_fragment_shader.c_wrap_op2.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_ati_fragment_shader.c_wrap_op2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_gl_info = type { i32 }

@GL_ALPHA = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [59 x i8] c"glAlphaFragmentOp2ATI(%s, %s, %s, %s, %s, %s, %s, %s, %s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [63 x i8] c"glColorFragmentOp2ATI(%s, %s, %s, %s, %s, %s, %s, %s, %s, %s)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_gl_info*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @wrap_op2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wrap_op2(%struct.wined3d_gl_info* %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7, i64 %8, i64 %9, i64 %10) #0 {
  %12 = alloca %struct.wined3d_gl_info*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  store %struct.wined3d_gl_info* %0, %struct.wined3d_gl_info** %12, align 8
  store i64 %1, i64* %13, align 8
  store i64 %2, i64* %14, align 8
  store i64 %3, i64* %15, align 8
  store i64 %4, i64* %16, align 8
  store i64 %5, i64* %17, align 8
  store i64 %6, i64* %18, align 8
  store i64 %7, i64* %19, align 8
  store i64 %8, i64* %20, align 8
  store i64 %9, i64* %21, align 8
  store i64 %10, i64* %22, align 8
  %23 = load i64, i64* %15, align 8
  %24 = load i64, i64* @GL_ALPHA, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %57

26:                                               ; preds = %11
  %27 = load i64, i64* %13, align 8
  %28 = call i32 @debug_op(i64 %27)
  %29 = load i64, i64* %14, align 8
  %30 = call i32 @debug_register(i64 %29)
  %31 = load i64, i64* %16, align 8
  %32 = call i32 @debug_dstmod(i64 %31)
  %33 = load i64, i64* %17, align 8
  %34 = call i32 @debug_register(i64 %33)
  %35 = load i64, i64* %18, align 8
  %36 = call i32 @debug_rep(i64 %35)
  %37 = load i64, i64* %19, align 8
  %38 = call i32 @debug_argmod(i64 %37)
  %39 = load i64, i64* %20, align 8
  %40 = call i32 @debug_register(i64 %39)
  %41 = load i64, i64* %21, align 8
  %42 = call i32 @debug_rep(i64 %41)
  %43 = load i64, i64* %22, align 8
  %44 = call i32 @debug_argmod(i64 %43)
  %45 = call i32 (i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, ...) @TRACE(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %30, i32 %32, i32 %34, i32 %36, i32 %38, i32 %40, i32 %42, i32 %44)
  %46 = load i64, i64* %13, align 8
  %47 = load i64, i64* %14, align 8
  %48 = load i64, i64* %16, align 8
  %49 = load i64, i64* %17, align 8
  %50 = load i64, i64* %18, align 8
  %51 = load i64, i64* %19, align 8
  %52 = load i64, i64* %20, align 8
  %53 = load i64, i64* %21, align 8
  %54 = load i64, i64* %22, align 8
  %55 = call i32 @glAlphaFragmentOp2ATI(i64 %46, i64 %47, i64 %48, i64 %49, i64 %50, i64 %51, i64 %52, i64 %53, i64 %54)
  %56 = call i32 @GL_EXTCALL(i32 %55)
  br label %91

57:                                               ; preds = %11
  %58 = load i64, i64* %13, align 8
  %59 = call i32 @debug_op(i64 %58)
  %60 = load i64, i64* %14, align 8
  %61 = call i32 @debug_register(i64 %60)
  %62 = load i64, i64* %15, align 8
  %63 = call i32 @debug_mask(i64 %62)
  %64 = load i64, i64* %16, align 8
  %65 = call i32 @debug_dstmod(i64 %64)
  %66 = load i64, i64* %17, align 8
  %67 = call i32 @debug_register(i64 %66)
  %68 = load i64, i64* %18, align 8
  %69 = call i32 @debug_rep(i64 %68)
  %70 = load i64, i64* %19, align 8
  %71 = call i32 @debug_argmod(i64 %70)
  %72 = load i64, i64* %20, align 8
  %73 = call i32 @debug_register(i64 %72)
  %74 = load i64, i64* %21, align 8
  %75 = call i32 @debug_rep(i64 %74)
  %76 = load i64, i64* %22, align 8
  %77 = call i32 @debug_argmod(i64 %76)
  %78 = call i32 (i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, ...) @TRACE(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i32 %59, i32 %61, i32 %63, i32 %65, i32 %67, i32 %69, i32 %71, i32 %73, i32 %75, i32 %77)
  %79 = load i64, i64* %13, align 8
  %80 = load i64, i64* %14, align 8
  %81 = load i64, i64* %15, align 8
  %82 = load i64, i64* %16, align 8
  %83 = load i64, i64* %17, align 8
  %84 = load i64, i64* %18, align 8
  %85 = load i64, i64* %19, align 8
  %86 = load i64, i64* %20, align 8
  %87 = load i64, i64* %21, align 8
  %88 = load i64, i64* %22, align 8
  %89 = call i32 @glColorFragmentOp2ATI(i64 %79, i64 %80, i64 %81, i64 %82, i64 %83, i64 %84, i64 %85, i64 %86, i64 %87, i64 %88)
  %90 = call i32 @GL_EXTCALL(i32 %89)
  br label %91

91:                                               ; preds = %57, %26
  ret void
}

declare dso_local i32 @TRACE(i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, ...) #1

declare dso_local i32 @debug_op(i64) #1

declare dso_local i32 @debug_register(i64) #1

declare dso_local i32 @debug_dstmod(i64) #1

declare dso_local i32 @debug_rep(i64) #1

declare dso_local i32 @debug_argmod(i64) #1

declare dso_local i32 @GL_EXTCALL(i32) #1

declare dso_local i32 @glAlphaFragmentOp2ATI(i64, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @debug_mask(i64) #1

declare dso_local i32 @glColorFragmentOp2ATI(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
