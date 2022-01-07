; ModuleID = '/home/carl/AnghaBench/php-src/ext/calendar/extr_calendar.c__php_cal_info.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/calendar/extr_calendar.c__php_cal_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cal_entry_t = type { i32, i32, i32, i32, i32*, i32* }

@cal_conversion_table = common dso_local global %struct.cal_entry_t* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"months\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"abbrevmonths\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"maxdaysinmonth\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"calname\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"calsymbol\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*)* @_php_cal_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_php_cal_info(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.cal_entry_t*, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %9 = load %struct.cal_entry_t*, %struct.cal_entry_t** @cal_conversion_table, align 8
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.cal_entry_t, %struct.cal_entry_t* %9, i64 %11
  store %struct.cal_entry_t* %12, %struct.cal_entry_t** %8, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @array_init(i32* %13)
  %15 = call i32 @array_init(i32* %5)
  %16 = call i32 @array_init(i32* %6)
  store i32 1, i32* %7, align 4
  br label %17

17:                                               ; preds = %42, %2
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.cal_entry_t*, %struct.cal_entry_t** %8, align 8
  %20 = getelementptr inbounds %struct.cal_entry_t, %struct.cal_entry_t* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp sle i32 %18, %21
  br i1 %22, label %23, label %45

23:                                               ; preds = %17
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.cal_entry_t*, %struct.cal_entry_t** %8, align 8
  %26 = getelementptr inbounds %struct.cal_entry_t, %struct.cal_entry_t* %25, i32 0, i32 5
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @add_index_string(i32* %5, i32 %24, i32 %31)
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.cal_entry_t*, %struct.cal_entry_t** %8, align 8
  %35 = getelementptr inbounds %struct.cal_entry_t, %struct.cal_entry_t* %34, i32 0, i32 4
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @add_index_string(i32* %6, i32 %33, i32 %40)
  br label %42

42:                                               ; preds = %23
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %7, align 4
  br label %17

45:                                               ; preds = %17
  %46 = load i32*, i32** %4, align 8
  %47 = call i32 @add_assoc_zval(i32* %46, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* %5)
  %48 = load i32*, i32** %4, align 8
  %49 = call i32 @add_assoc_zval(i32* %48, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32* %6)
  %50 = load i32*, i32** %4, align 8
  %51 = load %struct.cal_entry_t*, %struct.cal_entry_t** %8, align 8
  %52 = getelementptr inbounds %struct.cal_entry_t, %struct.cal_entry_t* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @add_assoc_long(i32* %50, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %53)
  %55 = load i32*, i32** %4, align 8
  %56 = load %struct.cal_entry_t*, %struct.cal_entry_t** %8, align 8
  %57 = getelementptr inbounds %struct.cal_entry_t, %struct.cal_entry_t* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @add_assoc_string(i32* %55, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %58)
  %60 = load i32*, i32** %4, align 8
  %61 = load %struct.cal_entry_t*, %struct.cal_entry_t** %8, align 8
  %62 = getelementptr inbounds %struct.cal_entry_t, %struct.cal_entry_t* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @add_assoc_string(i32* %60, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %63)
  ret void
}

declare dso_local i32 @array_init(i32*) #1

declare dso_local i32 @add_index_string(i32*, i32, i32) #1

declare dso_local i32 @add_assoc_zval(i32*, i8*, i32*) #1

declare dso_local i32 @add_assoc_long(i32*, i8*, i32) #1

declare dso_local i32 @add_assoc_string(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
