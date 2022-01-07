; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/preproc/extr_descriptor.c_lookup_descriptor.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/preproc/extr_descriptor.c_lookup_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.descriptor = type { i64, i64, %struct.descriptor* }

@descriptors = common dso_local global %struct.descriptor* null, align 8
@PARSE_ERROR = common dso_local global i32 0, align 4
@ET_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"descriptor \22%s\22 does not exist\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.descriptor* @lookup_descriptor(i8* %0, i8* %1) #0 {
  %3 = alloca %struct.descriptor*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.descriptor*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = getelementptr inbounds i8, i8* %7, i64 0
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp ne i32 %10, 34
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store %struct.descriptor* null, %struct.descriptor** %3, align 8
  br label %61

13:                                               ; preds = %2
  %14 = load %struct.descriptor*, %struct.descriptor** @descriptors, align 8
  store %struct.descriptor* %14, %struct.descriptor** %6, align 8
  br label %15

15:                                               ; preds = %52, %13
  %16 = load %struct.descriptor*, %struct.descriptor** %6, align 8
  %17 = icmp ne %struct.descriptor* %16, null
  br i1 %17, label %18, label %56

18:                                               ; preds = %15
  %19 = load i8*, i8** %4, align 8
  %20 = load %struct.descriptor*, %struct.descriptor** %6, align 8
  %21 = getelementptr inbounds %struct.descriptor, %struct.descriptor* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = call i64 @strcmp(i8* %19, i64 %22)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %51

25:                                               ; preds = %18
  %26 = load i8*, i8** %5, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %25
  %29 = load %struct.descriptor*, %struct.descriptor** %6, align 8
  %30 = getelementptr inbounds %struct.descriptor, %struct.descriptor* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %48

33:                                               ; preds = %28, %25
  %34 = load i8*, i8** %5, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %50

36:                                               ; preds = %33
  %37 = load %struct.descriptor*, %struct.descriptor** %6, align 8
  %38 = getelementptr inbounds %struct.descriptor, %struct.descriptor* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %36
  %42 = load i8*, i8** %5, align 8
  %43 = load %struct.descriptor*, %struct.descriptor** %6, align 8
  %44 = getelementptr inbounds %struct.descriptor, %struct.descriptor* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i64 @strcmp(i8* %42, i64 %45)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %41, %28
  %49 = load %struct.descriptor*, %struct.descriptor** %6, align 8
  store %struct.descriptor* %49, %struct.descriptor** %3, align 8
  br label %61

50:                                               ; preds = %41, %36, %33
  br label %51

51:                                               ; preds = %50, %18
  br label %52

52:                                               ; preds = %51
  %53 = load %struct.descriptor*, %struct.descriptor** %6, align 8
  %54 = getelementptr inbounds %struct.descriptor, %struct.descriptor* %53, i32 0, i32 2
  %55 = load %struct.descriptor*, %struct.descriptor** %54, align 8
  store %struct.descriptor* %55, %struct.descriptor** %6, align 8
  br label %15

56:                                               ; preds = %15
  %57 = load i32, i32* @PARSE_ERROR, align 4
  %58 = load i32, i32* @ET_WARNING, align 4
  %59 = load i8*, i8** %4, align 8
  %60 = call i32 @mmerror(i32 %57, i32 %58, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %59)
  store %struct.descriptor* null, %struct.descriptor** %3, align 8
  br label %61

61:                                               ; preds = %56, %48, %12
  %62 = load %struct.descriptor*, %struct.descriptor** %3, align 8
  ret %struct.descriptor* %62
}

declare dso_local i64 @strcmp(i8*, i64) #1

declare dso_local i32 @mmerror(i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
