; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/mb/extr_wchar.c_check_encoding_conversion_args.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/mb/extr_wchar.c_check_encoding_conversion_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"invalid source encoding ID: %d\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"expected source encoding \22%s\22, but got \22%s\22\00", align 1
@pg_enc2name_tbl = common dso_local global %struct.TYPE_2__* null, align 8
@.str.2 = private unnamed_addr constant [36 x i8] c"invalid destination encoding ID: %d\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"expected destination encoding \22%s\22, but got \22%s\22\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"encoding conversion length must not be negative\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @check_encoding_conversion_args(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @PG_VALID_ENCODING(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %5
  %15 = load i32, i32* @ERROR, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 (i32, i8*, ...) @elog(i32 %15, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %16)
  br label %18

18:                                               ; preds = %14, %5
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %40

22:                                               ; preds = %18
  %23 = load i32, i32* %9, align 4
  %24 = icmp sge i32 %23, 0
  br i1 %24, label %25, label %40

25:                                               ; preds = %22
  %26 = load i32, i32* @ERROR, align 4
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pg_enc2name_tbl, align 8
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pg_enc2name_tbl, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (i32, i8*, ...) @elog(i32 %26, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %32, i32 %38)
  br label %40

40:                                               ; preds = %25, %22, %18
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @PG_VALID_ENCODING(i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = load i32, i32* @ERROR, align 4
  %46 = load i32, i32* %7, align 4
  %47 = call i32 (i32, i8*, ...) @elog(i32 %45, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %44, %40
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %70

52:                                               ; preds = %48
  %53 = load i32, i32* %10, align 4
  %54 = icmp sge i32 %53, 0
  br i1 %54, label %55, label %70

55:                                               ; preds = %52
  %56 = load i32, i32* @ERROR, align 4
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pg_enc2name_tbl, align 8
  %58 = load i32, i32* %10, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pg_enc2name_tbl, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 (i32, i8*, ...) @elog(i32 %56, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32 %62, i32 %68)
  br label %70

70:                                               ; preds = %55, %52, %48
  %71 = load i32, i32* %8, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load i32, i32* @ERROR, align 4
  %75 = call i32 (i32, i8*, ...) @elog(i32 %74, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0))
  br label %76

76:                                               ; preds = %73, %70
  ret void
}

declare dso_local i32 @PG_VALID_ENCODING(i32) #1

declare dso_local i32 @elog(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
