; ModuleID = '/home/carl/AnghaBench/php-src/ext/fileinfo/libmagic/extr_funcs.c_file_default.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/fileinfo/libmagic/extr_funcs.c_file_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.magic_set = type { i32 }

@MAGIC_MIME = common dso_local global i32 0, align 4
@MAGIC_MIME_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"application/%s\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"octet-stream\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"x-empty\00", align 1
@MAGIC_APPLE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"UNKNUNKN\00", align 1
@MAGIC_EXTENSION = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"???\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @file_default(%struct.magic_set* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.magic_set*, align 8
  %5 = alloca i64, align 8
  store %struct.magic_set* %0, %struct.magic_set** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load %struct.magic_set*, %struct.magic_set** %4, align 8
  %7 = getelementptr inbounds %struct.magic_set, %struct.magic_set* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @MAGIC_MIME, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %29

12:                                               ; preds = %2
  %13 = load %struct.magic_set*, %struct.magic_set** %4, align 8
  %14 = getelementptr inbounds %struct.magic_set, %struct.magic_set* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @MAGIC_MIME_TYPE, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %12
  %20 = load %struct.magic_set*, %struct.magic_set** %4, align 8
  %21 = load i64, i64* %5, align 8
  %22 = icmp ne i64 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %25 = call i32 (%struct.magic_set*, i8*, ...) @file_printf(%struct.magic_set* %20, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %24)
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  store i32 -1, i32* %3, align 4
  br label %56

28:                                               ; preds = %19, %12
  store i32 1, i32* %3, align 4
  br label %56

29:                                               ; preds = %2
  %30 = load %struct.magic_set*, %struct.magic_set** %4, align 8
  %31 = getelementptr inbounds %struct.magic_set, %struct.magic_set* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @MAGIC_APPLE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %29
  %37 = load %struct.magic_set*, %struct.magic_set** %4, align 8
  %38 = call i32 (%struct.magic_set*, i8*, ...) @file_printf(%struct.magic_set* %37, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store i32 -1, i32* %3, align 4
  br label %56

41:                                               ; preds = %36
  store i32 1, i32* %3, align 4
  br label %56

42:                                               ; preds = %29
  %43 = load %struct.magic_set*, %struct.magic_set** %4, align 8
  %44 = getelementptr inbounds %struct.magic_set, %struct.magic_set* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @MAGIC_EXTENSION, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %42
  %50 = load %struct.magic_set*, %struct.magic_set** %4, align 8
  %51 = call i32 (%struct.magic_set*, i8*, ...) @file_printf(%struct.magic_set* %50, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  store i32 -1, i32* %3, align 4
  br label %56

54:                                               ; preds = %49
  store i32 1, i32* %3, align 4
  br label %56

55:                                               ; preds = %42
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %55, %54, %53, %41, %40, %28, %27
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @file_printf(%struct.magic_set*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
