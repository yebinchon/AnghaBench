; ModuleID = '/home/carl/AnghaBench/netdata/registry/extr_registry_url.c_registry_url_unlink.c'
source_filename = "/home/carl/AnghaBench/netdata/registry/extr_registry_url.c_registry_url_unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i8*, i32, i64 }

@D_REGISTRY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"Registry: registry_url_unlink('%s'): No more links for this URL\00", align 1
@.str.1 = private unnamed_addr constant [68 x i8] c"INTERNAL ERROR: registry_url_unlink('%s'): cannot find url in index\00", align 1
@.str.2 = private unnamed_addr constant [70 x i8] c"INTERNAL ERROR: registry_url_unlink('%s'): deleted different url '%s'\00", align 1
@registry = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@.str.3 = private unnamed_addr constant [59 x i8] c"Registry: registry_url_unlink('%s'): URL has %u links left\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @registry_url_unlink(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %4 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 8
  %7 = add nsw i32 %6, -1
  store i32 %7, i32* %5, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %51, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @D_REGISTRY, align 4
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 (i32, i8*, i8*, ...) @debug(i32 %13, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i8* %16)
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %19 = call %struct.TYPE_7__* @registry_url_index_del(%struct.TYPE_7__* %18)
  store %struct.TYPE_7__* %19, %struct.TYPE_7__** %3, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %21 = icmp ne %struct.TYPE_7__* %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %12
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 (i8*, i8*, ...) @error(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0), i8* %25)
  br label %50

27:                                               ; preds = %12
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %30 = icmp ne %struct.TYPE_7__* %28, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %27
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 (i8*, i8*, ...) @error(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.2, i64 0, i64 0), i8* %34, i8* %37)
  br label %39

39:                                               ; preds = %31, %27
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = add i64 24, %42
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @registry, i32 0, i32 0), align 4
  %45 = sext i32 %44 to i64
  %46 = sub i64 %45, %43
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @registry, i32 0, i32 0), align 4
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %49 = call i32 @freez(%struct.TYPE_7__* %48)
  br label %50

50:                                               ; preds = %39, %22
  br label %60

51:                                               ; preds = %1
  %52 = load i32, i32* @D_REGISTRY, align 4
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i32 (i32, i8*, i8*, ...) @debug(i32 %52, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i64 0, i64 0), i8* %55, i32 %58)
  br label %60

60:                                               ; preds = %51, %50
  ret void
}

declare dso_local i32 @debug(i32, i8*, i8*, ...) #1

declare dso_local %struct.TYPE_7__* @registry_url_index_del(%struct.TYPE_7__*) #1

declare dso_local i32 @error(i8*, i8*, ...) #1

declare dso_local i32 @freez(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
