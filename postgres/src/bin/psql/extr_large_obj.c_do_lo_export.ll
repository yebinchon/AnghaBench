; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/psql/extr_large_obj.c_do_lo_export.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/psql/extr_large_obj.c_do_lo_export.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"\\lo_export\00", align 1
@pset = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"lo_export\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_lo_export(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = call i32 @start_lo_xact(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %34

11:                                               ; preds = %2
  %12 = call i32 (...) @SetCancelConn()
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pset, i32 0, i32 0), align 4
  %14 = load i8*, i8** %4, align 8
  %15 = call i32 @atooid(i8* %14)
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 @lo_export(i32 %13, i32 %15, i8* %16)
  store i32 %17, i32* %6, align 4
  %18 = call i32 (...) @ResetCancelConn()
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 1
  br i1 %20, label %21, label %27

21:                                               ; preds = %11
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pset, i32 0, i32 0), align 4
  %23 = call i32 @PQerrorMessage(i32 %22)
  %24 = call i32 @pg_log_info(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @fail_lo_xact(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %25)
  store i32 %26, i32* %3, align 4
  br label %34

27:                                               ; preds = %11
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @finish_lo_xact(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %34

32:                                               ; preds = %27
  %33 = call i32 @print_lo_result(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %34

34:                                               ; preds = %32, %31, %21, %10
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @start_lo_xact(i8*, i32*) #1

declare dso_local i32 @SetCancelConn(...) #1

declare dso_local i32 @lo_export(i32, i32, i8*) #1

declare dso_local i32 @atooid(i8*) #1

declare dso_local i32 @ResetCancelConn(...) #1

declare dso_local i32 @pg_log_info(i8*, i32) #1

declare dso_local i32 @PQerrorMessage(i32) #1

declare dso_local i32 @fail_lo_xact(i8*, i32) #1

declare dso_local i32 @finish_lo_xact(i8*, i32) #1

declare dso_local i32 @print_lo_result(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
