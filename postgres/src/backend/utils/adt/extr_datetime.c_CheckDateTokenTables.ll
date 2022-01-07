; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_datetime.c_CheckDateTokenTables.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_datetime.c_CheckDateTokenTables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UNIX_EPOCH_JDATE = common dso_local global i64 0, align 8
@POSTGRES_EPOCH_JDATE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"datetktbl\00", align 1
@datetktbl = common dso_local global i32 0, align 4
@szdatetktbl = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"deltatktbl\00", align 1
@deltatktbl = common dso_local global i32 0, align 4
@szdeltatktbl = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CheckDateTokenTables() #0 {
  %1 = alloca i32, align 4
  store i32 1, i32* %1, align 4
  %2 = load i64, i64* @UNIX_EPOCH_JDATE, align 8
  %3 = call i64 @date2j(i32 1970, i32 1, i32 1)
  %4 = icmp eq i64 %2, %3
  %5 = zext i1 %4 to i32
  %6 = call i32 @Assert(i32 %5)
  %7 = load i64, i64* @POSTGRES_EPOCH_JDATE, align 8
  %8 = call i64 @date2j(i32 2000, i32 1, i32 1)
  %9 = icmp eq i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = call i32 @Assert(i32 %10)
  %12 = load i32, i32* @datetktbl, align 4
  %13 = load i32, i32* @szdatetktbl, align 4
  %14 = call i32 @CheckDateTokenTable(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %13)
  %15 = load i32, i32* %1, align 4
  %16 = and i32 %15, %14
  store i32 %16, i32* %1, align 4
  %17 = load i32, i32* @deltatktbl, align 4
  %18 = load i32, i32* @szdeltatktbl, align 4
  %19 = call i32 @CheckDateTokenTable(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %17, i32 %18)
  %20 = load i32, i32* %1, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %1, align 4
  %22 = load i32, i32* %1, align 4
  ret i32 %22
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @date2j(i32, i32, i32) #1

declare dso_local i32 @CheckDateTokenTable(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
