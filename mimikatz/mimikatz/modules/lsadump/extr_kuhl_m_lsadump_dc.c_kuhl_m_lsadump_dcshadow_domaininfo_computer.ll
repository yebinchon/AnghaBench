; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/lsadump/extr_kuhl_m_lsadump_dc.c_kuhl_m_lsadump_dcshadow_domaininfo_computer.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/lsadump/extr_kuhl_m_lsadump_dc.c_kuhl_m_lsadump_dcshadow_domaininfo_computer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32, i32, i32 }

@.str = private unnamed_addr constant [18 x i32] [i32 100, i32 105, i32 115, i32 116, i32 105, i32 110, i32 103, i32 117, i32 105, i32 115, i32 104, i32 101, i32 100, i32 78, i32 97, i32 109, i32 101, i32 0], align 4
@.str.1 = private unnamed_addr constant [19 x i32] [i32 117, i32 115, i32 101, i32 114, i32 65, i32 99, i32 99, i32 111, i32 117, i32 110, i32 116, i32 67, i32 111, i32 110, i32 116, i32 114, i32 111, i32 108, i32 0], align 4
@.str.2 = private unnamed_addr constant [12 x i32] [i32 100, i32 78, i32 83, i32 72, i32 111, i32 115, i32 116, i32 78, i32 97, i32 109, i32 101, i32 0], align 4
@__const.kuhl_m_lsadump_dcshadow_domaininfo_computer.szComputerAttributes = private unnamed_addr constant [4 x i8*] [i8* bitcast ([18 x i32]* @.str to i8*), i8* bitcast ([19 x i32]* @.str.1 to i8*), i8* bitcast ([12 x i32]* @.str.2 to i8*), i8* null], align 16
@.str.3 = private unnamed_addr constant [67 x i32] [i32 40, i32 38, i32 40, i32 124, i32 40, i32 111, i32 98, i32 106, i32 101, i32 99, i32 116, i32 67, i32 108, i32 97, i32 115, i32 115, i32 61, i32 117, i32 115, i32 101, i32 114, i32 41, i32 40, i32 111, i32 98, i32 106, i32 101, i32 99, i32 116, i32 67, i32 108, i32 97, i32 115, i32 115, i32 61, i32 99, i32 111, i32 109, i32 112, i32 117, i32 116, i32 101, i32 114, i32 41, i32 41, i32 40, i32 115, i32 65, i32 77, i32 65, i32 99, i32 99, i32 111, i32 117, i32 110, i32 116, i32 78, i32 97, i32 109, i32 101, i32 61, i32 37, i32 115, i32 36, i32 41, i32 41, i32 0], align 4
@LDAP_SCOPE_SUBTREE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i32] [i32 99, i32 111, i32 109, i32 112, i32 117, i32 116, i32 101, i32 114, i32 32, i32 110, i32 111, i32 116, i32 32, i32 102, i32 111, i32 117, i32 110, i32 100, i32 32, i32 105, i32 110, i32 32, i32 65, i32 68, i32 32, i32 48, i32 120, i32 37, i32 120, i32 32, i32 40, i32 37, i32 117, i32 41, i32 10, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kuhl_m_lsadump_dcshadow_domaininfo_computer(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [4 x i8*], align 16
  %7 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %8 = bitcast [4 x i8*]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %8, i8* align 16 bitcast ([4 x i8*]* @__const.kuhl_m_lsadump_dcshadow_domaininfo_computer.szComputerAttributes to i8*), i64 32, i1 false)
  store i32* null, i32** %7, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 8
  %12 = call i64 @kull_m_string_sprintf(i8** %4, i8* bitcast ([67 x i32]* @.str.3 to i8*), i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %53

14:                                               ; preds = %1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @LDAP_SCOPE_SUBTREE, align 4
  %22 = load i8*, i8** %4, align 8
  %23 = getelementptr inbounds [4 x i8*], [4 x i8*]* %6, i64 0, i64 0
  %24 = load i32, i32* @FALSE, align 4
  %25 = call i32 @ldap_search_s(i32 %17, i32 %20, i32 %21, i8* %22, i8** %23, i32 %24, i32** %7)
  store i32 %25, i32* %3, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %48, label %27

27:                                               ; preds = %14
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = call i8* @ldap_get_dn(i32 %30, i32* %31)
  store i8* %32, i8** %5, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i8*, i8** %5, align 8
  %36 = call i32 @kull_m_string_copy(i64* %34, i8* %35)
  %37 = load i8*, i8** %5, align 8
  %38 = call i32 @ldap_memfree(i8* %37)
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load i32*, i32** %7, align 8
  %43 = call i64 @kuhl_m_lsadump_dcshadow_getSingleTextAttr(i32 %41, i32* %42, i8* bitcast ([12 x i32]* @.str.2 to i8*))
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  store i64 %43, i64* %45, align 8
  %46 = load i32*, i32** %7, align 8
  %47 = call i32 @ldap_msgfree(i32* %46)
  br label %52

48:                                               ; preds = %14
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* %3, align 4
  %51 = call i32 @PRINT_ERROR(i8* bitcast ([36 x i32]* @.str.4 to i8*), i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %48, %27
  br label %53

53:                                               ; preds = %52, %1
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br label %63

63:                                               ; preds = %58, %53
  %64 = phi i1 [ false, %53 ], [ %62, %58 ]
  %65 = zext i1 %64 to i32
  ret i32 %65
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @kull_m_string_sprintf(i8**, i8*, i32) #2

declare dso_local i32 @ldap_search_s(i32, i32, i32, i8*, i8**, i32, i32**) #2

declare dso_local i8* @ldap_get_dn(i32, i32*) #2

declare dso_local i32 @kull_m_string_copy(i64*, i8*) #2

declare dso_local i32 @ldap_memfree(i8*) #2

declare dso_local i64 @kuhl_m_lsadump_dcshadow_getSingleTextAttr(i32, i32*, i8*) #2

declare dso_local i32 @ldap_msgfree(i32*) #2

declare dso_local i32 @PRINT_ERROR(i8*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
