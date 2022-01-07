; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_msc.c_pev_free.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_msc.c_pev_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pevaluator = type { i32 }
%struct.pdb_cmd_pair = type { i32*, i64 }

@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pevaluator*, %struct.pdb_cmd_pair*)* @pev_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pev_free(%struct.pevaluator* %0, %struct.pdb_cmd_pair* %1) #0 {
  %3 = alloca %struct.pevaluator*, align 8
  %4 = alloca %struct.pdb_cmd_pair*, align 8
  %5 = alloca i32, align 4
  store %struct.pevaluator* %0, %struct.pevaluator** %3, align 8
  store %struct.pdb_cmd_pair* %1, %struct.pdb_cmd_pair** %4, align 8
  %6 = load %struct.pdb_cmd_pair*, %struct.pdb_cmd_pair** %4, align 8
  %7 = icmp ne %struct.pdb_cmd_pair* %6, null
  br i1 %7, label %8, label %31

8:                                                ; preds = %2
  br label %9

9:                                                ; preds = %27, %8
  %10 = load %struct.pdb_cmd_pair*, %struct.pdb_cmd_pair** %4, align 8
  %11 = getelementptr inbounds %struct.pdb_cmd_pair, %struct.pdb_cmd_pair* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %30

14:                                               ; preds = %9
  %15 = load %struct.pevaluator*, %struct.pevaluator** %3, align 8
  %16 = load %struct.pdb_cmd_pair*, %struct.pdb_cmd_pair** %4, align 8
  %17 = getelementptr inbounds %struct.pdb_cmd_pair, %struct.pdb_cmd_pair* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = call i64 @pev_get_val(%struct.pevaluator* %15, i64 %18, i32* %5)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %14
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.pdb_cmd_pair*, %struct.pdb_cmd_pair** %4, align 8
  %24 = getelementptr inbounds %struct.pdb_cmd_pair, %struct.pdb_cmd_pair* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  store i32 %22, i32* %25, align 4
  br label %26

26:                                               ; preds = %21, %14
  br label %27

27:                                               ; preds = %26
  %28 = load %struct.pdb_cmd_pair*, %struct.pdb_cmd_pair** %4, align 8
  %29 = getelementptr inbounds %struct.pdb_cmd_pair, %struct.pdb_cmd_pair* %28, i32 1
  store %struct.pdb_cmd_pair* %29, %struct.pdb_cmd_pair** %4, align 8
  br label %9

30:                                               ; preds = %9
  br label %31

31:                                               ; preds = %30, %2
  %32 = load %struct.pevaluator*, %struct.pevaluator** %3, align 8
  %33 = getelementptr inbounds %struct.pevaluator, %struct.pevaluator* %32, i32 0, i32 0
  %34 = call i32 @pool_destroy(i32* %33)
  %35 = load i32, i32* @TRUE, align 4
  ret i32 %35
}

declare dso_local i64 @pev_get_val(%struct.pevaluator*, i64, i32*) #1

declare dso_local i32 @pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
