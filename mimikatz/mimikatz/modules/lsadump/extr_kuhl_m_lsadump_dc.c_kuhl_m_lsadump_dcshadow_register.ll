; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/lsadump/extr_kuhl_m_lsadump_dc.c_kuhl_m_lsadump_dcshadow_register.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/lsadump/extr_kuhl_m_lsadump_dc.c_kuhl_m_lsadump_dcshadow_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32 }

@STATUS_UNSUCCESSFUL = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i32] [i32 85, i32 110, i32 97, i32 98, i32 108, i32 101, i32 32, i32 116, i32 111, i32 32, i32 103, i32 101, i32 116, i32 32, i32 105, i32 110, i32 118, i32 111, i32 99, i32 97, i32 116, i32 105, i32 111, i32 110, i32 32, i32 73, i32 100, i32 10, i32 0], align 4
@.str.1 = private unnamed_addr constant [30 x i32] [i32 85, i32 110, i32 97, i32 98, i32 108, i32 101, i32 32, i32 116, i32 111, i32 32, i32 97, i32 100, i32 100, i32 32, i32 111, i32 98, i32 106, i32 101, i32 99, i32 116, i32 32, i32 118, i32 105, i32 97, i32 32, i32 68, i32 114, i32 115, i32 10, i32 0], align 4
@.str.2 = private unnamed_addr constant [20 x i32] [i32 65, i32 108, i32 114, i32 101, i32 97, i32 100, i32 121, i32 32, i32 114, i32 101, i32 103, i32 105, i32 115, i32 116, i32 101, i32 114, i32 101, i32 100, i32 10, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kuhl_m_lsadump_dcshadow_register(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %4 = load i32, i32* @STATUS_UNSUCCESSFUL, align 4
  store i32 %4, i32* %3, align 4
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %37, label %10

10:                                               ; preds = %1
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %12 = call i64 @kuhl_m_lsadump_dcshadow_register_ldap(%struct.TYPE_7__* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %36

14:                                               ; preds = %10
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %16 = call i32 @kuhl_m_lsadump_dcshadow_register_NTDSA(%struct.TYPE_7__* %15)
  %17 = call i64 @NT_SUCCESS(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %33

19:                                               ; preds = %14
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = call i64 @kuhl_m_lsadump_dcshadow_objectGUID_invocationGUID(%struct.TYPE_7__* %20, i32 %23, %struct.TYPE_8__* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %19
  %29 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %29, i32* %3, align 4
  br label %32

30:                                               ; preds = %19
  %31 = call i32 @PRINT_ERROR(i8* bitcast ([29 x i32]* @.str to i8*))
  br label %32

32:                                               ; preds = %30, %28
  br label %35

33:                                               ; preds = %14
  %34 = call i32 @PRINT_ERROR(i8* bitcast ([30 x i32]* @.str.1 to i8*))
  br label %35

35:                                               ; preds = %33, %32
  br label %36

36:                                               ; preds = %35, %10
  br label %40

37:                                               ; preds = %1
  %38 = call i32 @kprintf(i8* bitcast ([20 x i32]* @.str.2 to i8*))
  %39 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %37, %36
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i64 @kuhl_m_lsadump_dcshadow_register_ldap(%struct.TYPE_7__*) #1

declare dso_local i64 @NT_SUCCESS(i32) #1

declare dso_local i32 @kuhl_m_lsadump_dcshadow_register_NTDSA(%struct.TYPE_7__*) #1

declare dso_local i64 @kuhl_m_lsadump_dcshadow_objectGUID_invocationGUID(%struct.TYPE_7__*, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @PRINT_ERROR(i8*) #1

declare dso_local i32 @kprintf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
