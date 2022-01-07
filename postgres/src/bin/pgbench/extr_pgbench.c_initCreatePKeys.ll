; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pgbench/extr_pgbench.c_initCreatePKeys.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pgbench/extr_pgbench.c_initCreatePKeys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@initCreatePKeys.DDLINDEXes = internal constant [3 x i8*] [i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [51 x i8] c"alter table pgbench_branches add primary key (bid)\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"alter table pgbench_tellers add primary key (tid)\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"alter table pgbench_accounts add primary key (aid)\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"creating primary keys...\0A\00", align 1
@index_tablespace = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [27 x i8] c" using index tablespace %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @initCreatePKeys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @initCreatePKeys(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [256 x i8], align 16
  %5 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  %6 = load i32, i32* @stderr, align 4
  %7 = call i32 @fprintf(i32 %6, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %45, %1
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @lengthof(i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @initCreatePKeys.DDLINDEXes, i64 0, i64 0))
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %48

12:                                               ; preds = %8
  %13 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [3 x i8*], [3 x i8*]* @initCreatePKeys.DDLINDEXes, i64 0, i64 %15
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 @strlcpy(i8* %13, i8* %17, i32 256)
  %19 = load i8*, i8** @index_tablespace, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %41

21:                                               ; preds = %12
  %22 = load i32*, i32** %2, align 8
  %23 = load i8*, i8** @index_tablespace, align 8
  %24 = load i8*, i8** @index_tablespace, align 8
  %25 = call i32 @strlen(i8* %24)
  %26 = call i8* @PQescapeIdentifier(i32* %22, i8* %23, i32 %25)
  store i8* %26, i8** %5, align 8
  %27 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %28 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %29 = call i32 @strlen(i8* %28)
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %27, i64 %30
  %32 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %33 = call i32 @strlen(i8* %32)
  %34 = sext i32 %33 to i64
  %35 = sub i64 256, %34
  %36 = trunc i64 %35 to i32
  %37 = load i8*, i8** %5, align 8
  %38 = call i32 @snprintf(i8* %31, i32 %36, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8* %37)
  %39 = load i8*, i8** %5, align 8
  %40 = call i32 @PQfreemem(i8* %39)
  br label %41

41:                                               ; preds = %21, %12
  %42 = load i32*, i32** %2, align 8
  %43 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %44 = call i32 @executeStatement(i32* %42, i8* %43)
  br label %45

45:                                               ; preds = %41
  %46 = load i32, i32* %3, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %3, align 4
  br label %8

48:                                               ; preds = %8
  ret void
}

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @lengthof(i8**) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i8* @PQescapeIdentifier(i32*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @PQfreemem(i8*) #1

declare dso_local i32 @executeStatement(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
