; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_archivecleanup/extr_pg_archivecleanup.c_Initialize.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_archivecleanup/extr_pg_archivecleanup.c_Initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@archiveLocation = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"archive location \22%s\22 does not exist\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @Initialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Initialize() #0 {
  %1 = alloca %struct.stat, align 4
  %2 = load i32, i32* @archiveLocation, align 4
  %3 = call i64 @stat(i32 %2, %struct.stat* %1)
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.stat, %struct.stat* %1, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @S_ISDIR(i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %5, %0
  %11 = load i32, i32* @archiveLocation, align 4
  %12 = call i32 @pg_log_error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = call i32 @exit(i32 2) #3
  unreachable

14:                                               ; preds = %5
  ret void
}

declare dso_local i64 @stat(i32, %struct.stat*) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i32 @pg_log_error(i8*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
