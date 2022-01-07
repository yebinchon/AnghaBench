; ModuleID = '/home/carl/AnghaBench/netdata/collectors/apps.plugin/extr_apps_plugin.c_file_descriptor_set_on_empty_slot.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/apps.plugin/extr_apps_plugin.c_file_descriptor_set_on_empty_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i8*, i32, i32, i32 }

@all_files = common dso_local global %struct.TYPE_3__* null, align 8
@all_files_len = common dso_local global i32 0, align 4
@all_files_size = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"  >> searching for empty slot.\00", align 1
@file_descriptor_set_on_empty_slot.last_pos = internal global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"  >> Examining slot %d.\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"  >> %s fd position %d for %s (last name: %s)\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"re-using\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"using\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"We should find an empty slot, but there isn't any\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"  >> updating slot %d.\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"INTERNAL ERROR: duplicate indexing of fd.\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"using fd position %d (name: %s)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32)* @file_descriptor_set_on_empty_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @file_descriptor_set_on_empty_slot(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** @all_files, align 8
  %10 = icmp ne %struct.TYPE_3__* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = load i32, i32* @all_files_len, align 4
  %13 = load i32, i32* @all_files_size, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %11, %3
  %16 = call i32 (...) @all_files_grow()
  br label %17

17:                                               ; preds = %15, %11
  %18 = call i32 (i8*, ...) @debug_log(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  %19 = load i32, i32* @file_descriptor_set_on_empty_slot.last_pos, align 4
  store i32 %19, i32* %8, align 4
  br label %20

20:                                               ; preds = %76, %17
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @all_files_size, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %81

24:                                               ; preds = %20
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @all_files_size, align 4
  %27 = icmp sge i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store i32 0, i32* %8, align 4
  br label %29

29:                                               ; preds = %28, %24
  %30 = load i32, i32* %8, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  br label %76

33:                                               ; preds = %29
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** @all_files, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %75, label %41

41:                                               ; preds = %33
  %42 = load i32, i32* %8, align 4
  %43 = call i32 (i8*, ...) @debug_log(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** @all_files, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 2
  %49 = load i8*, i8** %48, align 8
  %50 = icmp ne i8* %49, null
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0)
  %53 = load i32, i32* %8, align 4
  %54 = load i8*, i8** %4, align 8
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** @all_files, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 2
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 (i8*, ...) @debug_log(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i8* %52, i32 %53, i8* %54, i8* %60)
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** @all_files, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 2
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @freez(i8* %67)
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** @all_files, align 8
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 2
  store i8* null, i8** %73, align 8
  %74 = load i32, i32* %8, align 4
  store i32 %74, i32* @file_descriptor_set_on_empty_slot.last_pos, align 4
  br label %81

75:                                               ; preds = %33
  br label %76

76:                                               ; preds = %75, %32
  %77 = load i32, i32* %7, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* %8, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %8, align 4
  br label %20

81:                                               ; preds = %41, %20
  %82 = load i32, i32* @all_files_len, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* @all_files_len, align 4
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* @all_files_size, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %81
  %88 = call i32 @fatal(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0))
  %89 = call i32 @exit(i32 1) #3
  unreachable

90:                                               ; preds = %81
  %91 = load i32, i32* %8, align 4
  %92 = call i32 (i8*, ...) @debug_log(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 %91)
  %93 = load i8*, i8** %4, align 8
  %94 = call i8* @strdupz(i8* %93)
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** @all_files, align 8
  %96 = load i32, i32* %8, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 2
  store i8* %94, i8** %99, align 8
  %100 = load i32, i32* %5, align 4
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** @all_files, align 8
  %102 = load i32, i32* %8, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 5
  store i32 %100, i32* %105, align 8
  %106 = load i32, i32* %6, align 4
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** @all_files, align 8
  %108 = load i32, i32* %8, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 4
  store i32 %106, i32* %111, align 4
  %112 = load i32, i32* %8, align 4
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** @all_files, align 8
  %114 = load i32, i32* %8, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 3
  store i32 %112, i32* %117, align 8
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** @all_files, align 8
  %119 = load i32, i32* %8, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 0
  store i32 1, i32* %122, align 8
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** @all_files, align 8
  %124 = load i32, i32* %8, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i64 %125
  %127 = call i8* @file_descriptor_add(%struct.TYPE_3__* %126)
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** @all_files, align 8
  %129 = load i32, i32* %8, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i64 %130
  %132 = bitcast %struct.TYPE_3__* %131 to i8*
  %133 = icmp ne i8* %127, %132
  %134 = zext i1 %133 to i32
  %135 = call i64 @unlikely(i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %90
  %138 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0))
  br label %139

139:                                              ; preds = %137, %90
  %140 = load i32, i32* %8, align 4
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** @all_files, align 8
  %142 = load i32, i32* %8, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 2
  %146 = load i8*, i8** %145, align 8
  %147 = call i32 (i8*, ...) @debug_log(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i32 %140, i8* %146)
  %148 = load i32, i32* %8, align 4
  ret i32 %148
}

declare dso_local i32 @all_files_grow(...) #1

declare dso_local i32 @debug_log(i8*, ...) #1

declare dso_local i32 @freez(i8*) #1

declare dso_local i32 @fatal(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i8* @strdupz(i8*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i8* @file_descriptor_add(%struct.TYPE_3__*) #1

declare dso_local i32 @error(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
