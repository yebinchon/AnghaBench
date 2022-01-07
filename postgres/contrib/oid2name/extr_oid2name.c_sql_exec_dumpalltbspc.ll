; ModuleID = '/home/carl/AnghaBench/postgres/contrib/oid2name/extr_oid2name.c_sql_exec_dumpalltbspc.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/oid2name/extr_oid2name.c_sql_exec_dumpalltbspc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options = type { i32 }

@.str = private unnamed_addr constant [80 x i8] c"SELECT oid AS \22Oid\22, spcname as \22Tablespace Name\22\0AFROM pg_catalog.pg_tablespace\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sql_exec_dumpalltbspc(i32* %0, %struct.options* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.options*, align 8
  %5 = alloca [1024 x i8], align 16
  store i32* %0, i32** %3, align 8
  store %struct.options* %1, %struct.options** %4, align 8
  %6 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %7 = call i32 @snprintf(i8* %6, i32 1024, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str, i64 0, i64 0))
  %8 = load i32*, i32** %3, align 8
  %9 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %10 = load %struct.options*, %struct.options** %4, align 8
  %11 = getelementptr inbounds %struct.options, %struct.options* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @sql_exec(i32* %8, i8* %9, i32 %12)
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*) #1

declare dso_local i32 @sql_exec(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
