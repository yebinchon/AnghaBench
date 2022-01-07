; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-compiler/core/extr_codegen.c_gen_move.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-compiler/core/extr_codegen.c_gen_move.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.mrb_insn_data = type { i32, i32, i32 }

@OP_NOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i32, i32, i32)* @gen_move to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen_move(%struct.TYPE_9__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mrb_insn_data, align 4
  %10 = alloca { i64, i32 }, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %12 = call i64 @no_peephole(%struct.TYPE_9__* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %28

14:                                               ; preds = %4
  br label %15

15:                                               ; preds = %108, %94, %67, %51, %14
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @genop_2(%struct.TYPE_9__* %16, i32 129, i32 %17, i32 %18)
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %21 = call i64 @on_eval(%struct.TYPE_9__* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %15
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %25 = load i32, i32* @OP_NOP, align 4
  %26 = call i32 @genop_0(%struct.TYPE_9__* %24, i32 %25)
  br label %27

27:                                               ; preds = %23, %15
  br label %110

28:                                               ; preds = %4
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %30 = call { i64, i32 } @mrb_last_insn(%struct.TYPE_9__* %29)
  store { i64, i32 } %30, { i64, i32 }* %10, align 8
  %31 = bitcast { i64, i32 }* %10 to i8*
  %32 = bitcast %struct.mrb_insn_data* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %32, i8* align 8 %31, i64 12, i1 false)
  %33 = getelementptr inbounds %struct.mrb_insn_data, %struct.mrb_insn_data* %9, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  switch i32 %34, label %108 [
    i32 129, label %35
    i32 134, label %52
    i32 133, label %52
    i32 131, label %52
    i32 147, label %52
    i32 136, label %52
    i32 144, label %52
    i32 143, label %52
    i32 142, label %52
    i32 141, label %52
    i32 140, label %52
    i32 139, label %52
    i32 138, label %52
    i32 137, label %52
    i32 146, label %79
    i32 145, label %79
    i32 135, label %79
    i32 132, label %79
    i32 151, label %79
    i32 149, label %79
    i32 150, label %79
    i32 152, label %79
    i32 153, label %79
    i32 128, label %79
    i32 148, label %79
    i32 154, label %79
    i32 130, label %79
    i32 155, label %79
  ]

35:                                               ; preds = %28
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  br label %110

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.mrb_insn_data, %struct.mrb_insn_data* %9, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.mrb_insn_data, %struct.mrb_insn_data* %9, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  br label %110

51:                                               ; preds = %45, %40
  br label %15

52:                                               ; preds = %28, %28, %28, %28, %28, %28, %28, %28, %28, %28, %28, %28, %28
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %67, label %55

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.mrb_insn_data, %struct.mrb_insn_data* %9, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %67, label %60

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.mrb_insn_data, %struct.mrb_insn_data* %9, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = icmp slt i32 %62, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %60, %55, %52
  br label %15

68:                                               ; preds = %60
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %75 = getelementptr inbounds %struct.mrb_insn_data, %struct.mrb_insn_data* %9, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @genop_1(%struct.TYPE_9__* %74, i32 %76, i32 %77)
  br label %109

79:                                               ; preds = %28, %28, %28, %28, %28, %28, %28, %28, %28, %28, %28, %28, %28, %28
  %80 = load i32, i32* %8, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %94, label %82

82:                                               ; preds = %79
  %83 = getelementptr inbounds %struct.mrb_insn_data, %struct.mrb_insn_data* %9, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %7, align 4
  %86 = icmp ne i32 %84, %85
  br i1 %86, label %94, label %87

87:                                               ; preds = %82
  %88 = getelementptr inbounds %struct.mrb_insn_data, %struct.mrb_insn_data* %9, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = icmp slt i32 %89, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %87, %82, %79
  br label %15

95:                                               ; preds = %87
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %102 = getelementptr inbounds %struct.mrb_insn_data, %struct.mrb_insn_data* %9, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %6, align 4
  %105 = getelementptr inbounds %struct.mrb_insn_data, %struct.mrb_insn_data* %9, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @genop_2(%struct.TYPE_9__* %101, i32 %103, i32 %104, i32 %106)
  br label %109

108:                                              ; preds = %28
  br label %15

109:                                              ; preds = %95, %68
  br label %110

110:                                              ; preds = %27, %39, %50, %109
  ret void
}

declare dso_local i64 @no_peephole(%struct.TYPE_9__*) #1

declare dso_local i32 @genop_2(%struct.TYPE_9__*, i32, i32, i32) #1

declare dso_local i64 @on_eval(%struct.TYPE_9__*) #1

declare dso_local i32 @genop_0(%struct.TYPE_9__*, i32) #1

declare dso_local { i64, i32 } @mrb_last_insn(%struct.TYPE_9__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @genop_1(%struct.TYPE_9__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
