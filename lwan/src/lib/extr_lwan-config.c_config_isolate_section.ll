; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-config.c_config_isolate_section.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-config.c_config_isolate_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, %struct.lexer }
%struct.lexer = type { i8*, i8*, i8* }
%struct.TYPE_3__ = type { i64, i32* }
%struct.config_line = type { i64 }

@CONFIG_LINE_TYPE_SECTION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [51 x i8] c"Could not find section end while trying to isolate\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.config* @config_isolate_section(%struct.config* %0, %struct.config_line* %1) #0 {
  %3 = alloca %struct.config*, align 8
  %4 = alloca %struct.config*, align 8
  %5 = alloca %struct.config_line*, align 8
  %6 = alloca %struct.lexer*, align 8
  %7 = alloca %struct.config*, align 8
  %8 = alloca i8*, align 8
  store %struct.config* %0, %struct.config** %4, align 8
  store %struct.config_line* %1, %struct.config_line** %5, align 8
  %9 = load %struct.config_line*, %struct.config_line** %5, align 8
  %10 = getelementptr inbounds %struct.config_line, %struct.config_line* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @CONFIG_LINE_TYPE_SECTION, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store %struct.config* null, %struct.config** %3, align 8
  br label %71

15:                                               ; preds = %2
  %16 = call %struct.config* @malloc(i32 48)
  store %struct.config* %16, %struct.config** %7, align 8
  %17 = load %struct.config*, %struct.config** %7, align 8
  %18 = icmp ne %struct.config* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  store %struct.config* null, %struct.config** %3, align 8
  br label %71

20:                                               ; preds = %15
  %21 = load %struct.config*, %struct.config** %7, align 8
  %22 = load %struct.config*, %struct.config** %4, align 8
  %23 = call i32 @memcpy(%struct.config* %21, %struct.config* %22, i32 48)
  %24 = load %struct.config*, %struct.config** %7, align 8
  %25 = getelementptr inbounds %struct.config, %struct.config* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = call i32 @lwan_strbuf_init(i32* %26)
  %28 = load %struct.config*, %struct.config** %7, align 8
  %29 = getelementptr inbounds %struct.config, %struct.config* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  store i32* null, i32** %30, align 8
  %31 = load %struct.config*, %struct.config** %7, align 8
  %32 = getelementptr inbounds %struct.config, %struct.config* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  store i64 0, i64* %33, align 8
  %34 = load %struct.config*, %struct.config** %7, align 8
  %35 = getelementptr inbounds %struct.config, %struct.config* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  store %struct.lexer* %36, %struct.lexer** %6, align 8
  %37 = load %struct.lexer*, %struct.lexer** %6, align 8
  %38 = getelementptr inbounds %struct.lexer, %struct.lexer* %37, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  %40 = load %struct.lexer*, %struct.lexer** %6, align 8
  %41 = getelementptr inbounds %struct.lexer, %struct.lexer* %40, i32 0, i32 0
  store i8* %39, i8** %41, align 8
  %42 = load %struct.config*, %struct.config** %7, align 8
  %43 = getelementptr inbounds %struct.config, %struct.config* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.lexer, %struct.lexer* %44, i32 0, i32 1
  %46 = load i8*, i8** %45, align 8
  store i8* %46, i8** %8, align 8
  %47 = load %struct.config*, %struct.config** %7, align 8
  %48 = call i32 @find_section_end(%struct.config* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %59, label %50

50:                                               ; preds = %20
  %51 = load %struct.config*, %struct.config** %7, align 8
  %52 = getelementptr inbounds %struct.config, %struct.config* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = call i32 @lwan_strbuf_free(i32* %53)
  %55 = load %struct.config*, %struct.config** %7, align 8
  %56 = call i32 @free(%struct.config* %55)
  %57 = load %struct.config*, %struct.config** %4, align 8
  %58 = call i32 @config_error(%struct.config* %57, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  store %struct.config* null, %struct.config** %3, align 8
  br label %71

59:                                               ; preds = %20
  %60 = load %struct.lexer*, %struct.lexer** %6, align 8
  %61 = getelementptr inbounds %struct.lexer, %struct.lexer* %60, i32 0, i32 1
  %62 = load i8*, i8** %61, align 8
  %63 = load %struct.lexer*, %struct.lexer** %6, align 8
  %64 = getelementptr inbounds %struct.lexer, %struct.lexer* %63, i32 0, i32 2
  store i8* %62, i8** %64, align 8
  %65 = load i8*, i8** %8, align 8
  %66 = load %struct.lexer*, %struct.lexer** %6, align 8
  %67 = getelementptr inbounds %struct.lexer, %struct.lexer* %66, i32 0, i32 1
  store i8* %65, i8** %67, align 8
  %68 = load %struct.lexer*, %struct.lexer** %6, align 8
  %69 = getelementptr inbounds %struct.lexer, %struct.lexer* %68, i32 0, i32 0
  store i8* %65, i8** %69, align 8
  %70 = load %struct.config*, %struct.config** %7, align 8
  store %struct.config* %70, %struct.config** %3, align 8
  br label %71

71:                                               ; preds = %59, %50, %19, %14
  %72 = load %struct.config*, %struct.config** %3, align 8
  ret %struct.config* %72
}

declare dso_local %struct.config* @malloc(i32) #1

declare dso_local i32 @memcpy(%struct.config*, %struct.config*, i32) #1

declare dso_local i32 @lwan_strbuf_init(i32*) #1

declare dso_local i32 @find_section_end(%struct.config*) #1

declare dso_local i32 @lwan_strbuf_free(i32*) #1

declare dso_local i32 @free(%struct.config*) #1

declare dso_local i32 @config_error(%struct.config*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
