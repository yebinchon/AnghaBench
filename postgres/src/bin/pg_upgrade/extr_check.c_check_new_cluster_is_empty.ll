; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_upgrade/extr_check.c_check_new_cluster_is_empty.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_upgrade/extr_check.c_check_new_cluster_is_empty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }

@new_cluster = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@.str = private unnamed_addr constant [11 x i8] c"pg_catalog\00", align 1
@.str.1 = private unnamed_addr constant [64 x i8] c"New cluster database \22%s\22 is not empty: found relation \22%s.%s\22\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @check_new_cluster_is_empty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_new_cluster_is_empty() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  store i32 0, i32* %1, align 4
  br label %4

4:                                                ; preds = %60, %0
  %5 = load i32, i32* %1, align 4
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @new_cluster, i32 0, i32 0, i32 0), align 8
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %63

8:                                                ; preds = %4
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @new_cluster, i32 0, i32 0, i32 1), align 8
  %10 = load i32, i32* %1, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  store %struct.TYPE_9__* %13, %struct.TYPE_9__** %3, align 8
  store i32 0, i32* %2, align 4
  br label %14

14:                                               ; preds = %56, %8
  %15 = load i32, i32* %2, align 4
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %59

20:                                               ; preds = %14
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = load i32, i32* %2, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @strcmp(i32 %28, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %55

31:                                               ; preds = %20
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @new_cluster, i32 0, i32 0, i32 1), align 8
  %33 = load i32, i32* %1, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = load i32, i32* %2, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = load i32, i32* %2, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @pg_fatal(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i32 %37, i32 %45, i32 %53)
  br label %55

55:                                               ; preds = %31, %20
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %2, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %2, align 4
  br label %14

59:                                               ; preds = %14
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %1, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %1, align 4
  br label %4

63:                                               ; preds = %4
  ret void
}

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @pg_fatal(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
