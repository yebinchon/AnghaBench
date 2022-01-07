; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_extension.c_identify_update_path.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_extension.c_identify_update_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@NIL = common dso_local global i32* null, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_PARAMETER_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"extension \22%s\22 has no update path from version \22%s\22 to version \22%s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_4__*, i8*, i8*)* @identify_update_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @identify_update_path(%struct.TYPE_4__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %12 = call i32* @get_ext_ver_list(%struct.TYPE_4__* %11)
  store i32* %12, i32** %8, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i32* @get_ext_ver_info(i8* %13, i32** %8)
  store i32* %14, i32** %9, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = call i32* @get_ext_ver_info(i8* %15, i32** %8)
  store i32* %16, i32** %10, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = load i32*, i32** %10, align 8
  %20 = call i32* @find_update_path(i32* %17, i32* %18, i32* %19, i32 0, i32 0)
  store i32* %20, i32** %7, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = load i32*, i32** @NIL, align 8
  %23 = icmp eq i32* %21, %22
  br i1 %23, label %24, label %35

24:                                               ; preds = %3
  %25 = load i32, i32* @ERROR, align 4
  %26 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %27 = call i32 @errcode(i32 %26)
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i8*, i8** %5, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 @errmsg(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32 %30, i8* %31, i8* %32)
  %34 = call i32 @ereport(i32 %25, i32 %33)
  br label %35

35:                                               ; preds = %24, %3
  %36 = load i32*, i32** %7, align 8
  ret i32* %36
}

declare dso_local i32* @get_ext_ver_list(%struct.TYPE_4__*) #1

declare dso_local i32* @get_ext_ver_info(i8*, i32**) #1

declare dso_local i32* @find_update_path(i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
