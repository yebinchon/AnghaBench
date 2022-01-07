; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_selfuncs.c_statistic_proc_security_check.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_selfuncs.c_statistic_proc_security_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@DEBUG2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"not using statistics because function \22%s\22 is not leak-proof\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @statistic_proc_security_check(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %27

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @OidIsValid(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %27

16:                                               ; preds = %11
  %17 = load i32, i32* %5, align 4
  %18 = call i64 @get_func_leakproof(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i32 1, i32* %3, align 4
  br label %27

21:                                               ; preds = %16
  %22 = load i32, i32* @DEBUG2, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @get_func_name(i32 %23)
  %25 = call i32 @errmsg_internal(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = call i32 @ereport(i32 %22, i32 %25)
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %21, %20, %15, %10
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @OidIsValid(i32) #1

declare dso_local i64 @get_func_leakproof(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg_internal(i8*, i32) #1

declare dso_local i32 @get_func_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
