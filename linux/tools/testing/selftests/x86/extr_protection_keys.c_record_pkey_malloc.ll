; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/x86/extr_protection_keys.c_record_pkey_malloc.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/x86/extr_protection_keys.c_record_pkey_malloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pkey_malloc_record = type { i64, i32, i8* }

@nr_pkey_malloc_records = common dso_local global i64 0, align 8
@pkey_malloc_records = common dso_local global %struct.pkey_malloc_record* null, align 8
@.str = private unnamed_addr constant [21 x i8] c"new_nr_records: %zd\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"new_size: %zd\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"filling malloc record[%d/%p]: {%p, %ld}\0A\00", align 1
@pkey_last_malloc_record = common dso_local global %struct.pkey_malloc_record* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @record_pkey_malloc(i8* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.pkey_malloc_record*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  store %struct.pkey_malloc_record* null, %struct.pkey_malloc_record** %8, align 8
  store i64 0, i64* %7, align 8
  br label %12

12:                                               ; preds = %24, %3
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* @nr_pkey_malloc_records, align 8
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %16, label %27

16:                                               ; preds = %12
  %17 = load %struct.pkey_malloc_record*, %struct.pkey_malloc_record** @pkey_malloc_records, align 8
  %18 = load i64, i64* %7, align 8
  %19 = getelementptr inbounds %struct.pkey_malloc_record, %struct.pkey_malloc_record* %17, i64 %18
  store %struct.pkey_malloc_record* %19, %struct.pkey_malloc_record** %8, align 8
  %20 = load %struct.pkey_malloc_record*, %struct.pkey_malloc_record** %8, align 8
  %21 = icmp ne %struct.pkey_malloc_record* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  br label %27

23:                                               ; preds = %16
  br label %24

24:                                               ; preds = %23
  %25 = load i64, i64* %7, align 8
  %26 = add nsw i64 %25, 1
  store i64 %26, i64* %7, align 8
  br label %12

27:                                               ; preds = %22, %12
  %28 = load %struct.pkey_malloc_record*, %struct.pkey_malloc_record** %8, align 8
  %29 = icmp ne %struct.pkey_malloc_record* %28, null
  br i1 %29, label %66, label %30

30:                                               ; preds = %27
  %31 = load i64, i64* @nr_pkey_malloc_records, align 8
  store i64 %31, i64* %9, align 8
  %32 = load i64, i64* @nr_pkey_malloc_records, align 8
  %33 = mul nsw i64 %32, 2
  %34 = add nsw i64 %33, 1
  store i64 %34, i64* %10, align 8
  %35 = load i64, i64* %10, align 8
  %36 = mul i64 %35, 24
  store i64 %36, i64* %11, align 8
  %37 = load i64, i64* %10, align 8
  %38 = call i32 @dprintf2(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 %37)
  %39 = load i64, i64* %11, align 8
  %40 = call i32 @dprintf2(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i64 %39)
  %41 = load %struct.pkey_malloc_record*, %struct.pkey_malloc_record** @pkey_malloc_records, align 8
  %42 = load i64, i64* %11, align 8
  %43 = call %struct.pkey_malloc_record* @realloc(%struct.pkey_malloc_record* %41, i64 %42)
  store %struct.pkey_malloc_record* %43, %struct.pkey_malloc_record** @pkey_malloc_records, align 8
  %44 = load %struct.pkey_malloc_record*, %struct.pkey_malloc_record** @pkey_malloc_records, align 8
  %45 = icmp ne %struct.pkey_malloc_record* %44, null
  %46 = zext i1 %45 to i32
  %47 = call i32 @pkey_assert(i32 %46)
  %48 = load %struct.pkey_malloc_record*, %struct.pkey_malloc_record** @pkey_malloc_records, align 8
  %49 = load i64, i64* @nr_pkey_malloc_records, align 8
  %50 = getelementptr inbounds %struct.pkey_malloc_record, %struct.pkey_malloc_record* %48, i64 %49
  store %struct.pkey_malloc_record* %50, %struct.pkey_malloc_record** %8, align 8
  store i64 0, i64* %7, align 8
  br label %51

51:                                               ; preds = %62, %30
  %52 = load i64, i64* %7, align 8
  %53 = load i64, i64* %10, align 8
  %54 = load i64, i64* %9, align 8
  %55 = sub i64 %53, %54
  %56 = icmp ult i64 %52, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %51
  %58 = load %struct.pkey_malloc_record*, %struct.pkey_malloc_record** %8, align 8
  %59 = load i64, i64* %7, align 8
  %60 = getelementptr inbounds %struct.pkey_malloc_record, %struct.pkey_malloc_record* %58, i64 %59
  %61 = call i32 @memset(%struct.pkey_malloc_record* %60, i32 0, i32 24)
  br label %62

62:                                               ; preds = %57
  %63 = load i64, i64* %7, align 8
  %64 = add nsw i64 %63, 1
  store i64 %64, i64* %7, align 8
  br label %51

65:                                               ; preds = %51
  br label %66

66:                                               ; preds = %65, %27
  %67 = load %struct.pkey_malloc_record*, %struct.pkey_malloc_record** %8, align 8
  %68 = load %struct.pkey_malloc_record*, %struct.pkey_malloc_record** @pkey_malloc_records, align 8
  %69 = ptrtoint %struct.pkey_malloc_record* %67 to i64
  %70 = ptrtoint %struct.pkey_malloc_record* %68 to i64
  %71 = sub i64 %69, %70
  %72 = sdiv exact i64 %71, 24
  %73 = trunc i64 %72 to i32
  %74 = load %struct.pkey_malloc_record*, %struct.pkey_malloc_record** %8, align 8
  %75 = load i8*, i8** %4, align 8
  %76 = load i64, i64* %5, align 8
  %77 = call i32 @dprintf3(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %73, %struct.pkey_malloc_record* %74, i8* %75, i64 %76)
  %78 = load i8*, i8** %4, align 8
  %79 = load %struct.pkey_malloc_record*, %struct.pkey_malloc_record** %8, align 8
  %80 = getelementptr inbounds %struct.pkey_malloc_record, %struct.pkey_malloc_record* %79, i32 0, i32 2
  store i8* %78, i8** %80, align 8
  %81 = load i64, i64* %5, align 8
  %82 = load %struct.pkey_malloc_record*, %struct.pkey_malloc_record** %8, align 8
  %83 = getelementptr inbounds %struct.pkey_malloc_record, %struct.pkey_malloc_record* %82, i32 0, i32 0
  store i64 %81, i64* %83, align 8
  %84 = load i32, i32* %6, align 4
  %85 = load %struct.pkey_malloc_record*, %struct.pkey_malloc_record** %8, align 8
  %86 = getelementptr inbounds %struct.pkey_malloc_record, %struct.pkey_malloc_record* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 8
  %87 = load %struct.pkey_malloc_record*, %struct.pkey_malloc_record** %8, align 8
  store %struct.pkey_malloc_record* %87, %struct.pkey_malloc_record** @pkey_last_malloc_record, align 8
  %88 = load i64, i64* @nr_pkey_malloc_records, align 8
  %89 = add nsw i64 %88, 1
  store i64 %89, i64* @nr_pkey_malloc_records, align 8
  ret void
}

declare dso_local i32 @dprintf2(i8*, i64) #1

declare dso_local %struct.pkey_malloc_record* @realloc(%struct.pkey_malloc_record*, i64) #1

declare dso_local i32 @pkey_assert(i32) #1

declare dso_local i32 @memset(%struct.pkey_malloc_record*, i32, i32) #1

declare dso_local i32 @dprintf3(i8*, i32, %struct.pkey_malloc_record*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
