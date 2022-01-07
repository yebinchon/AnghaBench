; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_upgrade/extr_info.c_create_rel_filename_map.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_upgrade/extr_info.c_create_rel_filename_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i8* }
%struct.TYPE_15__ = type { i8* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_11__ = type { i8*, i32, i32, i32 }
%struct.TYPE_12__ = type { i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"/base\00", align 1
@old_cluster = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@new_cluster = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, %struct.TYPE_13__*, %struct.TYPE_13__*, %struct.TYPE_11__*, %struct.TYPE_11__*, %struct.TYPE_12__*)* @create_rel_filename_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_rel_filename_map(i8* %0, i8* %1, %struct.TYPE_13__* %2, %struct.TYPE_13__* %3, %struct.TYPE_11__* %4, %struct.TYPE_11__* %5, %struct.TYPE_12__* %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca %struct.TYPE_11__*, align 8
  %14 = alloca %struct.TYPE_12__*, align 8
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %10, align 8
  store %struct.TYPE_13__* %3, %struct.TYPE_13__** %11, align 8
  store %struct.TYPE_11__* %4, %struct.TYPE_11__** %12, align 8
  store %struct.TYPE_11__* %5, %struct.TYPE_11__** %13, align 8
  store %struct.TYPE_12__* %6, %struct.TYPE_12__** %14, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = call i64 @strlen(i8* %17)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %7
  %21 = load i8*, i8** %8, align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  store i8* %21, i8** %23, align 8
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %25, align 8
  br label %35

26:                                               ; preds = %7
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  store i8* %29, i8** %31, align 8
  %32 = load i8*, i8** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @old_cluster, i32 0, i32 0), align 8
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 1
  store i8* %32, i8** %34, align 8
  br label %35

35:                                               ; preds = %26, %20
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = call i64 @strlen(i8* %38)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %35
  %42 = load i8*, i8** %9, align 8
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 2
  store i8* %42, i8** %44, align 8
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 3
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %46, align 8
  br label %56

47:                                               ; preds = %35
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 2
  store i8* %50, i8** %52, align 8
  %53 = load i8*, i8** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @new_cluster, i32 0, i32 0), align 8
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 3
  store i8* %53, i8** %55, align 8
  br label %56

56:                                               ; preds = %47, %41
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 9
  store i32 %59, i32* %61, align 4
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 8
  store i32 %64, i32* %66, align 8
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 7
  store i32 %69, i32* %71, align 4
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 6
  store i32 %74, i32* %76, align 8
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 5
  store i32 %79, i32* %81, align 4
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 4
  store i32 %84, i32* %86, align 8
  ret void
}

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
