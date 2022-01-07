; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_proto-snmp.c_snmp_init.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_proto-snmp.c_snmp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }

@.str = private unnamed_addr constant [9 x i8] c"snmp-mib\00", align 1
@global_mib = common dso_local global i32 0, align 4
@mib = common dso_local global %struct.TYPE_2__* null, align 8
@SMACK_ANCHOR_BEGIN = common dso_local global i32 0, align 4
@SMACK_SNMP_HACK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snmp_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [256 x i8], align 16
  %3 = alloca i32, align 4
  %4 = call i32 @smack_create(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 0)
  store i32 %4, i32* @global_mib, align 4
  store i32 0, i32* %1, align 4
  br label %5

5:                                                ; preds = %30, %0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mib, align 8
  %7 = load i32, i32* %1, align 4
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i64 %8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %33

13:                                               ; preds = %5
  %14 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mib, align 8
  %16 = load i32, i32* %1, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @convert_oid(i8* %14, i32 256, i32 %20)
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* @global_mib, align 4
  %23 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* %1, align 4
  %26 = load i32, i32* @SMACK_ANCHOR_BEGIN, align 4
  %27 = load i32, i32* @SMACK_SNMP_HACK, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @smack_add_pattern(i32 %22, i8* %23, i32 %24, i32 %25, i32 %28)
  br label %30

30:                                               ; preds = %13
  %31 = load i32, i32* %1, align 4
  %32 = add i32 %31, 1
  store i32 %32, i32* %1, align 4
  br label %5

33:                                               ; preds = %5
  %34 = load i32, i32* @global_mib, align 4
  %35 = call i32 @smack_compile(i32 %34)
  ret void
}

declare dso_local i32 @smack_create(i8*, i32) #1

declare dso_local i32 @convert_oid(i8*, i32, i32) #1

declare dso_local i32 @smack_add_pattern(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @smack_compile(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
