; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/misc/extr_guc.c_EmitWarningsOnPlaceholders.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/misc/extr_guc.c_EmitWarningsOnPlaceholders.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_generic = type { i32, i64* }

@num_guc_variables = common dso_local global i32 0, align 4
@guc_variables = common dso_local global %struct.config_generic** null, align 8
@GUC_CUSTOM_PLACEHOLDER = common dso_local global i32 0, align 4
@GUC_QUALIFIER_SEPARATOR = common dso_local global i64 0, align 8
@WARNING = common dso_local global i32 0, align 4
@ERRCODE_UNDEFINED_OBJECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"unrecognized configuration parameter \22%s\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @EmitWarningsOnPlaceholders(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.config_generic*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = call i32 @strlen(i8* %6)
  store i32 %7, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %52, %1
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @num_guc_variables, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %55

12:                                               ; preds = %8
  %13 = load %struct.config_generic**, %struct.config_generic*** @guc_variables, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.config_generic*, %struct.config_generic** %13, i64 %15
  %17 = load %struct.config_generic*, %struct.config_generic** %16, align 8
  store %struct.config_generic* %17, %struct.config_generic** %5, align 8
  %18 = load %struct.config_generic*, %struct.config_generic** %5, align 8
  %19 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @GUC_CUSTOM_PLACEHOLDER, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %51

24:                                               ; preds = %12
  %25 = load i8*, i8** %2, align 8
  %26 = load %struct.config_generic*, %struct.config_generic** %5, align 8
  %27 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %26, i32 0, i32 1
  %28 = load i64*, i64** %27, align 8
  %29 = load i32, i32* %3, align 4
  %30 = call i64 @strncmp(i8* %25, i64* %28, i32 %29)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %51

32:                                               ; preds = %24
  %33 = load %struct.config_generic*, %struct.config_generic** %5, align 8
  %34 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %33, i32 0, i32 1
  %35 = load i64*, i64** %34, align 8
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %35, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @GUC_QUALIFIER_SEPARATOR, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %32
  %43 = load i32, i32* @WARNING, align 4
  %44 = load i32, i32* @ERRCODE_UNDEFINED_OBJECT, align 4
  %45 = call i32 @errcode(i32 %44)
  %46 = load %struct.config_generic*, %struct.config_generic** %5, align 8
  %47 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %46, i32 0, i32 1
  %48 = load i64*, i64** %47, align 8
  %49 = call i32 @errmsg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64* %48)
  %50 = call i32 @ereport(i32 %43, i32 %49)
  br label %51

51:                                               ; preds = %42, %32, %24, %12
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %4, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %4, align 4
  br label %8

55:                                               ; preds = %8
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strncmp(i8*, i64*, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
