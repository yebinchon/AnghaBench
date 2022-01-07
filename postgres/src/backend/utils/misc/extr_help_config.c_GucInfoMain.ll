; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/misc/extr_help_config.c_GucInfoMain.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/misc/extr_help_config.c_GucInfoMain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_generic = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GucInfoMain() #0 {
  %1 = alloca %struct.config_generic**, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = call i32 (...) @build_guc_variables()
  %6 = call %struct.config_generic** (...) @get_guc_variables()
  store %struct.config_generic** %6, %struct.config_generic*** %1, align 8
  %7 = call i32 (...) @GetNumConfigOptions()
  store i32 %7, i32* %2, align 4
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %26, %0
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* %2, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %29

12:                                               ; preds = %8
  %13 = load %struct.config_generic**, %struct.config_generic*** %1, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.config_generic*, %struct.config_generic** %13, i64 %15
  %17 = load %struct.config_generic*, %struct.config_generic** %16, align 8
  %18 = bitcast %struct.config_generic* %17 to i32*
  store i32* %18, i32** %4, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = call i64 @displayStruct(i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %12
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 @printMixedStruct(i32* %23)
  br label %25

25:                                               ; preds = %22, %12
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %3, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %3, align 4
  br label %8

29:                                               ; preds = %8
  %30 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @build_guc_variables(...) #1

declare dso_local %struct.config_generic** @get_guc_variables(...) #1

declare dso_local i32 @GetNumConfigOptions(...) #1

declare dso_local i64 @displayStruct(i32*) #1

declare dso_local i32 @printMixedStruct(i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
