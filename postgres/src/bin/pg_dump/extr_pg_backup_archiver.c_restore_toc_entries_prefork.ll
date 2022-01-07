; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_backup_archiver.c_restore_toc_entries_prefork.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_backup_archiver.c_restore_toc_entries_prefork.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32*, i32*, i32*, i32*, i32, %struct.TYPE_13__*, i64 }
%struct.TYPE_13__ = type { i64, i32, i32, i32, %struct.TYPE_13__* }

@.str = private unnamed_addr constant [37 x i8] c"entering restore_toc_entries_prefork\00", align 1
@RESTORE_PASS_MAIN = common dso_local global i64 0, align 8
@SECTION_PRE_DATA = common dso_local global i64 0, align 8
@SECTION_DATA = common dso_local global i64 0, align 8
@SECTION_POST_DATA = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"processing item %d %s %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, %struct.TYPE_13__*)* @restore_toc_entries_prefork to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @restore_toc_entries_prefork(%struct.TYPE_14__* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %4, align 8
  %8 = call i32 @pg_log_debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %10 = call i32 @fix_dependencies(%struct.TYPE_14__* %9)
  %11 = load i64, i64* @RESTORE_PASS_MAIN, align 8
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 6
  store i64 %11, i64* %13, align 8
  store i32 0, i32* %5, align 4
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 5
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 4
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  store %struct.TYPE_13__* %18, %struct.TYPE_13__** %6, align 8
  br label %19

19:                                               ; preds = %81, %2
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 5
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %24 = icmp ne %struct.TYPE_13__* %20, %23
  br i1 %24, label %25, label %85

25:                                               ; preds = %19
  store i32 1, i32* %7, align 4
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @SECTION_PRE_DATA, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %50

31:                                               ; preds = %25
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @SECTION_DATA, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %43, label %37

37:                                               ; preds = %31
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @SECTION_POST_DATA, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %37, %31
  store i32 0, i32* %7, align 4
  store i32 1, i32* %5, align 4
  br label %49

44:                                               ; preds = %37
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  store i32 0, i32* %7, align 4
  br label %48

48:                                               ; preds = %47, %44
  br label %49

49:                                               ; preds = %48, %43
  br label %50

50:                                               ; preds = %49, %25
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %52 = call i64 @_tocEntryRestorePass(%struct.TYPE_13__* %51)
  %53 = load i64, i64* @RESTORE_PASS_MAIN, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  store i32 0, i32* %7, align 4
  br label %56

56:                                               ; preds = %55, %50
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %76

59:                                               ; preds = %56
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @pg_log_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %62, i32 %65, i32 %68)
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %72 = call i32 @restore_toc_entry(%struct.TYPE_14__* %70, %struct.TYPE_13__* %71, i32 0)
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %75 = call i32 @reduce_dependencies(%struct.TYPE_14__* %73, %struct.TYPE_13__* %74, i32* null)
  br label %80

76:                                               ; preds = %56
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %79 = call i32 @pending_list_append(%struct.TYPE_13__* %77, %struct.TYPE_13__* %78)
  br label %80

80:                                               ; preds = %76, %59
  br label %81

81:                                               ; preds = %80
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 4
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %83, align 8
  store %struct.TYPE_13__* %84, %struct.TYPE_13__** %6, align 8
  br label %19

85:                                               ; preds = %19
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 4
  %88 = call i32 @DisconnectDatabase(i32* %87)
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 3
  %91 = load i32*, i32** %90, align 8
  %92 = icmp ne i32* %91, null
  br i1 %92, label %93, label %98

93:                                               ; preds = %85
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 3
  %96 = load i32*, i32** %95, align 8
  %97 = call i32 @free(i32* %96)
  br label %98

98:                                               ; preds = %93, %85
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 3
  store i32* null, i32** %100, align 8
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 2
  %103 = load i32*, i32** %102, align 8
  %104 = icmp ne i32* %103, null
  br i1 %104, label %105, label %110

105:                                              ; preds = %98
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 2
  %108 = load i32*, i32** %107, align 8
  %109 = call i32 @free(i32* %108)
  br label %110

110:                                              ; preds = %105, %98
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 2
  store i32* null, i32** %112, align 8
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  %116 = icmp ne i32* %115, null
  br i1 %116, label %117, label %122

117:                                              ; preds = %110
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = call i32 @free(i32* %120)
  br label %122

122:                                              ; preds = %117, %110
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 1
  store i32* null, i32** %124, align 8
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = icmp ne i32* %127, null
  br i1 %128, label %129, label %134

129:                                              ; preds = %122
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = call i32 @free(i32* %132)
  br label %134

134:                                              ; preds = %129, %122
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 0
  store i32* null, i32** %136, align 8
  ret void
}

declare dso_local i32 @pg_log_debug(i8*) #1

declare dso_local i32 @fix_dependencies(%struct.TYPE_14__*) #1

declare dso_local i64 @_tocEntryRestorePass(%struct.TYPE_13__*) #1

declare dso_local i32 @pg_log_info(i8*, i32, i32, i32) #1

declare dso_local i32 @restore_toc_entry(%struct.TYPE_14__*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @reduce_dependencies(%struct.TYPE_14__*, %struct.TYPE_13__*, i32*) #1

declare dso_local i32 @pending_list_append(%struct.TYPE_13__*, %struct.TYPE_13__*) #1

declare dso_local i32 @DisconnectDatabase(i32*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
