; ModuleID = '/home/carl/AnghaBench/netdata/libnetdata/procfile/extr_procfile.c_procfile_print.c'
source_filename = "/home/carl/AnghaBench/netdata/libnetdata/procfile/extr_procfile.c_procfile_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__*, %struct.TYPE_10__* }
%struct.TYPE_12__ = type { i64, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64, i8* }
%struct.TYPE_10__ = type { i8* }

@D_PROCFILE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"File '%s' with %zu lines and %zu words\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c" line %zu starts at word %zu and has %zu words\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"     [%zu.%zu] '%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @procfile_print(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %8 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %9 = call i64 @procfile_lines(%struct.TYPE_13__* %8)
  store i64 %9, i64* %3, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = load i32, i32* @D_PROCFILE, align 4
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %13 = call i64 @procfile_filename(%struct.TYPE_13__* %12)
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @debug(i32 %11, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %13, i64 %18, i8* %23)
  store i64 0, i64* %4, align 8
  br label %25

25:                                               ; preds = %78, %1
  %26 = load i64, i64* %4, align 8
  %27 = load i64, i64* %3, align 8
  %28 = icmp ult i64 %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i64 @likely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %81

32:                                               ; preds = %25
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %34 = load i64, i64* %4, align 8
  %35 = call i64 @procfile_linewords(%struct.TYPE_13__* %33, i64 %34)
  store i64 %35, i64* %6, align 8
  %36 = load i32, i32* @D_PROCFILE, align 4
  %37 = load i64, i64* %4, align 8
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %41, align 8
  %43 = load i64, i64* %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %50, align 8
  %52 = load i64, i64* %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 1
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @debug(i32 %36, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i64 %37, i64 %46, i8* %55)
  store i64 0, i64* %7, align 8
  br label %57

57:                                               ; preds = %74, %32
  %58 = load i64, i64* %7, align 8
  %59 = load i64, i64* %6, align 8
  %60 = icmp ult i64 %58, %59
  %61 = zext i1 %60 to i32
  %62 = call i64 @likely(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %77

64:                                               ; preds = %57
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %66 = load i64, i64* %4, align 8
  %67 = load i64, i64* %7, align 8
  %68 = call i8* @procfile_lineword(%struct.TYPE_13__* %65, i64 %66, i64 %67)
  store i8* %68, i8** %5, align 8
  %69 = load i32, i32* @D_PROCFILE, align 4
  %70 = load i64, i64* %4, align 8
  %71 = load i64, i64* %7, align 8
  %72 = load i8*, i8** %5, align 8
  %73 = call i32 @debug(i32 %69, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i64 %70, i64 %71, i8* %72)
  br label %74

74:                                               ; preds = %64
  %75 = load i64, i64* %7, align 8
  %76 = add i64 %75, 1
  store i64 %76, i64* %7, align 8
  br label %57

77:                                               ; preds = %57
  br label %78

78:                                               ; preds = %77
  %79 = load i64, i64* %4, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* %4, align 8
  br label %25

81:                                               ; preds = %25
  ret void
}

declare dso_local i64 @procfile_lines(%struct.TYPE_13__*) #1

declare dso_local i32 @debug(i32, i8*, i64, i64, i8*) #1

declare dso_local i64 @procfile_filename(%struct.TYPE_13__*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @procfile_linewords(%struct.TYPE_13__*, i64) #1

declare dso_local i8* @procfile_lineword(%struct.TYPE_13__*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
