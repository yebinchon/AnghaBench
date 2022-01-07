; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_logical.c_LoadOutputPlugin.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_logical.c_LoadOutputPlugin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32*, i32* }

@.str = private unnamed_addr constant [23 x i8] c"_PG_output_plugin_init\00", align 1
@ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [65 x i8] c"output plugins have to declare the _PG_output_plugin_init symbol\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"output plugins have to register a begin callback\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"output plugins have to register a change callback\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"output plugins have to register a commit callback\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i8*)* @LoadOutputPlugin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @LoadOutputPlugin(%struct.TYPE_4__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32 (%struct.TYPE_4__*)*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call i64 @load_external_function(i8* %6, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 0, i32* null)
  %8 = inttoptr i64 %7 to i32 (%struct.TYPE_4__*)*
  store i32 (%struct.TYPE_4__*)* %8, i32 (%struct.TYPE_4__*)** %5, align 8
  %9 = load i32 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)** %5, align 8
  %10 = icmp eq i32 (%struct.TYPE_4__*)* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @ERROR, align 4
  %13 = call i32 @elog(i32 %12, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0))
  br label %14

14:                                               ; preds = %11, %2
  %15 = load i32 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)** %5, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %17 = call i32 %15(%struct.TYPE_4__* %16)
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %14
  %23 = load i32, i32* @ERROR, align 4
  %24 = call i32 @elog(i32 %23, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  br label %25

25:                                               ; preds = %22, %14
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32, i32* @ERROR, align 4
  %32 = call i32 @elog(i32 %31, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0))
  br label %33

33:                                               ; preds = %30, %25
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i32, i32* @ERROR, align 4
  %40 = call i32 @elog(i32 %39, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0))
  br label %41

41:                                               ; preds = %38, %33
  ret void
}

declare dso_local i64 @load_external_function(i8*, i8*, i32, i32*) #1

declare dso_local i32 @elog(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
