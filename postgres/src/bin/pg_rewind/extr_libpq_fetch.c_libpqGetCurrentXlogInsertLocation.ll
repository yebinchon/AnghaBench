; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_rewind/extr_libpq_fetch.c_libpqGetCurrentXlogInsertLocation.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_rewind/extr_libpq_fetch.c_libpqGetCurrentXlogInsertLocation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [35 x i8] c"SELECT pg_current_wal_insert_lsn()\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%X/%X\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"unrecognized result \22%s\22 for current WAL insert location\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @libpqGetCurrentXlogInsertLocation() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = call i8* @run_simple_query(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store i8* %5, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call i32 @sscanf(i8* %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32* %2, i32* %3)
  %8 = icmp ne i32 %7, 2
  br i1 %8, label %9, label %12

9:                                                ; preds = %0
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 @pg_fatal(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i8* %10)
  br label %12

12:                                               ; preds = %9, %0
  %13 = load i32, i32* %2, align 4
  %14 = shl i32 %13, 32
  %15 = load i32, i32* %3, align 4
  %16 = or i32 %14, %15
  store i32 %16, i32* %1, align 4
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 @pg_free(i8* %17)
  %19 = load i32, i32* %1, align 4
  ret i32 %19
}

declare dso_local i8* @run_simple_query(i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*) #1

declare dso_local i32 @pg_fatal(i8*, i8*) #1

declare dso_local i32 @pg_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
