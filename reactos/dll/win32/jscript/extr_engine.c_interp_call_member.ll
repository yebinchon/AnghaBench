; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_engine.c_interp_call_member.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_engine.c_interp_call_member.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"%d %d\0A\00", align 1
@DISPATCH_METHOD = common dso_local global i32 0, align 4
@DISPATCH_JSCRIPT_CALLEREXECSSOURCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*)* @interp_call_member to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @interp_call_member(%struct.TYPE_15__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_16__, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  %7 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %8 = call i32 @get_op_uint(%struct.TYPE_15__* %7, i32 0)
  store i32 %8, i32* %4, align 4
  %9 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %10 = call i32 @get_op_int(%struct.TYPE_15__* %9, i32 1)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @TRACE(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %12)
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @stack_topn_exprval(%struct.TYPE_15__* %14, i32 %15, %struct.TYPE_16__* %6)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %1
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @throw_type_error(%struct.TYPE_15__* %19, i32 %22, i32* null)
  store i32 %23, i32* %2, align 4
  br label %44

24:                                               ; preds = %1
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %26 = call i32 @clear_acc(%struct.TYPE_15__* %25)
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %28 = load i32, i32* @DISPATCH_METHOD, align 4
  %29 = load i32, i32* @DISPATCH_JSCRIPT_CALLEREXECSSOURCE, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* %4, align 4
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @stack_args(%struct.TYPE_15__* %32, i32 %33)
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %24
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 0
  br label %41

40:                                               ; preds = %24
  br label %41

41:                                               ; preds = %40, %37
  %42 = phi i32* [ %39, %37 ], [ null, %40 ]
  %43 = call i32 @exprval_call(%struct.TYPE_15__* %27, %struct.TYPE_16__* %6, i32 %30, i32 %31, i32 %34, i32* %42)
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %41, %18
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @get_op_uint(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @get_op_int(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @TRACE(i8*, i32, i32) #1

declare dso_local i32 @stack_topn_exprval(%struct.TYPE_15__*, i32, %struct.TYPE_16__*) #1

declare dso_local i32 @throw_type_error(%struct.TYPE_15__*, i32, i32*) #1

declare dso_local i32 @clear_acc(%struct.TYPE_15__*) #1

declare dso_local i32 @exprval_call(%struct.TYPE_15__*, %struct.TYPE_16__*, i32, i32, i32, i32*) #1

declare dso_local i32 @stack_args(%struct.TYPE_15__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
