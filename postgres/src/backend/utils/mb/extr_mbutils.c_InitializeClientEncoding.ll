; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/mb/extr_mbutils.c_InitializeClientEncoding.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/mb/extr_mbutils.c_InitializeClientEncoding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@backend_startup_complete = common dso_local global i32 0, align 4
@pending_client_encoding = common dso_local global i64 0, align 8
@FATAL = common dso_local global i32 0, align 4
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"conversion between %s and %s is not supported\00", align 1
@pg_enc2name_tbl = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @InitializeClientEncoding() #0 {
  %1 = load i32, i32* @backend_startup_complete, align 4
  %2 = icmp ne i32 %1, 0
  %3 = xor i1 %2, true
  %4 = zext i1 %3 to i32
  %5 = call i32 @Assert(i32 %4)
  store i32 1, i32* @backend_startup_complete, align 4
  %6 = load i64, i64* @pending_client_encoding, align 8
  %7 = call i64 @PrepareClientEncoding(i64 %6)
  %8 = icmp slt i64 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %0
  %10 = load i64, i64* @pending_client_encoding, align 8
  %11 = call i64 @SetClientEncoding(i64 %10)
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %25

13:                                               ; preds = %9, %0
  %14 = load i32, i32* @FATAL, align 4
  %15 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %16 = call i32 @errcode(i32 %15)
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pg_enc2name_tbl, align 8
  %18 = load i64, i64* @pending_client_encoding, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 (...) @GetDatabaseEncodingName()
  %23 = call i32 @errmsg(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %22)
  %24 = call i32 @ereport(i32 %14, i32 %23)
  br label %25

25:                                               ; preds = %13, %9
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @PrepareClientEncoding(i64) #1

declare dso_local i64 @SetClientEncoding(i64) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32, i32) #1

declare dso_local i32 @GetDatabaseEncodingName(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
