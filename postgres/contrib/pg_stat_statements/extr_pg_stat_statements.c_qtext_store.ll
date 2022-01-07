; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pg_stat_statements/extr_pg_stat_statements.c_qtext_store.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pg_stat_statements/extr_pg_stat_statements.c_qtext_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32, i32 }

@pgss = common dso_local global i64 0, align 8
@PGSS_TEXT_FILE = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@PG_BINARY = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] zeroinitializer, align 1
@LOG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"could not write file \22%s\22: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i64*, i32*)* @qtext_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qtext_store(i8* %0, i32 %1, i64* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_2__*, align 8
  %13 = alloca %struct.TYPE_2__*, align 8
  %14 = alloca %struct.TYPE_2__*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load i64, i64* @pgss, align 8
  %16 = inttoptr i64 %15 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %16, %struct.TYPE_2__** %12, align 8
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  %19 = call i32 @SpinLockAcquire(i32* %18)
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load volatile i64, i64* %21, align 8
  store i64 %22, i64* %10, align 8
  %23 = load i32, i32* %7, align 4
  %24 = add nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load volatile i64, i64* %27, align 8
  %29 = add nsw i64 %28, %25
  store volatile i64 %29, i64* %27, align 8
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 3
  %32 = load volatile i32, i32* %31, align 8
  %33 = add nsw i32 %32, 1
  store volatile i32 %33, i32* %31, align 8
  %34 = load i32*, i32** %9, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %4
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load volatile i32, i32* %38, align 8
  %40 = load i32*, i32** %9, align 8
  store i32 %39, i32* %40, align 4
  br label %41

41:                                               ; preds = %36, %4
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  %44 = call i32 @SpinLockRelease(i32* %43)
  %45 = load i64, i64* %10, align 8
  %46 = load i64*, i64** %8, align 8
  store i64 %45, i64* %46, align 8
  %47 = load i32, i32* @PGSS_TEXT_FILE, align 4
  %48 = load i32, i32* @O_RDWR, align 4
  %49 = load i32, i32* @O_CREAT, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @PG_BINARY, align 4
  %52 = or i32 %50, %51
  %53 = call i32 @OpenTransientFile(i32 %47, i32 %52)
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %41
  br label %93

57:                                               ; preds = %41
  %58 = load i32, i32* %11, align 4
  %59 = load i64, i64* %10, align 8
  %60 = load i32, i32* @SEEK_SET, align 4
  %61 = call i64 @lseek(i32 %58, i64 %59, i32 %60)
  %62 = load i64, i64* %10, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  br label %93

65:                                               ; preds = %57
  %66 = load i32, i32* %11, align 4
  %67 = load i8*, i8** %6, align 8
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @write(i32 %66, i8* %67, i32 %68)
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %65
  br label %93

73:                                               ; preds = %65
  %74 = load i32, i32* %11, align 4
  %75 = call i32 @write(i32 %74, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  %76 = icmp ne i32 %75, 1
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  br label %93

78:                                               ; preds = %73
  %79 = load i32, i32* %11, align 4
  %80 = call i32 @CloseTransientFile(i32 %79)
  %81 = load i64, i64* @pgss, align 8
  %82 = inttoptr i64 %81 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %82, %struct.TYPE_2__** %13, align 8
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 2
  %85 = call i32 @SpinLockAcquire(i32* %84)
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 3
  %88 = load volatile i32, i32* %87, align 8
  %89 = add nsw i32 %88, -1
  store volatile i32 %89, i32* %87, align 8
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 2
  %92 = call i32 @SpinLockRelease(i32* %91)
  store i32 1, i32* %5, align 4
  br label %117

93:                                               ; preds = %77, %72, %64, %56
  %94 = load i32, i32* @LOG, align 4
  %95 = call i32 (...) @errcode_for_file_access()
  %96 = load i32, i32* @PGSS_TEXT_FILE, align 4
  %97 = call i32 @errmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %96)
  %98 = call i32 @ereport(i32 %94, i32 %97)
  %99 = load i32, i32* %11, align 4
  %100 = icmp sge i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %93
  %102 = load i32, i32* %11, align 4
  %103 = call i32 @CloseTransientFile(i32 %102)
  br label %104

104:                                              ; preds = %101, %93
  %105 = load i64, i64* @pgss, align 8
  %106 = inttoptr i64 %105 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %106, %struct.TYPE_2__** %14, align 8
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 2
  %109 = call i32 @SpinLockAcquire(i32* %108)
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 3
  %112 = load volatile i32, i32* %111, align 8
  %113 = add nsw i32 %112, -1
  store volatile i32 %113, i32* %111, align 8
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 2
  %116 = call i32 @SpinLockRelease(i32* %115)
  store i32 0, i32* %5, align 4
  br label %117

117:                                              ; preds = %104, %78
  %118 = load i32, i32* %5, align 4
  ret i32 %118
}

declare dso_local i32 @SpinLockAcquire(i32*) #1

declare dso_local i32 @SpinLockRelease(i32*) #1

declare dso_local i32 @OpenTransientFile(i32, i32) #1

declare dso_local i64 @lseek(i32, i64, i32) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @CloseTransientFile(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode_for_file_access(...) #1

declare dso_local i32 @errmsg(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
