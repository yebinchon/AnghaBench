; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_ati_fragment_shader.c_wrap_op3.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_ati_fragment_shader.c_wrap_op3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_gl_info = type { i32 }

@GL_ALPHA = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [80 x i8] c"glAlphaFragmentOp3ATI(%s, %s,          %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [75 x i8] c"glColorFragmentOp3ATI(%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_gl_info*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @wrap_op3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wrap_op3(%struct.wined3d_gl_info* %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7, i64 %8, i64 %9, i64 %10, i64 %11, i64 %12, i64 %13) #0 {
  %15 = alloca %struct.wined3d_gl_info*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  store %struct.wined3d_gl_info* %0, %struct.wined3d_gl_info** %15, align 8
  store i64 %1, i64* %16, align 8
  store i64 %2, i64* %17, align 8
  store i64 %3, i64* %18, align 8
  store i64 %4, i64* %19, align 8
  store i64 %5, i64* %20, align 8
  store i64 %6, i64* %21, align 8
  store i64 %7, i64* %22, align 8
  store i64 %8, i64* %23, align 8
  store i64 %9, i64* %24, align 8
  store i64 %10, i64* %25, align 8
  store i64 %11, i64* %26, align 8
  store i64 %12, i64* %27, align 8
  store i64 %13, i64* %28, align 8
  %29 = load i64, i64* %18, align 8
  %30 = load i64, i64* @GL_ALPHA, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %72

32:                                               ; preds = %14
  %33 = load i64, i64* %16, align 8
  %34 = call i32 @debug_op(i64 %33)
  %35 = load i64, i64* %17, align 8
  %36 = call i32 @debug_register(i64 %35)
  %37 = load i64, i64* %19, align 8
  %38 = call i32 @debug_dstmod(i64 %37)
  %39 = load i64, i64* %20, align 8
  %40 = call i32 @debug_register(i64 %39)
  %41 = load i64, i64* %21, align 8
  %42 = call i32 @debug_rep(i64 %41)
  %43 = load i64, i64* %22, align 8
  %44 = call i32 @debug_argmod(i64 %43)
  %45 = load i64, i64* %23, align 8
  %46 = call i32 @debug_register(i64 %45)
  %47 = load i64, i64* %24, align 8
  %48 = call i32 @debug_rep(i64 %47)
  %49 = load i64, i64* %25, align 8
  %50 = call i32 @debug_argmod(i64 %49)
  %51 = load i64, i64* %26, align 8
  %52 = call i32 @debug_register(i64 %51)
  %53 = load i64, i64* %27, align 8
  %54 = call i32 @debug_rep(i64 %53)
  %55 = load i64, i64* %28, align 8
  %56 = call i32 @debug_argmod(i64 %55)
  %57 = call i32 (i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ...) @TRACE(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %36, i32 %38, i32 %40, i32 %42, i32 %44, i32 %46, i32 %48, i32 %50, i32 %52, i32 %54, i32 %56)
  %58 = load i64, i64* %16, align 8
  %59 = load i64, i64* %17, align 8
  %60 = load i64, i64* %19, align 8
  %61 = load i64, i64* %20, align 8
  %62 = load i64, i64* %21, align 8
  %63 = load i64, i64* %22, align 8
  %64 = load i64, i64* %23, align 8
  %65 = load i64, i64* %24, align 8
  %66 = load i64, i64* %25, align 8
  %67 = load i64, i64* %26, align 8
  %68 = load i64, i64* %27, align 8
  %69 = load i64, i64* %28, align 8
  %70 = call i32 @glAlphaFragmentOp3ATI(i64 %58, i64 %59, i64 %60, i64 %61, i64 %62, i64 %63, i64 %64, i64 %65, i64 %66, i64 %67, i64 %68, i64 %69)
  %71 = call i32 @GL_EXTCALL(i32 %70)
  br label %115

72:                                               ; preds = %14
  %73 = load i64, i64* %16, align 8
  %74 = call i32 @debug_op(i64 %73)
  %75 = load i64, i64* %17, align 8
  %76 = call i32 @debug_register(i64 %75)
  %77 = load i64, i64* %18, align 8
  %78 = call i32 @debug_mask(i64 %77)
  %79 = load i64, i64* %19, align 8
  %80 = call i32 @debug_dstmod(i64 %79)
  %81 = load i64, i64* %20, align 8
  %82 = call i32 @debug_register(i64 %81)
  %83 = load i64, i64* %21, align 8
  %84 = call i32 @debug_rep(i64 %83)
  %85 = load i64, i64* %22, align 8
  %86 = call i32 @debug_argmod(i64 %85)
  %87 = load i64, i64* %23, align 8
  %88 = call i32 @debug_register(i64 %87)
  %89 = load i64, i64* %24, align 8
  %90 = call i32 @debug_rep(i64 %89)
  %91 = load i64, i64* %25, align 8
  %92 = call i32 @debug_argmod(i64 %91)
  %93 = load i64, i64* %26, align 8
  %94 = call i32 @debug_register(i64 %93)
  %95 = load i64, i64* %27, align 8
  %96 = call i32 @debug_rep(i64 %95)
  %97 = load i64, i64* %28, align 8
  %98 = call i32 @debug_argmod(i64 %97)
  %99 = call i32 (i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ...) @TRACE(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.1, i64 0, i64 0), i32 %74, i32 %76, i32 %78, i32 %80, i32 %82, i32 %84, i32 %86, i32 %88, i32 %90, i32 %92, i32 %94, i32 %96, i32 %98)
  %100 = load i64, i64* %16, align 8
  %101 = load i64, i64* %17, align 8
  %102 = load i64, i64* %18, align 8
  %103 = load i64, i64* %19, align 8
  %104 = load i64, i64* %20, align 8
  %105 = load i64, i64* %21, align 8
  %106 = load i64, i64* %22, align 8
  %107 = load i64, i64* %23, align 8
  %108 = load i64, i64* %24, align 8
  %109 = load i64, i64* %25, align 8
  %110 = load i64, i64* %26, align 8
  %111 = load i64, i64* %27, align 8
  %112 = load i64, i64* %28, align 8
  %113 = call i32 @glColorFragmentOp3ATI(i64 %100, i64 %101, i64 %102, i64 %103, i64 %104, i64 %105, i64 %106, i64 %107, i64 %108, i64 %109, i64 %110, i64 %111, i64 %112)
  %114 = call i32 @GL_EXTCALL(i32 %113)
  br label %115

115:                                              ; preds = %72, %32
  ret void
}

declare dso_local i32 @TRACE(i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ...) #1

declare dso_local i32 @debug_op(i64) #1

declare dso_local i32 @debug_register(i64) #1

declare dso_local i32 @debug_dstmod(i64) #1

declare dso_local i32 @debug_rep(i64) #1

declare dso_local i32 @debug_argmod(i64) #1

declare dso_local i32 @GL_EXTCALL(i32) #1

declare dso_local i32 @glAlphaFragmentOp3ATI(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @debug_mask(i64) #1

declare dso_local i32 @glColorFragmentOp3ATI(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
