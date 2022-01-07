; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_cpu_x86_64.c_default_unwind.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_cpu_x86_64.c_default_unwind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpu_stack_walk = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"Cannot read new frame offset %s\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpu_stack_walk*, %struct.TYPE_3__*)* @default_unwind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @default_unwind(%struct.cpu_stack_walk* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpu_stack_walk*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  store %struct.cpu_stack_walk* %0, %struct.cpu_stack_walk** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %6 = load %struct.cpu_stack_walk*, %struct.cpu_stack_walk** %4, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %12 = call i32 @sw_read_mem(%struct.cpu_stack_walk* %6, i32 %9, i32* %11, i32 4)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %2
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @wine_dbgstr_longlong(i32 %17)
  %19 = call i32 @WARN(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* @FALSE, align 4
  store i32 %20, i32* %3, align 4
  br label %29

21:                                               ; preds = %2
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = add i64 %25, 4
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %23, align 4
  %28 = load i32, i32* @TRUE, align 4
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %21, %14
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @sw_read_mem(%struct.cpu_stack_walk*, i32, i32*, i32) #1

declare dso_local i32 @WARN(i8*, i32) #1

declare dso_local i32 @wine_dbgstr_longlong(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
