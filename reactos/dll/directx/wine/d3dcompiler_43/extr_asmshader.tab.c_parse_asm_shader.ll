; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_asmshader.tab.c_parse_asm_shader.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_asmshader.tab.c_parse_asm_shader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, %struct.TYPE_3__, %struct.bwriter_shader* }
%struct.TYPE_3__ = type { i32, i64, i64 }
%struct.bwriter_shader = type { i32 }

@asm_ctx = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@PARSE_SUCCESS = common dso_local global i64 0, align 8
@PARSE_ERR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"Out of memory, no messages reported\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bwriter_shader* @parse_asm_shader(i8** %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca %struct.bwriter_shader*, align 8
  store i8** %0, i8*** %2, align 8
  store %struct.bwriter_shader* null, %struct.bwriter_shader** %3, align 8
  store %struct.bwriter_shader* null, %struct.bwriter_shader** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @asm_ctx, i32 0, i32 3), align 8
  %4 = load i64, i64* @PARSE_SUCCESS, align 8
  store i64 %4, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @asm_ctx, i32 0, i32 0), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @asm_ctx, i32 0, i32 2, i32 1), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @asm_ctx, i32 0, i32 2, i32 2), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @asm_ctx, i32 0, i32 1), align 8
  %5 = call i32 (...) @asmshader_parse()
  %6 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @asm_ctx, i32 0, i32 0), align 8
  %7 = load i64, i64* @PARSE_ERR, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load %struct.bwriter_shader*, %struct.bwriter_shader** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @asm_ctx, i32 0, i32 3), align 8
  store %struct.bwriter_shader* %10, %struct.bwriter_shader** %3, align 8
  br label %18

11:                                               ; preds = %1
  %12 = load %struct.bwriter_shader*, %struct.bwriter_shader** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @asm_ctx, i32 0, i32 3), align 8
  %13 = icmp ne %struct.bwriter_shader* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = load %struct.bwriter_shader*, %struct.bwriter_shader** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @asm_ctx, i32 0, i32 3), align 8
  %16 = call i32 @SlDeleteShader(%struct.bwriter_shader* %15)
  br label %17

17:                                               ; preds = %14, %11
  br label %18

18:                                               ; preds = %17, %9
  %19 = load i8**, i8*** %2, align 8
  %20 = icmp ne i8** %19, null
  br i1 %20, label %21, label %41

21:                                               ; preds = %18
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @asm_ctx, i32 0, i32 2, i32 2), align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %38

24:                                               ; preds = %21
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @asm_ctx, i32 0, i32 2, i32 0), align 8
  %26 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @asm_ctx, i32 0, i32 2, i32 2), align 8
  %27 = add nsw i64 %26, 1
  %28 = call i8* @d3dcompiler_realloc(i32 %25, i64 %27)
  %29 = load i8**, i8*** %2, align 8
  store i8* %28, i8** %29, align 8
  %30 = load i8**, i8*** %2, align 8
  %31 = load i8*, i8** %30, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %24
  %34 = call i32 @ERR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @asm_ctx, i32 0, i32 2, i32 0), align 8
  %36 = call i32 @d3dcompiler_free(i32 %35)
  br label %37

37:                                               ; preds = %33, %24
  br label %40

38:                                               ; preds = %21
  %39 = load i8**, i8*** %2, align 8
  store i8* null, i8** %39, align 8
  br label %40

40:                                               ; preds = %38, %37
  br label %48

41:                                               ; preds = %18
  %42 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @asm_ctx, i32 0, i32 2, i32 1), align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @asm_ctx, i32 0, i32 2, i32 0), align 8
  %46 = call i32 @d3dcompiler_free(i32 %45)
  br label %47

47:                                               ; preds = %44, %41
  br label %48

48:                                               ; preds = %47, %40
  %49 = load %struct.bwriter_shader*, %struct.bwriter_shader** %3, align 8
  ret %struct.bwriter_shader* %49
}

declare dso_local i32 @asmshader_parse(...) #1

declare dso_local i32 @SlDeleteShader(%struct.bwriter_shader*) #1

declare dso_local i8* @d3dcompiler_realloc(i32, i64) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @d3dcompiler_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
