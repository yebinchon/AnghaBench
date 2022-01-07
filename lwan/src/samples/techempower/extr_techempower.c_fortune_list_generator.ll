; ModuleID = '/home/carl/AnghaBench/lwan/src/samples/techempower/extr_techempower.c_fortune_list_generator.c'
source_filename = "/home/carl/AnghaBench/lwan/src/samples/techempower/extr_techempower.c_fortune_list_generator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coro = type { i32 }
%struct.Fortune = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.fortune_array = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64 }
%struct.db_stmt = type { i32 }
%struct.db_row = type { i8, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i32 }

@fortune_list_generator.fortune_query = internal constant [22 x i8] c"SELECT * FROM Fortune\00", align 16
@database = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Additional fortune added at request time.\00", align 1
@fortune_compare = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.coro*, i8*)* @fortune_list_generator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fortune_list_generator(%struct.coro* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.coro*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [256 x i8], align 16
  %7 = alloca %struct.Fortune*, align 8
  %8 = alloca %struct.fortune_array, align 8
  %9 = alloca %struct.db_stmt*, align 8
  %10 = alloca i64, align 8
  %11 = alloca [3 x %struct.db_row], align 16
  %12 = alloca %struct.Fortune*, align 8
  store %struct.coro* %0, %struct.coro** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.Fortune*
  store %struct.Fortune* %14, %struct.Fortune** %7, align 8
  %15 = load i32, i32* @database, align 4
  %16 = call %struct.db_stmt* @db_prepare_stmt(i32 %15, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @fortune_list_generator.fortune_query, i64 0, i64 0), i32 21)
  store %struct.db_stmt* %16, %struct.db_stmt** %9, align 8
  %17 = load %struct.db_stmt*, %struct.db_stmt** %9, align 8
  %18 = icmp ne %struct.db_stmt* %17, null
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i64 @UNLIKELY(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %101

24:                                               ; preds = %2
  %25 = call i32 @fortune_array_init(%struct.fortune_array* %8)
  %26 = bitcast [3 x %struct.db_row]* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %26, i8 0, i64 72, i1 false)
  %27 = getelementptr inbounds [3 x %struct.db_row], [3 x %struct.db_row]* %11, i64 0, i64 0
  %28 = getelementptr inbounds %struct.db_row, %struct.db_row* %27, i32 0, i32 0
  store i8 105, i8* %28, align 8
  %29 = getelementptr inbounds %struct.db_row, %struct.db_row* %27, i64 1
  %30 = getelementptr inbounds %struct.db_row, %struct.db_row* %29, i32 0, i32 0
  store i8 115, i8* %30, align 8
  %31 = getelementptr inbounds %struct.db_row, %struct.db_row* %29, i32 0, i32 1
  store i32 256, i32* %31, align 4
  %32 = getelementptr inbounds %struct.db_row, %struct.db_row* %29, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  store i8* %34, i8** %33, align 8
  %35 = getelementptr inbounds %struct.db_row, %struct.db_row* %29, i64 1
  %36 = getelementptr inbounds %struct.db_row, %struct.db_row* %35, i32 0, i32 0
  store i8 0, i8* %36, align 8
  br label %37

37:                                               ; preds = %55, %24
  %38 = load %struct.db_stmt*, %struct.db_stmt** %9, align 8
  %39 = getelementptr inbounds [3 x %struct.db_row], [3 x %struct.db_row]* %11, i64 0, i64 0
  %40 = call i64 @db_stmt_step(%struct.db_stmt* %38, %struct.db_row* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %56

42:                                               ; preds = %37
  %43 = load %struct.coro*, %struct.coro** %4, align 8
  %44 = getelementptr inbounds [3 x %struct.db_row], [3 x %struct.db_row]* %11, i64 0, i64 0
  %45 = getelementptr inbounds %struct.db_row, %struct.db_row* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = getelementptr inbounds [3 x %struct.db_row], [3 x %struct.db_row]* %11, i64 0, i64 1
  %49 = getelementptr inbounds %struct.db_row, %struct.db_row* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @append_fortune(%struct.coro* %43, %struct.fortune_array* %8, i32 %47, i8* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %42
  br label %97

55:                                               ; preds = %42
  br label %37

56:                                               ; preds = %37
  %57 = load %struct.coro*, %struct.coro** %4, align 8
  %58 = call i32 @append_fortune(%struct.coro* %57, %struct.fortune_array* %8, i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %56
  br label %97

61:                                               ; preds = %56
  %62 = load i32, i32* @fortune_compare, align 4
  %63 = call i32 @fortune_array_sort(%struct.fortune_array* %8, i32 %62)
  store i64 0, i64* %10, align 8
  br label %64

64:                                               ; preds = %93, %61
  %65 = load i64, i64* %10, align 8
  %66 = getelementptr inbounds %struct.fortune_array, %struct.fortune_array* %8, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ult i64 %65, %68
  br i1 %69, label %70, label %96

70:                                               ; preds = %64
  %71 = getelementptr inbounds %struct.fortune_array, %struct.fortune_array* %8, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = inttoptr i64 %73 to %struct.Fortune*
  %75 = load i64, i64* %10, align 8
  %76 = getelementptr inbounds %struct.Fortune, %struct.Fortune* %74, i64 %75
  store %struct.Fortune* %76, %struct.Fortune** %12, align 8
  %77 = load %struct.Fortune*, %struct.Fortune** %12, align 8
  %78 = getelementptr inbounds %struct.Fortune, %struct.Fortune* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.Fortune*, %struct.Fortune** %7, align 8
  %82 = getelementptr inbounds %struct.Fortune, %struct.Fortune* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  store i32 %80, i32* %83, align 4
  %84 = load %struct.Fortune*, %struct.Fortune** %12, align 8
  %85 = getelementptr inbounds %struct.Fortune, %struct.Fortune* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.Fortune*, %struct.Fortune** %7, align 8
  %89 = getelementptr inbounds %struct.Fortune, %struct.Fortune* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  store i32 %87, i32* %90, align 4
  %91 = load %struct.coro*, %struct.coro** %4, align 8
  %92 = call i32 @coro_yield(%struct.coro* %91, i32 1)
  br label %93

93:                                               ; preds = %70
  %94 = load i64, i64* %10, align 8
  %95 = add i64 %94, 1
  store i64 %95, i64* %10, align 8
  br label %64

96:                                               ; preds = %64
  br label %97

97:                                               ; preds = %96, %60, %54
  %98 = call i32 @fortune_array_reset(%struct.fortune_array* %8)
  %99 = load %struct.db_stmt*, %struct.db_stmt** %9, align 8
  %100 = call i32 @db_stmt_finalize(%struct.db_stmt* %99)
  store i32 0, i32* %3, align 4
  br label %101

101:                                              ; preds = %97, %23
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local %struct.db_stmt* @db_prepare_stmt(i32, i8*, i32) #1

declare dso_local i64 @UNLIKELY(i32) #1

declare dso_local i32 @fortune_array_init(%struct.fortune_array*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @db_stmt_step(%struct.db_stmt*, %struct.db_row*) #1

declare dso_local i32 @append_fortune(%struct.coro*, %struct.fortune_array*, i32, i8*) #1

declare dso_local i32 @fortune_array_sort(%struct.fortune_array*, i32) #1

declare dso_local i32 @coro_yield(%struct.coro*, i32) #1

declare dso_local i32 @fortune_array_reset(%struct.fortune_array*) #1

declare dso_local i32 @db_stmt_finalize(%struct.db_stmt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
