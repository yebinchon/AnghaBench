; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-compiler/core/extr_codegen.c_genjmp2.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-compiler/core/extr_codegen.c_genjmp2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64 }
%struct.mrb_insn_data = type { i64, i64, i64 }

@OP_MOVE = common dso_local global i64 0, align 8
@OP_EXT1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_7__*, i32, i64, i32, i32)* @genjmp2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @genjmp2(%struct.TYPE_7__* %0, i32 %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.mrb_insn_data, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %14 = call i32 @no_peephole(%struct.TYPE_7__* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %39, label %16

16:                                               ; preds = %5
  %17 = load i32, i32* %10, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %39, label %19

19:                                               ; preds = %16
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  call void @mrb_last_insn(%struct.mrb_insn_data* sret %12, %struct.TYPE_7__* %20)
  %21 = getelementptr inbounds %struct.mrb_insn_data, %struct.mrb_insn_data* %12, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @OP_MOVE, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %38

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.mrb_insn_data, %struct.mrb_insn_data* %12, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %8, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %25
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  %36 = getelementptr inbounds %struct.mrb_insn_data, %struct.mrb_insn_data* %12, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %8, align 8
  br label %38

38:                                               ; preds = %30, %25, %19
  br label %39

39:                                               ; preds = %38, %16, %5
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  store i64 %42, i64* %44, align 8
  %45 = load i64, i64* %8, align 8
  %46 = icmp sgt i64 %45, 255
  br i1 %46, label %47, label %64

47:                                               ; preds = %39
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %49 = load i32, i32* @OP_EXT1, align 4
  %50 = call i32 @gen_B(%struct.TYPE_7__* %48, i32 %49)
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @gen_B(%struct.TYPE_7__* %51, i32 %52)
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %55 = load i64, i64* %8, align 8
  %56 = trunc i64 %55 to i32
  %57 = call i32 @gen_S(%struct.TYPE_7__* %54, i32 %56)
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  store i64 %60, i64* %11, align 8
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @gen_S(%struct.TYPE_7__* %61, i32 %62)
  br label %78

64:                                               ; preds = %39
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @gen_B(%struct.TYPE_7__* %65, i32 %66)
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %69 = load i64, i64* %8, align 8
  %70 = trunc i64 %69 to i32
  %71 = call i32 @gen_B(%struct.TYPE_7__* %68, i32 %70)
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  store i64 %74, i64* %11, align 8
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @gen_S(%struct.TYPE_7__* %75, i32 %76)
  br label %78

78:                                               ; preds = %64, %47
  %79 = load i64, i64* %11, align 8
  ret i64 %79
}

declare dso_local i32 @no_peephole(%struct.TYPE_7__*) #1

declare dso_local void @mrb_last_insn(%struct.mrb_insn_data* sret, %struct.TYPE_7__*) #1

declare dso_local i32 @gen_B(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @gen_S(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
