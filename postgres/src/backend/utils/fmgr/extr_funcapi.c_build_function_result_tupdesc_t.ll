; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/fmgr/extr_funcapi.c_build_function_result_tupdesc_t.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/fmgr/extr_funcapi.c_build_function_result_tupdesc_t.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }

@RECORDOID = common dso_local global i64 0, align 8
@Anum_pg_proc_proallargtypes = common dso_local global i32 0, align 4
@Anum_pg_proc_proargmodes = common dso_local global i32 0, align 4
@PROCOID = common dso_local global i32 0, align 4
@Anum_pg_proc_proargnames = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @build_function_result_tupdesc_t(i32 %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_2__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @GETSTRUCT(i32 %9)
  %11 = sext i32 %10 to i64
  %12 = inttoptr i64 %11 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %12, %struct.TYPE_2__** %4, align 8
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @RECORDOID, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %65

19:                                               ; preds = %1
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @Anum_pg_proc_proallargtypes, align 4
  %22 = call i64 @heap_attisnull(i32 %20, i32 %21, i32* null)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @Anum_pg_proc_proargmodes, align 4
  %27 = call i64 @heap_attisnull(i32 %25, i32 %26, i32* null)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24, %19
  store i32* null, i32** %2, align 8
  br label %65

30:                                               ; preds = %24
  %31 = load i32, i32* @PROCOID, align 4
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @Anum_pg_proc_proallargtypes, align 4
  %34 = call i32 @SysCacheGetAttr(i32 %31, i32 %32, i32 %33, i32* %8)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = call i32 @Assert(i32 %38)
  %40 = load i32, i32* @PROCOID, align 4
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* @Anum_pg_proc_proargmodes, align 4
  %43 = call i32 @SysCacheGetAttr(i32 %40, i32 %41, i32 %42, i32* %8)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = call i32 @Assert(i32 %47)
  %49 = load i32, i32* @PROCOID, align 4
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* @Anum_pg_proc_proargnames, align 4
  %52 = call i32 @SysCacheGetAttr(i32 %49, i32 %50, i32 %51, i32* %8)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %30
  %56 = call i32 @PointerGetDatum(i32* null)
  store i32 %56, i32* %7, align 4
  br label %57

57:                                               ; preds = %55, %30
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* %7, align 4
  %64 = call i32* @build_function_result_tupdesc_d(i32 %60, i32 %61, i32 %62, i32 %63)
  store i32* %64, i32** %2, align 8
  br label %65

65:                                               ; preds = %57, %29, %18
  %66 = load i32*, i32** %2, align 8
  ret i32* %66
}

declare dso_local i32 @GETSTRUCT(i32) #1

declare dso_local i64 @heap_attisnull(i32, i32, i32*) #1

declare dso_local i32 @SysCacheGetAttr(i32, i32, i32, i32*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @PointerGetDatum(i32*) #1

declare dso_local i32* @build_function_result_tupdesc_d(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
