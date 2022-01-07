; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/misc/extr_guc.c_set_config_sourcefile.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/misc/extr_guc.c_set_config_sourcefile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_generic = type { i8*, i32 }

@IsUnderPostmaster = common dso_local global i64 0, align 8
@DEBUG3 = common dso_local global i32 0, align 4
@LOG = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"unrecognized configuration parameter \22%s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32)* @set_config_sourcefile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_config_sourcefile(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.config_generic*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i64, i64* @IsUnderPostmaster, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = load i32, i32* @DEBUG3, align 4
  br label %15

13:                                               ; preds = %3
  %14 = load i32, i32* @LOG, align 4
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi i32 [ %12, %11 ], [ %14, %13 ]
  store i32 %16, i32* %8, align 4
  %17 = load i8*, i8** %4, align 8
  %18 = load i32, i32* %8, align 4
  %19 = call %struct.config_generic* @find_option(i8* %17, i32 1, i32 %18)
  store %struct.config_generic* %19, %struct.config_generic** %7, align 8
  %20 = load %struct.config_generic*, %struct.config_generic** %7, align 8
  %21 = icmp eq %struct.config_generic* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %15
  %23 = load i32, i32* @ERROR, align 4
  %24 = load i8*, i8** %4, align 8
  %25 = call i32 @elog(i32 %23, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8* %24)
  br label %26

26:                                               ; preds = %22, %15
  %27 = load i32, i32* %8, align 4
  %28 = load i8*, i8** %5, align 8
  %29 = call i8* @guc_strdup(i32 %27, i8* %28)
  store i8* %29, i8** %5, align 8
  %30 = load %struct.config_generic*, %struct.config_generic** %7, align 8
  %31 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %39

34:                                               ; preds = %26
  %35 = load %struct.config_generic*, %struct.config_generic** %7, align 8
  %36 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @free(i8* %37)
  br label %39

39:                                               ; preds = %34, %26
  %40 = load i8*, i8** %5, align 8
  %41 = load %struct.config_generic*, %struct.config_generic** %7, align 8
  %42 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %41, i32 0, i32 0
  store i8* %40, i8** %42, align 8
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.config_generic*, %struct.config_generic** %7, align 8
  %45 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 8
  ret void
}

declare dso_local %struct.config_generic* @find_option(i8*, i32, i32) #1

declare dso_local i32 @elog(i32, i8*, i8*) #1

declare dso_local i8* @guc_strdup(i32, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
