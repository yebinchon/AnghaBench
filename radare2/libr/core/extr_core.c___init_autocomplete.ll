; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_core.c___init_autocomplete.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_core.c___init_autocomplete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }

@RCoreAutocomplete = common dso_local global i32 0, align 4
@AUTOCOMPLETE_DEFAULT = common dso_local global i64 0, align 8
@AUTOCOMPLETE_MS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"ls\00", align 1
@R_CORE_AUTOCMPLT_MS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"cd\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"cat\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"get\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"mount\00", align 1
@ms_argc = common dso_local global i32 0, align 4
@ms_argv = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*)* @__init_autocomplete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__init_autocomplete(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %4 = load i32, i32* @RCoreAutocomplete, align 4
  %5 = call i32 @R_NEW0(i32 %4)
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  store i32 %5, i32* %7, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @AUTOCOMPLETE_DEFAULT, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %15 = call i32 @__init_autocomplete_default(%struct.TYPE_4__* %14)
  br label %89

16:                                               ; preds = %1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @AUTOCOMPLETE_MS, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %88

22:                                               ; preds = %16
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @R_CORE_AUTOCMPLT_MS, align 4
  %27 = call i32 @r_core_autocomplete_add(i32 %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %26, i32 1)
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @R_CORE_AUTOCMPLT_MS, align 4
  %32 = call i32 @r_core_autocomplete_add(i32 %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %31, i32 1)
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @R_CORE_AUTOCMPLT_MS, align 4
  %37 = call i32 @r_core_autocomplete_add(i32 %35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %36, i32 1)
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @R_CORE_AUTOCMPLT_MS, align 4
  %42 = call i32 @r_core_autocomplete_add(i32 %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %41, i32 1)
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @R_CORE_AUTOCMPLT_MS, align 4
  %47 = call i32 @r_core_autocomplete_add(i32 %45, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %46, i32 1)
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %84, %22
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* @ms_argc, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %48
  %53 = load i8**, i8*** @ms_argv, align 8
  %54 = load i32, i32* %3, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8*, i8** %53, i64 %55
  %57 = load i8*, i8** %56, align 8
  %58 = icmp ne i8* %57, null
  br label %59

59:                                               ; preds = %52, %48
  %60 = phi i1 [ false, %48 ], [ %58, %52 ]
  br i1 %60, label %61, label %87

61:                                               ; preds = %59
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load i8**, i8*** @ms_argv, align 8
  %66 = load i32, i32* %3, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8*, i8** %65, i64 %67
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 @r_core_autocomplete_find(i32 %64, i8* %69, i32 1)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %83, label %72

72:                                               ; preds = %61
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load i8**, i8*** @ms_argv, align 8
  %77 = load i32, i32* %3, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8*, i8** %76, i64 %78
  %80 = load i8*, i8** %79, align 8
  %81 = load i32, i32* @R_CORE_AUTOCMPLT_MS, align 4
  %82 = call i32 @r_core_autocomplete_add(i32 %75, i8* %80, i32 %81, i32 1)
  br label %83

83:                                               ; preds = %72, %61
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %3, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %3, align 4
  br label %48

87:                                               ; preds = %59
  br label %88

88:                                               ; preds = %87, %16
  br label %89

89:                                               ; preds = %88, %13
  ret void
}

declare dso_local i32 @R_NEW0(i32) #1

declare dso_local i32 @__init_autocomplete_default(%struct.TYPE_4__*) #1

declare dso_local i32 @r_core_autocomplete_add(i32, i8*, i32, i32) #1

declare dso_local i32 @r_core_autocomplete_find(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
