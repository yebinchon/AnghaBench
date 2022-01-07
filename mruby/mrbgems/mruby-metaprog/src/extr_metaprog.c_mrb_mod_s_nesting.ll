; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-metaprog/src/extr_metaprog.c_mrb_mod_s_nesting.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-metaprog/src/extr_metaprog.c_mrb_mod_s_nesting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.RProc* }
%struct.RProc = type { %struct.RProc* }
%struct.RClass = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32)* @mrb_mod_s_nesting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrb_mod_s_nesting(%struct.TYPE_9__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.RProc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.RClass*, align 8
  %8 = alloca %struct.RClass*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.RClass* null, %struct.RClass** %7, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %10 = call i32 @mrb_ary_new(%struct.TYPE_9__* %9)
  store i32 %10, i32* %6, align 4
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i64 -1
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load %struct.RProc*, %struct.RProc** %17, align 8
  store %struct.RProc* %18, %struct.RProc** %5, align 8
  %19 = load %struct.RProc*, %struct.RProc** %5, align 8
  %20 = call i32 @MRB_PROC_CFUNC_P(%struct.RProc* %19)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i32 @mrb_assert(i32 %23)
  br label %25

25:                                               ; preds = %46, %2
  %26 = load %struct.RProc*, %struct.RProc** %5, align 8
  %27 = icmp ne %struct.RProc* %26, null
  br i1 %27, label %28, label %50

28:                                               ; preds = %25
  %29 = load %struct.RProc*, %struct.RProc** %5, align 8
  %30 = call i64 @MRB_PROC_SCOPE_P(%struct.RProc* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %46

32:                                               ; preds = %28
  %33 = load %struct.RProc*, %struct.RProc** %5, align 8
  %34 = call %struct.RClass* @MRB_PROC_TARGET_CLASS(%struct.RProc* %33)
  store %struct.RClass* %34, %struct.RClass** %8, align 8
  %35 = load %struct.RClass*, %struct.RClass** %8, align 8
  %36 = load %struct.RClass*, %struct.RClass** %7, align 8
  %37 = icmp ne %struct.RClass* %35, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %32
  %39 = load %struct.RClass*, %struct.RClass** %8, align 8
  store %struct.RClass* %39, %struct.RClass** %7, align 8
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.RClass*, %struct.RClass** %7, align 8
  %43 = call i32 @mrb_obj_value(%struct.RClass* %42)
  %44 = call i32 @mrb_ary_push(%struct.TYPE_9__* %40, i32 %41, i32 %43)
  br label %45

45:                                               ; preds = %38, %32
  br label %46

46:                                               ; preds = %45, %28
  %47 = load %struct.RProc*, %struct.RProc** %5, align 8
  %48 = getelementptr inbounds %struct.RProc, %struct.RProc* %47, i32 0, i32 0
  %49 = load %struct.RProc*, %struct.RProc** %48, align 8
  store %struct.RProc* %49, %struct.RProc** %5, align 8
  br label %25

50:                                               ; preds = %25
  %51 = load i32, i32* %6, align 4
  ret i32 %51
}

declare dso_local i32 @mrb_ary_new(%struct.TYPE_9__*) #1

declare dso_local i32 @mrb_assert(i32) #1

declare dso_local i32 @MRB_PROC_CFUNC_P(%struct.RProc*) #1

declare dso_local i64 @MRB_PROC_SCOPE_P(%struct.RProc*) #1

declare dso_local %struct.RClass* @MRB_PROC_TARGET_CLASS(%struct.RProc*) #1

declare dso_local i32 @mrb_ary_push(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @mrb_obj_value(%struct.RClass*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
