; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_backup_tar.c__LoadBlobs.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_backup_tar.c__LoadBlobs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_18__, i64 }
%struct.TYPE_18__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_19__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32* }

@.str = private unnamed_addr constant [6 x i8] c"blob_\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"restoring large object with OID %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_21__*)* @_LoadBlobs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_LoadBlobs(%struct.TYPE_21__* %0) #0 {
  %2 = alloca %struct.TYPE_21__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca [4096 x i8], align 16
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %2, align 8
  %9 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %12, %struct.TYPE_19__** %4, align 8
  store i32 0, i32* %7, align 4
  %13 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %14 = call i32 @StartRestoreBlobs(%struct.TYPE_21__* %13)
  %15 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %16 = call %struct.TYPE_20__* @tarOpen(%struct.TYPE_21__* %15, i32* null, i8 signext 114)
  store %struct.TYPE_20__* %16, %struct.TYPE_20__** %5, align 8
  br label %17

17:                                               ; preds = %77, %1
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %19 = icmp ne %struct.TYPE_20__* %18, null
  br i1 %19, label %20, label %80

20:                                               ; preds = %17
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 0
  store %struct.TYPE_20__* %21, %struct.TYPE_20__** %23, align 8
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = call i64 @strncmp(i32* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %69

29:                                               ; preds = %20
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 5
  %34 = call i64 @atooid(i32* %33)
  store i64 %34, i64* %3, align 8
  %35 = load i64, i64* %3, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %65

37:                                               ; preds = %29
  %38 = load i64, i64* %3, align 8
  %39 = call i32 @pg_log_info(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %38)
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %41 = load i64, i64* %3, align 8
  %42 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @StartRestoreBlob(%struct.TYPE_21__* %40, i64 %41, i32 %47)
  br label %49

49:                                               ; preds = %54, %37
  %50 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %52 = call i64 @tarRead(i8* %50, i32 4095, %struct.TYPE_20__* %51)
  store i64 %52, i64* %6, align 8
  %53 = icmp ugt i64 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %49
  %55 = load i64, i64* %6, align 8
  %56 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 %55
  store i8 0, i8* %56, align 1
  %57 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  %58 = load i64, i64* %6, align 8
  %59 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %60 = call i32 @ahwrite(i8* %57, i32 1, i64 %58, %struct.TYPE_21__* %59)
  br label %49

61:                                               ; preds = %49
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %63 = load i64, i64* %3, align 8
  %64 = call i32 @EndRestoreBlob(%struct.TYPE_21__* %62, i64 %63)
  store i32 1, i32* %7, align 4
  br label %65

65:                                               ; preds = %61, %29
  %66 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %68 = call i32 @tarClose(%struct.TYPE_21__* %66, %struct.TYPE_20__* %67)
  br label %77

69:                                               ; preds = %20
  %70 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %71 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %72 = call i32 @tarClose(%struct.TYPE_21__* %70, %struct.TYPE_20__* %71)
  %73 = load i32, i32* %7, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  br label %80

76:                                               ; preds = %69
  br label %77

77:                                               ; preds = %76, %65
  %78 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %79 = call %struct.TYPE_20__* @tarOpen(%struct.TYPE_21__* %78, i32* null, i8 signext 114)
  store %struct.TYPE_20__* %79, %struct.TYPE_20__** %5, align 8
  br label %17

80:                                               ; preds = %75, %17
  %81 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %82 = call i32 @EndRestoreBlobs(%struct.TYPE_21__* %81)
  ret void
}

declare dso_local i32 @StartRestoreBlobs(%struct.TYPE_21__*) #1

declare dso_local %struct.TYPE_20__* @tarOpen(%struct.TYPE_21__*, i32*, i8 signext) #1

declare dso_local i64 @strncmp(i32*, i8*, i32) #1

declare dso_local i64 @atooid(i32*) #1

declare dso_local i32 @pg_log_info(i8*, i64) #1

declare dso_local i32 @StartRestoreBlob(%struct.TYPE_21__*, i64, i32) #1

declare dso_local i64 @tarRead(i8*, i32, %struct.TYPE_20__*) #1

declare dso_local i32 @ahwrite(i8*, i32, i64, %struct.TYPE_21__*) #1

declare dso_local i32 @EndRestoreBlob(%struct.TYPE_21__*, i64) #1

declare dso_local i32 @tarClose(%struct.TYPE_21__*, %struct.TYPE_20__*) #1

declare dso_local i32 @EndRestoreBlobs(%struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
