; ModuleID = '/home/carl/AnghaBench/netdata/web/api/formatters/extr_charts2json.c_print_collector.c'
source_filename = "/home/carl/AnghaBench/netdata/web/api/formatters/extr_charts2json.c_print_collector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.array_printer = type { i64, i32* }
%struct.collector = type { i8*, i8* }

@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"\0A\09\09{\0A\09\09\09\22plugin\22: \22\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"\22,\0A\09\09\09\22module\22: \22\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"\22\0A\09\09}\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @print_collector(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.array_printer*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.collector*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.array_printer*
  store %struct.array_printer* %9, %struct.array_printer** %5, align 8
  %10 = load %struct.array_printer*, %struct.array_printer** %5, align 8
  %11 = getelementptr inbounds %struct.array_printer, %struct.array_printer* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %6, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = bitcast i8* %13 to %struct.collector*
  store %struct.collector* %14, %struct.collector** %7, align 8
  %15 = load %struct.array_printer*, %struct.array_printer** %5, align 8
  %16 = getelementptr inbounds %struct.array_printer, %struct.array_printer* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32*, i32** %6, align 8
  %21 = call i32 @buffer_strcat(i32* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %19, %2
  %23 = load i32*, i32** %6, align 8
  %24 = call i32 @buffer_strcat(i32* %23, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32*, i32** %6, align 8
  %26 = load %struct.collector*, %struct.collector** %7, align 8
  %27 = getelementptr inbounds %struct.collector, %struct.collector* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @buffer_strcat(i32* %25, i8* %28)
  %30 = load i32*, i32** %6, align 8
  %31 = call i32 @buffer_strcat(i32* %30, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %32 = load i32*, i32** %6, align 8
  %33 = load %struct.collector*, %struct.collector** %7, align 8
  %34 = getelementptr inbounds %struct.collector, %struct.collector* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @buffer_strcat(i32* %32, i8* %35)
  %37 = load i32*, i32** %6, align 8
  %38 = call i32 @buffer_strcat(i32* %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %39 = load %struct.array_printer*, %struct.array_printer** %5, align 8
  %40 = getelementptr inbounds %struct.array_printer, %struct.array_printer* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %41, 1
  store i64 %42, i64* %40, align 8
  ret i32 0
}

declare dso_local i32 @buffer_strcat(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
