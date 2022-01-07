; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_utils.c_push_scope.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_utils.c_push_scope.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hlsl_parse_ctx = type { i32, %struct.hlsl_scope* }
%struct.hlsl_scope = type { i32, %struct.hlsl_scope*, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"Out of memory!\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Pushing a new scope\0A\00", align 1
@compare_hlsl_types_rb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @push_scope(%struct.hlsl_parse_ctx* %0) #0 {
  %2 = alloca %struct.hlsl_parse_ctx*, align 8
  %3 = alloca %struct.hlsl_scope*, align 8
  store %struct.hlsl_parse_ctx* %0, %struct.hlsl_parse_ctx** %2, align 8
  %4 = call %struct.hlsl_scope* @d3dcompiler_alloc(i32 24)
  store %struct.hlsl_scope* %4, %struct.hlsl_scope** %3, align 8
  %5 = load %struct.hlsl_scope*, %struct.hlsl_scope** %3, align 8
  %6 = icmp ne %struct.hlsl_scope* %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = call i32 @ERR(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %31

9:                                                ; preds = %1
  %10 = call i32 @TRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %11 = load %struct.hlsl_scope*, %struct.hlsl_scope** %3, align 8
  %12 = getelementptr inbounds %struct.hlsl_scope, %struct.hlsl_scope* %11, i32 0, i32 3
  %13 = call i32 @list_init(i32* %12)
  %14 = load %struct.hlsl_scope*, %struct.hlsl_scope** %3, align 8
  %15 = getelementptr inbounds %struct.hlsl_scope, %struct.hlsl_scope* %14, i32 0, i32 2
  %16 = load i32, i32* @compare_hlsl_types_rb, align 4
  %17 = call i32 @wine_rb_init(i32* %15, i32 %16)
  %18 = load %struct.hlsl_parse_ctx*, %struct.hlsl_parse_ctx** %2, align 8
  %19 = getelementptr inbounds %struct.hlsl_parse_ctx, %struct.hlsl_parse_ctx* %18, i32 0, i32 1
  %20 = load %struct.hlsl_scope*, %struct.hlsl_scope** %19, align 8
  %21 = load %struct.hlsl_scope*, %struct.hlsl_scope** %3, align 8
  %22 = getelementptr inbounds %struct.hlsl_scope, %struct.hlsl_scope* %21, i32 0, i32 1
  store %struct.hlsl_scope* %20, %struct.hlsl_scope** %22, align 8
  %23 = load %struct.hlsl_scope*, %struct.hlsl_scope** %3, align 8
  %24 = load %struct.hlsl_parse_ctx*, %struct.hlsl_parse_ctx** %2, align 8
  %25 = getelementptr inbounds %struct.hlsl_parse_ctx, %struct.hlsl_parse_ctx* %24, i32 0, i32 1
  store %struct.hlsl_scope* %23, %struct.hlsl_scope** %25, align 8
  %26 = load %struct.hlsl_parse_ctx*, %struct.hlsl_parse_ctx** %2, align 8
  %27 = getelementptr inbounds %struct.hlsl_parse_ctx, %struct.hlsl_parse_ctx* %26, i32 0, i32 0
  %28 = load %struct.hlsl_scope*, %struct.hlsl_scope** %3, align 8
  %29 = getelementptr inbounds %struct.hlsl_scope, %struct.hlsl_scope* %28, i32 0, i32 0
  %30 = call i32 @list_add_tail(i32* %27, i32* %29)
  br label %31

31:                                               ; preds = %9, %7
  ret void
}

declare dso_local %struct.hlsl_scope* @d3dcompiler_alloc(i32) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @list_init(i32*) #1

declare dso_local i32 @wine_rb_init(i32*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
