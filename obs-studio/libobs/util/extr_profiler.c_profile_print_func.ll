; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/util/extr_profiler.c_profile_print_func.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/util/extr_profiler.c_profile_print_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dstr = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32* }

@LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"=================================================\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @profile_print_func(i8* %0, i32 (i32*, %struct.dstr*, %struct.dstr*, i32, i32, i32)* %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32 (i32*, %struct.dstr*, %struct.dstr*, i32, i32, i32)*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.dstr, align 4
  %8 = alloca %struct.dstr, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32 (i32*, %struct.dstr*, %struct.dstr*, i32, i32, i32)* %1, i32 (i32*, %struct.dstr*, %struct.dstr*, i32, i32, i32)** %5, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %6, align 8
  %11 = bitcast %struct.dstr* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 4, i1 false)
  %12 = bitcast %struct.dstr* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %12, i8 0, i64 4, i1 false)
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %14 = icmp ne %struct.TYPE_7__* %13, null
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  store i32 %16, i32* %9, align 4
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %18 = icmp ne %struct.TYPE_7__* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %3
  %20 = call %struct.TYPE_7__* (...) @profile_snapshot_create()
  store %struct.TYPE_7__* %20, %struct.TYPE_7__** %6, align 8
  br label %21

21:                                               ; preds = %19, %3
  %22 = load i32, i32* @LOG_INFO, align 4
  %23 = load i8*, i8** %4, align 8
  %24 = call i32 (i32, i8*, ...) @blog(i32 %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %23)
  store i64 0, i64* %10, align 8
  br label %25

25:                                               ; preds = %41, %21
  %26 = load i64, i64* %10, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ult i64 %26, %30
  br i1 %31, label %32, label %44

32:                                               ; preds = %25
  %33 = load i32 (i32*, %struct.dstr*, %struct.dstr*, i32, i32, i32)*, i32 (i32*, %struct.dstr*, %struct.dstr*, i32, i32, i32)** %5, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* %10, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = call i32 %33(i32* %39, %struct.dstr* %7, %struct.dstr* %8, i32 0, i32 0, i32 0)
  br label %41

41:                                               ; preds = %32
  %42 = load i64, i64* %10, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %10, align 8
  br label %25

44:                                               ; preds = %25
  %45 = load i32, i32* @LOG_INFO, align 4
  %46 = call i32 (i32, i8*, ...) @blog(i32 %45, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %51 = call i32 @profile_snapshot_free(%struct.TYPE_7__* %50)
  br label %52

52:                                               ; preds = %49, %44
  %53 = call i32 @dstr_free(%struct.dstr* %8)
  %54 = call i32 @dstr_free(%struct.dstr* %7)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.TYPE_7__* @profile_snapshot_create(...) #2

declare dso_local i32 @blog(i32, i8*, ...) #2

declare dso_local i32 @profile_snapshot_free(%struct.TYPE_7__*) #2

declare dso_local i32 @dstr_free(%struct.dstr*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
