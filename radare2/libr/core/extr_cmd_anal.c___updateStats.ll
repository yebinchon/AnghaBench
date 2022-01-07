; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_cmd_anal.c___updateStats.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_cmd_anal.c___updateStats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

@R_ANAL_OP_MASK_BASIC = common dso_local global i32 0, align 4
@R_ANAL_OP_MASK_HINT = common dso_local global i32 0, align 4
@R_ANAL_OP_MASK_DISASM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32)* @__updateStats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__updateStats(i32* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @R_ANAL_OP_MASK_BASIC, align 4
  %17 = load i32, i32* @R_ANAL_OP_MASK_HINT, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @R_ANAL_OP_MASK_DISASM, align 4
  %20 = or i32 %18, %19
  %21 = call %struct.TYPE_4__* @r_core_anal_op(i32* %14, i32 %15, i32 %20)
  store %struct.TYPE_4__* %21, %struct.TYPE_4__** %9, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %23 = icmp ne %struct.TYPE_4__* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %4
  br label %66

25:                                               ; preds = %4
  %26 = load i32, i32* %8, align 4
  %27 = icmp eq i32 %26, 102
  br i1 %27, label %28, label %36

28:                                               ; preds = %25
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i8* @r_anal_op_family_to_string(i32 %31)
  store i8* %32, i8** %10, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = call i32 @sdb_num_inc(i32* %33, i8* %34, i32 1, i32 0)
  br label %63

36:                                               ; preds = %25
  %37 = load i32, i32* %8, align 4
  %38 = icmp eq i32 %37, 111
  br i1 %38, label %39, label %47

39:                                               ; preds = %36
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i8* @r_anal_optype_to_string(i32 %42)
  store i8* %43, i8** %11, align 8
  %44 = load i32*, i32** %6, align 8
  %45 = load i8*, i8** %11, align 8
  %46 = call i32 @sdb_num_inc(i32* %44, i8* %45, i32 1, i32 0)
  br label %62

47:                                               ; preds = %36
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i8* @strdup(i32 %50)
  store i8* %51, i8** %12, align 8
  %52 = load i8*, i8** %12, align 8
  %53 = call i8* @strstr(i8* %52, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %53, i8** %13, align 8
  %54 = load i8*, i8** %13, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %47
  %57 = load i8*, i8** %13, align 8
  store i8 0, i8* %57, align 1
  br label %58

58:                                               ; preds = %56, %47
  %59 = load i32*, i32** %6, align 8
  %60 = load i8*, i8** %12, align 8
  %61 = call i32 @sdb_num_inc(i32* %59, i8* %60, i32 1, i32 0)
  br label %62

62:                                               ; preds = %58, %39
  br label %63

63:                                               ; preds = %62, %28
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %65 = call i32 @r_anal_op_free(%struct.TYPE_4__* %64)
  br label %66

66:                                               ; preds = %63, %24
  ret void
}

declare dso_local %struct.TYPE_4__* @r_core_anal_op(i32*, i32, i32) #1

declare dso_local i8* @r_anal_op_family_to_string(i32) #1

declare dso_local i32 @sdb_num_inc(i32*, i8*, i32, i32) #1

declare dso_local i8* @r_anal_optype_to_string(i32) #1

declare dso_local i8* @strdup(i32) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @r_anal_op_free(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
