; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/arc/gnu/extr_arc-ext.c_arcExtMap_coreRegName.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/arc/gnu/extr_arc-ext.c_arcExtMap_coreRegName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8* }

@FIRST_EXTENSION_CORE_REGISTER = common dso_local global i32 0, align 4
@LAST_EXTENSION_CORE_REGISTER = common dso_local global i32 0, align 4
@arc_extension_map = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @arcExtMap_coreRegName(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @FIRST_EXTENSION_CORE_REGISTER, align 4
  %6 = icmp slt i32 %4, %5
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @LAST_EXTENSION_CORE_REGISTER, align 4
  %10 = icmp sgt i32 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %7, %1
  store i8* null, i8** %2, align 8
  br label %21

12:                                               ; preds = %7
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @arc_extension_map, i32 0, i32 0), align 8
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @FIRST_EXTENSION_CORE_REGISTER, align 4
  %16 = sub nsw i32 %14, %15
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %2, align 8
  br label %21

21:                                               ; preds = %12, %11
  %22 = load i8*, i8** %2, align 8
  ret i8* %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
