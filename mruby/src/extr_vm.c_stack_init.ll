; ModuleID = '/home/carl/AnghaBench/mruby/src/extr_vm.c_stack_init.c'
source_filename = "/home/carl/AnghaBench/mruby/src/extr_vm.c_stack_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.mrb_context* }
%struct.mrb_context = type { i32*, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__*, i32*, i32* }
%struct.TYPE_6__ = type { i32*, i32 }

@STACK_INIT_SIZE = common dso_local global i32 0, align 4
@CALLINFO_INIT_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @stack_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stack_init(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca %struct.mrb_context*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 1
  %6 = load %struct.mrb_context*, %struct.mrb_context** %5, align 8
  store %struct.mrb_context* %6, %struct.mrb_context** %3, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %8 = load i32, i32* @STACK_INIT_SIZE, align 4
  %9 = call i64 @mrb_calloc(%struct.TYPE_5__* %7, i32 %8, i32 4)
  %10 = inttoptr i64 %9 to i32*
  %11 = load %struct.mrb_context*, %struct.mrb_context** %3, align 8
  %12 = getelementptr inbounds %struct.mrb_context, %struct.mrb_context* %11, i32 0, i32 4
  store i32* %10, i32** %12, align 8
  %13 = load %struct.mrb_context*, %struct.mrb_context** %3, align 8
  %14 = getelementptr inbounds %struct.mrb_context, %struct.mrb_context* %13, i32 0, i32 4
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* @STACK_INIT_SIZE, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load %struct.mrb_context*, %struct.mrb_context** %3, align 8
  %20 = getelementptr inbounds %struct.mrb_context, %struct.mrb_context* %19, i32 0, i32 5
  store i32* %18, i32** %20, align 8
  %21 = load %struct.mrb_context*, %struct.mrb_context** %3, align 8
  %22 = getelementptr inbounds %struct.mrb_context, %struct.mrb_context* %21, i32 0, i32 4
  %23 = load i32*, i32** %22, align 8
  %24 = load %struct.mrb_context*, %struct.mrb_context** %3, align 8
  %25 = getelementptr inbounds %struct.mrb_context, %struct.mrb_context* %24, i32 0, i32 0
  store i32* %23, i32** %25, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %27 = load i32, i32* @CALLINFO_INIT_SIZE, align 4
  %28 = call i64 @mrb_calloc(%struct.TYPE_5__* %26, i32 %27, i32 16)
  %29 = inttoptr i64 %28 to %struct.TYPE_6__*
  %30 = load %struct.mrb_context*, %struct.mrb_context** %3, align 8
  %31 = getelementptr inbounds %struct.mrb_context, %struct.mrb_context* %30, i32 0, i32 2
  store %struct.TYPE_6__* %29, %struct.TYPE_6__** %31, align 8
  %32 = load %struct.mrb_context*, %struct.mrb_context** %3, align 8
  %33 = getelementptr inbounds %struct.mrb_context, %struct.mrb_context* %32, i32 0, i32 2
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = load i32, i32* @CALLINFO_INIT_SIZE, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i64 %36
  %38 = load %struct.mrb_context*, %struct.mrb_context** %3, align 8
  %39 = getelementptr inbounds %struct.mrb_context, %struct.mrb_context* %38, i32 0, i32 3
  store %struct.TYPE_6__* %37, %struct.TYPE_6__** %39, align 8
  %40 = load %struct.mrb_context*, %struct.mrb_context** %3, align 8
  %41 = getelementptr inbounds %struct.mrb_context, %struct.mrb_context* %40, i32 0, i32 2
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = load %struct.mrb_context*, %struct.mrb_context** %3, align 8
  %44 = getelementptr inbounds %struct.mrb_context, %struct.mrb_context* %43, i32 0, i32 1
  store %struct.TYPE_6__* %42, %struct.TYPE_6__** %44, align 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.mrb_context*, %struct.mrb_context** %3, align 8
  %49 = getelementptr inbounds %struct.mrb_context, %struct.mrb_context* %48, i32 0, i32 1
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  store i32 %47, i32* %51, align 8
  %52 = load %struct.mrb_context*, %struct.mrb_context** %3, align 8
  %53 = getelementptr inbounds %struct.mrb_context, %struct.mrb_context* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load %struct.mrb_context*, %struct.mrb_context** %3, align 8
  %56 = getelementptr inbounds %struct.mrb_context, %struct.mrb_context* %55, i32 0, i32 1
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  store i32* %54, i32** %58, align 8
  ret void
}

declare dso_local i64 @mrb_calloc(%struct.TYPE_5__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
