; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_msc.c_pev_init.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_msc.c_pev_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pevaluator = type { i8*, i32, i32, i64, i32, %struct.cpu_stack_walk* }
%struct.cpu_stack_walk = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.pdb_cmd_pair = type { i8*, i32* }

@.str = private unnamed_addr constant [15 x i8] c".raSearchStart\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c".cbLocals\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c".cbParams\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c".cbSavedRegs\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pevaluator*, %struct.cpu_stack_walk*, %struct.TYPE_3__*, %struct.pdb_cmd_pair*)* @pev_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pev_init(%struct.pevaluator* %0, %struct.cpu_stack_walk* %1, %struct.TYPE_3__* %2, %struct.pdb_cmd_pair* %3) #0 {
  %5 = alloca %struct.pevaluator*, align 8
  %6 = alloca %struct.cpu_stack_walk*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca %struct.pdb_cmd_pair*, align 8
  store %struct.pevaluator* %0, %struct.pevaluator** %5, align 8
  store %struct.cpu_stack_walk* %1, %struct.cpu_stack_walk** %6, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %7, align 8
  store %struct.pdb_cmd_pair* %3, %struct.pdb_cmd_pair** %8, align 8
  %9 = load %struct.cpu_stack_walk*, %struct.cpu_stack_walk** %6, align 8
  %10 = load %struct.pevaluator*, %struct.pevaluator** %5, align 8
  %11 = getelementptr inbounds %struct.pevaluator, %struct.pevaluator* %10, i32 0, i32 5
  store %struct.cpu_stack_walk* %9, %struct.cpu_stack_walk** %11, align 8
  %12 = load %struct.pevaluator*, %struct.pevaluator** %5, align 8
  %13 = getelementptr inbounds %struct.pevaluator, %struct.pevaluator* %12, i32 0, i32 2
  %14 = call i32 @pool_init(i32* %13, i32 512)
  %15 = load %struct.pevaluator*, %struct.pevaluator** %5, align 8
  %16 = getelementptr inbounds %struct.pevaluator, %struct.pevaluator* %15, i32 0, i32 4
  %17 = call i32 @vector_init(i32* %16, i32 8, i32 8)
  %18 = load %struct.pevaluator*, %struct.pevaluator** %5, align 8
  %19 = getelementptr inbounds %struct.pevaluator, %struct.pevaluator* %18, i32 0, i32 3
  store i64 0, i64* %19, align 8
  %20 = load %struct.pevaluator*, %struct.pevaluator** %5, align 8
  %21 = getelementptr inbounds %struct.pevaluator, %struct.pevaluator* %20, i32 0, i32 2
  %22 = load %struct.pevaluator*, %struct.pevaluator** %5, align 8
  %23 = getelementptr inbounds %struct.pevaluator, %struct.pevaluator* %22, i32 0, i32 1
  %24 = call i32 @hash_table_init(i32* %21, i32* %23, i32 8)
  %25 = load %struct.pevaluator*, %struct.pevaluator** %5, align 8
  %26 = getelementptr inbounds %struct.pevaluator, %struct.pevaluator* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 0
  store i8 0, i8* %28, align 1
  br label %29

29:                                               ; preds = %44, %4
  %30 = load %struct.pdb_cmd_pair*, %struct.pdb_cmd_pair** %8, align 8
  %31 = getelementptr inbounds %struct.pdb_cmd_pair, %struct.pdb_cmd_pair* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %47

34:                                               ; preds = %29
  %35 = load %struct.pevaluator*, %struct.pevaluator** %5, align 8
  %36 = load %struct.pdb_cmd_pair*, %struct.pdb_cmd_pair** %8, align 8
  %37 = getelementptr inbounds %struct.pdb_cmd_pair, %struct.pdb_cmd_pair* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = load %struct.pdb_cmd_pair*, %struct.pdb_cmd_pair** %8, align 8
  %40 = getelementptr inbounds %struct.pdb_cmd_pair, %struct.pdb_cmd_pair* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @pev_set_value(%struct.pevaluator* %35, i8* %38, i32 %42)
  br label %44

44:                                               ; preds = %34
  %45 = load %struct.pdb_cmd_pair*, %struct.pdb_cmd_pair** %8, align 8
  %46 = getelementptr inbounds %struct.pdb_cmd_pair, %struct.pdb_cmd_pair* %45, i32 1
  store %struct.pdb_cmd_pair* %46, %struct.pdb_cmd_pair** %8, align 8
  br label %29

47:                                               ; preds = %29
  %48 = load %struct.pevaluator*, %struct.pevaluator** %5, align 8
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @pev_set_value(%struct.pevaluator* %48, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %51)
  %53 = load %struct.pevaluator*, %struct.pevaluator** %5, align 8
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @pev_set_value(%struct.pevaluator* %53, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  %58 = load %struct.pevaluator*, %struct.pevaluator** %5, align 8
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @pev_set_value(%struct.pevaluator* %58, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %61)
  %63 = load %struct.pevaluator*, %struct.pevaluator** %5, align 8
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @pev_set_value(%struct.pevaluator* %63, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %66)
  ret void
}

declare dso_local i32 @pool_init(i32*, i32) #1

declare dso_local i32 @vector_init(i32*, i32, i32) #1

declare dso_local i32 @hash_table_init(i32*, i32*, i32) #1

declare dso_local i32 @pev_set_value(%struct.pevaluator*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
