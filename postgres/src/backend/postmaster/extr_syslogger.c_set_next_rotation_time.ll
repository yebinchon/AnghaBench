; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/postmaster/extr_syslogger.c_set_next_rotation_time.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/postmaster/extr_syslogger.c_set_next_rotation_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pg_tm = type { i64 }

@Log_RotationAge = common dso_local global i32 0, align 4
@SECS_PER_MINUTE = common dso_local global i32 0, align 4
@log_timezone = common dso_local global i32 0, align 4
@next_rotation_time = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @set_next_rotation_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_next_rotation_time() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.pg_tm*, align 8
  %3 = alloca i32, align 4
  %4 = load i32, i32* @Log_RotationAge, align 4
  %5 = icmp sle i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  br label %38

7:                                                ; preds = %0
  %8 = load i32, i32* @Log_RotationAge, align 4
  %9 = load i32, i32* @SECS_PER_MINUTE, align 4
  %10 = mul nsw i32 %8, %9
  store i32 %10, i32* %3, align 4
  %11 = call i64 @time(i32* null)
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %1, align 4
  %13 = load i32, i32* @log_timezone, align 4
  %14 = call %struct.pg_tm* @pg_localtime(i32* %1, i32 %13)
  store %struct.pg_tm* %14, %struct.pg_tm** %2, align 8
  %15 = load %struct.pg_tm*, %struct.pg_tm** %2, align 8
  %16 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i32, i32* %1, align 4
  %19 = sext i32 %18 to i64
  %20 = add nsw i64 %19, %17
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %1, align 4
  %22 = load i32, i32* %1, align 4
  %23 = load i32, i32* %3, align 4
  %24 = srem i32 %22, %23
  %25 = load i32, i32* %1, align 4
  %26 = sub nsw i32 %25, %24
  store i32 %26, i32* %1, align 4
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* %1, align 4
  %29 = add nsw i32 %28, %27
  store i32 %29, i32* %1, align 4
  %30 = load %struct.pg_tm*, %struct.pg_tm** %2, align 8
  %31 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* %1, align 4
  %34 = sext i32 %33 to i64
  %35 = sub nsw i64 %34, %32
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %1, align 4
  %37 = load i32, i32* %1, align 4
  store i32 %37, i32* @next_rotation_time, align 4
  br label %38

38:                                               ; preds = %7, %6
  ret void
}

declare dso_local i64 @time(i32*) #1

declare dso_local %struct.pg_tm* @pg_localtime(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
