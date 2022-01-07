; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/tms320/extr_tms320_dasm.c_decode_qualifiers.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/tms320/extr_tms320_dasm.c_decode_qualifiers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i64 }

@q_lr = common dso_local global i32 0, align 4
@q_cr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @decode_qualifiers(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %3 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %5 = load i32*, i32** %4, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds i32, i32* %5, i64 %8
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %22 [
    i32 152, label %11
    i32 153, label %12
    i32 154, label %13
    i32 156, label %14
    i32 157, label %18
  ]

11:                                               ; preds = %1
  br label %22

12:                                               ; preds = %1
  br label %22

13:                                               ; preds = %1
  br label %22

14:                                               ; preds = %1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %16 = load i32, i32* @q_lr, align 4
  %17 = call i32 @set_field_value(%struct.TYPE_4__* %15, i32 %16, i32 1)
  br label %22

18:                                               ; preds = %1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %20 = load i32, i32* @q_cr, align 4
  %21 = call i32 @set_field_value(%struct.TYPE_4__* %19, i32 %20, i32 1)
  br label %22

22:                                               ; preds = %1, %18, %14, %13, %12, %11
  ret void
}

declare dso_local i32 @set_field_value(%struct.TYPE_4__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
