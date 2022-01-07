; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/file/extr_fd.c_OpenTemporaryFile.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/file/extr_fd.c_OpenTemporaryFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@CurrentResourceOwner = common dso_local global i32 0, align 4
@numTempTableSpaces = common dso_local global i64 0, align 8
@MyDatabaseTableSpace = common dso_local global i64 0, align 8
@DEFAULTTABLESPACE_OID = common dso_local global i64 0, align 8
@FD_DELETE_AT_CLOSE = common dso_local global i32 0, align 4
@FD_TEMP_FILE_LIMIT = common dso_local global i32 0, align 4
@VfdCache = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @OpenTemporaryFile(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  store i64 0, i64* %3, align 8
  %5 = load i32, i32* %2, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @CurrentResourceOwner, align 4
  %9 = call i32 @ResourceOwnerEnlargeFiles(i32 %8)
  br label %10

10:                                               ; preds = %7, %1
  %11 = load i64, i64* @numTempTableSpaces, align 8
  %12 = icmp sgt i64 %11, 0
  br i1 %12, label %13, label %25

13:                                               ; preds = %10
  %14 = load i32, i32* %2, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %13
  %17 = call i64 (...) @GetNextTempTableSpace()
  store i64 %17, i64* %4, align 8
  %18 = load i64, i64* %4, align 8
  %19 = call i64 @OidIsValid(i64 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i64, i64* %4, align 8
  %23 = call i64 @OpenTemporaryFileInTablespace(i64 %22, i32 0)
  store i64 %23, i64* %3, align 8
  br label %24

24:                                               ; preds = %21, %16
  br label %25

25:                                               ; preds = %24, %13, %10
  %26 = load i64, i64* %3, align 8
  %27 = icmp ule i64 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %25
  %29 = load i64, i64* @MyDatabaseTableSpace, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load i64, i64* @MyDatabaseTableSpace, align 8
  br label %35

33:                                               ; preds = %28
  %34 = load i64, i64* @DEFAULTTABLESPACE_OID, align 8
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi i64 [ %32, %31 ], [ %34, %33 ]
  %37 = call i64 @OpenTemporaryFileInTablespace(i64 %36, i32 1)
  store i64 %37, i64* %3, align 8
  br label %38

38:                                               ; preds = %35, %25
  %39 = load i32, i32* @FD_DELETE_AT_CLOSE, align 4
  %40 = load i32, i32* @FD_TEMP_FILE_LIMIT, align 4
  %41 = or i32 %39, %40
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @VfdCache, align 8
  %43 = load i64, i64* %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %41
  store i32 %47, i32* %45, align 4
  %48 = load i32, i32* %2, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %38
  %51 = load i64, i64* %3, align 8
  %52 = call i32 @RegisterTemporaryFile(i64 %51)
  br label %53

53:                                               ; preds = %50, %38
  %54 = load i64, i64* %3, align 8
  ret i64 %54
}

declare dso_local i32 @ResourceOwnerEnlargeFiles(i32) #1

declare dso_local i64 @GetNextTempTableSpace(...) #1

declare dso_local i64 @OidIsValid(i64) #1

declare dso_local i64 @OpenTemporaryFileInTablespace(i64, i32) #1

declare dso_local i32 @RegisterTemporaryFile(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
