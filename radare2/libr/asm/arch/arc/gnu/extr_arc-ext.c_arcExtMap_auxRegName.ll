; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/arc/gnu/extr_arc-ext.c_arcExtMap_auxRegName.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/arc/gnu/extr_arc-ext.c_arcExtMap_auxRegName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.ExtAuxRegister* }
%struct.ExtAuxRegister = type { i64, i64, %struct.ExtAuxRegister* }

@arc_extension_map = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @arcExtMap_auxRegName(i64 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.ExtAuxRegister*, align 8
  store i64 %0, i64* %3, align 8
  %5 = load %struct.ExtAuxRegister*, %struct.ExtAuxRegister** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @arc_extension_map, i32 0, i32 0), align 8
  store %struct.ExtAuxRegister* %5, %struct.ExtAuxRegister** %4, align 8
  br label %6

6:                                                ; preds = %21, %1
  %7 = load %struct.ExtAuxRegister*, %struct.ExtAuxRegister** %4, align 8
  %8 = icmp ne %struct.ExtAuxRegister* %7, null
  br i1 %8, label %9, label %25

9:                                                ; preds = %6
  %10 = load %struct.ExtAuxRegister*, %struct.ExtAuxRegister** %4, align 8
  %11 = getelementptr inbounds %struct.ExtAuxRegister, %struct.ExtAuxRegister* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* %3, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %9
  %16 = load %struct.ExtAuxRegister*, %struct.ExtAuxRegister** %4, align 8
  %17 = getelementptr inbounds %struct.ExtAuxRegister, %struct.ExtAuxRegister* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to i8*
  store i8* %19, i8** %2, align 8
  br label %26

20:                                               ; preds = %9
  br label %21

21:                                               ; preds = %20
  %22 = load %struct.ExtAuxRegister*, %struct.ExtAuxRegister** %4, align 8
  %23 = getelementptr inbounds %struct.ExtAuxRegister, %struct.ExtAuxRegister* %22, i32 0, i32 2
  %24 = load %struct.ExtAuxRegister*, %struct.ExtAuxRegister** %23, align 8
  store %struct.ExtAuxRegister* %24, %struct.ExtAuxRegister** %4, align 8
  br label %6

25:                                               ; preds = %6
  store i8* null, i8** %2, align 8
  br label %26

26:                                               ; preds = %25, %15
  %27 = load i8*, i8** %2, align 8
  ret i8* %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
