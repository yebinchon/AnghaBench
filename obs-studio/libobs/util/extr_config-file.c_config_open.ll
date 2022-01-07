; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/util/extr_config-file.c_config_open.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/util/extr_config-file.c_config_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }

@CONFIG_OPEN_ALWAYS = common dso_local global i32 0, align 4
@CONFIG_ERROR = common dso_local global i32 0, align 4
@CONFIG_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @config_open(%struct.TYPE_7__** %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_7__** %0, %struct.TYPE_7__*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* @CONFIG_OPEN_ALWAYS, align 4
  %12 = icmp eq i32 %10, %11
  %13 = zext i1 %12 to i32
  store i32 %13, i32* %9, align 4
  %14 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %5, align 8
  %15 = icmp ne %struct.TYPE_7__** %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @CONFIG_ERROR, align 4
  store i32 %17, i32* %4, align 4
  br label %58

18:                                               ; preds = %3
  %19 = call %struct.TYPE_7__* @bzalloc(i32 4)
  %20 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %5, align 8
  store %struct.TYPE_7__* %19, %struct.TYPE_7__** %20, align 8
  %21 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %5, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %23 = icmp ne %struct.TYPE_7__* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %18
  %25 = load i32, i32* @CONFIG_ERROR, align 4
  store i32 %25, i32* %4, align 4
  br label %58

26:                                               ; preds = %18
  %27 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %5, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = call i32 @init_mutex(%struct.TYPE_7__* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %26
  %32 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %5, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = call i32 @bfree(%struct.TYPE_7__* %33)
  %35 = load i32, i32* @CONFIG_ERROR, align 4
  store i32 %35, i32* %4, align 4
  br label %58

36:                                               ; preds = %26
  %37 = load i8*, i8** %6, align 8
  %38 = call i32 @bstrdup(i8* %37)
  %39 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %5, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  store i32 %38, i32* %41, align 4
  %42 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %5, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i8*, i8** %6, align 8
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @config_parse_file(i32* %44, i8* %45, i32 %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @CONFIG_SUCCESS, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %36
  %52 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %5, align 8
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = call i32 @config_close(%struct.TYPE_7__* %53)
  %55 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %5, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %55, align 8
  br label %56

56:                                               ; preds = %51, %36
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %56, %31, %24, %16
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local %struct.TYPE_7__* @bzalloc(i32) #1

declare dso_local i32 @init_mutex(%struct.TYPE_7__*) #1

declare dso_local i32 @bfree(%struct.TYPE_7__*) #1

declare dso_local i32 @bstrdup(i8*) #1

declare dso_local i32 @config_parse_file(i32*, i8*, i32) #1

declare dso_local i32 @config_close(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
