; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/lsadump/extr_kuhl_m_lsadump_dc.c_kuhl_m_lsadump_dcshadow_domaininfo_schemasignature.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/lsadump/extr_kuhl_m_lsadump_dc.c_kuhl_m_lsadump_dcshadow_domaininfo_schemasignature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32, i32 }
%struct.berval = type { i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"schemaInfo\00", align 1
@LDAP_SCOPE_BASE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@LDAP_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i32] [i32 115, i32 99, i32 104, i32 101, i32 109, i32 97, i32 32, i32 115, i32 105, i32 103, i32 110, i32 97, i32 116, i32 117, i32 114, i32 101, i32 58, i32 0], align 4
@.str.2 = private unnamed_addr constant [2 x i32] [i32 10, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kuhl_m_lsadump_dcshadow_domaininfo_schemasignature(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca [2 x i32*], align 16
  %5 = alloca i32*, align 8
  %6 = alloca %struct.berval**, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %7 = getelementptr inbounds [2 x i32*], [2 x i32*]* %4, i64 0, i64 0
  %8 = call i32* @TEXT(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32* %8, i32** %7, align 8
  %9 = getelementptr inbounds i32*, i32** %7, i64 1
  store i32* null, i32** %9, align 8
  store i32* null, i32** %5, align 8
  store %struct.berval** null, %struct.berval*** %6, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @LDAP_SCOPE_BASE, align 4
  %17 = getelementptr inbounds [2 x i32*], [2 x i32*]* %4, i64 0, i64 0
  %18 = load i32, i32* @FALSE, align 4
  %19 = call i64 @ldap_search_s(i32 %12, i32 %15, i32 %16, i32* null, i32** %17, i32 %18, i32** %5)
  store i64 %19, i64* %3, align 8
  %20 = load i64, i64* %3, align 8
  %21 = load i64, i64* @LDAP_SUCCESS, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %67

23:                                               ; preds = %1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i32*, i32** %5, align 8
  %28 = getelementptr inbounds [2 x i32*], [2 x i32*]* %4, i64 0, i64 0
  %29 = load i32*, i32** %28, align 16
  %30 = call %struct.berval** @ldap_get_values_len(i32 %26, i32* %27, i32* %29)
  store %struct.berval** %30, %struct.berval*** %6, align 8
  %31 = load %struct.berval**, %struct.berval*** %6, align 8
  %32 = icmp ne %struct.berval** %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %23
  %34 = load %struct.berval**, %struct.berval*** %6, align 8
  %35 = load %struct.berval*, %struct.berval** %34, align 8
  %36 = getelementptr inbounds %struct.berval, %struct.berval* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 21
  br i1 %38, label %39, label %49

39:                                               ; preds = %33, %23
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  store i32 255, i32* %43, align 4
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  %48 = call i32 @RtlZeroMemory(i32* %47, i32 20)
  br label %58

49:                                               ; preds = %33
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load %struct.berval**, %struct.berval*** %6, align 8
  %54 = load %struct.berval*, %struct.berval** %53, align 8
  %55 = getelementptr inbounds %struct.berval, %struct.berval* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @RtlCopyMemory(i32* %52, i32 %56, i32 21)
  br label %58

58:                                               ; preds = %49, %39
  %59 = load i32*, i32** %5, align 8
  %60 = call i32 @ldap_msgfree(i32* %59)
  %61 = call i32 @kprintf(i8* bitcast ([18 x i32]* @.str.1 to i8*))
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 @kull_m_string_wprintf_hex(i32* %64, i32 21, i32 0)
  %66 = call i32 @kprintf(i8* bitcast ([2 x i32]* @.str.2 to i8*))
  br label %67

67:                                               ; preds = %58, %1
  %68 = load i64, i64* %3, align 8
  %69 = load i64, i64* @LDAP_SUCCESS, align 8
  %70 = icmp eq i64 %68, %69
  %71 = zext i1 %70 to i32
  ret i32 %71
}

declare dso_local i32* @TEXT(i8*) #1

declare dso_local i64 @ldap_search_s(i32, i32, i32, i32*, i32**, i32, i32**) #1

declare dso_local %struct.berval** @ldap_get_values_len(i32, i32*, i32*) #1

declare dso_local i32 @RtlZeroMemory(i32*, i32) #1

declare dso_local i32 @RtlCopyMemory(i32*, i32, i32) #1

declare dso_local i32 @ldap_msgfree(i32*) #1

declare dso_local i32 @kprintf(i8*) #1

declare dso_local i32 @kull_m_string_wprintf_hex(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
