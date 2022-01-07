; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/lsadump/extr_kuhl_m_lsadump_dc.c_kuhl_m_lsadump_dcshadow_domain_and_replication_info.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/lsadump/extr_kuhl_m_lsadump_dc.c_kuhl_m_lsadump_dcshadow_domain_and_replication_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32*, i32, %struct.TYPE_11__, %struct.TYPE_11__, i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i32] [i32 42, i32 42, i32 32, i32 68, i32 111, i32 109, i32 97, i32 105, i32 110, i32 32, i32 73, i32 110, i32 102, i32 111, i32 32, i32 42, i32 42, i32 10, i32 10, i32 0], align 4
@.str.1 = private unnamed_addr constant [2 x i32] [i32 10, i32 0], align 4
@.str.2 = private unnamed_addr constant [20 x i32] [i32 42, i32 42, i32 32, i32 83, i32 101, i32 114, i32 118, i32 101, i32 114, i32 32, i32 73, i32 110, i32 102, i32 111, i32 32, i32 42, i32 42, i32 10, i32 10, i32 0], align 4
@.str.3 = private unnamed_addr constant [28 x i32] [i32 83, i32 101, i32 114, i32 118, i32 101, i32 114, i32 58, i32 32, i32 37, i32 115, i32 10, i32 32, i32 32, i32 73, i32 110, i32 115, i32 116, i32 97, i32 110, i32 99, i32 101, i32 73, i32 100, i32 32, i32 32, i32 58, i32 32, i32 0], align 4
@.str.4 = private unnamed_addr constant [18 x i32] [i32 10, i32 32, i32 32, i32 73, i32 110, i32 118, i32 111, i32 99, i32 97, i32 116, i32 105, i32 111, i32 110, i32 73, i32 100, i32 58, i32 32, i32 0], align 4
@.str.5 = private unnamed_addr constant [54 x i32] [i32 70, i32 97, i32 107, i32 101, i32 32, i32 83, i32 101, i32 114, i32 118, i32 101, i32 114, i32 32, i32 40, i32 97, i32 108, i32 114, i32 101, i32 97, i32 100, i32 121, i32 32, i32 114, i32 101, i32 103, i32 105, i32 115, i32 116, i32 101, i32 114, i32 101, i32 100, i32 41, i32 58, i32 32, i32 37, i32 115, i32 10, i32 32, i32 32, i32 73, i32 110, i32 115, i32 116, i32 97, i32 110, i32 99, i32 101, i32 73, i32 100, i32 32, i32 32, i32 58, i32 32, i32 0], align 4
@.str.6 = private unnamed_addr constant [42 x i32] [i32 70, i32 97, i32 107, i32 101, i32 32, i32 83, i32 101, i32 114, i32 118, i32 101, i32 114, i32 32, i32 40, i32 110, i32 111, i32 116, i32 32, i32 97, i32 108, i32 114, i32 101, i32 97, i32 100, i32 121, i32 32, i32 114, i32 101, i32 103, i32 105, i32 115, i32 116, i32 101, i32 114, i32 101, i32 100, i32 41, i32 58, i32 32, i32 37, i32 115, i32 10, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kuhl_m_lsadump_dcshadow_domain_and_replication_info(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %5 = load i32, i32* @FALSE, align 4
  store i32 %5, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %6 = call i32 (i8*, ...) @kprintf(i8* bitcast ([20 x i32]* @.str to i8*))
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %8 = call i64 @kuhl_m_lsadump_dcshadow_domaininfo_rootDse(%struct.TYPE_10__* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %1
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %17 = call i64 @kuhl_m_lsadump_dcshadow_domaininfo_schemasignature(%struct.TYPE_10__* %16)
  %18 = icmp ne i64 %17, 0
  br label %19

19:                                               ; preds = %15, %10
  %20 = phi i1 [ true, %10 ], [ %18, %15 ]
  br label %21

21:                                               ; preds = %19, %1
  %22 = phi i1 [ false, %1 ], [ %20, %19 ]
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %28 = call i32 @kuhl_m_lsadump_dcshadow_domaininfo_computer(%struct.TYPE_10__* %27)
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %26, %21
  %30 = call i32 (i8*, ...) @kprintf(i8* bitcast ([2 x i32]* @.str.1 to i8*))
  %31 = load i32, i32* %3, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %92

33:                                               ; preds = %29
  %34 = call i32 (i8*, ...) @kprintf(i8* bitcast ([20 x i32]* @.str.2 to i8*))
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 3
  %41 = call i32 @kuhl_m_lsadump_dcshadow_objectGUID_invocationGUID(%struct.TYPE_10__* %35, i32 %38, %struct.TYPE_11__* %40)
  store i32 %41, i32* %3, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %58

43:                                               ; preds = %33
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = call i32 (i8*, ...) @kprintf(i8* bitcast ([28 x i32]* @.str.3 to i8*), i32 %46)
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 1
  %51 = call i32 @kull_m_string_displayGUID(i32* %50)
  %52 = call i32 (i8*, ...) @kprintf(i8* bitcast ([18 x i32]* @.str.4 to i8*))
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = call i32 @kull_m_string_displayGUID(i32* %55)
  %57 = call i32 (i8*, ...) @kprintf(i8* bitcast ([2 x i32]* @.str.1 to i8*))
  br label %58

58:                                               ; preds = %43, %33
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 2
  %61 = call i32 @RtlZeroMemory(%struct.TYPE_11__* %60, i32 4)
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 2
  %68 = call i32 @kuhl_m_lsadump_dcshadow_objectGUID_invocationGUID(%struct.TYPE_10__* %62, i32 %65, %struct.TYPE_11__* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %85

70:                                               ; preds = %58
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i32 (i8*, ...) @kprintf(i8* bitcast ([54 x i32]* @.str.5 to i8*), i32 %73)
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 1
  %78 = call i32 @kull_m_string_displayGUID(i32* %77)
  %79 = call i32 (i8*, ...) @kprintf(i8* bitcast ([18 x i32]* @.str.4 to i8*))
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 0
  %83 = call i32 @kull_m_string_displayGUID(i32* %82)
  %84 = call i32 (i8*, ...) @kprintf(i8* bitcast ([2 x i32]* @.str.1 to i8*))
  br label %90

85:                                               ; preds = %58
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = call i32 (i8*, ...) @kprintf(i8* bitcast ([42 x i32]* @.str.6 to i8*), i32 %88)
  br label %90

90:                                               ; preds = %85, %70
  %91 = call i32 (i8*, ...) @kprintf(i8* bitcast ([2 x i32]* @.str.1 to i8*))
  br label %92

92:                                               ; preds = %90, %29
  %93 = load i32, i32* %3, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %92
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = icmp ne i32* %98, null
  br i1 %99, label %100, label %103

100:                                              ; preds = %95
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %102 = call i32 @kuhl_m_lsadump_dcshadow_build_replication(%struct.TYPE_10__* %101)
  store i32 %102, i32* %3, align 4
  br label %103

103:                                              ; preds = %100, %95, %92
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i32 @kprintf(i8*, ...) #1

declare dso_local i64 @kuhl_m_lsadump_dcshadow_domaininfo_rootDse(%struct.TYPE_10__*) #1

declare dso_local i64 @kuhl_m_lsadump_dcshadow_domaininfo_schemasignature(%struct.TYPE_10__*) #1

declare dso_local i32 @kuhl_m_lsadump_dcshadow_domaininfo_computer(%struct.TYPE_10__*) #1

declare dso_local i32 @kuhl_m_lsadump_dcshadow_objectGUID_invocationGUID(%struct.TYPE_10__*, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @kull_m_string_displayGUID(i32*) #1

declare dso_local i32 @RtlZeroMemory(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @kuhl_m_lsadump_dcshadow_build_replication(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
