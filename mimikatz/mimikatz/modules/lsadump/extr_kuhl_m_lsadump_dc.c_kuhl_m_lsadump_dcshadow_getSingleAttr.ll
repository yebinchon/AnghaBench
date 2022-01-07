; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/lsadump/extr_kuhl_m_lsadump_dc.c_kuhl_m_lsadump_dcshadow_getSingleAttr.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/lsadump/extr_kuhl_m_lsadump_dc.c_kuhl_m_lsadump_dcshadow_getSingleAttr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64 }

@LPTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @kuhl_m_lsadump_dcshadow_getSingleAttr(i32 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_7__**, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %8, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i64, i64* %6, align 8
  %12 = trunc i64 %11 to i32
  %13 = call %struct.TYPE_7__** @ldap_get_values_len(i32 %9, i32 %10, i32 %12)
  store %struct.TYPE_7__** %13, %struct.TYPE_7__*** %7, align 8
  %14 = icmp ne %struct.TYPE_7__** %13, null
  br i1 %14, label %15, label %62

15:                                               ; preds = %3
  %16 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  %17 = call i32 @ldap_count_values_len(%struct.TYPE_7__** %16)
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %59

19:                                               ; preds = %15
  %20 = load i32, i32* @LPTR, align 4
  %21 = call i64 @LocalAlloc(i32 %20, i32 4)
  %22 = inttoptr i64 %21 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %22, %struct.TYPE_7__** %8, align 8
  %23 = icmp ne %struct.TYPE_7__* %22, null
  br i1 %23, label %24, label %58

24:                                               ; preds = %19
  %25 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %25, i64 0
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* @LPTR, align 4
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @LocalAlloc(i32 %32, i32 %35)
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  store i64 %36, i64* %38, align 8
  %39 = icmp ne i64 %36, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %24
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %44, i64 0
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @RtlCopyMemory(i64 %43, i64 %48, i32 %51)
  br label %57

53:                                               ; preds = %24
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %55 = call i64 @LocalFree(%struct.TYPE_7__* %54)
  %56 = inttoptr i64 %55 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %56, %struct.TYPE_7__** %8, align 8
  br label %57

57:                                               ; preds = %53, %40
  br label %58

58:                                               ; preds = %57, %19
  br label %59

59:                                               ; preds = %58, %15
  %60 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  %61 = call i32 @ldap_value_free_len(%struct.TYPE_7__** %60)
  br label %62

62:                                               ; preds = %59, %3
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  ret %struct.TYPE_7__* %63
}

declare dso_local %struct.TYPE_7__** @ldap_get_values_len(i32, i32, i32) #1

declare dso_local i32 @ldap_count_values_len(%struct.TYPE_7__**) #1

declare dso_local i64 @LocalAlloc(i32, i32) #1

declare dso_local i32 @RtlCopyMemory(i64, i64, i32) #1

declare dso_local i64 @LocalFree(%struct.TYPE_7__*) #1

declare dso_local i32 @ldap_value_free_len(%struct.TYPE_7__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
