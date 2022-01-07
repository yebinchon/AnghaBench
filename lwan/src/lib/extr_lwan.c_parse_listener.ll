; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan.c_parse_listener.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan.c_parse_listener.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config = type { i32 }
%struct.config_line = type { i32, i8*, i32 }
%struct.lwan = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.lwan_module = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"Expecting prefix section\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Could not find handler name: %s\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Invalid section or module not found: %s\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"Expecting section end while parsing listener\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.config*, %struct.config_line*, %struct.lwan*)* @parse_listener to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_listener(%struct.config* %0, %struct.config_line* %1, %struct.lwan* %2) #0 {
  %4 = alloca %struct.config*, align 8
  %5 = alloca %struct.config_line*, align 8
  %6 = alloca %struct.lwan*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.lwan_module*, align 8
  store %struct.config* %0, %struct.config** %4, align 8
  store %struct.config_line* %1, %struct.config_line** %5, align 8
  store %struct.lwan* %2, %struct.lwan** %6, align 8
  %9 = load %struct.lwan*, %struct.lwan** %6, align 8
  %10 = getelementptr inbounds %struct.lwan, %struct.lwan* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @free(i32 %12)
  %14 = load %struct.config_line*, %struct.config_line** %5, align 8
  %15 = getelementptr inbounds %struct.config_line, %struct.config_line* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @strdup(i32 %16)
  %18 = load %struct.lwan*, %struct.lwan** %6, align 8
  %19 = getelementptr inbounds %struct.lwan, %struct.lwan* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i32 %17, i32* %20, align 4
  br label %21

21:                                               ; preds = %82, %69, %49, %3
  %22 = load %struct.config*, %struct.config** %4, align 8
  %23 = call %struct.config_line* @config_read_line(%struct.config* %22)
  store %struct.config_line* %23, %struct.config_line** %5, align 8
  %24 = icmp ne %struct.config_line* %23, null
  br i1 %24, label %25, label %83

25:                                               ; preds = %21
  %26 = load %struct.config_line*, %struct.config_line** %5, align 8
  %27 = getelementptr inbounds %struct.config_line, %struct.config_line* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  switch i32 %28, label %82 [
    i32 130, label %29
    i32 129, label %32
    i32 128, label %81
  ]

29:                                               ; preds = %25
  %30 = load %struct.config*, %struct.config** %4, align 8
  %31 = call i32 (%struct.config*, i8*, ...) @config_error(%struct.config* %30, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %86

32:                                               ; preds = %25
  %33 = load %struct.config_line*, %struct.config_line** %5, align 8
  %34 = getelementptr inbounds %struct.config_line, %struct.config_line* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 0
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 38
  br i1 %39, label %40, label %62

40:                                               ; preds = %32
  %41 = load %struct.config_line*, %struct.config_line** %5, align 8
  %42 = getelementptr inbounds %struct.config_line, %struct.config_line* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 1
  %45 = ptrtoint i8* %44 to i32
  %46 = call i8* @find_handler(i32 %45)
  store i8* %46, i8** %7, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %55

49:                                               ; preds = %40
  %50 = load %struct.config*, %struct.config** %4, align 8
  %51 = load %struct.config_line*, %struct.config_line** %5, align 8
  %52 = load %struct.lwan*, %struct.lwan** %6, align 8
  %53 = load i8*, i8** %7, align 8
  %54 = call i32 @parse_listener_prefix(%struct.config* %50, %struct.config_line* %51, %struct.lwan* %52, %struct.lwan_module* null, i8* %53)
  br label %21

55:                                               ; preds = %40
  %56 = load %struct.config*, %struct.config** %4, align 8
  %57 = load %struct.config_line*, %struct.config_line** %5, align 8
  %58 = getelementptr inbounds %struct.config_line, %struct.config_line* %57, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 1
  %61 = call i32 (%struct.config*, i8*, ...) @config_error(%struct.config* %56, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %60)
  br label %86

62:                                               ; preds = %32
  %63 = load %struct.config_line*, %struct.config_line** %5, align 8
  %64 = getelementptr inbounds %struct.config_line, %struct.config_line* %63, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  %66 = call %struct.lwan_module* @find_module(i8* %65)
  store %struct.lwan_module* %66, %struct.lwan_module** %8, align 8
  %67 = load %struct.lwan_module*, %struct.lwan_module** %8, align 8
  %68 = icmp ne %struct.lwan_module* %67, null
  br i1 %68, label %69, label %75

69:                                               ; preds = %62
  %70 = load %struct.config*, %struct.config** %4, align 8
  %71 = load %struct.config_line*, %struct.config_line** %5, align 8
  %72 = load %struct.lwan*, %struct.lwan** %6, align 8
  %73 = load %struct.lwan_module*, %struct.lwan_module** %8, align 8
  %74 = call i32 @parse_listener_prefix(%struct.config* %70, %struct.config_line* %71, %struct.lwan* %72, %struct.lwan_module* %73, i8* null)
  br label %21

75:                                               ; preds = %62
  %76 = load %struct.config*, %struct.config** %4, align 8
  %77 = load %struct.config_line*, %struct.config_line** %5, align 8
  %78 = getelementptr inbounds %struct.config_line, %struct.config_line* %77, i32 0, i32 1
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 (%struct.config*, i8*, ...) @config_error(%struct.config* %76, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i8* %79)
  br label %86

81:                                               ; preds = %25
  br label %86

82:                                               ; preds = %25
  br label %21

83:                                               ; preds = %21
  %84 = load %struct.config*, %struct.config** %4, align 8
  %85 = call i32 (%struct.config*, i8*, ...) @config_error(%struct.config* %84, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  br label %86

86:                                               ; preds = %83, %81, %75, %55, %29
  ret void
}

declare dso_local i32 @free(i32) #1

declare dso_local i32 @strdup(i32) #1

declare dso_local %struct.config_line* @config_read_line(%struct.config*) #1

declare dso_local i32 @config_error(%struct.config*, i8*, ...) #1

declare dso_local i8* @find_handler(i32) #1

declare dso_local i32 @parse_listener_prefix(%struct.config*, %struct.config_line*, %struct.lwan*, %struct.lwan_module*, i8*) #1

declare dso_local %struct.lwan_module* @find_module(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
