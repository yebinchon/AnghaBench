; ModuleID = '/home/carl/AnghaBench/linux/tools/vm/extr_page_owner_sort.c_add_list.c'
source_filename = "/home/carl/AnghaBench/linux/tools/vm/extr_page_owner_sort.c_add_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i64* }

@list_size = common dso_local global i32 0, align 4
@list = common dso_local global %struct.TYPE_2__* null, align 8
@max_size = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"max_size too small??\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"loaded %d\0D\00", align 1
@stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @add_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_list(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @list_size, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %38

7:                                                ; preds = %2
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @list, align 8
  %10 = load i32, i32* @list_size, align 4
  %11 = sub nsw i32 %10, 1
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp eq i32 %8, %15
  br i1 %16, label %17, label %38

17:                                               ; preds = %7
  %18 = load i8*, i8** %3, align 8
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @list, align 8
  %20 = load i32, i32* @list_size, align 4
  %21 = sub nsw i32 %20, 1
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  %25 = load i64*, i64** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i64 @memcmp(i8* %18, i64* %25, i32 %26)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %17
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @list, align 8
  %31 = load i32, i32* @list_size, align 4
  %32 = sub nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 4
  br label %93

38:                                               ; preds = %17, %7, %2
  %39 = load i32, i32* @list_size, align 4
  %40 = load i32, i32* @max_size, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %44 = call i32 @exit(i32 1) #3
  unreachable

45:                                               ; preds = %38
  %46 = load i32, i32* %4, align 4
  %47 = add nsw i32 %46, 1
  %48 = call i64* @malloc(i32 %47)
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** @list, align 8
  %50 = load i32, i32* @list_size, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 2
  store i64* %48, i64** %53, align 8
  %54 = load i32, i32* %4, align 4
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** @list, align 8
  %56 = load i32, i32* @list_size, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  store i32 %54, i32* %59, align 8
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** @list, align 8
  %61 = load i32, i32* @list_size, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  store i32 1, i32* %64, align 4
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** @list, align 8
  %66 = load i32, i32* @list_size, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 2
  %70 = load i64*, i64** %69, align 8
  %71 = load i8*, i8** %3, align 8
  %72 = load i32, i32* %4, align 4
  %73 = call i32 @memcpy(i64* %70, i8* %71, i32 %72)
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** @list, align 8
  %75 = load i32, i32* @list_size, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 2
  %79 = load i64*, i64** %78, align 8
  %80 = load i32, i32* %4, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i64, i64* %79, i64 %81
  store i64 0, i64* %82, align 8
  %83 = load i32, i32* @list_size, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* @list_size, align 4
  %85 = load i32, i32* @list_size, align 4
  %86 = srem i32 %85, 1000
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %45
  %89 = load i32, i32* @list_size, align 4
  %90 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %89)
  %91 = load i32, i32* @stdout, align 4
  %92 = call i32 @fflush(i32 %91)
  br label %93

93:                                               ; preds = %29, %88, %45
  ret void
}

declare dso_local i64 @memcmp(i8*, i64*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64* @malloc(i32) #1

declare dso_local i32 @memcpy(i64*, i8*, i32) #1

declare dso_local i32 @fflush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
