; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/kern/extr_dl.c_grub_dl_load.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/kern/extr_dl.c_grub_dl_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"prefix\00", align 1
@GRUB_ERR_FILE_NOT_FOUND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"\22prefix\22 is not set\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"%s/%s.mod\00", align 1
@GRUB_ERR_BAD_MODULE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"mismatched names\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @grub_dl_load(i8* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %7 = call i8* @grub_env_get(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i8* %7, i8** %6, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = call %struct.TYPE_5__* @grub_dl_get(i8* %8)
  store %struct.TYPE_5__* %9, %struct.TYPE_5__** %5, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %11 = icmp ne %struct.TYPE_5__* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  store %struct.TYPE_5__* %13, %struct.TYPE_5__** %2, align 8
  br label %47

14:                                               ; preds = %1
  %15 = load i8*, i8** %6, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = load i32, i32* @GRUB_ERR_FILE_NOT_FOUND, align 4
  %19 = call i32 @grub_error(i32 %18, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %2, align 8
  br label %47

20:                                               ; preds = %14
  %21 = load i8*, i8** %6, align 8
  %22 = load i8*, i8** %3, align 8
  %23 = call i8* @grub_xasprintf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %21, i8* %22)
  store i8* %23, i8** %4, align 8
  %24 = load i8*, i8** %4, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %20
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %2, align 8
  br label %47

27:                                               ; preds = %20
  %28 = load i8*, i8** %4, align 8
  %29 = call %struct.TYPE_5__* @grub_dl_load_file(i8* %28)
  store %struct.TYPE_5__* %29, %struct.TYPE_5__** %5, align 8
  %30 = load i8*, i8** %4, align 8
  %31 = call i32 @grub_free(i8* %30)
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %33 = icmp ne %struct.TYPE_5__* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %27
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %2, align 8
  br label %47

35:                                               ; preds = %27
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i8*, i8** %3, align 8
  %40 = call i64 @grub_strcmp(i32 %38, i8* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = load i32, i32* @GRUB_ERR_BAD_MODULE, align 4
  %44 = call i32 @grub_error(i32 %43, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  br label %45

45:                                               ; preds = %42, %35
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  store %struct.TYPE_5__* %46, %struct.TYPE_5__** %2, align 8
  br label %47

47:                                               ; preds = %45, %34, %26, %17, %12
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  ret %struct.TYPE_5__* %48
}

declare dso_local i8* @grub_env_get(i8*) #1

declare dso_local %struct.TYPE_5__* @grub_dl_get(i8*) #1

declare dso_local i32 @grub_error(i32, i8*) #1

declare dso_local i8* @grub_xasprintf(i8*, i8*, i8*) #1

declare dso_local %struct.TYPE_5__* @grub_dl_load_file(i8*) #1

declare dso_local i32 @grub_free(i8*) #1

declare dso_local i64 @grub_strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
