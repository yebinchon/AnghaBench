; ModuleID = '/home/carl/AnghaBench/lwan/src/samples/clock/extr_main.c_main.c'
source_filename = "/home/carl/AnghaBench/lwan/src/samples/clock/extr_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index = type { i8*, i8*, i32 }
%struct.lwan_url_map = type { i8*, i32, %struct.index*, i32 }
%struct.lwan = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"Lwan Sample Clock\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"clock\00", align 1
@__const.main.sample_clock = private unnamed_addr constant %struct.index { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 200 }, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"Lwan Dali Clock\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"dali\00", align 1
@__const.main.dali_clock = private unnamed_addr constant %struct.index { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32 320 }, align 8
@.str.4 = private unnamed_addr constant [18 x i8] c"Lwan Blocks Clock\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"blocks\00", align 1
@__const.main.blocks_clock = private unnamed_addr constant %struct.index { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i32 320 }, align 8
@.str.6 = private unnamed_addr constant [11 x i8] c"/clock.gif\00", align 1
@clock = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [10 x i8] c"/dali.gif\00", align 1
@dali = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [12 x i8] c"/blocks.gif\00", align 1
@blocks = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [7 x i8] c"/clock\00", align 1
@templated_index = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [6 x i8] c"/dali\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"/blocks\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"/\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.index, align 8
  %3 = alloca %struct.index, align 8
  %4 = alloca %struct.index, align 8
  %5 = alloca [8 x %struct.lwan_url_map], align 16
  %6 = alloca %struct.lwan, align 4
  store i32 0, i32* %1, align 4
  %7 = bitcast %struct.index* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 8 bitcast (%struct.index* @__const.main.sample_clock to i8*), i64 24, i1 false)
  %8 = bitcast %struct.index* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 bitcast (%struct.index* @__const.main.dali_clock to i8*), i64 24, i1 false)
  %9 = bitcast %struct.index* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 bitcast (%struct.index* @__const.main.blocks_clock to i8*), i64 24, i1 false)
  %10 = getelementptr inbounds [8 x %struct.lwan_url_map], [8 x %struct.lwan_url_map]* %5, i64 0, i64 0
  %11 = getelementptr inbounds %struct.lwan_url_map, %struct.lwan_url_map* %10, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8** %11, align 16
  %12 = getelementptr inbounds %struct.lwan_url_map, %struct.lwan_url_map* %10, i32 0, i32 1
  store i32 0, i32* %12, align 8
  %13 = getelementptr inbounds %struct.lwan_url_map, %struct.lwan_url_map* %10, i32 0, i32 2
  store %struct.index* null, %struct.index** %13, align 16
  %14 = getelementptr inbounds %struct.lwan_url_map, %struct.lwan_url_map* %10, i32 0, i32 3
  %15 = load i32, i32* @clock, align 4
  %16 = call i32 @LWAN_HANDLER_REF(i32 %15)
  store i32 %16, i32* %14, align 8
  %17 = getelementptr inbounds %struct.lwan_url_map, %struct.lwan_url_map* %10, i64 1
  %18 = getelementptr inbounds %struct.lwan_url_map, %struct.lwan_url_map* %17, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8** %18, align 16
  %19 = getelementptr inbounds %struct.lwan_url_map, %struct.lwan_url_map* %17, i32 0, i32 1
  store i32 0, i32* %19, align 8
  %20 = getelementptr inbounds %struct.lwan_url_map, %struct.lwan_url_map* %17, i32 0, i32 2
  store %struct.index* null, %struct.index** %20, align 16
  %21 = getelementptr inbounds %struct.lwan_url_map, %struct.lwan_url_map* %17, i32 0, i32 3
  %22 = load i32, i32* @dali, align 4
  %23 = call i32 @LWAN_HANDLER_REF(i32 %22)
  store i32 %23, i32* %21, align 8
  %24 = getelementptr inbounds %struct.lwan_url_map, %struct.lwan_url_map* %17, i64 1
  %25 = getelementptr inbounds %struct.lwan_url_map, %struct.lwan_url_map* %24, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i8** %25, align 16
  %26 = getelementptr inbounds %struct.lwan_url_map, %struct.lwan_url_map* %24, i32 0, i32 1
  store i32 0, i32* %26, align 8
  %27 = getelementptr inbounds %struct.lwan_url_map, %struct.lwan_url_map* %24, i32 0, i32 2
  store %struct.index* null, %struct.index** %27, align 16
  %28 = getelementptr inbounds %struct.lwan_url_map, %struct.lwan_url_map* %24, i32 0, i32 3
  %29 = load i32, i32* @blocks, align 4
  %30 = call i32 @LWAN_HANDLER_REF(i32 %29)
  store i32 %30, i32* %28, align 8
  %31 = getelementptr inbounds %struct.lwan_url_map, %struct.lwan_url_map* %24, i64 1
  %32 = getelementptr inbounds %struct.lwan_url_map, %struct.lwan_url_map* %31, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8** %32, align 16
  %33 = getelementptr inbounds %struct.lwan_url_map, %struct.lwan_url_map* %31, i32 0, i32 1
  store i32 0, i32* %33, align 8
  %34 = getelementptr inbounds %struct.lwan_url_map, %struct.lwan_url_map* %31, i32 0, i32 2
  store %struct.index* %2, %struct.index** %34, align 16
  %35 = getelementptr inbounds %struct.lwan_url_map, %struct.lwan_url_map* %31, i32 0, i32 3
  %36 = load i32, i32* @templated_index, align 4
  %37 = call i32 @LWAN_HANDLER_REF(i32 %36)
  store i32 %37, i32* %35, align 8
  %38 = getelementptr inbounds %struct.lwan_url_map, %struct.lwan_url_map* %31, i64 1
  %39 = getelementptr inbounds %struct.lwan_url_map, %struct.lwan_url_map* %38, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8** %39, align 16
  %40 = getelementptr inbounds %struct.lwan_url_map, %struct.lwan_url_map* %38, i32 0, i32 1
  store i32 0, i32* %40, align 8
  %41 = getelementptr inbounds %struct.lwan_url_map, %struct.lwan_url_map* %38, i32 0, i32 2
  store %struct.index* %3, %struct.index** %41, align 16
  %42 = getelementptr inbounds %struct.lwan_url_map, %struct.lwan_url_map* %38, i32 0, i32 3
  %43 = load i32, i32* @templated_index, align 4
  %44 = call i32 @LWAN_HANDLER_REF(i32 %43)
  store i32 %44, i32* %42, align 8
  %45 = getelementptr inbounds %struct.lwan_url_map, %struct.lwan_url_map* %38, i64 1
  %46 = getelementptr inbounds %struct.lwan_url_map, %struct.lwan_url_map* %45, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i8** %46, align 16
  %47 = getelementptr inbounds %struct.lwan_url_map, %struct.lwan_url_map* %45, i32 0, i32 1
  store i32 0, i32* %47, align 8
  %48 = getelementptr inbounds %struct.lwan_url_map, %struct.lwan_url_map* %45, i32 0, i32 2
  store %struct.index* %4, %struct.index** %48, align 16
  %49 = getelementptr inbounds %struct.lwan_url_map, %struct.lwan_url_map* %45, i32 0, i32 3
  %50 = load i32, i32* @templated_index, align 4
  %51 = call i32 @LWAN_HANDLER_REF(i32 %50)
  store i32 %51, i32* %49, align 8
  %52 = getelementptr inbounds %struct.lwan_url_map, %struct.lwan_url_map* %45, i64 1
  %53 = getelementptr inbounds %struct.lwan_url_map, %struct.lwan_url_map* %52, i32 0, i32 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i8** %53, align 16
  %54 = getelementptr inbounds %struct.lwan_url_map, %struct.lwan_url_map* %52, i32 0, i32 1
  %55 = call i32 @REDIRECT(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  store i32 %55, i32* %54, align 8
  %56 = getelementptr inbounds %struct.lwan_url_map, %struct.lwan_url_map* %52, i32 0, i32 2
  store %struct.index* null, %struct.index** %56, align 16
  %57 = getelementptr inbounds %struct.lwan_url_map, %struct.lwan_url_map* %52, i32 0, i32 3
  store i32 0, i32* %57, align 8
  %58 = getelementptr inbounds %struct.lwan_url_map, %struct.lwan_url_map* %52, i64 1
  %59 = bitcast %struct.lwan_url_map* %58 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %59, i8 0, i64 32, i1 false)
  %60 = call i32 @lwan_init(%struct.lwan* %6)
  %61 = getelementptr inbounds [8 x %struct.lwan_url_map], [8 x %struct.lwan_url_map]* %5, i64 0, i64 0
  %62 = call i32 @lwan_set_url_map(%struct.lwan* %6, %struct.lwan_url_map* %61)
  %63 = call i32 @lwan_main_loop(%struct.lwan* %6)
  %64 = call i32 @lwan_shutdown(%struct.lwan* %6)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @LWAN_HANDLER_REF(i32) #2

declare dso_local i32 @REDIRECT(i8*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @lwan_init(%struct.lwan*) #2

declare dso_local i32 @lwan_set_url_map(%struct.lwan*, %struct.lwan_url_map*) #2

declare dso_local i32 @lwan_main_loop(%struct.lwan*) #2

declare dso_local i32 @lwan_shutdown(%struct.lwan*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
