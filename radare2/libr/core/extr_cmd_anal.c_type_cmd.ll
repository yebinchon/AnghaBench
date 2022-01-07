; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_cmd_anal.c_type_cmd.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_cmd_anal.c_type_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"cant find function here\0A\00", align 1
@help_msg_aft = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i8*)* @type_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @type_cmd(%struct.TYPE_10__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 1
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.TYPE_11__* @r_anal_get_fcn_in(%struct.TYPE_12__* %9, i32 %12, i32 -1)
  store %struct.TYPE_11__* %13, %struct.TYPE_11__** %5, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %15 = icmp ne %struct.TYPE_11__* %14, null
  br i1 %15, label %23, label %16

16:                                               ; preds = %2
  %17 = load i8*, i8** %4, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp ne i32 %19, 63
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = call i32 @eprintf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %62

23:                                               ; preds = %16, %2
  %24 = call i32 @r_cons_break_push(i32* null, i32* null)
  %25 = load i8*, i8** %4, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  switch i32 %27, label %60 [
    i32 0, label %28
    i32 63, label %56
  ]

28:                                               ; preds = %23
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %6, align 4
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %38 = icmp ne %struct.TYPE_11__* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %28
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  br label %47

43:                                               ; preds = %28
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  br label %47

47:                                               ; preds = %43, %39
  %48 = phi i32 [ %42, %39 ], [ %46, %43 ]
  %49 = call i32 @r_anal_esil_set_pc(i32 %36, i32 %48)
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %52 = call i32 @r_core_anal_type_match(%struct.TYPE_10__* %50, %struct.TYPE_11__* %51)
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @r_core_seek(%struct.TYPE_10__* %53, i32 %54, i32 1)
  br label %60

56:                                               ; preds = %23
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %58 = load i32, i32* @help_msg_aft, align 4
  %59 = call i32 @r_core_cmd_help(%struct.TYPE_10__* %57, i32 %58)
  br label %60

60:                                               ; preds = %23, %56, %47
  %61 = call i32 (...) @r_cons_break_pop()
  br label %62

62:                                               ; preds = %60, %21
  ret void
}

declare dso_local %struct.TYPE_11__* @r_anal_get_fcn_in(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @eprintf(i8*) #1

declare dso_local i32 @r_cons_break_push(i32*, i32*) #1

declare dso_local i32 @r_anal_esil_set_pc(i32, i32) #1

declare dso_local i32 @r_core_anal_type_match(%struct.TYPE_10__*, %struct.TYPE_11__*) #1

declare dso_local i32 @r_core_seek(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @r_core_cmd_help(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @r_cons_break_pop(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
