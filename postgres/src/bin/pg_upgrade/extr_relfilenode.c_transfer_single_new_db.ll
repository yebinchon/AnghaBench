; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_upgrade/extr_relfilenode.c_transfer_single_new_db.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_upgrade/extr_relfilenode.c_transfer_single_new_db.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_12__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_10__ = type { i32 }

@old_cluster = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@VISIBILITY_MAP_CRASHSAFE_CAT_VER = common dso_local global i64 0, align 8
@new_cluster = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@VISIBILITY_MAP_FROZEN_BIT_CAT_VER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"_fsm\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"_vm\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i32, i8*)* @transfer_single_new_db to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @transfer_single_new_db(%struct.TYPE_10__* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  store i32 1, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @old_cluster, i32 0, i32 1, i32 0), align 8
  %11 = load i64, i64* @VISIBILITY_MAP_CRASHSAFE_CAT_VER, align 8
  %12 = icmp slt i64 %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %3
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @new_cluster, i32 0, i32 0, i32 0), align 8
  %15 = load i64, i64* @VISIBILITY_MAP_CRASHSAFE_CAT_VER, align 8
  %16 = icmp sge i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i32 0, i32* %8, align 4
  br label %18

18:                                               ; preds = %17, %13, %3
  %19 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @old_cluster, i32 0, i32 1, i32 0), align 8
  %20 = load i64, i64* @VISIBILITY_MAP_FROZEN_BIT_CAT_VER, align 8
  %21 = icmp slt i64 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %18
  %23 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @new_cluster, i32 0, i32 0, i32 0), align 8
  %24 = load i64, i64* @VISIBILITY_MAP_FROZEN_BIT_CAT_VER, align 8
  %25 = icmp sge i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i32 1, i32* %9, align 4
  br label %27

27:                                               ; preds = %26, %22, %18
  store i32 0, i32* %7, align 4
  br label %28

28:                                               ; preds = %74, %27
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %77

32:                                               ; preds = %28
  %33 = load i8*, i8** %6, align 8
  %34 = icmp eq i8* %33, null
  br i1 %34, label %45, label %35

35:                                               ; preds = %32
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i8*, i8** %6, align 8
  %43 = call i64 @strcmp(i32 %41, i8* %42)
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %73

45:                                               ; preds = %35, %32
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i64 %48
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @transfer_relfile(%struct.TYPE_10__* %49, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @old_cluster, i32 0, i32 0), align 8
  %53 = call i32 @GET_MAJOR_VERSION(i32 %52)
  %54 = icmp sge i32 %53, 804
  br i1 %54, label %55, label %72

55:                                               ; preds = %45
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i64 %58
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @transfer_relfile(%struct.TYPE_10__* %59, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %55
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i64 %67
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @transfer_relfile(%struct.TYPE_10__* %68, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %69)
  br label %71

71:                                               ; preds = %64, %55
  br label %72

72:                                               ; preds = %71, %45
  br label %73

73:                                               ; preds = %72, %35
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %7, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %7, align 4
  br label %28

77:                                               ; preds = %28
  ret void
}

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @transfer_relfile(%struct.TYPE_10__*, i8*, i32) #1

declare dso_local i32 @GET_MAJOR_VERSION(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
