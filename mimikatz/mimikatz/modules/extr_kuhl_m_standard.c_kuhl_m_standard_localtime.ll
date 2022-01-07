; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_standard.c_kuhl_m_standard_localtime.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_standard.c_kuhl_m_standard_localtime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [8 x i32] [i32 76, i32 111, i32 99, i32 97, i32 108, i32 58, i32 32, i32 0], align 4
@.str.1 = private unnamed_addr constant [2 x i32] [i32 10, i32 0], align 4
@TIME_ZONE_ID_INVALID = common dso_local global i64 0, align 8
@TIME_ZONE_ID_UNKNOWN = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [14 x i32] [i32 90, i32 111, i32 110, i32 101, i32 32, i32 58, i32 32, i32 37, i32 46, i32 51, i32 50, i32 115, i32 10, i32 0], align 4
@TIME_ZONE_ID_STANDARD = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [8 x i32] [i32 85, i32 84, i32 67, i32 32, i32 32, i32 58, i32 32, i32 0], align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kuhl_m_standard_localtime(i32 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__, align 4
  %7 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32** %1, i32*** %4, align 8
  %8 = call i32 @GetSystemTimeAsFileTime(i32* %5)
  %9 = call i64 @GetTimeZoneInformation(%struct.TYPE_3__* %6)
  store i64 %9, i64* %7, align 8
  %10 = call i32 (i8*, ...) @kprintf(i8* bitcast ([8 x i32]* @.str to i8*))
  %11 = call i32 @kull_m_string_displayLocalFileTime(i32* %5)
  %12 = call i32 (i8*, ...) @kprintf(i8* bitcast ([2 x i32]* @.str.1 to i8*))
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* @TIME_ZONE_ID_INVALID, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %33

16:                                               ; preds = %2
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* @TIME_ZONE_ID_UNKNOWN, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %33

20:                                               ; preds = %16
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* @TIME_ZONE_ID_STANDARD, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  br label %30

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  br label %30

30:                                               ; preds = %27, %24
  %31 = phi i32 [ %26, %24 ], [ %29, %27 ]
  %32 = call i32 (i8*, ...) @kprintf(i8* bitcast ([14 x i32]* @.str.2 to i8*), i32 %31)
  br label %33

33:                                               ; preds = %30, %16, %2
  %34 = call i32 (i8*, ...) @kprintf(i8* bitcast ([8 x i32]* @.str.3 to i8*))
  %35 = call i32 @kull_m_string_displayFileTime(i32* %5)
  %36 = call i32 (i8*, ...) @kprintf(i8* bitcast ([2 x i32]* @.str.1 to i8*))
  %37 = load i32, i32* @STATUS_SUCCESS, align 4
  ret i32 %37
}

declare dso_local i32 @GetSystemTimeAsFileTime(i32*) #1

declare dso_local i64 @GetTimeZoneInformation(%struct.TYPE_3__*) #1

declare dso_local i32 @kprintf(i8*, ...) #1

declare dso_local i32 @kull_m_string_displayLocalFileTime(i32*) #1

declare dso_local i32 @kull_m_string_displayFileTime(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
