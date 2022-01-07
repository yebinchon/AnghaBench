; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_backup_archiver.c_StartRestoreBlob.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_backup_archiver.c_StartRestoreBlob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i32, i64, i64, i32 }

@K_VERS_1_12 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"restoring large object with OID %u\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"could not create large object %u: %s\00", align 1
@INV_WRITE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"could not open large object %u: %s\00", align 1
@.str.3 = private unnamed_addr constant [60 x i8] c"SELECT pg_catalog.lo_open(pg_catalog.lo_create('%u'), %d);\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"SELECT pg_catalog.lo_open('%u', %d);\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @StartRestoreBlob(%struct.TYPE_5__* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @K_VERS_1_12, align 8
  %13 = icmp slt i64 %11, %12
  %14 = zext i1 %13 to i32
  store i32 %14, i32* %7, align 4
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 8
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %16, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 4
  store i64 0, i64* %20, align 8
  %21 = load i64, i64* %5, align 8
  %22 = call i32 @pg_log_info(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %21)
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %3
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %30 = load i64, i64* %5, align 8
  %31 = call i32 @DropBlobIfExists(%struct.TYPE_5__* %29, i64 %30)
  br label %32

32:                                               ; preds = %28, %25, %3
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %81

37:                                               ; preds = %32
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %60

40:                                               ; preds = %37
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %5, align 8
  %45 = call i64 @lo_create(i64 %43, i64 %44)
  store i64 %45, i64* %8, align 8
  %46 = load i64, i64* %8, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %40
  %49 = load i64, i64* %8, align 8
  %50 = load i64, i64* %5, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %48, %40
  %53 = load i64, i64* %5, align 8
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @PQerrorMessage(i64 %56)
  %58 = call i32 @fatal(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i64 %53, i32 %57)
  br label %59

59:                                               ; preds = %52, %48
  br label %60

60:                                               ; preds = %59, %37
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %5, align 8
  %65 = load i32, i32* @INV_WRITE, align 4
  %66 = call i32 @lo_open(i64 %63, i64 %64, i32 %65)
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 8
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = icmp eq i32 %71, -1
  br i1 %72, label %73, label %80

73:                                               ; preds = %60
  %74 = load i64, i64* %5, align 8
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @PQerrorMessage(i64 %77)
  %79 = call i32 @fatal(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i64 %74, i32 %78)
  br label %80

80:                                               ; preds = %73, %60
  br label %95

81:                                               ; preds = %32
  %82 = load i32, i32* %7, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %81
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %86 = load i64, i64* %5, align 8
  %87 = load i32, i32* @INV_WRITE, align 4
  %88 = call i32 @ahprintf(%struct.TYPE_5__* %85, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0), i64 %86, i32 %87)
  br label %94

89:                                               ; preds = %81
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %91 = load i64, i64* %5, align 8
  %92 = load i32, i32* @INV_WRITE, align 4
  %93 = call i32 @ahprintf(%struct.TYPE_5__* %90, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i64 %91, i32 %92)
  br label %94

94:                                               ; preds = %89, %84
  br label %95

95:                                               ; preds = %94, %80
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 2
  store i32 1, i32* %97, align 4
  ret void
}

declare dso_local i32 @pg_log_info(i8*, i64) #1

declare dso_local i32 @DropBlobIfExists(%struct.TYPE_5__*, i64) #1

declare dso_local i64 @lo_create(i64, i64) #1

declare dso_local i32 @fatal(i8*, i64, i32) #1

declare dso_local i32 @PQerrorMessage(i64) #1

declare dso_local i32 @lo_open(i64, i64, i32) #1

declare dso_local i32 @ahprintf(%struct.TYPE_5__*, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
