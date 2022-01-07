; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/psql/extr_large_obj.c_do_lo_unlink.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/psql/extr_large_obj.c_do_lo_unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"\\lo_unlink\00", align 1
@pset = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"lo_unlink %u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_lo_unlink(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i32 @atooid(i8* %7)
  store i32 %8, i32* %5, align 4
  %9 = call i32 @start_lo_xact(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32* %6)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %34

12:                                               ; preds = %1
  %13 = call i32 (...) @SetCancelConn()
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pset, i32 0, i32 0), align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @lo_unlink(i32 %14, i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = call i32 (...) @ResetCancelConn()
  %18 = load i32, i32* %4, align 4
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %26

20:                                               ; preds = %12
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pset, i32 0, i32 0), align 4
  %22 = call i32 @PQerrorMessage(i32 %21)
  %23 = call i32 @pg_log_info(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @fail_lo_xact(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %24)
  store i32 %25, i32* %2, align 4
  br label %34

26:                                               ; preds = %12
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @finish_lo_xact(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %34

31:                                               ; preds = %26
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @print_lo_result(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %32)
  store i32 1, i32* %2, align 4
  br label %34

34:                                               ; preds = %31, %30, %20, %11
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @atooid(i8*) #1

declare dso_local i32 @start_lo_xact(i8*, i32*) #1

declare dso_local i32 @SetCancelConn(...) #1

declare dso_local i32 @lo_unlink(i32, i32) #1

declare dso_local i32 @ResetCancelConn(...) #1

declare dso_local i32 @pg_log_info(i8*, i32) #1

declare dso_local i32 @PQerrorMessage(i32) #1

declare dso_local i32 @fail_lo_xact(i8*, i32) #1

declare dso_local i32 @finish_lo_xact(i8*, i32) #1

declare dso_local i32 @print_lo_result(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
