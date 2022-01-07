; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_activate.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_context = type { i64, i32 }
%struct.wined3d_texture = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"Failed to activate the new context.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_context*, %struct.wined3d_texture*, i32)* @context_activate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @context_activate(%struct.wined3d_context* %0, %struct.wined3d_texture* %1, i32 %2) #0 {
  %4 = alloca %struct.wined3d_context*, align 8
  %5 = alloca %struct.wined3d_texture*, align 8
  %6 = alloca i32, align 4
  store %struct.wined3d_context* %0, %struct.wined3d_context** %4, align 8
  store %struct.wined3d_texture* %1, %struct.wined3d_texture** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %8 = call i32 @context_enter(%struct.wined3d_context* %7)
  %9 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %10 = call i32 @context_update_window(%struct.wined3d_context* %9)
  %11 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %12 = load %struct.wined3d_texture*, %struct.wined3d_texture** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @context_setup_target(%struct.wined3d_context* %11, %struct.wined3d_texture* %12, i32 %13)
  %15 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %16 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  br label %40

20:                                               ; preds = %3
  %21 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %22 = call %struct.wined3d_context* (...) @context_get_current()
  %23 = icmp ne %struct.wined3d_context* %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %20
  %25 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %26 = call i32 @context_set_current(%struct.wined3d_context* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  %29 = call i32 @ERR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %24
  br label %40

31:                                               ; preds = %20
  %32 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %33 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %38 = call i32 @context_set_gl_context(%struct.wined3d_context* %37)
  br label %39

39:                                               ; preds = %36, %31
  br label %40

40:                                               ; preds = %19, %39, %30
  ret void
}

declare dso_local i32 @context_enter(%struct.wined3d_context*) #1

declare dso_local i32 @context_update_window(%struct.wined3d_context*) #1

declare dso_local i32 @context_setup_target(%struct.wined3d_context*, %struct.wined3d_texture*, i32) #1

declare dso_local %struct.wined3d_context* @context_get_current(...) #1

declare dso_local i32 @context_set_current(%struct.wined3d_context*) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @context_set_gl_context(%struct.wined3d_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
