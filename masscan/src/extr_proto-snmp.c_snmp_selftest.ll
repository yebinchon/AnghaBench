; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_proto-snmp.c_snmp_selftest.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_proto-snmp.c_snmp_selftest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@snmp_selftest.xx = internal constant [7 x i8] c"+\87n3\94\EAT", align 1
@SMACK_NOT_FOUND = common dso_local global i64 0, align 8
@global_mib = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"snmp: oid parser failed\0A\00", align 1
@mib = common dso_local global %struct.TYPE_2__* null, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"selftest\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snmp_selftest() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = load i64, i64* @SMACK_NOT_FOUND, align 8
  store i64 %6, i64* %5, align 8
  %7 = call i64 (...) @snmp_selftest_banner()
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  store i32 1, i32* %1, align 4
  br label %43

10:                                               ; preds = %0
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %23, %10
  %12 = load i32, i32* %4, align 4
  %13 = zext i32 %12 to i64
  %14 = icmp ult i64 %13, 7
  br i1 %14, label %15, label %24

15:                                               ; preds = %11
  %16 = load i32, i32* @global_mib, align 4
  %17 = call i64 @smack_search_next(i32 %16, i32* %3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @snmp_selftest.xx, i64 0, i64 0), i32* %4, i32 7)
  store i64 %17, i64* %2, align 8
  %18 = load i64, i64* %2, align 8
  %19 = load i64, i64* @SMACK_NOT_FOUND, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load i64, i64* %2, align 8
  store i64 %22, i64* %5, align 8
  br label %23

23:                                               ; preds = %21, %15
  br label %11

24:                                               ; preds = %11
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* @SMACK_NOT_FOUND, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i32, i32* @stderr, align 4
  %30 = call i32 @fprintf(i32 %29, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %43

31:                                               ; preds = %24
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mib, align 8
  %33 = load i64, i64* %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @strcmp(i32 %36, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %31
  %40 = load i32, i32* @stderr, align 4
  %41 = call i32 @fprintf(i32 %40, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %43

42:                                               ; preds = %31
  store i32 0, i32* %1, align 4
  br label %43

43:                                               ; preds = %42, %39, %28, %9
  %44 = load i32, i32* %1, align 4
  ret i32 %44
}

declare dso_local i64 @snmp_selftest_banner(...) #1

declare dso_local i64 @smack_search_next(i32, i32*, i8*, i32*, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
