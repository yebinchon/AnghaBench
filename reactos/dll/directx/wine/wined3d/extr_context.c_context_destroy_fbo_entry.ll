; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_destroy_fbo_entry.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_destroy_fbo_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_context = type { i32 }
%struct.fbo_entry = type { i32, i64 }

@.str = private unnamed_addr constant [17 x i8] c"Destroy FBO %u.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_context*, %struct.fbo_entry*)* @context_destroy_fbo_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @context_destroy_fbo_entry(%struct.wined3d_context* %0, %struct.fbo_entry* %1) #0 {
  %3 = alloca %struct.wined3d_context*, align 8
  %4 = alloca %struct.fbo_entry*, align 8
  store %struct.wined3d_context* %0, %struct.wined3d_context** %3, align 8
  store %struct.fbo_entry* %1, %struct.fbo_entry** %4, align 8
  %5 = load %struct.fbo_entry*, %struct.fbo_entry** %4, align 8
  %6 = getelementptr inbounds %struct.fbo_entry, %struct.fbo_entry* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %19

9:                                                ; preds = %2
  %10 = load %struct.fbo_entry*, %struct.fbo_entry** %4, align 8
  %11 = getelementptr inbounds %struct.fbo_entry, %struct.fbo_entry* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @TRACE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 %12)
  %14 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %15 = load %struct.fbo_entry*, %struct.fbo_entry** %4, align 8
  %16 = getelementptr inbounds %struct.fbo_entry, %struct.fbo_entry* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @context_destroy_fbo(%struct.wined3d_context* %14, i64 %17)
  br label %19

19:                                               ; preds = %9, %2
  %20 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %21 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* %21, align 4
  %24 = load %struct.fbo_entry*, %struct.fbo_entry** %4, align 8
  %25 = getelementptr inbounds %struct.fbo_entry, %struct.fbo_entry* %24, i32 0, i32 0
  %26 = call i32 @list_remove(i32* %25)
  %27 = load %struct.fbo_entry*, %struct.fbo_entry** %4, align 8
  %28 = call i32 @heap_free(%struct.fbo_entry* %27)
  ret void
}

declare dso_local i32 @TRACE(i8*, i64) #1

declare dso_local i32 @context_destroy_fbo(%struct.wined3d_context*, i64) #1

declare dso_local i32 @list_remove(i32*) #1

declare dso_local i32 @heap_free(%struct.fbo_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
