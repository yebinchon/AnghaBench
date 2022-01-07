; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_sysenvvalue.c_kuhl_m_sysenv_display_vendorGuid.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_sysenvvalue.c_kuhl_m_sysenv_display_vendorGuid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@KUHL_M_SYSENV_GUIDSTORE = common dso_local global %struct.TYPE_3__* null, align 8
@.str = private unnamed_addr constant [6 x i32] [i32 37, i32 115, i32 32, i32 45, i32 32, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kuhl_m_sysenv_display_vendorGuid(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  store i64 0, i64* %3, align 8
  br label %4

4:                                                ; preds = %25, %1
  %5 = load i64, i64* %3, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** @KUHL_M_SYSENV_GUIDSTORE, align 8
  %7 = call i64 @ARRAYSIZE(%struct.TYPE_3__* %6)
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %28

9:                                                ; preds = %4
  %10 = load i32, i32* %2, align 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** @KUHL_M_SYSENV_GUIDSTORE, align 8
  %12 = load i64, i64* %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = call i64 @RtlEqualGuid(i32 %10, i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %9
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** @KUHL_M_SYSENV_GUIDSTORE, align 8
  %19 = load i64, i64* %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @kprintf(i8* bitcast ([6 x i32]* @.str to i8*), i32 %22)
  br label %28

24:                                               ; preds = %9
  br label %25

25:                                               ; preds = %24
  %26 = load i64, i64* %3, align 8
  %27 = add i64 %26, 1
  store i64 %27, i64* %3, align 8
  br label %4

28:                                               ; preds = %17, %4
  %29 = load i32, i32* %2, align 4
  %30 = call i32 @kull_m_string_displayGUID(i32 %29)
  ret void
}

declare dso_local i64 @ARRAYSIZE(%struct.TYPE_3__*) #1

declare dso_local i64 @RtlEqualGuid(i32, i32*) #1

declare dso_local i32 @kprintf(i8*, i32) #1

declare dso_local i32 @kull_m_string_displayGUID(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
