; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/smgr/extr_md.c__mdfd_openseg.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/smgr/extr_md.c__mdfd_openseg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32*, %struct.TYPE_10__** }

@O_RDWR = common dso_local global i32 0, align 4
@PG_BINARY = common dso_local global i32 0, align 4
@RELSEG_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_10__* (%struct.TYPE_9__*, i64, i32, i32)* @_mdfd_openseg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_10__* @_mdfd_openseg(%struct.TYPE_9__* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load i32, i32* %8, align 4
  %16 = call i8* @_mdfd_segpath(%struct.TYPE_9__* %13, i64 %14, i32 %15)
  store i8* %16, i8** %12, align 8
  %17 = load i8*, i8** %12, align 8
  %18 = load i32, i32* @O_RDWR, align 4
  %19 = load i32, i32* @PG_BINARY, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* %9, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @PathNameOpenFile(i8* %17, i32 %22)
  store i32 %23, i32* %11, align 4
  %24 = load i8*, i8** %12, align 8
  %25 = call i32 @pfree(i8* %24)
  %26 = load i32, i32* %11, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %4
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %5, align 8
  br label %70

29:                                               ; preds = %4
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i64, i64* %7, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = icmp sle i32 %30, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %29
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %40 = load i64, i64* %7, align 8
  %41 = load i32, i32* %8, align 4
  %42 = add nsw i32 %41, 1
  %43 = call i32 @_fdvec_resize(%struct.TYPE_9__* %39, i64 %40, i32 %42)
  br label %44

44:                                               ; preds = %38, %29
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %46, align 8
  %48 = load i64, i64* %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %47, i64 %48
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %49, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i64 %52
  store %struct.TYPE_10__* %53, %struct.TYPE_10__** %10, align 8
  %54 = load i32, i32* %11, align 4
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* %8, align 4
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %61 = load i64, i64* %7, align 8
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %63 = call i32 @_mdnblocks(%struct.TYPE_9__* %60, i64 %61, %struct.TYPE_10__* %62)
  %64 = load i64, i64* @RELSEG_SIZE, align 8
  %65 = trunc i64 %64 to i32
  %66 = icmp sle i32 %63, %65
  %67 = zext i1 %66 to i32
  %68 = call i32 @Assert(i32 %67)
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  store %struct.TYPE_10__* %69, %struct.TYPE_10__** %5, align 8
  br label %70

70:                                               ; preds = %44, %28
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  ret %struct.TYPE_10__* %71
}

declare dso_local i8* @_mdfd_segpath(%struct.TYPE_9__*, i64, i32) #1

declare dso_local i32 @PathNameOpenFile(i8*, i32) #1

declare dso_local i32 @pfree(i8*) #1

declare dso_local i32 @_fdvec_resize(%struct.TYPE_9__*, i64, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @_mdnblocks(%struct.TYPE_9__*, i64, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
