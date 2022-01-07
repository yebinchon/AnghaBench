; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_eval.c_var_redir_stop.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_eval.c_var_redir_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32* }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_14__ = type { %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_15__* }

@redir_lval = common dso_local global %struct.TYPE_15__* null, align 8
@redir_endp = common dso_local global i32* null, align 8
@redir_ga = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@NUL = common dso_local global i32 0, align 4
@VAR_STRING = common dso_local global i32 0, align 4
@redir_varname = common dso_local global %struct.TYPE_15__* null, align 8
@FALSE = common dso_local global i32 0, align 4
@FNE_CHECK_START = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @var_redir_stop() #0 {
  %1 = alloca %struct.TYPE_14__, align 8
  %2 = load %struct.TYPE_15__*, %struct.TYPE_15__** @redir_lval, align 8
  %3 = icmp ne %struct.TYPE_15__* %2, null
  br i1 %3, label %4, label %41

4:                                                ; preds = %0
  %5 = load i32*, i32** @redir_endp, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %36

7:                                                ; preds = %4
  %8 = load i32, i32* @NUL, align 4
  %9 = call i32 @ga_append(%struct.TYPE_16__* @redir_ga, i32 %8)
  %10 = load i32, i32* @VAR_STRING, align 4
  %11 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %1, i32 0, i32 1
  store i32 %10, i32* %11, align 8
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @redir_ga, i32 0, i32 0), align 8
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %1, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  store %struct.TYPE_15__* %12, %struct.TYPE_15__** %14, align 8
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** @redir_varname, align 8
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** @redir_lval, align 8
  %17 = load i32, i32* @FALSE, align 4
  %18 = load i32, i32* @FALSE, align 4
  %19 = load i32, i32* @FNE_CHECK_START, align 4
  %20 = call i32* @get_lval(%struct.TYPE_15__* %15, i32* null, %struct.TYPE_15__* %16, i32 %17, i32 %18, i32 0, i32 %19)
  store i32* %20, i32** @redir_endp, align 8
  %21 = load i32*, i32** @redir_endp, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %33

23:                                               ; preds = %7
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** @redir_lval, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** @redir_lval, align 8
  %30 = load i32*, i32** @redir_endp, align 8
  %31 = load i32, i32* @FALSE, align 4
  %32 = call i32 @set_var_lval(%struct.TYPE_15__* %29, i32* %30, %struct.TYPE_14__* %1, i32 %31, i32* bitcast ([2 x i8]* @.str to i32*))
  br label %33

33:                                               ; preds = %28, %23, %7
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** @redir_lval, align 8
  %35 = call i32 @clear_lval(%struct.TYPE_15__* %34)
  br label %36

36:                                               ; preds = %33, %4
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @redir_ga, i32 0, i32 0), align 8
  %38 = call i32 @vim_free(%struct.TYPE_15__* %37)
  store %struct.TYPE_15__* null, %struct.TYPE_15__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @redir_ga, i32 0, i32 0), align 8
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** @redir_lval, align 8
  %40 = call i32 @vim_free(%struct.TYPE_15__* %39)
  store %struct.TYPE_15__* null, %struct.TYPE_15__** @redir_lval, align 8
  br label %41

41:                                               ; preds = %36, %0
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** @redir_varname, align 8
  %43 = call i32 @vim_free(%struct.TYPE_15__* %42)
  store %struct.TYPE_15__* null, %struct.TYPE_15__** @redir_varname, align 8
  ret void
}

declare dso_local i32 @ga_append(%struct.TYPE_16__*, i32) #1

declare dso_local i32* @get_lval(%struct.TYPE_15__*, i32*, %struct.TYPE_15__*, i32, i32, i32, i32) #1

declare dso_local i32 @set_var_lval(%struct.TYPE_15__*, i32*, %struct.TYPE_14__*, i32, i32*) #1

declare dso_local i32 @clear_lval(%struct.TYPE_15__*) #1

declare dso_local i32 @vim_free(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
