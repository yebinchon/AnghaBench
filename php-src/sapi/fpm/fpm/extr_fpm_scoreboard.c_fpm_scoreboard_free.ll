; ModuleID = '/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_scoreboard.c_fpm_scoreboard_free.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_scoreboard.c_fpm_scoreboard_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpm_scoreboard_s = type { i32 }

@ZLOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"**scoreboard is NULL\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fpm_scoreboard_free(%struct.fpm_scoreboard_s* %0) #0 {
  %2 = alloca %struct.fpm_scoreboard_s*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.fpm_scoreboard_s* %0, %struct.fpm_scoreboard_s** %2, align 8
  %5 = load %struct.fpm_scoreboard_s*, %struct.fpm_scoreboard_s** %2, align 8
  %6 = icmp ne %struct.fpm_scoreboard_s* %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @ZLOG_ERROR, align 4
  %9 = call i32 @zlog(i32 %8, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %27

10:                                               ; preds = %1
  %11 = load %struct.fpm_scoreboard_s*, %struct.fpm_scoreboard_s** %2, align 8
  %12 = getelementptr inbounds %struct.fpm_scoreboard_s, %struct.fpm_scoreboard_s* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = sext i32 %13 to i64
  %15 = mul i64 %14, 8
  %16 = add i64 4, %15
  store i64 %16, i64* %3, align 8
  %17 = load %struct.fpm_scoreboard_s*, %struct.fpm_scoreboard_s** %2, align 8
  %18 = getelementptr inbounds %struct.fpm_scoreboard_s, %struct.fpm_scoreboard_s* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = mul i64 4, %20
  store i64 %21, i64* %4, align 8
  %22 = load %struct.fpm_scoreboard_s*, %struct.fpm_scoreboard_s** %2, align 8
  %23 = load i64, i64* %3, align 8
  %24 = load i64, i64* %4, align 8
  %25 = add i64 %23, %24
  %26 = call i32 @fpm_shm_free(%struct.fpm_scoreboard_s* %22, i64 %25)
  br label %27

27:                                               ; preds = %10, %7
  ret void
}

declare dso_local i32 @zlog(i32, i8*) #1

declare dso_local i32 @fpm_shm_free(%struct.fpm_scoreboard_s*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
