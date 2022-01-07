; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pgbench/extr_pgbench.c_initCreateTables.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pgbench/extr_pgbench.c_initCreateTables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ddlinfo = type { i8*, i8*, i8*, i32 }
%struct.ddlinfo.0 = type opaque

@initCreateTables.DDLs = internal constant [4 x %struct.ddlinfo] [%struct.ddlinfo { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.2, i32 0, i32 0), i32 0 }, %struct.ddlinfo { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i32 0, i32 0), i32 1 }, %struct.ddlinfo { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.7, i32 0, i32 0), i32 1 }, %struct.ddlinfo { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.9, i32 0, i32 0), i32 1 }], align 16
@.str = private unnamed_addr constant [16 x i8] c"pgbench_history\00", align 1
@.str.1 = private unnamed_addr constant [69 x i8] c"tid int,bid int,aid    int,delta int,mtime timestamp,filler char(22)\00", align 1
@.str.2 = private unnamed_addr constant [69 x i8] c"tid int,bid int,aid bigint,delta int,mtime timestamp,filler char(22)\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"pgbench_tellers\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"tid int not null,bid int,tbalance int,filler char(84)\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"pgbench_accounts\00", align 1
@.str.6 = private unnamed_addr constant [57 x i8] c"aid    int not null,bid int,abalance int,filler char(84)\00", align 1
@.str.7 = private unnamed_addr constant [57 x i8] c"aid bigint not null,bid int,abalance int,filler char(84)\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"pgbench_branches\00", align 1
@.str.9 = private unnamed_addr constant [46 x i8] c"bid int not null,bbalance int,filler char(88)\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [20 x i8] c"creating tables...\0A\00", align 1
@partition_method = common dso_local global i64 0, align 8
@PART_NONE = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [23 x i8] c" partition by %s (aid)\00", align 1
@PARTITION_METHOD = common dso_local global i8** null, align 8
@tablespace = common dso_local global i8* null, align 8
@.str.12 = private unnamed_addr constant [15 x i8] c" tablespace %s\00", align 1
@scale = common dso_local global i64 0, align 8
@SCALE_32BIT_THRESHOLD = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [24 x i8] c"create%s table %s(%s)%s\00", align 1
@unlogged_tables = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [10 x i8] c" unlogged\00", align 1
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @initCreateTables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @initCreateTables(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [256 x i8], align 16
  %5 = alloca [256 x i8], align 16
  %6 = alloca %struct.ddlinfo*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  %9 = load i32, i32* @stderr, align 4
  %10 = call i32 @fprintf(i32 %9, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %105, %1
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @lengthof(%struct.ddlinfo.0* bitcast ([4 x %struct.ddlinfo]* @initCreateTables.DDLs to %struct.ddlinfo.0*))
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %108

15:                                               ; preds = %11
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [4 x %struct.ddlinfo], [4 x %struct.ddlinfo]* @initCreateTables.DDLs, i64 0, i64 %17
  store %struct.ddlinfo* %18, %struct.ddlinfo** %6, align 8
  %19 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  store i8 0, i8* %19, align 16
  %20 = load i64, i64* @partition_method, align 8
  %21 = load i64, i64* @PART_NONE, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %45

23:                                               ; preds = %15
  %24 = load %struct.ddlinfo*, %struct.ddlinfo** %6, align 8
  %25 = getelementptr inbounds %struct.ddlinfo, %struct.ddlinfo* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = call i64 @strcmp(i8* %26, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %45

29:                                               ; preds = %23
  %30 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %31 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %32 = call i32 @strlen(i8* %31)
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %30, i64 %33
  %35 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %36 = call i32 @strlen(i8* %35)
  %37 = sext i32 %36 to i64
  %38 = sub i64 256, %37
  %39 = trunc i64 %38 to i32
  %40 = load i8**, i8*** @PARTITION_METHOD, align 8
  %41 = load i64, i64* @partition_method, align 8
  %42 = getelementptr inbounds i8*, i8** %40, i64 %41
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %34, i32 %39, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0), i8* %43)
  br label %54

45:                                               ; preds = %23, %15
  %46 = load %struct.ddlinfo*, %struct.ddlinfo** %6, align 8
  %47 = getelementptr inbounds %struct.ddlinfo, %struct.ddlinfo* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %52 = call i32 @append_fillfactor(i8* %51, i32 256)
  br label %53

53:                                               ; preds = %50, %45
  br label %54

54:                                               ; preds = %53, %29
  %55 = load i8*, i8** @tablespace, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %77

57:                                               ; preds = %54
  %58 = load i32*, i32** %2, align 8
  %59 = load i8*, i8** @tablespace, align 8
  %60 = load i8*, i8** @tablespace, align 8
  %61 = call i32 @strlen(i8* %60)
  %62 = call i8* @PQescapeIdentifier(i32* %58, i8* %59, i32 %61)
  store i8* %62, i8** %8, align 8
  %63 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %64 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %65 = call i32 @strlen(i8* %64)
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %63, i64 %66
  %68 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %69 = call i32 @strlen(i8* %68)
  %70 = sext i32 %69 to i64
  %71 = sub i64 256, %70
  %72 = trunc i64 %71 to i32
  %73 = load i8*, i8** %8, align 8
  %74 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %67, i32 %72, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i8* %73)
  %75 = load i8*, i8** %8, align 8
  %76 = call i32 @PQfreemem(i8* %75)
  br label %77

77:                                               ; preds = %57, %54
  %78 = load i64, i64* @scale, align 8
  %79 = load i64, i64* @SCALE_32BIT_THRESHOLD, align 8
  %80 = icmp sge i64 %78, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %77
  %82 = load %struct.ddlinfo*, %struct.ddlinfo** %6, align 8
  %83 = getelementptr inbounds %struct.ddlinfo, %struct.ddlinfo* %82, i32 0, i32 2
  %84 = load i8*, i8** %83, align 8
  br label %89

85:                                               ; preds = %77
  %86 = load %struct.ddlinfo*, %struct.ddlinfo** %6, align 8
  %87 = getelementptr inbounds %struct.ddlinfo, %struct.ddlinfo* %86, i32 0, i32 1
  %88 = load i8*, i8** %87, align 8
  br label %89

89:                                               ; preds = %85, %81
  %90 = phi i8* [ %84, %81 ], [ %88, %85 ]
  store i8* %90, i8** %7, align 8
  %91 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %92 = load i64, i64* @unlogged_tables, align 8
  %93 = icmp ne i64 %92, 0
  %94 = zext i1 %93 to i64
  %95 = select i1 %93, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)
  %96 = load %struct.ddlinfo*, %struct.ddlinfo** %6, align 8
  %97 = getelementptr inbounds %struct.ddlinfo, %struct.ddlinfo* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = load i8*, i8** %7, align 8
  %100 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %101 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %91, i32 256, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0), i8* %95, i8* %98, i8* %99, i8* %100)
  %102 = load i32*, i32** %2, align 8
  %103 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %104 = call i32 @executeStatement(i32* %102, i8* %103)
  br label %105

105:                                              ; preds = %89
  %106 = load i32, i32* %3, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %3, align 4
  br label %11

108:                                              ; preds = %11
  %109 = load i64, i64* @partition_method, align 8
  %110 = load i64, i64* @PART_NONE, align 8
  %111 = icmp ne i64 %109, %110
  br i1 %111, label %112, label %115

112:                                              ; preds = %108
  %113 = load i32*, i32** %2, align 8
  %114 = call i32 @createPartitions(i32* %113)
  br label %115

115:                                              ; preds = %112, %108
  ret void
}

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @lengthof(%struct.ddlinfo.0*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @append_fillfactor(i8*, i32) #1

declare dso_local i8* @PQescapeIdentifier(i32*, i8*, i32) #1

declare dso_local i32 @PQfreemem(i8*) #1

declare dso_local i32 @executeStatement(i32*, i8*) #1

declare dso_local i32 @createPartitions(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
