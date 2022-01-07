; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-compiler/core/extr_codegen.c_for_body.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-compiler/core/extr_codegen.c_for_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i32, %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i64 }
%struct.TYPE_27__ = type { %struct.TYPE_25__*, %struct.TYPE_27__* }
%struct.TYPE_25__ = type { %struct.TYPE_24__*, i32 }
%struct.TYPE_24__ = type { i32 }
%struct.loopinfo = type { i32 }

@VAL = common dso_local global i32 0, align 4
@OP_ENTER = common dso_local global i32 0, align 4
@NOVAL = common dso_local global i32 0, align 4
@LOOP_FOR = common dso_local global i32 0, align 4
@OP_RETURN = common dso_local global i32 0, align 4
@OP_BLOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"each\00", align 1
@OP_SENDB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_28__*, %struct.TYPE_27__*)* @for_body to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @for_body(%struct.TYPE_28__* %0, %struct.TYPE_27__* %1) #0 {
  %3 = alloca %struct.TYPE_28__*, align 8
  %4 = alloca %struct.TYPE_27__*, align 8
  %5 = alloca %struct.TYPE_28__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.loopinfo*, align 8
  %8 = alloca %struct.TYPE_27__*, align 8
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %3, align 8
  store %struct.TYPE_27__* %1, %struct.TYPE_27__** %4, align 8
  %9 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  store %struct.TYPE_28__* %9, %struct.TYPE_28__** %5, align 8
  %10 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %11 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @VAL, align 4
  %17 = call i32 @codegen(%struct.TYPE_28__* %10, i32 %15, i32 %16)
  %18 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %22 = call %struct.TYPE_28__* @scope_new(i32 %20, %struct.TYPE_28__* %21, i32* null)
  store %struct.TYPE_28__* %22, %struct.TYPE_28__** %3, align 8
  %23 = call i32 (...) @push()
  %24 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_27__*, %struct.TYPE_27__** %25, align 8
  store %struct.TYPE_27__* %26, %struct.TYPE_27__** %8, align 8
  %27 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %28 = load i32, i32* @OP_ENTER, align 4
  %29 = call i32 @genop_W(%struct.TYPE_28__* %27, i32 %28, i32 262144)
  %30 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_27__*, %struct.TYPE_27__** %31, align 8
  %33 = icmp ne %struct.TYPE_27__* %32, null
  br i1 %33, label %34, label %55

34:                                               ; preds = %2
  %35 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_27__*, %struct.TYPE_27__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_25__*, %struct.TYPE_25__** %38, align 8
  %40 = icmp ne %struct.TYPE_25__* %39, null
  br i1 %40, label %55, label %41

41:                                               ; preds = %34
  %42 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_25__*, %struct.TYPE_25__** %43, align 8
  %45 = icmp ne %struct.TYPE_25__* %44, null
  br i1 %45, label %55, label %46

46:                                               ; preds = %41
  %47 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %48 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_27__*, %struct.TYPE_27__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_27__*, %struct.TYPE_27__** %51, align 8
  %53 = load i32, i32* @NOVAL, align 4
  %54 = call i32 @gen_assignment(%struct.TYPE_28__* %47, %struct.TYPE_27__* %52, i32 1, i32 %53)
  br label %60

55:                                               ; preds = %41, %34, %2
  %56 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %57 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %58 = load i32, i32* @VAL, align 4
  %59 = call i32 @gen_vmassignment(%struct.TYPE_28__* %56, %struct.TYPE_27__* %57, i32 1, i32 %58)
  br label %60

60:                                               ; preds = %55, %46
  %61 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %62 = load i32, i32* @LOOP_FOR, align 4
  %63 = call %struct.loopinfo* @loop_push(%struct.TYPE_28__* %61, i32 %62)
  store %struct.loopinfo* %63, %struct.loopinfo** %7, align 8
  %64 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %65 = call i32 @new_label(%struct.TYPE_28__* %64)
  %66 = load %struct.loopinfo*, %struct.loopinfo** %7, align 8
  %67 = getelementptr inbounds %struct.loopinfo, %struct.loopinfo* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 4
  %68 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %69 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_25__*, %struct.TYPE_25__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_24__*, %struct.TYPE_24__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @VAL, align 4
  %77 = call i32 @codegen(%struct.TYPE_28__* %68, i32 %75, i32 %76)
  %78 = call i32 (...) @pop()
  %79 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %80 = load i32, i32* @OP_RETURN, align 4
  %81 = call i32 (...) @cursp()
  %82 = call i32 @gen_return(%struct.TYPE_28__* %79, i32 %80, i32 %81)
  %83 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %84 = load i32, i32* @NOVAL, align 4
  %85 = call i32 @loop_pop(%struct.TYPE_28__* %83, i32 %84)
  %86 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %87 = call i32 @scope_finish(%struct.TYPE_28__* %86)
  %88 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  store %struct.TYPE_28__* %88, %struct.TYPE_28__** %3, align 8
  %89 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %90 = load i32, i32* @OP_BLOCK, align 4
  %91 = call i32 (...) @cursp()
  %92 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_26__*, %struct.TYPE_26__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = sub nsw i64 %96, 1
  %98 = call i32 @genop_2(%struct.TYPE_28__* %89, i32 %90, i32 %91, i64 %97)
  %99 = call i32 (...) @push()
  %100 = call i32 (...) @pop()
  %101 = call i32 (...) @pop()
  %102 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %103 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @mrb_intern_lit(i32 %105, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %107 = call i32 @new_sym(%struct.TYPE_28__* %102, i32 %106)
  store i32 %107, i32* %6, align 4
  %108 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %109 = load i32, i32* @OP_SENDB, align 4
  %110 = call i32 (...) @cursp()
  %111 = load i32, i32* %6, align 4
  %112 = call i32 @genop_3(%struct.TYPE_28__* %108, i32 %109, i32 %110, i32 %111, i32 0)
  ret void
}

declare dso_local i32 @codegen(%struct.TYPE_28__*, i32, i32) #1

declare dso_local %struct.TYPE_28__* @scope_new(i32, %struct.TYPE_28__*, i32*) #1

declare dso_local i32 @push(...) #1

declare dso_local i32 @genop_W(%struct.TYPE_28__*, i32, i32) #1

declare dso_local i32 @gen_assignment(%struct.TYPE_28__*, %struct.TYPE_27__*, i32, i32) #1

declare dso_local i32 @gen_vmassignment(%struct.TYPE_28__*, %struct.TYPE_27__*, i32, i32) #1

declare dso_local %struct.loopinfo* @loop_push(%struct.TYPE_28__*, i32) #1

declare dso_local i32 @new_label(%struct.TYPE_28__*) #1

declare dso_local i32 @pop(...) #1

declare dso_local i32 @gen_return(%struct.TYPE_28__*, i32, i32) #1

declare dso_local i32 @cursp(...) #1

declare dso_local i32 @loop_pop(%struct.TYPE_28__*, i32) #1

declare dso_local i32 @scope_finish(%struct.TYPE_28__*) #1

declare dso_local i32 @genop_2(%struct.TYPE_28__*, i32, i32, i64) #1

declare dso_local i32 @new_sym(%struct.TYPE_28__*, i32) #1

declare dso_local i32 @mrb_intern_lit(i32, i8*) #1

declare dso_local i32 @genop_3(%struct.TYPE_28__*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
