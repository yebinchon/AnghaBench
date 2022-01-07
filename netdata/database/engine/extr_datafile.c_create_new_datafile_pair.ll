; ModuleID = '/home/carl/AnghaBench/netdata/database/engine/extr_datafile.c_create_new_datafile_pair.c'
source_filename = "/home/carl/AnghaBench/netdata/database/engine/extr_datafile.c_create_new_datafile_pair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rrdengine_instance = type { i8*, i32 }
%struct.rrdengine_datafile = type { i64, %struct.rrdengine_datafile* }
%struct.rrdengine_journalfile = type { i64, %struct.rrdengine_journalfile* }

@RRDENG_PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Creating new data and journal files in path %s\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Created data file \22%s\22.\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Created journal file \22%s\22.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @create_new_datafile_pair(%struct.rrdengine_instance* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rrdengine_instance*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.rrdengine_datafile*, align 8
  %9 = alloca %struct.rrdengine_journalfile*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.rrdengine_instance* %0, %struct.rrdengine_instance** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* @RRDENG_PATH_MAX, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %11, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %12, align 8
  %18 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %5, align 8
  %19 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @info(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i8* %20)
  %22 = call %struct.rrdengine_journalfile* @mallocz(i32 16)
  %23 = bitcast %struct.rrdengine_journalfile* %22 to %struct.rrdengine_datafile*
  store %struct.rrdengine_datafile* %23, %struct.rrdengine_datafile** %8, align 8
  %24 = load %struct.rrdengine_datafile*, %struct.rrdengine_datafile** %8, align 8
  %25 = bitcast %struct.rrdengine_datafile* %24 to %struct.rrdengine_journalfile*
  %26 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @datafile_init(%struct.rrdengine_journalfile* %25, %struct.rrdengine_instance* %26, i32 %27, i32 %28)
  %30 = load %struct.rrdengine_datafile*, %struct.rrdengine_datafile** %8, align 8
  %31 = bitcast %struct.rrdengine_datafile* %30 to %struct.rrdengine_journalfile*
  %32 = call i32 @create_data_file(%struct.rrdengine_journalfile* %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %3
  %36 = load %struct.rrdengine_datafile*, %struct.rrdengine_datafile** %8, align 8
  %37 = bitcast %struct.rrdengine_datafile* %36 to %struct.rrdengine_journalfile*
  %38 = trunc i64 %15 to i32
  %39 = call i32 @generate_datafilepath(%struct.rrdengine_journalfile* %37, i8* %17, i32 %38)
  %40 = call i32 @info(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %17)
  br label %42

41:                                               ; preds = %3
  br label %89

42:                                               ; preds = %35
  %43 = call %struct.rrdengine_journalfile* @mallocz(i32 16)
  store %struct.rrdengine_journalfile* %43, %struct.rrdengine_journalfile** %9, align 8
  %44 = load %struct.rrdengine_journalfile*, %struct.rrdengine_journalfile** %9, align 8
  %45 = bitcast %struct.rrdengine_journalfile* %44 to %struct.rrdengine_datafile*
  %46 = load %struct.rrdengine_datafile*, %struct.rrdengine_datafile** %8, align 8
  %47 = getelementptr inbounds %struct.rrdengine_datafile, %struct.rrdengine_datafile* %46, i32 0, i32 1
  store %struct.rrdengine_datafile* %45, %struct.rrdengine_datafile** %47, align 8
  %48 = load %struct.rrdengine_journalfile*, %struct.rrdengine_journalfile** %9, align 8
  %49 = load %struct.rrdengine_datafile*, %struct.rrdengine_datafile** %8, align 8
  %50 = bitcast %struct.rrdengine_datafile* %49 to %struct.rrdengine_journalfile*
  %51 = call i32 @journalfile_init(%struct.rrdengine_journalfile* %48, %struct.rrdengine_journalfile* %50)
  %52 = load %struct.rrdengine_journalfile*, %struct.rrdengine_journalfile** %9, align 8
  %53 = load %struct.rrdengine_datafile*, %struct.rrdengine_datafile** %8, align 8
  %54 = bitcast %struct.rrdengine_datafile* %53 to %struct.rrdengine_journalfile*
  %55 = call i32 @create_journal_file(%struct.rrdengine_journalfile* %52, %struct.rrdengine_journalfile* %54)
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %42
  %59 = load %struct.rrdengine_datafile*, %struct.rrdengine_datafile** %8, align 8
  %60 = bitcast %struct.rrdengine_datafile* %59 to %struct.rrdengine_journalfile*
  %61 = trunc i64 %15 to i32
  %62 = call i32 @generate_journalfilepath(%struct.rrdengine_journalfile* %60, i8* %17, i32 %61)
  %63 = call i32 @info(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %17)
  br label %65

64:                                               ; preds = %42
  br label %83

65:                                               ; preds = %58
  %66 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %5, align 8
  %67 = load %struct.rrdengine_datafile*, %struct.rrdengine_datafile** %8, align 8
  %68 = bitcast %struct.rrdengine_datafile* %67 to %struct.rrdengine_journalfile*
  %69 = call i32 @datafile_list_insert(%struct.rrdengine_instance* %66, %struct.rrdengine_journalfile* %68)
  %70 = load %struct.rrdengine_datafile*, %struct.rrdengine_datafile** %8, align 8
  %71 = getelementptr inbounds %struct.rrdengine_datafile, %struct.rrdengine_datafile* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.rrdengine_journalfile*, %struct.rrdengine_journalfile** %9, align 8
  %74 = getelementptr inbounds %struct.rrdengine_journalfile, %struct.rrdengine_journalfile* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %72, %75
  %77 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %5, align 8
  %78 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = sext i32 %79 to i64
  %81 = add nsw i64 %80, %76
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %78, align 8
  store i32 0, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %94

83:                                               ; preds = %64
  %84 = load %struct.rrdengine_datafile*, %struct.rrdengine_datafile** %8, align 8
  %85 = bitcast %struct.rrdengine_datafile* %84 to %struct.rrdengine_journalfile*
  %86 = call i32 @destroy_data_file(%struct.rrdengine_journalfile* %85)
  %87 = load %struct.rrdengine_journalfile*, %struct.rrdengine_journalfile** %9, align 8
  %88 = call i32 @freez(%struct.rrdengine_journalfile* %87)
  br label %89

89:                                               ; preds = %83, %41
  %90 = load %struct.rrdengine_datafile*, %struct.rrdengine_datafile** %8, align 8
  %91 = bitcast %struct.rrdengine_datafile* %90 to %struct.rrdengine_journalfile*
  %92 = call i32 @freez(%struct.rrdengine_journalfile* %91)
  %93 = load i32, i32* %10, align 4
  store i32 %93, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %94

94:                                               ; preds = %89, %65
  %95 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %95)
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @info(i8*, i8*) #2

declare dso_local %struct.rrdengine_journalfile* @mallocz(i32) #2

declare dso_local i32 @datafile_init(%struct.rrdengine_journalfile*, %struct.rrdengine_instance*, i32, i32) #2

declare dso_local i32 @create_data_file(%struct.rrdengine_journalfile*) #2

declare dso_local i32 @generate_datafilepath(%struct.rrdengine_journalfile*, i8*, i32) #2

declare dso_local i32 @journalfile_init(%struct.rrdengine_journalfile*, %struct.rrdengine_journalfile*) #2

declare dso_local i32 @create_journal_file(%struct.rrdengine_journalfile*, %struct.rrdengine_journalfile*) #2

declare dso_local i32 @generate_journalfilepath(%struct.rrdengine_journalfile*, i8*, i32) #2

declare dso_local i32 @datafile_list_insert(%struct.rrdengine_instance*, %struct.rrdengine_journalfile*) #2

declare dso_local i32 @destroy_data_file(%struct.rrdengine_journalfile*) #2

declare dso_local i32 @freez(%struct.rrdengine_journalfile*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
