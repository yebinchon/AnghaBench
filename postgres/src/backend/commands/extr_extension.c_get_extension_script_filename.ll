; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_extension.c_get_extension_script_filename.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_extension.c_get_extension_script_filename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8* }

@MAXPGPATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"%s/%s--%s--%s.sql\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"%s/%s--%s.sql\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_4__*, i8*, i8*)* @get_extension_script_filename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_extension_script_filename(%struct.TYPE_4__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %10 = call i8* @get_extension_script_directory(%struct.TYPE_4__* %9)
  store i8* %10, i8** %8, align 8
  %11 = load i32, i32* @MAXPGPATH, align 4
  %12 = call i64 @palloc(i32 %11)
  %13 = inttoptr i64 %12 to i8*
  store i8* %13, i8** %7, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %26

16:                                               ; preds = %3
  %17 = load i8*, i8** %7, align 8
  %18 = load i32, i32* @MAXPGPATH, align 4
  %19 = load i8*, i8** %8, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 (i8*, i32, i8*, i8*, i8*, i8*, ...) @snprintf(i8* %17, i32 %18, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %19, i8* %22, i8* %23, i8* %24)
  br label %35

26:                                               ; preds = %3
  %27 = load i8*, i8** %7, align 8
  %28 = load i32, i32* @MAXPGPATH, align 4
  %29 = load i8*, i8** %8, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 (i8*, i32, i8*, i8*, i8*, i8*, ...) @snprintf(i8* %27, i32 %28, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %29, i8* %32, i8* %33)
  br label %35

35:                                               ; preds = %26, %16
  %36 = load i8*, i8** %8, align 8
  %37 = call i32 @pfree(i8* %36)
  %38 = load i8*, i8** %7, align 8
  ret i8* %38
}

declare dso_local i8* @get_extension_script_directory(%struct.TYPE_4__*) #1

declare dso_local i64 @palloc(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*, i8*, ...) #1

declare dso_local i32 @pfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
