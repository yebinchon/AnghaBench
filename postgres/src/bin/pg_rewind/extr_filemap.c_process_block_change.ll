; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_rewind/extr_filemap.c_process_block_change.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_rewind/extr_filemap.c_process_block_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_7__ = type { i8*, i32, i32, i32, i32, i32 }

@filemap = common dso_local global %struct.TYPE_6__* null, align 8
@RELSEG_SIZE = common dso_local global i32 0, align 4
@path_cmp = common dso_local global i32 0, align 4
@BLCKSZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"unexpected page modification for directory or symbolic link \22%s\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @process_block_change(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_7__, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_6__*, align 8
  %14 = alloca %struct.TYPE_7__**, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** @filemap, align 8
  store %struct.TYPE_6__* %15, %struct.TYPE_6__** %13, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @Assert(i32 %18)
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @RELSEG_SIZE, align 4
  %22 = sdiv i32 %20, %21
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @RELSEG_SIZE, align 4
  %25 = srem i32 %23, %24
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* %12, align 4
  %29 = call i8* @datasegpath(i32 %26, i32 %27, i32 %28)
  store i8* %29, i8** %7, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  store i8* %30, i8** %31, align 8
  store %struct.TYPE_7__* %8, %struct.TYPE_7__** %9, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @path_cmp, align 4
  %39 = call %struct.TYPE_7__** @bsearch(%struct.TYPE_7__** %9, i32 %34, i32 %37, i32 8, i32 %38)
  store %struct.TYPE_7__** %39, %struct.TYPE_7__*** %14, align 8
  %40 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %14, align 8
  %41 = icmp ne %struct.TYPE_7__** %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %3
  %43 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %14, align 8
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  store %struct.TYPE_7__* %44, %struct.TYPE_7__** %10, align 8
  br label %46

45:                                               ; preds = %3
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %10, align 8
  br label %46

46:                                               ; preds = %45, %42
  %47 = load i8*, i8** %7, align 8
  %48 = call i32 @pfree(i8* %47)
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %50 = icmp ne %struct.TYPE_7__* %49, null
  br i1 %50, label %51, label %96

51:                                               ; preds = %46
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @Assert(i32 %54)
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  switch i32 %58, label %95 [
    i32 130, label %59
    i32 128, label %59
    i32 132, label %74
    i32 133, label %89
    i32 129, label %89
    i32 131, label %90
  ]

59:                                               ; preds = %51, %51
  %60 = load i32, i32* %11, align 4
  %61 = add nsw i32 %60, 1
  %62 = load i32, i32* @BLCKSZ, align 4
  %63 = mul nsw i32 %61, %62
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = icmp sle i32 %63, %66
  br i1 %67, label %68, label %73

68:                                               ; preds = %59
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 4
  %71 = load i32, i32* %11, align 4
  %72 = call i32 @datapagemap_add(i32* %70, i32 %71)
  br label %73

73:                                               ; preds = %68, %59
  br label %95

74:                                               ; preds = %51
  %75 = load i32, i32* %11, align 4
  %76 = add nsw i32 %75, 1
  %77 = load i32, i32* @BLCKSZ, align 4
  %78 = mul nsw i32 %76, %77
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = icmp sle i32 %78, %81
  br i1 %82, label %83, label %88

83:                                               ; preds = %74
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 4
  %86 = load i32, i32* %11, align 4
  %87 = call i32 @datapagemap_add(i32* %85, i32 %86)
  br label %88

88:                                               ; preds = %83, %74
  br label %95

89:                                               ; preds = %51, %51
  br label %95

90:                                               ; preds = %51
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 @pg_fatal(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i8* %93)
  br label %95

95:                                               ; preds = %90, %51, %89, %88, %73
  br label %97

96:                                               ; preds = %46
  br label %97

97:                                               ; preds = %96, %95
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i8* @datasegpath(i32, i32, i32) #1

declare dso_local %struct.TYPE_7__** @bsearch(%struct.TYPE_7__**, i32, i32, i32, i32) #1

declare dso_local i32 @pfree(i8*) #1

declare dso_local i32 @datapagemap_add(i32*, i32) #1

declare dso_local i32 @pg_fatal(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
