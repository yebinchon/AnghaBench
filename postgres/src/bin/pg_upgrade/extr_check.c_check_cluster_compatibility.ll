; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_upgrade/extr_check.c_check_cluster_compatibility.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_upgrade/extr_check.c_check_cluster_compatibility.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i32 }

@old_cluster = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@new_cluster = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@DEF_PGUPORT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [92 x i8] c"When checking a pre-PG 9.1 live old server, you must specify the old server's port number.\0A\00", align 1
@.str.1 = private unnamed_addr constant [78 x i8] c"When checking a live server, the old and new port numbers must be different.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @check_cluster_compatibility(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i32 @get_control_data(%struct.TYPE_4__* @old_cluster, i32 %3)
  %5 = call i32 @get_control_data(%struct.TYPE_4__* @new_cluster, i32 0)
  %6 = call i32 @check_control_data(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @old_cluster, i32 0, i32 2), i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @new_cluster, i32 0, i32 2))
  %7 = load i32, i32* %2, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %19

9:                                                ; preds = %1
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @old_cluster, i32 0, i32 1), align 8
  %11 = call i32 @GET_MAJOR_VERSION(i32 %10)
  %12 = icmp slt i32 %11, 901
  br i1 %12, label %13, label %19

13:                                               ; preds = %9
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @old_cluster, i32 0, i32 0), align 8
  %15 = load i64, i64* @DEF_PGUPORT, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = call i32 @pg_fatal(i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %13, %9, %1
  %20 = load i32, i32* %2, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @old_cluster, i32 0, i32 0), align 8
  %24 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @new_cluster, i32 0, i32 0), align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = call i32 @pg_fatal(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %22, %19
  ret void
}

declare dso_local i32 @get_control_data(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @check_control_data(i32*, i32*) #1

declare dso_local i32 @GET_MAJOR_VERSION(i32) #1

declare dso_local i32 @pg_fatal(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
