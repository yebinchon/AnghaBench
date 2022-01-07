; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_ldap.c_kull_m_ldap_getRootDomainNamingContext.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_ldap.c_kull_m_ldap_getRootDomainNamingContext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@.str = private unnamed_addr constant [24 x i32] [i32 114, i32 111, i32 111, i32 116, i32 68, i32 111, i32 109, i32 97, i32 105, i32 110, i32 78, i32 97, i32 109, i32 105, i32 110, i32 103, i32 67, i32 111, i32 110, i32 116, i32 101, i32 120, i32 116, i32 0], align 4
@LDAP_SCOPE_BASE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i32] [i32 40, i32 100, i32 110, i32 61, i32 82, i32 111, i32 111, i32 116, i32 68, i32 83, i32 69, i32 41, i32 0], align 4
@FALSE = common dso_local global i32 0, align 4
@LDAP_SUCCESS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [30 x i32] [i32 108, i32 100, i32 97, i32 112, i32 95, i32 103, i32 101, i32 116, i32 95, i32 118, i32 97, i32 108, i32 117, i32 101, i32 115, i32 95, i32 108, i32 101, i32 110, i32 32, i32 105, i32 115, i32 32, i32 78, i32 79, i32 84, i32 32, i32 49, i32 10, i32 0], align 4
@.str.3 = private unnamed_addr constant [29 x i32] [i32 108, i32 100, i32 97, i32 112, i32 95, i32 99, i32 111, i32 117, i32 110, i32 116, i32 95, i32 101, i32 110, i32 116, i32 114, i32 105, i32 101, i32 115, i32 32, i32 105, i32 115, i32 32, i32 78, i32 79, i32 84, i32 32, i32 49, i32 10, i32 0], align 4
@.str.4 = private unnamed_addr constant [25 x i32] [i32 108, i32 100, i32 97, i32 112, i32 95, i32 115, i32 101, i32 97, i32 114, i32 99, i32 104, i32 95, i32 115, i32 32, i32 48, i32 120, i32 37, i32 120, i32 32, i32 40, i32 37, i32 117, i32 41, i32 10, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @kull_m_ldap_getRootDomainNamingContext(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca [2 x i8*], align 16
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_5__**, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %10 = getelementptr inbounds [2 x i8*], [2 x i8*]* %6, i64 0, i64 0
  %11 = load i32, i32* %3, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = inttoptr i64 %15 to i8*
  br label %18

17:                                               ; preds = %2
  br label %18

18:                                               ; preds = %17, %13
  %19 = phi i8* [ %16, %13 ], [ bitcast ([24 x i32]* @.str to i8*), %17 ]
  store i8* %19, i8** %10, align 8
  %20 = getelementptr inbounds i8*, i8** %10, i64 1
  store i8* null, i8** %20, align 8
  store i8* null, i8** %7, align 8
  store i32* null, i32** %8, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = load i32, i32* @LDAP_SCOPE_BASE, align 4
  %23 = getelementptr inbounds [2 x i8*], [2 x i8*]* %6, i64 0, i64 0
  %24 = load i32, i32* @FALSE, align 4
  %25 = call i64 @ldap_search_s(i32* %21, i32* null, i32 %22, i8* bitcast ([13 x i32]* @.str.1 to i8*), i8** %23, i32 %24, i32** %8)
  store i64 %25, i64* %5, align 8
  %26 = load i64, i64* %5, align 8
  %27 = load i64, i64* @LDAP_SUCCESS, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %66

29:                                               ; preds = %18
  %30 = load i32*, i32** %4, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = call i32 @ldap_count_entries(i32* %30, i32* %31)
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %63

34:                                               ; preds = %29
  %35 = load i32*, i32** %4, align 8
  %36 = load i32*, i32** %8, align 8
  %37 = getelementptr inbounds [2 x i8*], [2 x i8*]* %6, i64 0, i64 0
  %38 = load i8*, i8** %37, align 16
  %39 = call %struct.TYPE_5__** @ldap_get_values_len(i32* %35, i32* %36, i8* %38)
  store %struct.TYPE_5__** %39, %struct.TYPE_5__*** %9, align 8
  %40 = icmp ne %struct.TYPE_5__** %39, null
  br i1 %40, label %41, label %62

41:                                               ; preds = %34
  %42 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %9, align 8
  %43 = call i32 @ldap_count_values_len(%struct.TYPE_5__** %42)
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %45, label %57

45:                                               ; preds = %41
  %46 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %46, i64 0
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %51, i64 0
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i8* @kull_m_string_qad_ansi_c_to_unicode(i32 %50, i32 %55)
  store i8* %56, i8** %7, align 8
  br label %59

57:                                               ; preds = %41
  %58 = call i32 (i8*, ...) @PRINT_ERROR(i8* bitcast ([30 x i32]* @.str.2 to i8*))
  br label %59

59:                                               ; preds = %57, %45
  %60 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %9, align 8
  %61 = call i32 @ldap_value_free_len(%struct.TYPE_5__** %60)
  br label %62

62:                                               ; preds = %59, %34
  br label %65

63:                                               ; preds = %29
  %64 = call i32 (i8*, ...) @PRINT_ERROR(i8* bitcast ([29 x i32]* @.str.3 to i8*))
  br label %65

65:                                               ; preds = %63, %62
  br label %70

66:                                               ; preds = %18
  %67 = load i64, i64* %5, align 8
  %68 = load i64, i64* %5, align 8
  %69 = call i32 (i8*, ...) @PRINT_ERROR(i8* bitcast ([25 x i32]* @.str.4 to i8*), i64 %67, i64 %68)
  br label %70

70:                                               ; preds = %66, %65
  %71 = load i32*, i32** %8, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load i32*, i32** %8, align 8
  %75 = call i32 @ldap_msgfree(i32* %74)
  br label %76

76:                                               ; preds = %73, %70
  %77 = load i8*, i8** %7, align 8
  ret i8* %77
}

declare dso_local i64 @ldap_search_s(i32*, i32*, i32, i8*, i8**, i32, i32**) #1

declare dso_local i32 @ldap_count_entries(i32*, i32*) #1

declare dso_local %struct.TYPE_5__** @ldap_get_values_len(i32*, i32*, i8*) #1

declare dso_local i32 @ldap_count_values_len(%struct.TYPE_5__**) #1

declare dso_local i8* @kull_m_string_qad_ansi_c_to_unicode(i32, i32) #1

declare dso_local i32 @PRINT_ERROR(i8*, ...) #1

declare dso_local i32 @ldap_value_free_len(%struct.TYPE_5__**) #1

declare dso_local i32 @ldap_msgfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
