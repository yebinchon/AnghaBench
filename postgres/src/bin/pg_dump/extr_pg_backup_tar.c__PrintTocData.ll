; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_backup_tar.c__PrintTocData.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_backup_tar.c__PrintTocData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64 }
%struct.TYPE_13__ = type { i64, i64, i64 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"\\.\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"COPY \00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c" FROM stdin;\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"unexpected COPY statement syntax: \22%s\22\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c" FROM '$$PATH$$/%s';\0A\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"\\i $$PATH$$/%s\0A\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"BLOBS\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, %struct.TYPE_13__*)* @_PrintTocData to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_PrintTocData(%struct.TYPE_14__* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %4, align 8
  %8 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %11, %struct.TYPE_12__** %5, align 8
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %15, %struct.TYPE_11__** %6, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  br label %96

21:                                               ; preds = %2
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %81

26:                                               ; preds = %21
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %74

31:                                               ; preds = %26
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %33 = call i32 (%struct.TYPE_14__*, i8*, ...) @ahprintf(%struct.TYPE_14__* %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = call i64 @strlen(i64 %36)
  %38 = trunc i64 %37 to i32
  %39 = sub nsw i32 %38, 13
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp slt i32 %40, 6
  br i1 %41, label %57, label %42

42:                                               ; preds = %31
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = call i64 @strncmp(i64 %45, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 5)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %42
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %51, %53
  %55 = call i64 @strcmp(i64 %54, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %48, %42, %31
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @fatal(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i64 %60)
  br label %62

62:                                               ; preds = %57, %48
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %68 = call i32 @ahwrite(i64 %65, i32 1, i32 %66, %struct.TYPE_14__* %67)
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 (%struct.TYPE_14__*, i8*, ...) @ahprintf(%struct.TYPE_14__* %69, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %72)
  br label %80

74:                                               ; preds = %26
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 (%struct.TYPE_14__*, i8*, ...) @ahprintf(%struct.TYPE_14__* %75, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %78)
  br label %80

80:                                               ; preds = %74, %62
  br label %96

81:                                               ; preds = %21
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = call i64 @strcmp(i64 %84, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %81
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %89 = call i32 @_LoadBlobs(%struct.TYPE_14__* %88)
  br label %96

90:                                               ; preds = %81
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @_PrintFileData(%struct.TYPE_14__* %91, i32 %94)
  br label %96

96:                                               ; preds = %20, %80, %90, %87
  ret void
}

declare dso_local i32 @ahprintf(%struct.TYPE_14__*, i8*, ...) #1

declare dso_local i64 @strlen(i64) #1

declare dso_local i64 @strncmp(i64, i8*, i32) #1

declare dso_local i64 @strcmp(i64, i8*) #1

declare dso_local i32 @fatal(i8*, i64) #1

declare dso_local i32 @ahwrite(i64, i32, i32, %struct.TYPE_14__*) #1

declare dso_local i32 @_LoadBlobs(%struct.TYPE_14__*) #1

declare dso_local i32 @_PrintFileData(%struct.TYPE_14__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
